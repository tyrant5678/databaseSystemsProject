<?php
session_start();
// Connect to database (can put in db-connect file)
require("connect-db.php");
global $conn;

if (!$conn) {

	echo "Connection failed!";
}

if (!isset($_SESSION['username'])) {
	header("Location: index.php");
}
// specific function file
if (isset($_POST['add'])) {
	// insert into playlist
	$name = mysqli_real_escape_string($conn, $_POST['playlist_name']);
	$sql_insert =
		"INSERT INTO `playlist`(`playlist_name`)
			VALUES ('$name');";

	$res1 = mysqli_query($conn, $sql_insert);
	// insert into owns
	$playlist_id = $conn->insert_id;
	$add_owns = "INSERT INTO `owns` VALUES ({$playlist_id}, {$_SESSION['id']})";
	$res2 = mysqli_query($conn, $add_owns);

	if ($res1 && $res2) {
		echo '<script>alert("Playlist added successfully")</script>';
	}
	unset($_POST['add']);
	$sql = "SELECT * FROM `playlist`";
	$all_playlists = mysqli_query($conn, $sql);
}
// redirect to add_songs page if we've got the form
if (isset($_POST['add_songs'])) {
	header("Location: add_songs.php?playlist_id={$_POST['playlist_id']}");
}
// add song to DB
if (isset($_POST['add_song_result'])) {
	// get song id via query
	$id_query = "SELECT songID FROM song WHERE name=\"{$_POST['song_name']}\"";
	$res = mysqli_query($conn, $id_query);
	foreach ($res as $song) {
		$song_id = $song["songID"];
	}
	// add using a query
	$add_song_query = "INSERT INTO contains VALUES (\"{$_POST["playlist_id"]}\", \"{$song_id}\");";
	try {
		$res = mysqli_query($conn, $add_song_query);
		echo("<script>alert(\"Added song to playlist successfully!\");</script>");
	} catch (PDOException $e){
		echo("<script>alert(\"Error adding song to playlist! Please try again.\");</script>");
	}
	unset($_POST['add_song_result']);
	
}
// delete songs
if (isset($_POST['delete_song'])) {
	$delete_song_query = "DELETE FROM contains WHERE playlistID=\"{$_POST['playlist_id']}\" and songID=\"{$_POST['delete_song']}\"";
	echo($delete_song_query);
	$delete_song_res = mysqli_query($conn, $delete_song_query);
	try {
		mysqli_query($conn, $delete_song_query);
		echo("<script>alert(\"Successfully deleted song from playlist!\");</script>");
	}catch (PDOException $e) {
		echo("<script>alert(\"Error deleting song from playlist, try again later.\");</script>");
	}
	unset($_POST['delete_song']);
}

if (isset($_POST['delete'])) {

	$id = $_POST['playlist_to_delete'];

	$sql_delete =
		"DELETE FROM `playlist` WHERE `playlist`.`playlistID` = '$id'";

	if (mysqli_query($conn, $sql_delete)) {
		echo '<script>alert("Playlist deleted successfully")</script>';
	}
	$sql = "SELECT * FROM `playlist`";
	$all_playlists = mysqli_query($conn, $sql);
}
$sql = "SELECT * FROM `playlist` NATURAL JOIN `owns` WHERE userID={$_SESSION['id']}";
$all_playlists = mysqli_query($conn, $sql);
echo($_SESSION['id']);

if (isset($_POST['rename'])) {
        $id = $_POST['playlist_id'];
	$name = mysqli_real_escape_string($conn, $_POST['playlist_rename']);

	$sql_rename =
		"UPDATE `playlist` SET `playlist_name` = '$name' WHERE `playlist`.`playlistID` = '$id'";

	if (mysqli_query($conn, $sql_rename)) {
		echo '<script>alert("Playlist renamed successfully")</script>';
	}
	$sql = "SELECT * FROM `playlist`";
	$all_playlists = mysqli_query($conn, $sql);
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<?php include('header.html') ?>
	<title> Playlists </title>

	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
	<?php foreach ($all_playlists as $playlist_info) : ?>
		<?php
		$playlist_id = $playlist_info['playlistID'];
		$songs_query = "SELECT * 
					FROM artist NATURAL JOIN made NATURAL JOIN album NATURAL JOIN part_of NATURAL JOIN song NATURAL JOIN contains
					WHERE playlistID={$playlist_id}";
		$playlist_songs = mysqli_query($conn, $songs_query);
		?>
			<form action="Playlist_index2.php" method="post">
				<td><?php echo $playlist_info['playlist_name']; ?></td>
				<td>
					<table>
					<?php foreach ($playlist_songs as $song) : ?>
						<tr>
							<td><label for="delete_song" class="song"><?php echo("{$song['name']} - {$song['artist_name']}");?></label></td>
							<td><button name="delete_song" id="delete_song" value="<?php echo("{$song['songID']}"); ?>" type="submit">Delete</button></td>
						</tr>
					<?php endforeach; ?>
					</table>
					<form action="Playlist_index2.php" method="post">

						<input type="submit" value="Add Songs" name="add_songs" class="btn btn-primary" title="Click to add songs to this playlist" />

						<input type="submit" value="Delete" name="delete" class="btn btn-danger" title="Click to delete  this playlist" />
						<input type="hidden" name="playlist_to_delete" value="<?php echo $playlist_info['playlistID']; ?>" />
						<input type="hidden" name="playlist_id" value="<?php echo $playlist_id?>"/>

						<input type="text" name="playlist_rename">

						<input type="submit" value="Rename Playlist" name="rename">
				</td>
			</form>
		</tr>
	<?php endforeach;?>

	<form method="POST">

		<label>Add New Playlist:</label>
		<input type="text" name="playlist_name">

		<input type="submit" value="Add" name="add">
	</form>
	<br>
	<?php include('footer.html') ?>
</body>

</html>

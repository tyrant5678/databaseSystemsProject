<?php

// Connect to database (can put in db-connect file)
require("connect-db.php");
global $conn;

if (!$conn) {

	echo "Connection failed!";
}

// specific function file
$sql = "SELECT * FROM `playlist`";
$all_playlists = mysqli_query($conn, $sql);
if (isset($_POST['add'])) {

	$name = mysqli_real_escape_string($conn, $_POST['playlist_name']);

	$sql_insert =
		"INSERT INTO `playlist`(`playlist_name`)
			VALUES ('$name')";

	if (mysqli_query($conn, $sql_insert)) {
		echo '<script>alert("Playlist added successfully")</script>';
	}
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
	
}
if (isset($_POST['delete'])) {

	$id = $_POST['playlist_to_delete'];

	$sql_delete =
		"DELETE FROM `playlist` WHERE `playlist`.`playlistID` = '$id'";

	if (mysqli_query($conn, $sql_delete)) {
		echo '<script>alert("Playlist deleted successfully")</script>';
	}
}
?>
// below can be put in index file

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
		<tr>
			<form action="Playlist_index2.php" method="post">
				<td><?php echo $playlist_info['playlist_name']; ?></td>
				<?php
				foreach ($playlist_songs as $song) {
					echo ("<p class=\"song\">{$song['name']} - {$song['artist_name']}</p>");
				}
				?>
				<td>
					<form action="Playlist_index2.php" method="post">

						<input type="submit" value="View Stats" name="view_stats" class="btn btn-primary" title="Click to add songs to this playlist" />

						<input type="submit" value="Add Songs" name="add_songs" class="btn btn-primary" title="Click to add songs to this playlist" />

						<input type="submit" value="Delete" name="delete" class="btn btn-danger" title="Click to delete  this playlist" />
						<input type="hidden" name="playlist_to_delete" value="<?php echo $playlist_info['playlistID']; ?>" />
						<input type="hidden" name="playlist_id" value="<?php echo $playlist_id?>"/>
				</td>
			</form>
		</tr>
	<?php endforeach; ?>
	<form method="POST">

		<label>Add New Playlist:</label>
		<input type="text" name="playlist_name"><br>

		<input type="submit" value="Add" name="add">
	</form>
	<br>

	<?php include('footer.html') ?>

</body>

</html>
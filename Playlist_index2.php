<?php

	// Connect to database (can put in db-connect file)
	$con = mysqli_connect("localhost","root","","statify", 3307);
	
	if (!$con) {

   	 echo "Connection failed!";

	}
	
	// specific function file
	$sql = "SELECT * FROM `playlist`";
	$all_playlists = mysqli_query($con,$sql);

	if(isset($_POST['add']))
	{
		
		$name = mysqli_real_escape_string($con,$_POST['playlist_name']);

		$sql_insert =
		"INSERT INTO `playlist`(`playlist_name`)
			VALUES ('$name')";

		if(mysqli_query($con,$sql_insert))
		{
			echo '<script>alert("Playlist added successfully")</script>';
		}
	}

	if(isset($_POST['delete']))
	{

		$id = $_POST['playlist_to_delete'];
		
		$sql_delete =
		"DELETE FROM `playlist` WHERE `playlist`.`playlistID` = '$id'";

		if(mysqli_query($con,$sql_delete))
		{
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
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0">

	<?php include('header.html') ?> 
    <title> Playlists </title>

    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<?php foreach ($all_playlists as $playlist_info): ?>
  <tr>
     <form action="Playlist_index2.php" method="post">
       <td><?php echo $playlist_info['playlist_name']; ?></td>                 
       <td>
        <form action="Playlist_index2.php" method="post">

          <input type="submit" value="View Stats" name="view_stats" class="btn btn-primary" 
                title="Click to add songs to this playlist" />

          <input type="submit" value="Add Songs" name="add_songs" class="btn btn-primary" 
                title="Click to add songs to this playlist" />

	  <input type="submit" value="Delete" name="delete" class="btn btn-danger" 
                title="Click to delete  this playlist" />
          <input type="hidden" name="playlist_to_delete" 
                value="<?php echo $playlist_info['playlistID']; ?>"
        />                
     </td>
   </form>
  </tr>
<?php endforeach; ?>
	<form method="POST">

		<label>Add New Playlist:</label>
		<input type="text" name="playlist_name" ><br>

		<input type="submit" value="Add" name="add">
	</form>
	<br>

	<?php include('footer.html') ?>

</body>
</html>




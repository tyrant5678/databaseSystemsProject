<?php

	// Connect to database
	$con = mysqli_connect("localhost","root","","statify", 3307);
	
	if (!$con) {

   	 echo "Connection failed!";

	}
	

	$sql = "SELECT * FROM `playlist`";
	$all_playlists = mysqli_query($con,$sql);

	if(isset($_POST['submit']))
	{
		// Store the playlist name in a "name" variable
		
		$name = mysqli_real_escape_string($con,$_POST['playlist_name']);
		
		// Store the playlist ID in a "id" variable
		
		$id = mysqli_real_escape_string($con,$_POST['playlistID']);
		
		// Creating an insert query using SQL syntax and
		// storing it in a variable.
		
		$sql_insert =
		"INSERT INTO `playlist`(`playlistID`, `playlist_name`)
			VALUES ('$id','$name')";

		if(mysqli_query($con,$sql_insert))
		{
			echo '<script>alert("Playlist added successfully")</script>';
		}
	}
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0">
</head>
<body>
	<form method="POST">
	        
		<label>Name of Playlist:</label>
		<input type="text" name="playlist_name" required><br>
		<label>Select a Playlist</label>
		<select name="playlist">
			<?php

				while ($playlist = mysqli_fetch_array(
						$all_playlists,MYSQLI_ASSOC)):;
			?>
				<option value="<?php echo $playlist["playlistID"];
					// The value we usually set is the primary key
				?>">
					<?php echo $playlist["playlist_name"];

					?>
				</option>
			<?php
				endwhile;
				// While loop must be terminated
			?>
		</select>
		<br>
		<input type="submit" value="submit" name="submit">
	</form>
	<br>
</body>
</html>

<?php
	// Connect to database
	$con = mysqli_connect("localhost","root","","statify", 3307);
	
	if (!$con) {

   	 echo "Connection failed!";

	}

    $sql_album = "SELECT * FROM `album`";
    $all_albums = mysqli_query($con,$sql_album);
	

    if(isset($_POST['stats']))
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


?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0">

	<?php include('header.html') ?> 
    <title> Statistics </title>
    
    <link rel="stylesheet" type="text/css" href="style.css">
</head>


<body>

<div class="container">
  <h1>Statistics</h1>  

<form name="statisticsForm" action="statistics.php" method="post">   

<h3>Get Average Statistics by:</h3>
    <!-- Album:  
    <select Statistics For='NEW'>  
    <option value="">--- Select ---</option>  
    
    </select>  
    <input type="submit" name="stats" value="Get Statistics" class="btn btn-primary" /> 

    <?php
        $sql_album = "SELECT * FROM `album`";
        $all_albums = mysqli_query($con,$sql_album);

        echo "<select name='album'>";
        while ($row = mysql_fetch_array($all_albums)) {
            echo "<option value='" . $row['album_name'] . "'>" . $row['album_name'] . "</option>";
        }
        echo "</select>";
    ?> -->

    <?php
        echo $all_albums
    ?>
</form>

<hr/>
<h3>Average Statistics</h3>
<div class="row justify-content-center">  
<table class="w3-table w3-bordered w3-card-4 center" style="width:100%">
  <thead>
  <tr style="background-color:#B0B0B0">
    <th width="12.5%"><b>Duration</b></th>
    <th width="12.5%"><b>Instrumentalness</b></th>        
    <th width="12.5%"><b>Loudness</b></th> 
    <th width="12.5%"><b>Danceability</b></th>
    <th width="12.5%"><b>Tempo</b></th>
    <th width="12.5%"><b>Energy</b></th> 
    <th width="12.5%"><b>Key</b></th>
    <th width="12.5%"><b>Valence</b></th>
  </tr>
  </thead>
<?php foreach ($list_of_friends as $friend_info): ?>
  <tr>
     <td><?php echo $friend_info['name']; ?></td>
     <td><?php echo $friend_info['major']; ?></td>        
     <td><?php echo $friend_info['year']; ?></td>
  </tr>
<?php endforeach; ?>
</table>
</div>   
     
<!-- <?php include('footer.html') ?> -->

</body>

</html>
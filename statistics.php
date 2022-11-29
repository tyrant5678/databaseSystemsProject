<?php
    require("connect-db.php");
    require("stats.php");
?>

<?php
    global $conn;
    $query = "SELECT * FROM album";  
    try {
        $statement = $conn->prepare($query);
        $statement->execute();
        $result = $statement->fetchAll();   // fetch()
        $statement->closeCursor();
        echo $result;
    }
    catch (PDOException $e) 
    {
        echo $e->getMessage();
        if there is a specific SQL-related error message
           echo "generic message (don't reveal SQL-specific message)";

        if (str_contains($e->getMessage(), "Duplicate"))
		   echo "Failed to add a friend <br/>";

        if ($statement->rowCount() == 0)
            echo "Failed to add a friend <br/>";
    }
    catch (Exception $e)
    {
        echo $e->getMessage();
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
    Album:

    <!-- <?php foreach ($list_of_playlists as $playlist_info): ?>
    <tr>
        <td><?php echo $friend_info['name']; ?></td>
    </tr>
    <?php endforeach; ?> -->

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
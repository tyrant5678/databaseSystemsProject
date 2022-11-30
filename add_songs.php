<?php 
require("connect-db.php");

    $song_sql = "SELECT * FROM `song`";
    $songs= $conn->query($song_sql);
    
if (isset($_GET['playlist_id'])) {
    $playlist_id = $_GET['playlist_id'];
} else {
    header("Location: Playlist_index2.php");
}
?>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<?php include('header.html') ?>
	<title> Add Songs </title>

	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <form action="Playlist_index2.php" method="post">
     <h3>Add Song:</h3>
      Available Songs:
      <select name="song_name">
       <option value="none">
        <?php echo "";?>
       </option>
      <?php foreach ($songs as $song): ?>
        <option value="<?php echo $song["name"]; ?>">
      <?php echo $song["name"]; ?>
      </option>
      <?php endforeach; ?>
      </select>
    
        <!-- <label for="song_name">Type Song from List to Add</label>
        <input type="text" name="song_name" id="song_name"/> -->
        <input type="submit" name="add_song_result" value="Add This Song">
        <input type="hidden" name="playlist_id" value="<?php echo "{$playlist_id}"?>"/>
    </form>
</body>

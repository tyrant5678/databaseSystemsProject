<?php
    require("connect-db.php");

    $album_sql = "SELECT * FROM `album`";
    $albums = $conn->query($album_sql);

    $artist_sql = "SELECT * FROM `artist`";
    $artists = $conn->query($artist_sql);

    $playlist_sql = "SELECT * FROM `playlist`";
    $playlists = $conn->query($playlist_sql);

    $stats = NULL;
?>

<?php
    if(isset($_POST['albumstat']))
    {
        $stats = NULL;
        $albumName = mysqli_real_escape_string($conn,$_POST['Album']);
        $album_stat_sql = "SELECT name, duration, instrumentalness, loudness, danceability, tempo, energy, song_key, valence
         FROM `album` NATURAL JOIN `part_of` NATURAL JOIN `song` WHERE album_name = '$albumName'";
        $stats = $conn->query($album_stat_sql);   
    }
?>

<?php
    if(isset($_POST['artiststat']))
    {
        $stats = NULL;
        $artistName = mysqli_real_escape_string($conn,$_POST['Artist']);
        $artist_stat_sql = "SELECT name, duration, instrumentalness, loudness, danceability, tempo, energy, song_key, valence
         FROM `artist` NATURAL JOIN `made` NATURAL JOIN `album` NATURAL JOIN `part_of` NATURAL JOIN `song` 
         WHERE artist_name = '$artistName'";
        $stats = $conn->query($artist_stat_sql);   
    }
?>

<?php
    if(isset($_POST['playliststat']))
    {
        $stats = NULL;
        $playlistName = mysqli_real_escape_string($conn,$_POST['Playlist']);
        $playlist_stat_sql = "SELECT name, duration, instrumentalness, loudness, danceability, tempo, energy, song_key, valence
         FROM `playlist` NATURAL JOIN `contains` NATURAL JOIN `song` WHERE playlist_name = '$playlistName'";
        $stats = $conn->query($playlist_stat_sql);   
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
    <h3>Get Album Statistics:</h3>
    Album:
    <select name="Album">
        <option value="none">
            <?php echo "";?>
        </option>
        <?php foreach ($albums as $album): ?>
            <option value="<?php echo $album["album_name"]; ?>">
                <?php echo $album["album_name"]; ?>
            </option>
        <?php endforeach; ?>
    </select>
    <input type="submit" value="Submit" name="albumstat" style="width: fit-content;" title="Submit">

    <h3>Get Artist Statistics:</h3>
    Artist:
    <select name="Artist">
        <option value="none">
            <?php echo "";?>
        </option>
        <?php foreach ($artists as $artist): ?>
            <option value="<?php echo $artist["artist_name"]; ?>">
                <?php echo $artist["artist_name"]; ?>
            </option>
        <?php endforeach; ?>
    </select>
    <input type="submit" value="Submit" name="artiststat" style="width: fit-content;" title="Submit">

    <h3>Get Playlist Statistics:</h3>
    Playlist:
    <select name="Playlist">
        <option value="none">
            <?php echo "";?>
        </option>
        <?php foreach ($playlists as $playlist): ?>
            <option value="<?php echo $playlist["playlist_name"]; ?>">
                <?php echo $playlist["playlist_name"]; ?>
            </option>
        <?php endforeach; ?>
    </select>
    <input type="submit" value="Submit" name="playliststat" style="width: fit-content;" title="Submit">
</form>

<hr/>
<h3>Statistics</h3>
<div class="row justify-content-center">  
<table class="w3-table w3-bordered w3-card-4 center" style="width:100%">
  <thead>
  <tr style="background-color:#B0B0B0">
    <th width="11%"><b>Name</b></th>
    <th width="11%"><b>Duration</b></th>
    <th width="11%"><b>Instrumentalness</b></th>        
    <th width="11%"><b>Loudness</b></th> 
    <th width="11%"><b>Danceability</b></th>
    <th width="11%"><b>Tempo</b></th>
    <th width="11%"><b>Energy</b></th> 
    <th width="11%"><b>Key</b></th>
    <th width="11%"><b>Valence</b></th>
  </tr>
  </thead>
    <?php foreach ($stats as $song): ?>
        <tr>
            <td style="text-align:center" class="song"><?php echo $song['name']; ?></td>
            <td style="text-align:center" class="song"><?php echo $song['duration']; ?></td>        
            <td style="text-align:center" class="song"><?php echo $song['instrumentalness']; ?></td>
            <td style="text-align:center" class="song"><?php echo $song['loudness']; ?></td>
            <td style="text-align:center" class="song"><?php echo $song['danceability']; ?></td>        
            <td style="text-align:center" class="song"><?php echo $song['tempo']; ?></td>
            <td style="text-align:center" class="song"><?php echo $song['energy']; ?></td>
            <td style="text-align:center" class="song"><?php echo $song['song_key']; ?></td>        
            <td style="text-align:center" class="song"><?php echo $song['valence']; ?></td>
        </tr>
    <?php endforeach; ?>
</table>
</div>   
     
<!-- <?php include('footer.html') ?> -->

</body>

</html>
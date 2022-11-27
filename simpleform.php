<?php
require("connect-db.php");      // include("connect-db.php");
require("friend-db.php");

$list_of_friends = getAllFriends();
$friend_to_update = null;      
?>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
  if (!empty($_POST['btnAction']) && $_POST['btnAction'] =='Add') 
  {
      addFriend($_POST['name'], $_POST['major'], $_POST['year']);
      $list_of_friends = getAllFriends();  
  }
  else if (!empty($_POST['btnAction']) && $_POST['btnAction'] =='Update')
  {
      $friend_to_update = getFriendByName($_POST['friend_to_update']);
  }
  else if (!empty($_POST['btnAction']) && $_POST['btnAction'] =='Delete')
  {
      deleteFriend($_POST['friend_to_delete']);
      $list_of_friends = getAllFriends();
  }

  if (!empty($_POST['btnAction']) && $_POST['btnAction'] =='Confirm update')
  {
    updateFriend($_POST['name'], $_POST['major'], $_POST['year']);
    $list_of_friends = getAllFriends();
  }
}
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="your name">
  <meta name="description" content="include some description about your page">      
  <title>DB interfacing</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="icon" type="image/png" href="http://www.cs.virginia.edu/~up3f/cs4750/images/db-icon.png" />
</head>

<body>
<?php include('header.html') ?> 


<div class="container">
  <h1>Friend book</h1>  

<form name="mainForm" action="simpleform.php" method="post">   
  <div class="row mb-3 mx-3">
    Your name:
    <input type="text" class="form-control" name="name" required 
          value="<?php if ($friend_to_update!=null) echo $friend_to_update['name'] ?>"
    />            
  </div>  
  <div class="row mb-3 mx-3">
    Major:
    <input type="text" class="form-control" name="major" required 
    value="<?php if ($friend_to_update!=null) echo $friend_to_update['major'] ?>"
    />            
  </div> 
  <div class="row mb-3 mx-3">
    Year:
    <input type="number" max="4" min="1" class="form-control" name="year" required 
    value="<?php if ($friend_to_update!=null) echo $friend_to_update['year'] ?>"
    />            
  </div>   
  <!-- <div class="row mb-3 mx-3"> -->
  <div>
    <input type="submit" value="Add" name="btnAction" class="btn btn-dark" 
           title="Insert a friend into a friend table" />            
    <input type="submit" value="Confirm update" name="btnAction" class="btn btn-primary" 
           title="Update a friend" />            
  </div>  

</form>   

<hr/>
<h3>List of friends</h3>
<div class="row justify-content-center">  
<table class="w3-table w3-bordered w3-card-4 center" style="width:70%">
  <thead>
  <tr style="background-color:#B0B0B0">
    <th width="30%"><b>Name</b></th>
    <th width="30%"><b>Major</b></th>        
    <th width="30%"><b>Year</b></th> 
    <th><b>Update?</b></th>
    <th><b>Delete?</b></th>
  </tr>
  </thead>
<?php foreach ($list_of_friends as $friend_info): ?>
  <tr>
     <td><?php echo $friend_info['name']; ?></td>
     <td><?php echo $friend_info['major']; ?></td>        
     <td><?php echo $friend_info['year']; ?></td>                
     <td>
        <form action="simpleform.php" method="post">
          <input type="submit" value="Update" name="btnAction" class="btn btn-primary" 
                title="Click to update this friend" />
          <input type="hidden" name="friend_to_update" 
                value="<?php echo $friend_info['name']; ?>"
          />                
        </form>
     </td>
     <td>
     <form action="simpleform.php" method="post">
          <input type="submit" value="Delete" name="btnAction" class="btn btn-danger" 
                title="Click to delete this friend" />
          <input type="hidden" name="friend_to_delete" 
                value="<?php echo $friend_info['name']; ?>"
          />                
        </form>
     </td>
  </tr>
<?php endforeach; ?>
</table>
</div>   






</div>    

<?php include('footer.html') ?>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
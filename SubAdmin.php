<?php
  session_start();
  if(!isset($_SESSION['AdminLoginEmail']))
  {
    header("location:SubAdminLogin.php");
  }
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sub-Admin</title>
  </head>
  <body>
    <h1>Welcome to Subadmin Page! - <?php echo $_SESSION['AdminLoginEmail']?></h1>

    <form method="POST">
      <button name="logout">LOG OUT</button>
    </form>
    
  </body>
</html>

<?php
  if (isset($_POST['logout'])) 
  {
    session_destroy();
    header("location:SubAdminLogin.php");
  }
?>
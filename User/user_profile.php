<?php
  session_start();
  if(!isset($_SESSION['UserLoginEmail']))
  {
    header("location:user_login.php");
  }
  include '../connect.php';
?>

<?php
    echo $_SESSION['UserLoginEmail']
?>

<?php
  if (isset($_POST['logout'])) 
  {
    session_destroy();
    header("location:user_login.php");
  }

?>
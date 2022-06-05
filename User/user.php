<?php
  session_start();
  if(!isset($_SESSION['UserLoginEmail']))
  {
    header("location:user_login.php");
  }
  include '../connect.php';
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ParkO | Book Your Parking</title>
    <link rel="stylesheet" href="user.css" />
  </head>
  <body>
    <div class="header">
      <nav id="navBar">
        <a href="user.php"><img src="../images/logo.png" class="logo" /></a>

        <ul class="nav-links">
          <li>
            <a href="#" class="btnHow" onclick="openPopup()">How it works</a>
          </li>
          <li><a href="#">Help</a></li>
          <li><a href="#">Contact</a></li>
          <li><a href="#">Your Profile</a></li>
        </ul>

        <ul class="login-register">
          <li>
            
            <form method="POST"> 
              <button name="logout" class="logout-btn">LOG OUT</button>    
            </form>

          </li>
        </ul>

        <img src="../images/menu.png" class="menubar" onclick="togglebtn()" />
      </nav>

      <div class="container">
        <h1>Book your parking space,<br />before arriving!</h1>
        <div class="search-bar">
          <form>
            <div class="location-input">
              <label>Where do you want to park?</label>
              <input type="text" placeholder="Add location" />
            </div>

            <div class="arrival-input">
              <label>Arrival</label>
              <input type="datetime" placeholder="Add date and time" />
            </div>

            <div class="departure-input">
              <label>Departure</label>
              <input type="datetime" placeholder="Add date and time" />
            </div>

            <button type="submit">
              <img src="../images/search.png" alt="search icon" />
            </button>
          </form>
        </div>
      </div>

      <div class="popup" id="popup">
        <p>
          <b>1.</b> Find your parking lot by searching the name of the location
          or address.
        </p>
        <p><b>2.</b> See prices, distance and choose accordingly.</p>
        <p><b>3.</b> And finally, park your car.</p>
        <button type="button" onclick="closePopup()">OK</button>
      </div>
    </div>

    <script>
      var navBar = document.getElementById("navBar");
      function togglebtn() {
        navBar.classList.toggle("hidemenu");
      }
      function openPopup() {
        popup.classList.add("open-popup");
      }
      function closePopup() {
        popup.classList.remove("open-popup");
      }

      let popup = document.getElementById("popup");
    </script>
  </body>
</html>


<?php
  if (isset($_POST['logout'])) 
  {
    session_destroy();
    header("location:user_login.php");
  }

?>

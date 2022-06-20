<?php
  session_start();
  if(!isset($_SESSION['UserLoginEmail']))
  {
    header("location:user_login.php");
  }
  include '../connect.php';

$SearchText = $_SESSION['UserLoginEmail'];
$sql_search = "SELECT * FROM `user_list` WHERE email='$SearchText'";
$SearchResult = mysqli_query($con, $sql_search);
$row = mysqli_fetch_assoc($SearchResult);
$id = $row['id'];



  if (isset($_REQUEST['booking_id'])) 
  {
    //Setting yourBooking page value to Session
    $_SESSION['booking_id'] = $_REQUEST['booking_id'];
    
  }
?>
<?php
$bookingID=$_SESSION['booking_id'];
$bookedList = "SELECT * FROM `booked_list` WHERE booking_id='$bookingID'";
$bookedListResult = mysqli_query($con, $bookedList);
$row = mysqli_fetch_assoc($bookedListResult);
$placeid = $row['place_id'];
$arrival_Date = $row['arrival_date'];
$arrival_Time = $row['arrival_time'];
$departure_Date = $row['departure_date'];
$departure_Time = $row['departure_time'];
$totalParkingHour = $row['totalparkinghour'];

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="user.css" />
    <title>ParkO | Book Your Parking</title>
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
          <li><a href="user_profile.php">Your Profile</a></li>
          <li><a href="yourBooking.php">Your Booking</a></li>
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
        <h2 class="heading">Remaining Time</h2>
        <div class="parking_status">  
            <?php 
                date_default_timezone_set('Asia/Dhaka');

                $newArrival = strtotime($arrival_Date)+ strtotime($arrival_Time);
                $currentDate= strtotime(date("Y-m-d"));
                $currentTime= strtotime(time());

                $diff=$newArrival-($currentDate+$currentTime);

                $remaingMinutes=$diff/60;
                $remaingHours=$diff/60*60;
                $remaingSeconds=$diff%60;

                echo date("Y-m-d h:i:sa") . "<br>";
                echo date("Y-m-d h:i:sa", $diff) . "<br>";
                echo $remaingHours.":".$remaingMinutes.":".$remaingSeconds. "<br>";
            
            ?>

            
        
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
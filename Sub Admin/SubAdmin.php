<?php
session_start();
if (!isset($_SESSION['SubAdminLoginEmail'])) {
  header("location:SubAdminLogin.php");
}
include '../connect.php';
?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!----======== CSS ======== -->
  <link rel="stylesheet" href="SubAdmin.css" />

  <!----===== Iconscout CSS ===== -->
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

  <title>Sub-Admin Dashboard Panel</title>
</head>

<body>
  <nav>
    <a class="AdminHome" href="SubAdmin.php">
      <div class="logo-name">
        <div class="logo-image">
          <img src="../images/logo_dark.png" />
        </div>
        <span class="logo_name">Sub-Admin</span>
        
      </div>
    </a>


    <div class="menu-items">
      <ul class="nav-links">
        <li>
          <a href="SubAdmin.php">
            <i class="uil uil-estate"></i>
            <span class="link-name">Dahsboard</span>
          </a>
        </li>
        <li>
          <a href="view_ParkingInfo.php">
            <i class="uil uil-info-circle"></i>
            <span class="link-name">Your Parking Info</span>
          </a>
        </li>
        <li>
          <a href="view_SlotInfo.php">
            <i class="uil uil-arrows-shrink-h"></i>
            <span class="link-name">Slot Info</span>
          </a>
        </li>
        <li>
          <a href="">
            <i class="uil uil-car-sideview"></i>
            <span class="link-name">Parking Status</span>
          </a>
        </li>

      </ul>

      <ul class="logout-mode">
        <li>
          <form method="POST">
            <button name="logout" class="log-out">
              <i class="uil uil-signout"></i>LOG OUT
            </button>
          </form>
        </li>
      </ul>

    </div>
  </nav>

  <section class="dashboard">
    <div class="top">
      <a href="ParkingPlaceForm.php">
        <div class="Add-Parking">
          <button type="submit" class="Add-Parking" name="AddParkingBtn">Add Parking Place</button>
        </div>
      </a>
      <div>
        
        <span class="admin_name"><?php echo $_SESSION['SubAdminLoginEmail'] ?></span>
        <img src="../images/profile.png" alt="" />
      </div>

    </div>

    <div class="dash-content">
      <div class="overview">
        <a href="SubAdmin.php">
          <div class="title">
            <i class="uil uil-car-sideview"></i>
            <span class="text">Dahsboard</span>
          </div>
        </a>
        <div class="boxes">

          <div class="box box1">
            
          </div>

          <div class="box box2">
            
          </div>
          <div class="box box3">
            
          </div>
        </div>
      </div>

      <div class="activity">
        <div class="title">
          <i class="uil uil-clock-three"></i>
          <span class="text">Recent Activity</span>
        </div>

        <div class="activity-data">

        </div>

      </div>

    </div>
  </section>
</body>

</html>

<?php
if (isset($_POST['logout'])) {
  session_destroy();
  header("location:SubAdminLogin.php");
}
?>
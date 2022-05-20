<?php
  session_start();
  if(!isset($_SESSION['AdminLoginName']))
  {
    header("location:Admin_Panel_Login.php");
  }
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!----======== CSS ======== -->
    <link rel="stylesheet" href="Admin_Panel.css" />

    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <title>Admin Dashboard Panel</title>
  </head>
  <body>
    <nav>
      <div class="logo-name">
        <div class="logo-image">
          <img src="images/logo_dark.png" alt="" />
        </div>

        <span class="logo_name">ParkOnline</span>
      </div>

      <div class="menu-items">
        <ul class="nav-links">
          <li>
            <a href="#">
              <i class="uil uil-estate"></i>
              <span class="link-name">Dahsboard</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="uil uil-map-marker-info"></i>
              <span class="link-name">Sub-Admin List</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="uil uil-users-alt"></i>
              <span class="link-name">User List</span>
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
        <div class="search-box">
          <i class="uil uil-search"></i>
          <input type="text" placeholder="Search here..." />
        </div>
        <div>
          <span class="admin_name"><?php echo $_SESSION['AdminLoginName']?></span>
          <img src="images/profile.png" alt="" />
        </div>
        
      </div>
    </section>
  </body>
</html>

<?php
  if (isset($_POST['logout'])) 
  {
    session_destroy();
    header("location:Admin_Panel_Login.php");
  }
?>
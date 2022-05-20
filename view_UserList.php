<?php
  session_start();
  if(!isset($_SESSION['AdminLoginName']))
  {
    header("location:Admin_Panel_Login.php");
  }
  include 'connect.php';
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
      <a class="AdminHome"href="Admin_Panel.php">
        <div class="logo-name" >
          <div class="logo-image">
            <img src="images/logo_dark.png"/>
          </div>
          <span class="logo_name" >ParkOnline</span>
        </div>
      </a>
      

      <div class="menu-items">
        <ul class="nav-links">
          <li>
            <a href="Admin_Panel.php">
              <i class="uil uil-estate"></i>
              <span class="link-name">Dahsboard</span>
            </a>
          </li>
          <li>
            <a href="view_SubAdminList.php">
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

      <div class="dash-content">
        <div class="overview">
          <div class="title">
            <span class="text">User List</span>
          </div>
        </div>

        <div class="activity">
            <table class="styled-table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Email</th>
                        <th scope="col">Password</th>
                        <th scope="col">Operations</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $sql="SELECT * FROM `user_list`";
                        $result=mysqli_query($con,$sql);
                        if($result)
                        {
                            while($row=mysqli_fetch_assoc($result))
                            {
                                $id=$row['id'];
                                $name = $row["name"];
                                $phone = $row["phone"];
                                $email = $row["email"];
                                $password = $row["password"];

                                echo'
                                <tr>
                                    <th scope="row">'.$id.'</th>
                                    <td>'.$name.'</td>
                                    <td>'.$phone.'</td>
                                    <td>'.$email.'</td>
                                    <td>'.$password.'</td>

                                    <td>
                                    <button class= "btn btn-danger"><a href="UserDelete.php? deleteid='.$id.'" class="text-light">Delete</a>
                                    </button>
                                    </td>

                                </tr>';


                            }
                        }

                    ?>
                </tbody>
            </table>
          <div class="activity-data">    

          </div>


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
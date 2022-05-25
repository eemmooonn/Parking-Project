<?php
  session_start();
  if(!isset($_SESSION['AdminLoginName']))
  {
    header("location:Admin_Panel_Login.php");
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
            <img src="../images/logo_dark.png"/>
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
            <a href="view_UserList.php">
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
        <form action="" method="POST" class="search-box">
          <div class="search-box">
            <i class="uil uil-search"></i>
            <input type="text" name="search-text" placeholder="Search here by ID or Email" required/>
            <button type="submit" class="search" name="search-btn">Search</button>
          </div>
        </form>

        <div>
          <span class="admin_name"><?php echo $_SESSION['AdminLoginName']?></span>
          <img src="../images/profile.png" alt="" />
        </div>
        
      </div>

      <div class="dash-content">
        <div class="overview">
          <a href="view_SubAdminList.php">
            <div class="title">
              <i class="uil uil-map-marker-info"></i>
              <span class="text">Sub-Admin List</span>
            </div>
          </a>
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
                      if (isset($_POST['search-btn'])) 
                      {
                        $SearchText=$_POST['search-text'];
                        $sql_search="SELECT * FROM `subadmin_list` WHERE id='$SearchText' OR email LIKE '%$SearchText%'";
                        $SearchResult= mysqli_query($con, $sql_search);
                        if (mysqli_num_rows($SearchResult)>0) 
                        {
                          while($row=mysqli_fetch_assoc($SearchResult))
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
                                    <button><a href="SubAdminDelete.php? deleteid='.$id.'">Delete</a>
                                    </button>
                                    </td>

                                </tr>';
                          }
                        }
                        else
                        {
                            echo'
                            <tr>
                              <td colspan="5">No Record Found</td>
                            </tr>
                            ';
                        }
                      }
                      else
                      {
                        $sql="SELECT * FROM `subadmin_list`";
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
                                    <button><a href="SubAdminDelete.php? deleteid='.$id.'">Delete</a>
                                    </button>
                                    </td>

                                </tr>';


                            }
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
<?php
session_start();
if (!isset($_SESSION['AdminLoginName'])) {
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
        <a class="AdminHome" href="Admin_Panel.php">
            <div class="logo-name">
                <div class="logo-image">
                    <img src="../images/logo_dark.png" />
                </div>
                <span class="logo_name">ParkOnline</span>
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
                    
                </div>
            </form>

            <div>
                <span class="admin_name"><?php echo $_SESSION['AdminLoginName'] ?></span>
                <img src="../images/profile.png" alt="" />
            </div>

        </div>

        <div class="dash-content">
            <div class="overview">
                <a href="">
                    <div class="title">
                        <i class="uil uil-map-marker-info"></i>
                        <span class="text">Parking Slot Information</span>
                    </div>
                </a>
            </div>

            <div class="activity">
                <table class="styled-table">
                    <thead>
                        <tr>
                            <th scope="col">Slot No.</th>
                            <th scope="col">Sub-Admin ID</th>
                            <th scope="col">Slot Size</th>
                            <th scope="col">Slot Status</th>

                        </tr>

                            
                    </thead>
                    <tbody>
                        <?php
                        if (isset($_GET['subadminid'])) {
                            $subadminid = $_GET['subadminid'];
                            $sql_search = "SELECT * FROM `slotlist_subid:$subadminid`";
                            $SearchResult = mysqli_query($con, $sql_search);
                            if (mysqli_num_rows($SearchResult) > 0) {
                                while ($row = mysqli_fetch_assoc($SearchResult)) {
                                    $slotNumber = $row['Slot_Id'];
                                    $subadminid = $row['Sub_Admin_Id'];
                                    $slotsize = $row["Slot_Size"];
                                    $slotstatus = $row["Slot_Status"];
                                    


                                    echo '
                                <tr>

                                    <td>' . $slotNumber . '</td>
                                    <td>' . $subadminid . '</td>
                                    <td>' . $slotsize . '</td>
                                    <td>' . $slotstatus . '</td>
                                    

                                    
                                    

                                </tr>';
                                }
                            } else {
                                echo '
                            <tr>
                              <td colspan="5">No Parking Slot Found</td>
                            </tr>
                            ';
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
if (isset($_POST['logout'])) {
    session_destroy();
    header("location:Admin_Panel_Login.php");
}
?>
<?php

include ('connect.php');
if(isset($_POST['submit']))
{
    $name = $_POST["name"];
    $email = $_POST["email"];
    $mobile = $_POST["mobile"];
    $address = $_POST["address"];
    $security =$_POST["security"];
    $division = $_POST["division"];
    $bike = $_POST["bike"];
    $bikeslot = $_POST["bikeslot"];
    $car = $_POST["car"];
    $carslot = $_POST["carslot"];
    $opentime = $_POST["opentime"];
    $endtime = $_POST["endtime"];
    $placecategory =$_POST["placecategory"];
    $facility =$_POST["facility"];
    $parkingplace =$_POST["parkingplace"];

    $sql="INSERT INTO `subadminlist` (name,email,mobile,address,security,division,bike,bikeslot,car,carslot,opentime,endtime,placecategory,facility,parkingplace )   
    values( ' $name','$email','$mobile','$address','$security','$division','$bike','$bikeslot',' $car','$carslot','$opentime','$endtime','$placecategory','$facility','$parkingplace' ) ";
    $result=mysqli_query($con,$sql);
    if($result){
        echo "Submited Successfully";
    }else{
        die(mysqli_error($con));
    }
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!----======== CSS ======== -->
    <link rel="stylesheet" href="SubAdminForm.css" />

    <!----===== Iconscout CSS ===== -->
    <link
      rel="stylesheet"
      href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"
    />
    <title>Registration</title>
  </head>
  <body>
    <div class="container">
    <nav id="navBar">
        <a href="index.html"><img src="images/logo.png" class="logo" /></a>
    </nav>
    <form method="post"> 

      <header>Registration Form</header>

      <form action="#">
        <div class="form first">
          <div class="fields">

            <div class="input-field">
              <label>Full Name</label>
              <input type="text" name="name" id="" class="form-control" placeholder="Enter your name" required />
            </div>

            <div class="input-field">
              <label>Email</label>
              <input type="text" name="email" id="" class="form-control" placeholder="Enter your email address" required />
            </div>

            <div class="input-field">
              <label>Mobile Number</label>
              <input type="number" name="mobile" id="" class="form-control" placeholder="Enter mobile number" required />
            </div>

            <div class="input-field">
              <label for="">Full address:</label>
              <input type="string" name="address" id="" class="form-control" placeholder="Enter parking address"/>
            </div>

            <div class="input-field">
              <label for="">Security Guard Number(if available):</label>
              <input type="number" name="security" id="" class="form-control" placeholder="Enter security guard number" />
            </div>

            <div class="input-field">
              <label for="">Division:</label>
              <input type="text" name="division" id="" class="form-control" placeholder="Enter the division" required/>
            </div>
            

            <div class="input-field">
              <label for="">Bike</label>
              <select name="bike" id="">
                <option disabled selected>Is this parking allow bikes?</option>
                <option>Yes</option>
                <option>No</option>
              </select>
            </div>

            <div class="input-field">
              <label for="">Total Bike Slot(if allowed):</label>
              <input type="number" name="bikeslot" id="" class="form-control" placeholder="Enter total bike slot" />
            </div>

            <div class="input-field">
              <label for="">Car</label>
              <select name="car" id="">
                <option disabled selected>Is this parking allow car?</option>
                <option>Yes</option>
                <option>No</option>
              </select>
            </div>

            <div class="input-field">
              <label for="">Total Car Slot(if allowed):</label>
              <input type="number" name="carslot" id="" class="form-control" placeholder="Enter total car slot" />
            </div>

            <div class="input-field">
              <label for="">Parking Opening Time: </label>
              <input type="time" name="opentime" id="" class="form-control" placeholder="Select the parking opening time" />
            </div>

            <div class="input-field">
              <label for="">Parking Closing Time: </label>
              <input type="time" name="endtime" id="" class="form-control" placeholder="Select the parking colsing time" />
            </div>
            
            <div class="input-field">
              <label for="">Parking Category</label>
              <select name="placecategory" id="">
                <option disabled selected>Select parking category</option>
                <option>Residential</option>
                <option>Market</option>
              </select>
            </div>

            <div class="input-field">
              <label for="">Facility</label>
              <select name="facility" id="">
                <option disabled selected>Select facilities</option>
                <option>CCTV</option>
                <option>Guard</option>
                <option>Both(CCTV+Guard)</option>
                <option>No Facility</option>
              </select>
            </div>

            <div class="input-field">
              <label for="">Parking Place</label>
              <select name="parkingplace" id="">
                <option disabled selected>Select parking place</option>
                <option>Indoor</option>
                <option>Outdoor</option>
                <option>Both(Indoor+Outdoor)</option>
              </select>
            </div>

            <button type="submit" class="submit" name="submit">Submit</button>
          </div>
        </div>
      
    </form>
    </div>

    <!--<script src="script.js"></script>-->
  </body>
</html>

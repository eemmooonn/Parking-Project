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
        echo "submited successfully";
    }else{
        die(mysqli_error($con));
    }
}

?>
<!doctype html>
<html lang="en">
  <head>
    <title>Registration From</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
        <div class="container my-5 ">
        <form method="post"> 
            <h1 class= "test-center"> Parking Place Registration Form </h1>
            <div class="form-group">
              <label for="">Name:</label>
              <input type="text" name="name" id="" class="form-control" placeholder="Name" >


            </div>
            <div class="form-group">
              <label for="">E-mail:</label>
              <input type="email" name="email" id="" class="form-control" placeholder="Email" >

             
            </div>
            <div class="form-group">
              <label for="">Mobile:</label>
              <input type="number" name="mobile" id="" class="form-control" placeholder="Mobile No" >

            </div>
            <div class="form-group">
              <label for="">Full address:</label>
              <input type="string" name="address" id="" class="form-control" placeholder="">

            </div>
            <div class="form-group">
              <label for="">Security Guard Number(if available):</label>
              <input type="number" name="security" id="" class="form-control" placeholder="" >
              <small id="helpId" class="text-muted"></small>
            </div>
            <div class="form-group">
              <label for="">Division:</label>
              <input type="text" name="division" id="" class="form-control" placeholder="" >
              <small id="helpId" class="text-muted"></small>
            </div>
            <div class="form-group">
              <label for="">Allow Bike:</label>
              <input type="radio" name="bike" value="Yes">Yes
             <input type="radio" name="bike" value="No">No 

            </div>
            <div class="form-group">
              <label for="">Total Bike's Slot :</label>
              <input type="number" name="bikeslot" id="" class="form-control" placeholder="" >
              <small id="helpId" class="text-muted"></small>
            </div>
            <div class="form-group">
              <label for="">Allow Car:</label>
              <input type="radio" name="car" value="Yes">Yes
               <input type="radio" name="car" value="No">No

            </div>
            <div class="form-group">
              <label for=""> Total Car's Slot :</label>
              <input type="number" name="carslot" id="" class="form-control" placeholder="" >
              <small id="helpId" class="text-muted"></small>
            </div>
            <div class="form-group">
              <label for="">Opening Time: </label>
              <input type="time" name="opentime" id="" class="form-control" placeholder="" >
              <small id="helpId" class="text-muted"></small>
            </div>
            <div class="form-group">
              <label for="">Ending Time:</label>
              <input type="time" name="endtime" id="" class="form-control" placeholder="">
              <small id="helpId" class="text-muted"></small>
            </div>
            <div class="form-group">
              <label for="">Place Category:</label>
              <input type="radio" name="placecategory" value="Residential">Residential
             <input type="radio" name="placecategory" value="Market">Market

            </div>
            <div class="form-group">
              <label for=""> Facility?:</label>
              <input type="radio" name="facility"value="CCTV" >CCTV
               <input type="radio" name="facility" value="Guard">Guard
                <input type="radio" name="facility" value="Both(CCTV & Guard)">Both(CCTV & Guard)
            </div>
            <div class="form-group">
              <label for="">Parking Place:</label>
              <input type="radio" name="parkingplace"value="Indoor" >Indoor
               <input type="radio" name="parkingplace" value="Outdoor">Outdoor
                <input type="radio" name="parkingplace" value="Both(Indoor & Outdoor)">Both(Indoor & Outdoor)

            </div>
         <button type="submit" class="btn-primary" name="submit"> Submit </button> 

        </div>
  </form> 

  </body>
</html>
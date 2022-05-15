<?php

include ('connect.php');
$id=$_GET['updateid'];
$sql="Select * from `subadminlist` where id=$id";
$result=mysqli_query($con,$sql);
$row=mysqli_fetch_assoc($result);
$name = $row["name"];
$email = $row["email"];
$mobile = $row["mobile"];
$address = $row["address"];
$security =$row["security"];
$division = $row["division"];
$bike = $row["bike"];
$bikeslot = $row["bikeslot"];
$car = $row["car"];
$carslot = $row["carslot"];
$opentime = $row["opentime"];
$endtime = $row["endtime"];
$placecategory =$row["placecategory"];
$facility =$row["facility"];
$parkingplace =$row["parkingplace"];



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

    $sql="update `subadminlist`set id=$id,  name='$name',email='$email',mobile=$mobile, address='$address',security=$security,division='$division',bike='$bike',bikeslot=$bikeslot, 
    car='$car' , carslot=$carslot, opentime='$opentime', endtime='$endtime',placecategory='$placecategory',facility='$facility',parkingplace='$parkingplace'   
    where id=$id";
    $result=mysqli_query($con,$sql);
    if($result){
       // echo "updated successfully";
       header('location:admin.php');
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
            <h1 class= "test-center"> Parking Place Registration From </h1>
            <div class="form-group">
              <label for="">Name:</label>
              <input type="text" name="name" id="" class="form-control" placeholder="Name" value=<?php echo $name;?> >


            </div>
            <div class="form-group">
              <label for="">E-mail:</label>
              <input type="email" name="email" id="" class="form-control" placeholder="Email"value=<?php echo $email;?> >

             
            </div>
            <div class="form-group">
              <label for="">Mobile:</label>
              <input type="number" name="mobile" id="" class="form-control" placeholder="Mobile No"value=<?php echo $mobile;?> >

            </div>
            <div class="form-group">
              <label for="">Full address:</label>
              <input type="string" name="address" id="" class="form-control" placeholder=""value=<?php echo $address;?>>

            </div>
            <div class="form-group">
              <label for="">Security Guard Number(if available):</label>
              <input type="number" name="security" id="" class="form-control" placeholder=""value=<?php echo $security;?> >

              <small id="helpId" class="text-muted"></small>
            </div>
            <div class="form-group">
              <label for="">Division:</label>
              <input type="text" name="division" id="" class="form-control" placeholder="" value=<?php echo $division;?>>
              <small id="helpId" class="text-muted"></small>
            </div>
            <div class="form-group">
              <label for="">Allow Bike:</label>
              <input type="radio" name="bike" value="Yes">Yes
             <input type="radio" name="bike" value="No">No 

            </div>
            <div class="form-group">
              <label for="">Total Bike's Slot :</label>
              <input type="number" name="bikeslot" id="" class="form-control" placeholder="" value=<?php echo $bikeslot;?>>
              <small id="helpId" class="text-muted"></small>
            </div>
            <div class="form-group">
              <label for="">Allow Car:</label>
              <input type="radio" name="car" value="Yes">Yes
               <input type="radio" name="car" value="No">No

            </div>
            <div class="form-group">
              <label for=""> Total Car's Slot :</label>
              <input type="number" name="carslot" id="" class="form-control" placeholder="" value=<?php echo $carslot;?>>
              <small id="helpId" class="text-muted"></small>
            </div>
            <div class="form-group">
              <label for="">Opening Time: </label>
              <input type="time" name="opentime" id="" class="form-control" placeholder="" value=<?php echo $opentime;?>>
              <small id="helpId" class="text-muted"></small>
            </div>
            <div class="form-group">
              <label for="">Ending Time:</label>
              <input type="time" name="endtime" id="" class="form-control" placeholder=""value=<?php echo $endtime;?>>
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
         <button type="submit" class="btn btn-primary" name="submit"> Update </button> 

        </div>
  </form> 

  </body>
</html>
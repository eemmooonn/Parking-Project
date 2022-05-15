<?php
    include 'connect.php';
    ?>

<!doctype html>
<html lang="en">
  <head>
    <title>Sub-Admin List</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
<body style>
    <div class="container">
        <button class= "btn btn-primary my-5"><a href="SubAdminForm.php" class="text-light">Add Subadmin</a>

    </button>
     <center><h2>Sub-Admin List</h2></center><br><br>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">E-mail</th>
      <th scope="col">Mobile</th>
      <th scope="col">Full address</th>
      <th scope="col">Security Guard Number</th>
      <th scope="col">Division</th>
      <th scope="col">Allow Bike</th>
      <th scope="col">Total Bike's Slot</th>
      <th scope="col">Allow Car</th>
      <th scope="col">Total Car's Slot</th>
      <th scope="col">Opening Time</th>
      <th scope="col">Closing Time</th>
      <th scope="col">Place Category</th>
      <th scope="col">Facility</th>
      <th scope="col">Parking Place</th>
      <th scope="col">Operations</th>
    </tr>
  </thead>
  <tbody>
      <?php
      $sql="SELECT * FROM `subadminlist`";
      $result=mysqli_query($con,$sql);
      if($result){
         while($row=mysqli_fetch_assoc($result)){
             $id=$row['id'];
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

             echo'    <tr>
             <th scope="row">'.$id.'</th>
             <td>'.$name.'</td>
             <td>'.$email.'</td>
             <td>'.$mobile.'</td>
             <td>'.$address.'</td>
             <td>'.$security.'</td>
             <td>'.$division.'</td>
             <td>'.$bike.'</td>
             <td>'.$bikeslot.'</td>
             <td>'.$car.'</td>
             <td>'.$carslot.'</td>
             <td>'.$opentime.'</td>
             <td>'.$endtime.'</td>
             <td>'.$placecategory.'</td>
             <td>'.$facility.'</td>
             <td>'.$parkingplace.'</td>
             <td>
             <button class= "btn btn-primary"><a href="updateSubadmin.php? updateid='.$id.'" class="text-light">Update</a>
              </button>
              <button class= "btn btn-danger"><a href="delete.php? deleteid='.$id.'" class="text-light">Delete</a>
              </button>
             </td>

         </tr>';


         }
     }

        ?>

    </tbody>
</table>
    </div>

</body>
</html>

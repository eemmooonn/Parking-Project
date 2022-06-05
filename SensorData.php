<?php

class ArduinoData
{
    
 public $link='';

 function __construct($distance1, $distance2)
 {
  $this->storeInDB($distance1, $distance2);
 }
 
 
 function storeInDB($distance1, $distance2)
 {
    include 'connect.php';
    $status1;
    if($distance1>10)
    {
        $status1="Available";
    }
    else 
    {
        $status1="Booked";
    }
    $query1 = "UPDATE `slotlist_subid:1` SET `Slot_Status` = '".$status1."' WHERE `Slot_Id` = 1";
    $result1 = mysqli_query($con,$query1);


    $status2;
    if($distance2>10)
    {
        $status2="Available";
    }
    else 
    {
        $status2="Booked";
    }

    $query2 = "UPDATE `slotlist_subid:1` SET `Slot_Status` = '".$status2."' WHERE `Slot_Id` = 2";
    $result2 = mysqli_query($con,$query2);
 }
 
}

if($_GET['distance1'] != '' and  $_GET['distance2'] != '')
{
 $ArduinoData=new ArduinoData($_GET['distance1'],$_GET['distance2']);
}


?>
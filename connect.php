<?php

$con = mysqli_connect('localhost','root','') or die('Cannot connect to server');
$db = mysqli_select_db($con ,'attsystem') or die ('Cannot found database');

?>
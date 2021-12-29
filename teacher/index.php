<?php

ob_start();
session_start();

if($_SESSION['name']!='oasis')
{
  header('location: ../index.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>NITTE Attendance Management System Beta</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/main.css">

</head>
<body>

<header>
  <div class="row nittehead">
  <img src="../img/logo.png" alt="nitte" width="200px" ><p class="nittep">Attendance Management System Beta</p>
  </div>
  <div class="navbar">
  <a href="index.php">Home</a>
  <a href="students.php">Students</a>
  <a href="teachers.php">Faculties</a>
  <a href="attendance.php">Attendance</a>
  <a href="report.php">Report</a>
  <a href="../logout.php">Logout</a>

</div>

</header>

<center>

<div class="row">
    <div class="content">
      <p>One step solution for your class room :)</p>
    <img src="../img/tcr.png" height="200px" width="300px" />

  </div>

</div>

</center>

</body>
</html>

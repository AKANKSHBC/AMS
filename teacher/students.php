<?php

ob_start();
session_start();

if($_SESSION['name']!='oasis')
{
  header('location: login.php');
}
?>
<?php include('connect.php');?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>NITTE Attendance Management System Beta</title>
<meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="../css/main.css">
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
   
  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
   
  <link rel="stylesheet" href="styles.css" >
   
  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</style>

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
    <h3>Student List</h3>
    <br>
    <form method="post" action="">
      <label>Batch (ex. 2020)</label>
      <input type="text" name="sr_batch">
      <input type="submit" name="sr_btn" value="Go!" >
    </form>
    <br>
    <table class="table table-stripped">
      <thead>
        <tr>
          <th scope="col">Registration No.</th>
          <th scope="col">Name</th>
          <th scope="col">Department</th>
          <th scope="col">Batch</th>
          <th scope="col">Semester</th>
          <th scope="col">Email</th>
        </tr>
      </thead>

   <?php

    if(isset($_POST['sr_btn'])){
     
     $srbatch = $_POST['sr_batch'];
     $i=0;
     
     $all_query = mysqli_query($con, "select * from students where students.st_batch = '$srbatch' order by st_id asc ");
     
     while ($data = mysqli_fetch_array($all_query)) {
       $i++;
     
     ?>
  <tbody>
     <tr>
       <td><?php echo $data['st_id']; ?></td>
       <td><?php echo $data['st_name']; ?></td>
       <td><?php echo $data['st_dept']; ?></td>
       <td><?php echo $data['st_batch']; ?></td>
       <td><?php echo $data['st_sem']; ?></td>
       <td><?php echo $data['st_email']; ?></td>
     </tr>
  </tbody>

     <?php 
          } 
              }
      ?>
      
    </table>

  </div>

</div>

</center>

<div class="query1">

    <form method="post">
      <input type="submit" class="btn btn-primary col col-md-2" name="query" value="Query">
    </form>
<br>
<br>
          <?php 
                if(isset($_POST['query'])) {
          ?>        
                
    <div class="alert alert-success" role="alert">
      <h4>Code:</h4>
      <pre>     SELECT * FROM `students` WHERE `st_name` LIKE "shreyas" AND `st_batch`="2023";</pre>
    </div>

    <table class="table table-stripped">
      <thead>
        <tr>
          <th scope="col">Registration No.</th>
          <th scope="col">Name</th>
          <th scope="col">Department</th>
          <th scope="col">Batch</th>
          <th scope="col">Semester</th>
          <th scope="col">Email</th>
        </tr>
      </thead>

      <?php

        $i=0;
        $tcr_query = mysqli_query($con, "select * from students where st_name like 'shreyas' and st_batch='2023'");
        while($data = mysqli_fetch_array($tcr_query)){
          $i++;

        ?>
          <tbody>
            <tr>
              <td><?php echo $data['st_id']; ?></td>
              <td><?php echo $data['st_name']; ?></td>
              <td><?php echo $data['st_dept']; ?></td>
              <td><?php echo $data['st_batch']; ?></td>
              <td><?php echo $data['st_sem']; ?></td>
              <td><?php echo $data['st_email']; ?></td>
            </tr>
          </tbody>

          <?php } ?>
          
    </table>


</div>

<?php

        }

?>

<div class="query1">

    <form method="post">
      <input type="submit" class="btn btn-primary col col-md-2" name="query2" value="View Query">
    </form>
<br>
<br>
          <?php 
                if(isset($_POST['query2'])) {
          ?>        
                
    <div class="alert alert-success" role="alert">
      <h4>Code:</h4>
      <pre>     CREATE ALGORITHM = UNDEFINED VIEW `stud2023` AS SELECT * FROM `students` WHERE `st_name` LIKE "s%" AND `st_batch` LIKE "2023";</pre>
    </div>

    <table class="table table-stripped">
      <thead>
        <tr>
          <th scope="col">Registration No.</th>
          <th scope="col">Name</th>
          <th scope="col">Department</th>
          <th scope="col">Batch</th>
          <th scope="col">Semester</th>
          <th scope="col">Email</th>
        </tr>
      </thead>

      <?php

        $i=0;
        $tcr_query = mysqli_query($con, "CREATE ALGORITHM = UNDEFINED VIEW `std2023` AS SELECT * FROM `students` WHERE `st_name` LIKE 's%' AND `st_batch` LIKE '2023'");
        $s_query = mysqli_query($con, "select * from std2023 ");
        while($data = mysqli_fetch_array($s_query)){
          $i++;

        ?>
          <tbody>
            <tr>
              <td><?php echo $data['st_id']; ?></td>
              <td><?php echo $data['st_name']; ?></td>
              <td><?php echo $data['st_dept']; ?></td>
              <td><?php echo $data['st_batch']; ?></td>
              <td><?php echo $data['st_sem']; ?></td>
              <td><?php echo $data['st_email']; ?></td>
            </tr>
          </tbody>

          <?php } ?>
          
    </table>


</div>

<div style="height:300px;">
  .
</div>
<?php

        }

?>

</body>
</html>

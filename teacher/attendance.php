<?php

ob_start();
session_start();

if($_SESSION['name']!='oasis')
{
  header('location: ../index.php');
}
?>

<?php
    include('connect.php');
    try{
      
        if(isset($_POST['att'])) {

          $course = $_POST['course'];
          $period = $_POST['period'];

          foreach ($_POST['st_status'] as $i => $st_status) {
            
            $stat_id = $_POST['stat_id'][$i];
            $dp = date('Y-m-d');
            $course = $_POST['course'];
            $period = $_POST['period'];
            
            $stat = mysqli_query($con, "insert into attendance(stat_id,course,st_status,stat_date,stat_period) values('$stat_id','$course','$st_status','$dp','$period')");
            
            $att_msg = "Attendance Recorded.";

          }



        }
    }
  catch(Execption $e){
    $error_msg = $e->$getMessage();
  }
?>

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


<style type="text/css">
  .status{
    font-size: 10px;
  }

</style>

</head>
<body>

<header>

<div class="row nittehead">
  <img src="../img/logo.png" alt="nitte" width="200px"><p class="nittep">Attendance Management System Beta</p>
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
    <h3>Attendance of <?php echo date('Y-m-d'); ?></h3>
    <br>

    <center><p><?php if(isset($att_msg)) echo $att_msg; if(isset($error_msg)) echo $error_msg; ?></p></center> 
    
    <form action="" method="post" class="form-horizontal col-md-6 col-md-offset-3">

     <div class="form-group">

               <!-- <label>Select Batch</label>
                
                <select name="whichbatch" id="input1">
                      <option name="eight" value="38">38</option>
                      <option name="seven" value="37">37</option>
                </select>-->


                <label>Enter Batch</label>
                <input type="text" name="whichbatch" id="input2" >
              </div>

              <div class="form-group">
                  <label>Enter Period</label>
                  <select name="period">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                  </select>
              </div>

              <div class="form-group">
                  <label >Select Subject</label>
                  <select name="course" id="input1">
                        <option  value="DSM" selected>Database System Models</option>
                        <option disabled >***Future Courses***</option>
                        <!-- <option  value="algolab">Analysis of Algorithms Lab</option>
                        <option  value="dbms">Database Management System</option>
                        <option  value="dbmslab">Database Management System Lab</option>
                        <option  value="weblab">Web Programming Lab</option>
                        <option  value="os">Operating System</option>
                        <option  value="oslab">Operating System Lab</option>
                        <option  value="obm">Object Based Modeling</option>
                        <option  value="softcomp">Soft Computing</option> -->
                  </select>
              </div>
               
              <input type="submit" class="btn btn-primary col-md-2 col-md-offset-5" value="Show!" name="batch" />
<br>
    </form>

    

    <!-- <div class="content"></div> -->
    <form method="post">

      

    <table class="table table-stripped">
      <thead>
        <tr>
          <th scope="col">Reg. No.</th>
          <th scope="col">Name</th>
          <th scope="col">Department</th> 
          <th scope="col">Batch</th>
          <th scope="col">Period</th>
          <th scope="col">Semester</th>
          <th scope="col">Email</th>
          <th scope="col">Status</th>
        </tr>
      </thead>
   <?php

    if(isset($_POST['batch'])){

     $i=0;
     $radio = 0;
     $batch = $_POST['whichbatch'];
     $period = $_POST['period'];
     $course = $_POST['course'];
     $all_query = mysqli_query($con, "select * from students where st_batch='$batch' order by st_id asc");

     while ($data = mysqli_fetch_array($all_query)) {
       $i++;
     ?>
  <body>
     <tr>
       <td><?php echo $data['st_id']; ?> <input type="hidden" name="stat_id[]" value="<?php echo $data['st_id']; ?>"> </td>
       <td><?php echo $data['st_name']; ?> <input type="hidden" name="course" value="<?php echo $course ?>"> </td>
       <td><?php echo $data['st_dept']; ?></td>
       <td><?php echo $data['st_batch']; ?></td>
       <td><?php echo $period; ?> <input type="hidden" name="period" value="<?php echo $period ?>"> </td> 
       <td><?php echo $data['st_sem']; ?></td>
       <td><?php echo $data['st_email']; ?></td>
       <td>
         <label>Present</label>
         <input type="radio" name="st_status[<?php echo $radio; ?>]" value="Present" >
         <label>Absent </label>
         <input type="radio" name="st_status[<?php echo $radio; ?>]" value="Absent" checked>
       </td>
     </tr>
  </body>

     <?php

        $radio++;
      } 
}
      ?>
    </table>

    <center><br>
    <input type="submit" class="btn btn-primary col-md-2 col-md-offset-10" value="Save!" name="att" />
  </center>

</form>
  </div>

</div>

</center>

</body>
</html>

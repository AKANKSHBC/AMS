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
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Attendance Management System 1.0</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <div class="row">
        <form  method="post" class="form-horizontal col-md-3 col-md-offset-3 mt-5 mx-4">
        <div class="row">
                <input type="submit" class="btn btn-dark my-2" value="View Query" name="query1" />
                <input type="submit" class="btn btn-dark my-2" value="Trigger Query" name="query2" />
                <input type="submit" class="btn btn-dark my-2" value="Stored Procedure" name="query3" />
                <input type="submit" class="btn btn-dark my-2" value="Query 1" name="query4" />
                <input type="submit" class="btn btn-dark my-2" value="Query 2" name="query5" />
                <input type="submit" class="btn btn-dark my-2" value="Query 3" name="query6" />
                <button class="btn btn-outline-light"><a href="index.php" style="text-decoration:none;">Back</a></button>
                </div>
        </form>
        <div class=" col mt-5 mx-4">

            <?php 
                if(isset($_POST['query1'])) {
            ?>
                <div class="row col-12 border border-5 mt-2 " id="label1">
                    <p>Code :</p>
                    <label class="form-label ps-5">CREATE TABLE tablename ( );</label>
                    <img src="img/viewQuery1.png" alt="img" height="550px"/>
                </div>
            <?php
                }            
            ?>

            <?php 
                if(isset($_POST['query2'])) {
            ?>
                <div class="row col-12 border border-5 mt-2 " id="label1">
                    query 2
                </div>
            <?php
                }            
            ?>

            <?php 
                if(isset($_POST['query3'])) {
            ?>
                <div class="row col-12 border border-5 mt-2 " id="label1">
                    query 3
                </div>
            <?php
                }            
            ?>

            <?php 
                if(isset($_POST['query4'])) {
            ?>
                <div class="row col-12 border border-5 mt-2 " id="label1">
                    hello there 4
                </div>
            <?php
                }            
            ?>

            <?php 
                if(isset($_POST['query5'])) {
            ?>
                <div class="row col-12 border border-5 mt-2 " id="label1">
                    hello there 5
                </div>
            <?php
                }            
            ?>
            
            <?php 
                if(isset($_POST['query6'])) {
            ?>
                <div class="row col-12 border border-5 mt-2 " id="label1">
                    hello there 6
                </div>
            <?php
                }            
            ?>
        
        

        </div>
    </div>

    
    
</body>
</html>





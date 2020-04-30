<?php
session_start();

require "dbh.inc.php";

$money = $_POST['money'];

$id = $_SESSION['id'];

if ($money > 0){
    $sql = "INSERT INTO charity (user_id, money)
    VALUES ('$id', '$money')";
    if ($conn->query($sql) === TRUE) {
        header("location: ../main.php#what");
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
            }
            }else{
                header("location: ../donate.php?Error=negativenumber");
                exit();
            }

  
  $conn->close();
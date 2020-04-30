<?php
$dBServername = "sql110.epizy.com";
$dBUsername = "epiz_25375038";
$dBPassword = "ZBN7spbJWBZwTE";
$dBName = "epiz_25375038_charitydb";

// Create connection
$conn = mysqli_connect($dBServername, $dBUsername, $dBPassword, $dBName);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

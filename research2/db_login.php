<?php
$db_host = "localhost:3036";
$db_username = "root";
$db_password = " ";
$db_database="querylogs";
$conn = mysql_connect($db_host, $db_username, $db_password);

//$grade_level=$POST[grades];
//$url=$POST[url];
//$time_clicked=$POST[];
//$url_time_clicked=$POST[];
//$query=$POST[GO];



// Create connection
try {
    $conn = new PDO("mysql:host=$servername;dbname=querylogs", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
}
catch(PDOException $e)
{
    echo "Connection failed: " . $e->getMessage();
}
?>
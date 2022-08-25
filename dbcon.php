<?php

$SERVER = "localhost";
$DATABASE = "moviedb";
$USERNAME = "root";
$PASSWORD = "";

$conn = mysqli_connect($SERVER, $USERNAME, $PASSWORD);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected Successfully.";

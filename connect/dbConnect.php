<?php

namespace db;

use mysqli;

function dbStart()
{
    $dbhost = "localhost";
    $dbuser = "root";
    $dbpass = "";
    $db = "elhurt";
    if($dbhost !== "" && $dbuser !== "" && $db !== ""){
        $conn = new mysqli($dbhost, $dbuser, $dbpass, $db);
        $conn->set_charset("utf8");
        return $conn;
    }
}

function dbClose($conn)
{
    $conn->close();
}

function dbQuery($query) {
    global $conn;
    $result = $conn->query($query);
    $array = [];
    while($row = $result->fetch_assoc()){
        $array[] = $row;
    }
    return $array;
}

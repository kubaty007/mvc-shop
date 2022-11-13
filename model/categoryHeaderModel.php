<?php


namespace categoryHeaderModel;

use function db\dbQuery;

global $categoryHeader_model;
$categoryHeader_model;

$cat_name = \helper\getLastSegment();

$SELECT = "SELECT name, uri, description ";
$FROM = "FROM `categories` ";
$WHERE = "WHERE uri = '$cat_name' ";
$WHERE .= "";
$ORDER = "";
$LIMIT = "";

$query = $SELECT . $FROM . $WHERE . $ORDER . $LIMIT;
$result = dbQuery($query);

    $categoryHeader_model = $result[0];
    $categoryHeader_model['shown'] = substr($categoryHeader_model['description'], 0, 400);
    $categoryHeader_model['hidden'] = substr($categoryHeader_model['description'], 400);

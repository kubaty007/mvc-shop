<?php

namespace productTopModel;

use function db\dbQuery;

global $productTop_model;
$productTop_model = [];

$id = \helper\getLastSegment();

$SELECT = "SELECT p.nazwa, c.higherCategory, c.uri ";
$FROM = "FROM `product_categories` pc ";
$JOIN = "JOIN `products` p on pc.idProduct = p.id ";
$JOIN .= "JOIN `categories` c on pc.idCategory = c.id ";
$WHERE = "WHERE pc.idProduct = $id ";
$WHERE .= "AND c.categoryType = 'producers' ";
$ORDER = "";
$LIMIT = "LIMIT 1 ";

$query = $SELECT . $FROM . $JOIN . $WHERE . $ORDER . $LIMIT;

$result = dbQuery($query);

$productTop_model['title'] = $result[0];

$higher = $result[0]['higherCategory'];
$producer = $result[0]['uri'];

while($higher > 0) {
    $SELECT = "SELECT uri, higherCategory ";
    $FROM = "FROM `categories` ";
    $WHERE = "WHERE categoryType = 'producers' ";
    $WHERE .= "AND id = $higher ";
    $query = $SELECT . $FROM . $WHERE . $ORDER . $LIMIT;
    $temp = dbQuery($query);
    $higher = $temp[0]['higherCategory'];
    $producer = $temp[0]['uri'];
}

$SELECT = "SELECT name, idBanner ";
$FROM = "FROM `categories` ";
$WHERE = "WHERE uri = '$producer' ";
$query = $SELECT . $FROM . $WHERE . $ORDER . $LIMIT;

$result = dbQuery($query);

$productTop_model['logo'] = $result[0];

$SELECT = "SELECT photoSmall ";
$FROM = "FROM `banners` ";
$WHERE = "WHERE id = '". $productTop_model['logo']['idBanner'] . "' ";

$query = $SELECT . $FROM . $WHERE . $LIMIT;

$result = dbQuery($query);

if(!empty($result)) {
    $productTop_model['logo']['photo'] = $result[0]['photoSmall'];
}


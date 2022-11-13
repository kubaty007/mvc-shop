<?php


namespace categoryTilesModel;

use function db\dbQuery;

global $categoryTiles_model;
$categoryTiles_model = [];

$active_cat = \helper\getLastSegment();

$SELECT = "SELECT name, photoSmall, uri, level, higherCategory ";
$FROM = "FROM `categories` ";
$WHERE = "WHERE uri = '$active_cat' ";
$WHERE .= "AND categoryType = 'category' ";
$ORDER = "";
$LIMIT = "";

$query = $SELECT . $FROM . $WHERE . $ORDER . $LIMIT;
$result = dbQuery($query);

$current_cat = $result[0];

$SELECT = "SELECT name, photoSmall, uri ";
$WHERE = "WHERE level = ".$current_cat['level']." ";
$WHERE .= "AND categoryType = 'category' ";
$WHERE .= "AND higherCategory = ".$current_cat['higherCategory']." ";

$query = $SELECT . $FROM . $WHERE . $ORDER . $LIMIT;
$result = dbQuery($query);

$categoryTiles_model = $result;

foreach($categoryTiles_model as $key => $value){
    if($value['uri'] == $active_cat) {
        $categoryTiles_model[$key]['active'] = 1;
    } else{
        $categoryTiles_model[$key]['active'] = 0;
    }
}

//\helper\debug($categoryTiles_model);

foreach ($categoryTiles_model as &$item) {
    if(empty($item['photoSmall'])) {
        $item['photoSmall'] = './photos/img_06.jpg';
    }
}
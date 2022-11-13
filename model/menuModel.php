<?php


namespace menuModel;

use function db\dbQuery;

global $menu_model;
$menu_model = [];

$cat_name = \helper\getLastSegment();

$SELECT = "SELECT name, uri, higherCategory, level ";
$FROM = "FROM `categories`";
$WHERE = "WHERE visibility = 1 ";
$WHERE .= "AND uri = '$cat_name' ";;
$ORDER = "";
$LIMIT = "";

$query = $SELECT . $FROM . $WHERE . $ORDER . $LIMIT;
$result = dbQuery($query);

$menu_model['activeCat'] = $result[0];

$SELECT = "SELECT id, name, uri, higherCategory, level ";
$FROM = "FROM `categories`";
$WHERE = "WHERE visibility = 1 ";
$WHERE .= "AND higherCategory = '".$menu_model['activeCat']['higherCategory']."' ";
$WHERE .= "AND categoryType = 'category' ";
$WHERE .= "AND level = ".$menu_model['activeCat']['level']." ";
$ORDER = "";
$LIMIT = "";

$query = $SELECT . $FROM . $WHERE . $ORDER . $LIMIT;
$result = dbQuery($query);

    $menu_model['categories'] = $result;


if(!empty($menu_model['categories'])) {
    foreach ($menu_model['categories'] as $key => $value) {
        $SELECT = "SELECT id, name, uri, level ";
        $FROM = "FROM `categories`";
        $WHERE = "WHERE visibility = 1 ";
        $WHERE .= "AND higherCategory = '" . $value['id'] . "' ";
        $WHERE .= "AND categoryType = 'category' ";
        $WHERE .= "AND level = 2 ";
        $ORDER = "";
        $LIMIT = "";

        $query = $SELECT . $FROM . $WHERE . $ORDER . $LIMIT;
        $result = dbQuery($query);

            $menu_model['categories'][$key]['subCats'] = $result;
    }
}
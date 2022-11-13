<?php


namespace breadcrumbsModel;

global $breadcrumbs_data;

$breadcrumbs_data = [];

$URL = \helper\getLastSegment();

if(is_numeric($URL)) {
    $SELECT = "SELECT c.uri, c.higherCategory ";
    $FROM = "FROM `product_categories` pc ";
    $JOIN = "JOIN `products` p on pc.idProduct = p.id ";
    $JOIN .= "JOIN `categories` c on pc.idCategory = c.id ";
    $WHERE = "WHERE c.categoryType = 'category' ";
    $WHERE .= "AND pc.idProduct = $URL ";
    $ORDER = "ORDER BY level DESC ";
    $LIMIT = "LIMIT 1 ";
    $query = $SELECT . $FROM . $JOIN . $WHERE . $ORDER . $LIMIT;
    $temp = \db\dbQuery($query);
    $higher = $temp[0]['higherCategory'];

    while($higher > 0) {
        $SELECT = "SELECT uri, higherCategory ";
        $FROM = "FROM `categories` ";
        $WHERE = "WHERE categoryType = 'category' ";
        $WHERE .= "AND id = $higher ";
        $ORDER = "";
        $query = $SELECT . $FROM . $WHERE . $ORDER . $LIMIT;
        $temp = \db\dbQuery($query);
        $higher = $temp[0]['higherCategory'];
        $URL = $temp[0]['uri'];
    }
}

    $breadcrumbs_data['breadcrumbs']['default'] = ['name' => 'strona główna',
        'uri' => 'home'];

    $SELECT = "SELECT name, uri ";
    $FROM = "FROM `categories` ";
    $WHERE = "WHERE uri = '$URL' ";
    $WHERE .= "";
    $ORDER = "";
    $LIMIT = "";

    $query = $SELECT . $FROM . $WHERE . $ORDER . $LIMIT;

    $result = \db\dbQuery($query);

    $breadcrumbs_data['breadcrumbs']['result'] = $result[0];

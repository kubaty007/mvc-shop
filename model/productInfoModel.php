<?php

namespace productInfoModel;

use function db\dbQuery;

global $productInfo_model;
$productInfo_model = [];

$id = \helper\getLastSegment();

$SELECT = "SELECT p.id, p.nazwa, p.productCode, p.price, p.priceDiscounted, p.stock, p.idVariantGroup ";
$FROM = "FROM `product_categories` pc ";
$JOIN = "JOIN `products` p on pc.idProduct = p.id ";
$WHERE = "WHERE pc.idProduct = $id ";
$ORDER = "";
$LIMIT = "LIMIT 1 ";

$query = $SELECT . $FROM . $JOIN . $WHERE . $ORDER . $LIMIT;

$result = dbQuery($query);

if(!empty($result)) {
    $productInfo_model['product'] = $result[0];
}

if(!empty($productInfo_model['product']['idVariantGroup'])) {

    $SELECT = "SELECT p.id, pi.photoSmall, pi.alt, p.variantName ";
    $FROM = "FROM `products` p ";
    $JOIN = "JOIN `product_images` pi on pi.idProduct = p.id ";
    $WHERE = "WHERE p.id != " . $productInfo_model['product']['id'] . " ";
    $WHERE .= "AND p.idVariantGroup = " . $productInfo_model['product']['idVariantGroup'] . " ";
    $ORDER = "";
    $GROUP = "GROUP BY p.id";
    $LIMIT = "";

    $query = $SELECT . $FROM . $JOIN . $WHERE . $ORDER . $GROUP . $LIMIT;

    $result = dbQuery($query);

    $productInfo_model['variants'] = $result;
    $i = 0;
    while($i < 5) {
        $productInfo_model['variants'][] = "e";
        $i++;
    }
}
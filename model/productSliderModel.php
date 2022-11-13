<?php

namespace productSliderModel;

use function db\dbQuery;

global $productSliderData;

$productSliderData = [
    'title' => 'polecane produkty',
    'buttonText' => 'zobacz wszystkie inspiracje',
    'productArray' => []
];

//nazwa max 80 char.

$select = 'SELECT p.id, p.nazwa, p.productCode, p.price, p.priceDiscounted, p.stock, pi.photoSmall, pi.alt ';
$from = 'FROM products p ';
$join = 'JOIN product_flags pf ON p.id = pf.idProduct 
JOIN flags f ON pf.idFlag = f.id 
LEFT JOIN product_images pi ON pi.idProduct = p.id ';
$where = 'WHERE f.id = 3 and p.visibility = 1 '; //where flaga = polecane
$group = 'GROUP BY p.id ';
$order = 'ORDER BY RAND() ';
$limit = 'LIMIT 100'; //max 100 items
$query = $select.$from.$join.$where.$group.$order.$limit;

$result = dbQuery($query);

    $productSliderData['productArray'] = $result;

//\helper\debug($productSliderData['productArray']);


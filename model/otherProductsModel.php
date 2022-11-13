<?php

namespace otherProductsModel;

global $otherProducts_data;

use function db\dbQuery;

$prodId = \helper\getLastSegment();

$query = "SELECT c.`higherCategory` AS id 
    FROM `products` p 
    JOIN `product_categories` pc
    ON pc.`idProduct` = p.`id`
    JOIN `categories` c 
    ON c.`id` = pc.`idCategory`
    WHERE p.`id` = $prodId 
    AND c.`categoryType` = 'category'";

$catId = dbQuery($query)[0]['id'];


if(isset($catId)) {
    $query = "SELECT p.`id`, p.`nazwa`, p.`productCode`, p.`price`, p.`priceDiscounted`, pi.`photoSmall`
    FROM products p 
    JOIN product_categories pc 
    ON pc.idProduct = p.id 
    JOIN categories c 
    ON c.id = pc.idCategory 
    LEFT JOIN product_images pi 
    ON pi.idProduct = p.id
    WHERE c.`higherCategory` = $catId AND p.`id` <> $prodId
    GROUP BY p.id ;";

    $result = dbQuery($query);


}

$otherProducts_data = [
    'title' => 'inne z kategorii',
    'productArray' => $result
];
<?php

namespace detailsModel;

use function db\dbQuery;

global $details_data;

$prodId = \helper\getLastSegment();

$query = "select f.`name`, fv.`value` 
    from `products` p 
    JOIN `product_filters` pf 
    on p.`id` = pf.`idProduct` 
    JOIN `filter_value` fv 
    on pf.`idFilterValue` = fv.`id` 
    JOIN `filters` f on f.`id` = fv.`idFilter` 
    WHERE p.`id` = $prodId;";

$result = dbQuery($query);

$details_array = [];

foreach ($result as $row) {
    if(!isset($details_array[$row['name']])) {
        $details_array[$row['name']] = [
            'name' => $row['name'],
            'values' => []
        ];
    }
    $details_array[$row['name']]['values'] [] = $row['value'];
}

$details_data = [
    'title' => 'dane podstawowe',
    'parameters' => $details_array
];

//\helper\debug($details_data);

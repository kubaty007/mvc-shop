<?php

namespace filtersModel;

use function db\dbQuery;

global $filters_data;

//producers
//create an array
$result = dbQuery("SELECT `id`, `name` FROM `categories` WHERE categoryType = 'producers' and `level` = 1;");

$filters_data['producers'] = [
    'name' => 'producenci',
    'items' => []
];

foreach ($result as $row) {
    //creating an array
    $filters_data['producers']['items'][] = [
        'id' => $row['id'],
        'name' => $row['name'],
        'inputName' => 'producer'.$row['id'],
        'value' => ''
    ];
}

//update an array
foreach ($filters_data['producers']['items'] as &$input) {

    if (isset($_GET[$input['inputName']])) {
        $input['value'] = 'checked';
    }

}

//color
//create an array
$result = dbQuery("SELECT `id`, `name` FROM `filters` WHERE `name` = 'kolor';");

foreach ($result as $row) {
    $filters_data['filters']['kolor'] = [
        'type' => 'color',
        'name' => $row['name'],
        'id' => $row['id'],
        'values' => []
    ];

    $idTmp = $row['id'];

    $sub_result = dbQuery("SELECT `id`, `value`, `filterColor` FROM `filter_value` WHERE `idFilter` = $idTmp;");

    foreach ($sub_result as $sub_row) {
        $filters_data['filters']['kolor']['values'][] = [
            'inputName' => 'color'.$sub_row['id'],
            'name' => $sub_row['value'],
            'hex' => $sub_row['filterColor'],
            'value' => ''
        ];
    }
}

//update an array
foreach ($filters_data['filters']['kolor']['values'] as &$input) {
    if (isset($_GET[$input['inputName']])) {
        $input['value'] = 'checked';

    }
}

//size
//create an array
$result = dbQuery("SELECT `id`, `name` FROM `filters` WHERE `name` = 'rozmiar';");

foreach ($result as $row) {
    $filters_data['filters']['rozmiar'] = [
        'type' => 'textInCheckbox',
        'name' => $row['name'],
        'id' => $row['id'],
        'values' => []
    ];

    $idTmp = $row['id'];

    $sub_result = dbQuery("SELECT `id`, `value` FROM `filter_value` WHERE `idFilter` = $idTmp;");

    foreach ($sub_result as $sub_row) {
        $filters_data['filters']['rozmiar']['values'][] = [
            'inputName' => 'rozmiar'.$sub_row['id'],
            'name' => $sub_row['value'],
            'value' => ''
        ];
    }
}

//update an array
foreach ($filters_data['filters']['rozmiar']['values'] as &$input) {
    if (isset($_GET[$input['inputName']])) {
        $input['value'] = 'checked';
    }
}

//price range

$select = 'SELECT priceDiscounted as max ';
$from = 'from products p ';
$join = 'join product_categories pc
on pc.idProduct = p.id
JOIN categories c 
on c.id = pc.idCategory
JOIN categories c2 
on c.higherCategory = c2.id ';
$where = 'where c.uri = "'.$_SESSION['cat'].'" OR c2.uri = "'.$_SESSION['cat'].'" ';
$group = 'group by p.id ';
$order = 'order by priceDiscounted desc ';
$limit = 'limit 1;';

$query = $select . $from . $join . $where . $group . $order . $limit;

$row = dbQuery($query);


//create an array
$filters_data['filters']['price'] = [
    'type' => 'range',
    'name' => 'cena',
    'minInput' => [
        'inputName' => 'minPrice',
        'value' => $_GET['minPrice'] ?? 0,
        'min' => 0,
        'max' => isset($row[0]['max']) ? ceil($row[0]['max'] - 1) : 49
    ],
    'maxInput' => [
        'inputName' => 'maxPrice',
        'value' => $_GET['maxPrice'] ?? (isset($row[0]['max']) ? ceil($row[0]['max']) : 50),
        'min' => 1,
        'max' => isset($row[0]['max']) ? ceil($row[0]['max']) : 50
    ]
];



$_SESSION['inputs'] = $filters_data;



//\helper\debug($filters_data);
//\helper\debug($_GET);


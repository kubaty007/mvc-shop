<?php

global $productListNavData;

$limit = 20;

$productListNavData = [
    'limitOptions' => [
        [
            'value' => '20',
            'text' => '20',
            'selected' => ''
        ],
        [
            'value' => '40',
            'text' => '40',
            'selected' => ''
        ],
        [
            'value' => '60',
            'text' => '60',
            'selected' => ''
        ],
        [
            'value' => '80',
            'text' => '80',
            'selected' => ''
        ]
    ],

    'orderOptions' => [
        [
            'text' => 'domyślnie',
            'order' => 'default',
            'selected' => ''
        ],
        [
            'text' => 'cena rosnąco',
            'order' => 'priceDiscounted asc',
            'selected' => ''
        ],
        [
            'text' => 'cena malejąco',
            'order' => 'priceDiscounted desc',
            'selected' => ''
        ],
        [
            'text' => 'nazwa rosnąco',
            'order' => 'nazwa asc',
            'selected' => ''
        ],
        [
            'text' => 'nazwa malejąco',
            'order' => 'nazwa desc',
            'selected' => ''
        ]
    ],

    'pages' => [
        'pages_count' => 1,
        'current_page' => 1
    ]
];

if (isset($_GET['limit'])) {
    foreach ($productListNavData['limitOptions'] as &$option) {
        if ($_GET['limit'] == $option['value']) {
            $option['selected'] = 'selected';
        }
    }
    $limit = $_GET['limit'];
}

if (isset($_GET['order'])) {
    foreach ($productListNavData['orderOptions'] as &$option) {
    if($_GET['order'] == $option['order']) {
            $option['selected'] = 'selected';
        }
    }
}

if (isset($_SESSION['productsCount']) && $limit != 0) {
    $productListNavData['pages']['pages_count'] = ceil($_SESSION['productsCount'] / $limit);
}



//\helper\debug($productListNavData);
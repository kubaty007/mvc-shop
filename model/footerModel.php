<?php

namespace footerModel;

global $footer_data;

use function db\dbQuery;

$footer_data = [];

$footer_data['copyright'] = 'Copyright 2022. Wszystkie prawa zastrzeżone';
$footer_data['author'] = 'Agencja interaktywna <a href="https://trol.pl">[ti]</a> Powered by <a href="https://2click.pl">2ClickShop</a>';

$footer_data['categories'] = [];    //category array

$category_query = 'SELECT id, name FROM parent_elements WHERE section = "footer" AND visibility = 1;';

$result = dbQuery($category_query);

$footer_data['categories'] = $result;

foreach($footer_data['categories'] as $key => $value) {

    $result2 = dbQuery('select itemName, uri from child_elements where idParent = '.$footer_data['categories'][$key]['id'].' AND visibility = 1 ORDER BY position asc');

    $footer_data['categories'][$key]['items'] = $result2;
}

foreach ($footer_data['categories'] as &$item) {
    foreach ($item['items'] as &$itemDetails) {
        if ($itemDetails['uri'] === '') {
            $itemDetails['uri'] = 'javascript:void(0)';
        }
    }
}
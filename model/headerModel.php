<?php

namespace headerModel;

use function db\dbQuery;
use function Helper\debug;

global $model_data;
$model_data = [];

//main nav
$mobileMenu = [
    'classes' => 'header__navListItem--mobile --js_mobileMenuButton_main',
    'href' => '',
    'icon' => '<i class="icon_menu header__icon"></i>',
    'text' => 'menu'
];

$contact = [
    'classes' => '',
    'href' => 'javascript:void(0)',
    'icon' => '<i class="icon_contact header__icon"></i>',
    'text' => 'kontakt'
];

$favourites = [
    'classes' => '',
    'href' => '',
    'icon' => '<i class="icon_favourites header__icon"></i>',
    'text' => 'ulubione'
];

$account = [
    'classes' => '',
    'href' => '',
    'icon' => '<i class="icon_account header__icon"></i>',
    'text' => 'moje konto'
];

$model_data['mainNavItems'] = array($mobileMenu, $contact, $favourites, $account);

//cart
$model_data['cart'] = [
    'href' => '',
    'itemQuantity' => '324',
    'itemsValue' => '3456'
];

//categories
$query = "SELECT c.`name`, c.`uri` FROM `categories` c WHERE c.`categoryType` = 'category' AND c.`level` = 1 AND c.`visibility` = 1;";

$result = dbQuery($query);

    $model_data['categories'] = $result;

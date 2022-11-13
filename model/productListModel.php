<?php


global $productListData;

$inputs = $_SESSION['inputs'];

//\helper\debug($inputs, 'INPUTS');

$select = "SELECT p.`id`, p.`nazwa`, p.`productCode`, p.`price`, p.`priceDiscounted`, p.`stock`, pi.`photoSmall`, pi.`alt` ";
$from = 'FROM `products` p  ';
$join = 'JOIN `product_categories` pc
ON p.`id` = pc.`idProduct`
JOIN `categories` c
ON c.`id` = pc.`idCategory` 
LEFT JOIN `product_images` pi
ON pi.`idProduct` = p.`id`
LEFT JOIN `product_filters` pf
on pf.`idProduct` = p.`id`
LEFT JOIN `filter_value` fv
ON fv.`id` = pf.`idFilterValue`
LEFT JOIN `filters` f
ON f.`id` = fv.`idFilter` ';

$where_producers = 'WHERE p.`id` IN (
SELECT
    p.`id`
FROM
    `products` p
JOIN `product_categories` pc ON
    p.`id` = pc.`idProduct`
JOIN `categories` c ON
    c.`id` = pc.`idCategory`
JOIN `categories` c2 ON
    c2.`id` = c.`higherCategory`
WHERE
    p.`visibility` = 1 AND (c2.`uri` = "'.$_SESSION['cat'].'" OR c.`uri` = "'.$_SESSION['cat'].'")
GROUP BY
    p.`id`)';

$addedProducerWhere = false;


//producers
foreach ($inputs['producers']['items'] as $input) {

    if (isset($_GET[$input['inputName']])) {
        $input['value'] = true;
    } else {
        $input['value'] = false;
    }


    if ($input['value']) {
        if (!$addedProducerWhere) {
            $where_producers .= ' AND (c.`categoryType` = "producers" AND ( c.`higherCategory` = ' . $input['id'] . ' OR c.`id` = ' . $input['id'];
            $addedProducerWhere = true;
        } else {
            $where_producers .= ' OR c.`higherCategory` = ' . $input['id'] . ' OR c.`id` = ' . $input['id'];
        }
    }
}

if ($addedProducerWhere) {
    $where_producers .= '))';
}


//colors
$where_color = '';

$addedColorWhere = false;

foreach ($inputs['filters']['kolor']['values'] as $input) {

    if (isset($_GET[$input['inputName']])) {
        $input['value'] = true;
    } else {
        $input['value'] = false;
    }

    if ($input['value']) {
        if (!$addedColorWhere) {
            $where_color .= ' AND (p.`id` IN (SELECT p.`id` FROM `products` p JOIN `product_filters` pf ON pf.`idProduct` = p.`id` JOIN `filter_value` fv ON fv.`id` = pf.`idFilterValue` WHERE fv.`value` = "'.$input['name'].'")';
            $addedColorWhere = true;
        } else {
            $where_color .= ' OR p.`id` IN (SELECT p.`id` FROM `products` p JOIN `product_filters` pf ON pf.`idProduct` = p.`id` JOIN `filter_value` fv ON fv.`id` = pf.`idFilterValue` WHERE fv.`value` = "'.$input['name'].'")';
        }
    }
}

if ($addedColorWhere) {
    $where_color .= ')';
}


//size
$where_size = '';

$addedSizeWhere = false;

foreach ($inputs['filters']['rozmiar']['values'] as $input) {

    if (isset($_GET[$input['inputName']])) {
        $input['value'] = true;
    } else {
        $input['value'] = false;
    }

    if ($input['value']) {
        if (!$addedSizeWhere) {
            $where_size .= ' AND (p.`id` IN (SELECT p.`id` FROM `products` p JOIN `product_filters` pf ON pf.`idProduct` = p.`id` JOIN `filter_value` fv ON fv.`id` = pf.`idFilterValue` WHERE fv.`value` = "'.$input['inputName'].'")';
            $addedSizeWhere = true;
        } else {
            $where_size .= ' OR p.`id` IN (SELECT p.`id` FROM `products` p JOIN `product_filters` pf ON pf.`idProduct` = p.`id` JOIN `filter_value` fv ON fv.`id` = pf.`idFilterValue` WHERE fv.`value` = "'.$input['inputName'].'")';
        }
    }
}
if ($addedSizeWhere) {
    $group = ') GROUP BY p.`id` ';
} else {
    $group = ' GROUP BY p.`id` ';
}


//price
$where_price = '';

if (isset($_GET[$inputs['filters']['price']['minInput']['inputName']]) || isset($_GET[$inputs['filters']['price']['maxInput']['inputName']])) {
    $where_price .= 'AND (p.`id` IN (SELECT p.`id` FROM `products` p where p.`priceDiscounted` BETWEEN '.$_GET[$inputs['filters']['price']['minInput']['inputName']].' AND '.$_GET[$inputs['filters']['price']['maxInput']['inputName']].'))';
}


//limit
if (isset($_GET['limit']) && is_numeric($_GET['limit'])) {
    $limit = $_GET['limit'];
} else {
    $limit = 20;
}


//order
if (isset($_GET['order']) && $_GET['order'] != 'default') {
    $order = 'ORDER BY '.$_GET['order'];
} else {
    $order = '';
    //\Helper\debug('default or unset', 'order value');
}


//page
if (isset($_GET['page']) && is_numeric($_GET['page'])) {
    $pageNumber = $_GET['page'];
} else {
    $pageNumber = 1;
}

//offset
$offset = ' offset '.(($limit * $pageNumber) - $limit);


//query
$query = $select . $from . $join . $where_producers . $where_color . $where_size . $where_price . $group . $order . ' limit ' .$limit . $offset;

//\Helper\debug($query, 'SQL');

$result = \db\dbQuery($query);

foreach ($result as $row) {
    $productListData['productArray'][] = $row;
}

//count products
$countQuery = 'select COUNT(DISTINCT(p.`id`)) as count '.$from . $join . $where_producers . $where_color . $where_size. $where_price;

if($addedSizeWhere) {
    $countQuery .= ')';
}

//echo $countQuery;

$countResult = \db\dbQuery($countQuery);
$_SESSION['productsCount'] = $countResult[0]['count'];


//display mode
$displayMode = !empty($_GET['dm']) ? $_GET['dm'] : 'icon';

$productListData['dm'] = $displayMode;

//\Helper\debug($productListData);
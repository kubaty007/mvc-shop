<?php

namespace productGalleryModel;

use function db\dbQuery;

global $productGallery_model;
$productGallery_model = [];

$id = \helper\getLastSegment();

$SELECT = "SELECT pi.photoSmall, pi.photoBig, pi.alt ";
$FROM = "FROM `products` p ";
$JOIN = "JOIN `product_images` pi on pi.idProduct = p.id ";
$WHERE = "WHERE p.id = $id ";
$WHERE .= "";
$ORDER = "";
$LIMIT = "";

$query = $SELECT . $FROM . $JOIN . $WHERE . $ORDER . $LIMIT;

$result = dbQuery($query);

$productGallery_model['photos'] = $result;

$SELECT = "SELECT f.name, f.color ";
$FROM = "FROM `product_flags` pf ";
$JOIN = "JOIN `flags` f on f.id = pf.idFlag ";
$JOIN .= "JOIN `products` p on p.id = pf.idProduct ";
$WHERE = "WHERE p.id = $id ";

$query = $SELECT . $FROM . $JOIN . $WHERE ;

$result = dbQuery($query);

if(!empty($result)) {
    foreach($result as $row => $value) {
        switch($value['name']) {
            case 'promocja':
                $productGallery_model['flags'][$row]['name'] = 'promocja';
                break;
            case 'nowość':
                $productGallery_model['flags'][$row]['name'] = 'nowość';
                break;
            case 'polecane':
                $productGallery_model['flags'][$row]['name'] = 'polecane';
                break;
        }
        $productGallery_model['flags'][$row]['color'] = $value['color'];
    }
}
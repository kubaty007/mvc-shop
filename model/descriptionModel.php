<?php

namespace descriptionModel;

global $description_data;

use function db\dbQuery;

$prodId = \helper\getLastSegment();

$result = dbQuery("SELECT p.`description`, v.`video`, v.`maskPhoto` FROM products p
JOIN video v
ON v.id = p.idVideo
WHERE p.id = $prodId;");

if (!empty($result) && is_array($result)) {
    $description_data = [
        'title' => 'opis produktu',
        'text' => $result[0]['description'],
        'video' => $result[0]['video'],
        'mask' => $result[0]['maskPhoto']
    ];
}



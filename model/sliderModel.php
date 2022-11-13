<?php

namespace sliderModel;

use function db\dbQuery;
global $slider_data;
$slider_data = [];

$SELECT = "SELECT photoBig, photoSmall, photoAlt, URI, bannerType, bannerContent, position ";
$FROM = "FROM banners ";
$WHERE = "WHERE visibility = 1 ";
$WHERE .= "AND bannerType like 'slider' ";
$ORDER = "ORDER BY position ASC ";
$LIMIT = "LIMIT 15 ";

$query = $SELECT.$FROM.$WHERE.$ORDER.$LIMIT;
$result = dbQuery($query);

    $slider_data = $result;
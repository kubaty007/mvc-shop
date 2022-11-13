<?php

namespace bannersModel;

use function db\dbQuery;
global $banners_model;
$banners_model = [];

$SELECT = "SELECT photoBig, photoSmall, photoAlt, URI, bannerType, bannerContent, position ";
$FROM = "FROM banners ";
$WHERE = "WHERE visibility = 1 ";
$WHERE .= "AND bannerType like 'banner' ";
$ORDER = "ORDER BY position ASC ";
$LIMIT = "LIMIT 6 ";

$query = $SELECT.$FROM.$WHERE.$ORDER.$LIMIT;
$result = dbQuery($query);

$banners_model = $result;

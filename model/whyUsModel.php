<?php
namespace whyUsModel;

use function db\dbQuery;


global $model_data;
$model_data = [];

$SELECT = "SELECT photoBig, photoSmall, photoAlt, bannerType, bannerContent, position ";
$FROM = "FROM banners ";
$WHERE = "WHERE visibility = 1 ";
$WHERE .= "AND bannerType like 'bannerBig' ";
$ORDER = "";
$LIMIT = "LIMIT 1";

$query = $SELECT.$FROM.$WHERE.$ORDER.$LIMIT;
$result = dbQuery($query);

    $model_data['main'] = $result;

$SELECT = "SELECT photoBig, photoSmall, photoAlt, bannerType, bannerContent, position ";
$FROM = "FROM banners ";
$WHERE = "WHERE visibility = 1 ";
$WHERE .= "AND bannerType = 'bannerSmall' ";
$ORDER = "ORDER BY position ASC ";
$LIMIT = "LIMIT 3 ";

$query = $SELECT.$FROM.$WHERE.$ORDER.$LIMIT;
$result = dbQuery($query);

    $model_data['small'] = $result;
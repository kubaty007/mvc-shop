<?php



namespace categoryBannerModel;

use function db\dbQuery;

global $categoryBanner_model;

$cat_name = \helper\getLastSegment();

$SELECT = "SELECT b.photoBig, b.photoSmall, b.photoAlt, b.URI, b.bannerType, b.bannerContent ";
$FROM = "FROM `categories` cat ";
$JOIN = "JOIN `banners` b ON cat.idBanner = b.id ";
$WHERE = "WHERE b.visibility = 1 ";
$WHERE .= "AND cat.uri = '$cat_name' ";;
$ORDER = "";
$LIMIT = "";

$query = $SELECT . $FROM . $JOIN . $WHERE . $ORDER . $LIMIT;
$result = dbQuery($query);

if(!empty($result)) {
    $categoryBanner_model = $result[0];
}

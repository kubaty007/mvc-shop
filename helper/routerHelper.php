<?php

namespace Helper;


/**
 * Default route name, will be used if no other route was specified
 */
const DEFAULT_ROUTE = 'home';


/**
 * Route/script mapping
 *   key -> URI segment
 *   value -> PHP script name, which should be loaded for specified URI
 */
const ROUTE_MAP = [
    'home' => 'home',
    'index' => 'home',
    'kategorie' => 'home',
    'categories' => 'categories',
    'produkt' =>  'product',
    'product' => 'product',
    'filters:action' => 'filters:action',
    'productList:action' => 'productList:action',
    'productListNav:action' => 'productListNav:action'
];


##########################################################################################################################


/**
 * URI parser - extracts URI segments devided by slash (/) separator
 * @return array Parsed segments and total segment count
 */
function uriParse() {   
    $get = trim($_SERVER['REQUEST_URI'], '?');
    $get_stripped = array_filter(explode('?', $get));
    $uri = trim($get_stripped[0], '/');
    $uri_segments = array_filter(explode('/', $uri));

    return [
        'get_segments' => $get_stripped,
        'segments' => $uri_segments,
        'segment_count' => count($uri_segments)
    ];
}

/**
 * Final name getter -
 * @return string The last segment of uriParse()
 */
function getLastSegment(){
    $segments = uriParse();
    return end($segments['segments']);
}

/**
 * Final name getter -
 * @return string The last segment of uriParse()
 */
function getGET(){
    $segments = uriParse();
    return (count($segments['get_segments']) > 1);
}

/**
 * Route mapping getter
 * @return array Route map as specified above in ROUTE_MAP
 */
function getRouteMap() {
   return ROUTE_MAP ?: [];
}


/**
 * Default route getter
 * @return string|boolean Default route name as specified above in DEFAULT_ROUTE, otherwise false
 */
function getDefaultRoute() {
    if (isset(ROUTE_MAP[DEFAULT_ROUTE])) {
        return ROUTE_MAP[DEFAULT_ROUTE];
    } else {
        return false;
    }
 }
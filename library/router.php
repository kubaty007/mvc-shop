<?php

namespace Router;



use function Helper\debug;

\Load\helper('router');

$url_parsed = \Helper\uriParse();


// no url segment, use default route
if ($url_parsed['segment_count'] == 1) {
    \Load\controller(\Helper\getDefaultRoute());

    if (function_exists(\Helper\getDefaultRoute() . 'Controller\\_default')) {
        call_user_func(\Helper\getDefaultRoute() . 'Controller\\_default');
    }		
} else {

    $uri_controller = $url_parsed['segments'][1];
    $route_map = \Helper\getRouteMap();
    
    // include controller
    if ($route_map AND isset($route_map[$uri_controller])) {
        \Load\controller($route_map[$uri_controller]);
    }
 
    // call action if specified, otherwise call _default action
    if ($url_parsed['segment_count'] > 2) {
        // if action is mapped in $route_map, get mapped action name
        if (isset($route_map[$url_parsed['segments'][1].':'.$url_parsed['segments'][2]])) {
            $action = ltrim(strrchr($route_map[$url_parsed['segments'][1].':'.$url_parsed['segments'][2]], ':'), ':');
        } else {
            $action = $url_parsed['segments'][2];
        }    

        // if action is numeric call get_id action and pass id as an argument
        if (is_numeric($action) AND function_exists($route_map[$uri_controller] . 'Controller\\_default')) {
            
            call_user_func_array($route_map[$uri_controller] . 'Controller\\_default', [
                $action
            ]);

        } elseif ($uri_controller == 'kategorie') {

            $uri_controller = 'categories';
            \Load\controller($route_map[$uri_controller]);
            if(function_exists($route_map[$uri_controller] . 'Controller\\get_key')) {

                call_user_func_array($route_map[$uri_controller] . 'Controller\\get_key', [
                    $action
                ]);
            }
        } elseif (isset($route_map[$uri_controller.':'.$action])){
            if ($route_map AND isset($route_map[$uri_controller.':'.$action])) {
                \Load\controller($uri_controller);
            }
            if (function_exists($uri_controller . 'Controller\\'.$action)) {
                call_user_func_array($uri_controller . 'Controller\\' . $action, array_slice($url_parsed['segments'], 2));
            } else {
                \Helper\debug('Function '.$uri_controller . 'Controller\\'.$action.' not found');
            }
        }
    } elseif (isset($route_map[$uri_controller]) AND function_exists($route_map[$uri_controller] . 'Controller\\_default')) {

        call_user_func($route_map[$uri_controller] . 'Controller\\_default');
    }	
}

//\helper\debug($url_parsed);
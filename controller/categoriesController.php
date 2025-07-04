<?php


namespace categoriesController;


/**
 * Default homeController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */
function _default()
{
    global $model_data;
    \Load\model('categories');
    \Load\view('categories', $model_data, true);
}

function get_key($name)
{
    global $model_data;
    \Load\model('categories');
    \Load\view('categories', $model_data, true);
}
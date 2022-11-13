<?php


namespace categoryHeaderController;


/**
 * Default homeController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */
function _default()
{
    global $categoryHeader_model;
    \Load\model('categoryHeader');
    \Load\view('categoryHeader', $categoryHeader_model, false);
}
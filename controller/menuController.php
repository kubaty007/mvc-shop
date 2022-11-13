<?php


namespace menuController;


/**
 * Default homeController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */
function _default()
{
    global $menu_model;
    \Load\model('menu');
    \Load\view('menu', $menu_model, false);
}
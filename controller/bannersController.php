<?php

namespace bannersController;


/**
 * Default homeController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */
function _default()
{
    global $banners_model;
    \Load\model('banners');
    \Load\view('banners', $banners_model, false);
}
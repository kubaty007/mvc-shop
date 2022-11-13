<?php


namespace categoryBannerController;


/**
 * Default homeController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */
function _default()
{
    global $categoryBanner_model;
    \Load\model('categoryBanner');
    \Load\view('categoryBanner', $categoryBanner_model, false);
}
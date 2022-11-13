<?php


namespace breadcrumbsController;


/**
 * Default homeController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */
function _default()
{
    global $breadcrumbs_data;
    \Load\model('breadcrumbs');
    \Load\view('breadcrumbs', $breadcrumbs_data, false);
}
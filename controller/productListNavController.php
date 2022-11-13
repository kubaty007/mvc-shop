<?php

namespace productListNavController;


/**
 * Default productListNavController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */

function _default(){
    global $productListNavData;
    \Load\model('productListNav');
    \Load\view('productListNav', $productListNavData, false);
}

function action(){
    global $productListNavData;
    \Load\model('productListNav');
    \Load\view('productListNav', $productListNavData, false);
}
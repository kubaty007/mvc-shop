<?php

namespace productListController;

/**
 * Default productListController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */

function _default(){
    global $productListData;
    \Load\model('productList');
    \Load\view('productList', $productListData, false);
}

function action(){
    global $productListData;
    \Load\model('productList');
    \Load\view('productList', $productListData, false);
}
<?php


namespace productInfoController;


function _default()
{
    global $productInfo_model;
    \Load\model('productInfo');
    \Load\view('productInfo', $productInfo_model, false);
}

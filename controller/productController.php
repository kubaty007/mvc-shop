<?php


namespace productController;


function _default()
{
    global $product_model;
    \Load\model('product');
    \Load\view('product', $product_model, true);
}
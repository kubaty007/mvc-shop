<?php


namespace productTopController;


function _default()
{
    global $productTop_model;
    \Load\model('productTop');
    \Load\view('productTop', $productTop_model, false);
}

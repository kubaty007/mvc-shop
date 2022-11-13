<?php

namespace otherProductsController;

function _default()
{
    global $otherProducts_data;
    \Load\model('otherProducts');
    \Load\view('otherProducts', $otherProducts_data);
}

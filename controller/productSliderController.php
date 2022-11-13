<?php

namespace productSliderController;


/**
 * Default productSliderController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */
function _default()
{
    global $productSliderData;
    \Load\model('productSlider');
    \Load\view('productSlider', $productSliderData, false);
}

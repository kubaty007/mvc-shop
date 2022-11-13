<?php

namespace sliderController;


/**
 * Default homeController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */
function _default() {
    global $slider_data;
    \Load\model('slider');
    \Load\view('slider', $slider_data, false);
}

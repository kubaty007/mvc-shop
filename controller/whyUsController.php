<?php

namespace whyUsController;


/**
 * Default homeController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */

function _default() {
    global $model_data;
    \Load\model('whyUs');
    \Load\view('whyUs', $model_data, false);
}
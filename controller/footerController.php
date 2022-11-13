<?php

namespace footerController;

/**
 * Default footerController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */

function _default() {
    global $footer_data;
    \Load\model('footer');
    \Load\view('footer', $footer_data, false);

}
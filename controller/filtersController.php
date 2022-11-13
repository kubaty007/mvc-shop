<?php

namespace filtersController;

use function Helper\getLastSegment;

/**
 * Default filtersController action, will be fired in no other action was specified in URI
 * Loads data model and passes it to the view
 */

function _default() {
    global $filters_data;
    $_SESSION['cat'] = getLastSegment();
    \Load\model('filters');
    \Load\view('filters', $filters_data, false);

}

function action() {
    global $filters_data;
    \Load\model('filters');
    \Load\view('filters', $filters_data, false);
}
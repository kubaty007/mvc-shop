<?php

namespace detailsController;

function _default() {
    global $details_data;
    \Load\model('details');
    \Load\view('details', $details_data);
}

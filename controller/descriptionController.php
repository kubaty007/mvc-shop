<?php

namespace descriptionController;

function _default() {
    global $description_data;
    \Load\model('description');
    \Load\view('description', $description_data);
}

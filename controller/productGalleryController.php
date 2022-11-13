<?php


namespace productGalleryController;


function _default()
{
    global $productGallery_model;
    \Load\model('productGallery');
    \Load\view('productGallery', $productGallery_model, false);
}

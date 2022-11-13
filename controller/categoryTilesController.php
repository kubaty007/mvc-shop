<?php


namespace categoryTilesController;



function _default()
{
    global $categoryTiles_model;
    \Load\model('categoryTiles');
    \Load\view('categoryTiles', $categoryTiles_model, false);
}
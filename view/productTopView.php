<?php

?>
<link rel="stylesheet" href="./css/productTop.css">

<section class="productTop -container">
    <div class="productTop__header">
        <h1 class="productTop__title">
            <?=!empty($view['title']['nazwa']) ? $view['title']['nazwa'] : 'placeholder title'?>
        </h1>
        <div class="productTop__logo">
            <?=!empty($view['logo']['photo']) ? '<img src="' . $view['logo']['photo'] . '" alt="' . $view['logo']['name'] . '">' : (!empty($view['logo']['name']) ? $view['logo']['name'] : 'placeholder logo')?>
        </div>
    </div>
    <div class="productTop__main">
        <div class="productTop__left productGallery">
            <?php
            \Load\controller('productGallery');
            \productGalleryController\_default();
            ?>
        </div>
        <div class="productTop__right productInfo">
            <?php
            \Load\controller('productInfo');
            \productInfoController\_default();
            ?>
        </div>
    </div>
</section>

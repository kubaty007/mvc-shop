<?php
global $scripts;
$scripts[] = 'productSlider';
$scripts[] = 'productTile';
//\helper\debug($view);
?>

<link rel="stylesheet" href="./css/productSlider.css">
<link rel="stylesheet" href="./css/productTile.css">

<section class="productSlider">

    <div class="productSlider__top -title">
        <div class="productSlider__topContainer -container">
            <?= $view['title'] ?>
        </div>
    </div>
    <div class="productSlider__bottom --js__productSliderContainer -container">
        <div class="productSlider__bottomWrapper">
            <div class="productSlider__slider --js__productSlider">
                <?php
                if (!empty($view['productArray']) && is_array($view['productArray'])) {
                    foreach ($view['productArray'] as $row) {

                        include './template/productTile[icon].php';

                    }
                } ?>


            </div>
            <button class="productSlider__button productSlider__button--left --js__productSliderLeft">
                <i class="icon_arrow-left"></i>
            </button>
            <button class="productSlider__button productSlider__button--right --js__productSliderRight">
                <i class="icon_arrow-right"></i>
            </button>
        </div>

        <button class="productSlider__bottomButton -button">
            <?= $view['buttonText'] ?>
        </button>

    </div>
</section>

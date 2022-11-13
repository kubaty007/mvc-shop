<?php
if (!empty($view['productArray']) && is_array($view['productArray'])) {

    global $scripts;
    $scripts[] = 'productSlider';
    $scripts[] = 'productTile';

    ?>

    <link rel="stylesheet" href="./css/productSlider.css">
    <link rel="stylesheet" href="./css/productTile.css">
    <link rel="stylesheet" href="./css/otherProducts.css">

    <section class="otherProducts productSlider">

        <div class="productSlider__top -title">
            <div class="productSlider__topContainer -container">
                <?= $view['title'] ?>
            </div>
        </div>
        <div class="productSlider__bottom --js__productSliderContainer -container">
            <div class="productSlider__bottomWrapper">
                <div class="productSlider__slider --js__productSlider">

                    <?php
                    foreach ($view['productArray'] as $row) {

                        include './template/productTile[icon].php';

                    } ?>

                </div>
                <button class="productSlider__button productSlider__button--left --js__productSliderLeft">
                    <i class="icon_arrow-left"></i>
                </button>
                <button class="productSlider__button productSlider__button--right --js__productSliderRight">
                    <i class="icon_arrow-right"></i>
                </button>
            </div>
        </div>
    </section>

<?php }
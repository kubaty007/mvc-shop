<?php
global $scripts;
$scripts[] = 'productGallery';
?>

<link rel="stylesheet" href="./css/productGallery.css">
<div class="productGallery__container">
    <?php
    if(!empty($view['flags'])) {
    ?>
    <div class="productGallery__flags">
        <?php
        foreach($view['flags'] as $flag) {
        ?>
            <div class="productGallery__flag -bold" style="background-color: <?=$flag['color']?>"><?=$flag['name']?></div>
        <?php
        }
        ?>
    </div>
    <?php
    }
    ?>
    <div class="productGallery__image">
        <?php
        if(!empty($view['photos']) && count($view['photos']) > 1) {
        ?>
        <div class="productGallery__arrow productGallery__arrow--left"><i class="icon_arrow-left"></i></div>
        <div class="productGallery__arrow productGallery__arrow--right"><i class="icon_arrow-right"></i></div>
            <?php
        }
        ?>
        <img class="--js-imgTarget" src="<?=!empty($view['photos'][0]['photoBig']) ? $view['photos'][0]['photoBig'] : './photos/no_photo.png' ?>" alt="<?=!empty($view['photos'][0]['alt']) ? $view['photos'][0]['alt'] : 'Product'?>">
    </div>
    <?php
    if(!empty($view['photos']) && count($view['photos']) > 1) {
        ?>
    <div class="productGallery__picker">
        <div class="productGallery__arrow productGallery__arrow--up"><i class="icon_arrow-left"></i></div>
        <div class="productGallery__scroll">
            <div class="productGallery__blocks">
                <?php foreach ($view['photos'] as $tile => $elem) {
                    ?>
                <div class="productGallery__block <?=$tile === array_key_first($view['photos']) ? 'productGallery__block--active' : ''?>" data-src="<?=!empty($elem['photoBig']) ? $elem['photoBig'] : '.photos/no_photo.png'?>">
                    <img src="<?=!empty($elem['photoSmall']) ? $elem['photoSmall'] : '.photos/no_photo.png'?>">
                </div>
                <?php
                }
                    ?>
            </div>
        </div>
        <div class="productGallery__arrow productGallery__arrow--down"><i class="icon_arrow-right"></i></div>
    </div>
<?php
}
?>
</div>

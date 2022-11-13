<?php
global $scripts;
$scripts[] = 'productInfo';
?>

<link rel="stylesheet" href="./css/productInfo.css">

<div class="productInfo__container">
    <div class="productInfo__top">
        <div class="productInfo__level"><?=!empty($view['product']['productCode']) ? (strlen($view['product']['productCode']) >= 35 ? substr($view['product']['productCode'], 0, 35) . ' <span class="-strippedText">...</span>' : $view['product']['productCode']) : '-'?></div>
        <div class="productInfo__level">
            <div class="productInfo__availability"><i class="productInfo__icon icon_available<?=!empty($view['product']['stock']) ? ($view['product']['stock'] > 0 ? ' productInfo__icon--available' : ' productInfo__icon--unavailable') : ' productInfo__icon--unavailable'?>"></i><?=!empty($view['product']['stock']) ? ($view['product']['stock'] > 0 ? ' Dostępne' : ' Niedostępne') : ' Niedostępne'?></div>
            <div class="productInfo__delivery"><i class="productInfo__icon icon_delivery"></i>24H</div>
        </div>
    </div>
    <div class="productInfo__mid">
        <p class="productInfo__variantsHeader -bold">warianty</p>
        <div class="productInfo__wrapper">
            <?php
            if(!empty($view['variants'])) {
            ?>
            <div class="productInfo__arrow productInfo__arrow--left icon_arrow-left"></div>
            <div class="productInfo__scroll">
                <div class="productInfo__variants">
                    <?php
                    foreach($view['variants'] as $variant) {
                    ?>
                    <a class="productInfo__variant" href="<?=!empty($variant['id']) ? 'produkt/'.$variant['id'] : 'home'?>">
                        <div class="productInfo__image"><img src="<?=!empty($variant['photoSmall']) ? $variant['photoSmall'] : './photos/no_photo.png'?>" alt="variant"></div>
                        <div class="productInfo__name"><?=!empty($variant['variantName']) ? $variant['variantName'] : 'Variant'?></div>
                    </a>
                    <?php
                    }
                    ?>
                </div>
            </div>
            <div class="productInfo__arrow productInfo__arrow--right icon_arrow-right"></div>
            <?php
            } else {
            ?>
            Brak wariantów
            <?php
            }
            ?>
        </div>
    </div>
    <div class="productInfo__bot">
        <div class="productInfo__pricing">
            <span class="productInfo__regular"><?=!empty($view['product']['price']) ? str_replace('.', ',', sprintf("%0.2f", $view['product']['price'])) : '' ?> zł</span>
            <span class="productInfo__discounted -bold"><?=!empty($view['product']['priceDiscounted']) ?  str_replace('.', ',', sprintf("%0.2f", $view['product']['priceDiscounted'])) : '-' ?> zł</span>
        </div>
        <div class="productInfo__cart">
            <div class="productInfo__counter">
                <button class="productInfo__value productInfo__value--decrement -bold">-</button>
                <div class="productInfo__input"><input type="number" placeholder="0" value="0"></div>
                <button class="productInfo__value productInfo__value--increment -bold">+</button>
            </div>
            <div class="productInfo__button -button -bold"><i class="icon_cart"></i>dodaj do koszyka</div>
        </div>
    </div>
</div>




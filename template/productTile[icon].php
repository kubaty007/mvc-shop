<div class="productSlider__item productTile --js_productSliderItem --js_productTile">
    <a href="produkt/<?= $row['id'] ?>">

        <div class="productTile__photo">
            <img src="<?php
            if (!is_null($row['photoSmall'])){
            echo $row['photoSmall'] ?>" alt="<?= $row['alt'] ?>">
            <?php
            } else { ?>
                photos/no_photo.png" alt="no photo">
            <?php } ?>

        </div>

        <div class="productTile__details --js_details">
            <div class="productTile__name">
                <?php
                if (strlen($row['nazwa']) >= 80) {
                    echo substr($row['nazwa'], 0, 80) . ' <span class="-strippedText">...</span>';
                } else {
                    echo $row['nazwa'];
                }
                ?>
            </div>
            <div class="productTile__code">
                Kod produktu:
                <?= (strlen($row['productCode']) >= 20 ? substr($row['productCode'], 0, 20) . ' <span class="-strippedText">...</span>' : $row['productCode']) ?>
            </div>
            <div class="productTile__oldPrice">
                <?= str_replace('.', ',', sprintf("%0.2f", $row['price'])) ?>
                zł
            </div>
            <div class="productTile__price">
                <?= str_replace('.', ',', sprintf("%0.2f", $row['priceDiscounted'])) ?>
                zł
            </div>
        </div>
    </a>
    <div class="productTile__buyZoneWrapper --js_buyZoneWrapper">
        <form class="productTile__buyZone" action="" method="post">

            <div class="productTile__input">
                <button class="productTile__inputButton productTile__inputButton--left --js_inputButton--left" type="button">
                    -
                </button>
                <input class="productTile__quantityInput --js_quantityInput" type="number" value="1" name="quantity"
                       max="<?= $row['stock'] ?>">
                <button class="productTile__inputButton productTile__inputButton--right --js_inputButton--right" type="button">
                    +
                </button>
            </div>

            <button class="productTile__button" type="button">
                <i class="icon_cart"></i>
            </button>

            <input type="hidden" name="id" value="<?= $row['id'] ?>">

        </form>
    </div>
</div>
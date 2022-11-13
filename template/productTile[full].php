<div class="productTileFull --js_productTile">

    <a href="produkt/<?= $row['id'] ?>">

        <div class="productTileFull__upperName">
            <?php
            if (strlen($row['nazwa']) >= 80) {
                echo substr($row['nazwa'], 0, 80) . ' <span class="-strippedText">...</span>';
            } else {
                echo $row['nazwa'];
            }
            ?>
        </div>

        <div class="productTileFull__middle">
            <div class="productTileFull__photo">
                <img src="<?php
                if (!is_null($row['photoSmall'])){
                echo $row['photoSmall'] ?>" alt="<?= $row['alt'] ?>">
                <?php
                } else { ?>
                    photos/no_photo.png" alt="no photo">
                <?php } ?>
            </div>

            <div class="productTileFull__details --js_details">
                <div class="productTileFull__name">
                    <?php
                    if (strlen($row['nazwa']) >= 80) {
                        echo substr($row['nazwa'], 0, 80) . ' <span class="-strippedText">...</span>';
                    } else {
                        echo $row['nazwa'];
                    }
                    ?>
                </div>

                <div class="productTileFull__code">
                    Kod produktu:
                    <?= (strlen($row['productCode']) >= 20 ? substr($row['productCode'], 0, 20) . ' <span class="-strippedText">...</span>' : $row['productCode']) ?>
                </div>

                <div class="productTileFull__oldPrice">
                    Cena netto:
                    <?= str_replace('.', ',', sprintf("%0.2f", $row['price'])) ?>
                    zł
                </div>

                <div class="productTileFull__price">
                    Twoja cena netto:
                    <?= str_replace('.', ',', sprintf("%0.2f", $row['priceDiscounted'])) ?>
                    zł
                </div>

            </div>
        </div>

    </a>

    <div class="productTileFull__buyZoneWrapper --js_buyZoneWrapper">


        <form class="productTileFull__buyZone" action="" method="post">
            <div class="productTileFull__input">
                <button class="productTileFull__inputButton productTileFull__inputButton--left --js_inputButton--left" type="button">
                    -
                </button>
                <input class="productTileFull__quantityInput --js_quantityInput" type="number" value="1" name="quantity"
                       max="<?= $row['stock'] ?>">
                <button class="productTileFull__inputButton productTileFull__inputButton--right --js_inputButton--right" type="button">
                    +
                </button>
            </div>

            <button class="productTileFull__button" type="button">
                <i class="icon_cart"></i>
            </button>

            <input type="hidden" name="id" value="<?= $row['id'] ?>">
        </form>
    </div>

</div>
<?php
global $scripts;
$scripts[] = 'productListNav';
$scripts[] = 'displayMode';
?>
<div class="productList__controls">
    <form class="productList__form">
        <div class="productList__left">
            <span class="productList__controlsText">Widok</span>
            <div class="productList__tilesIcon --js_iconDM
<?php
            if (!isset($_GET['dm']) || $_GET['dm'] === 'icon') {
                echo 'productList__tilesIcon--active';
            }
            ?>">
                <img src="./photos/tiles.svg" alt="tiles view">
            </div>
            <div class="productList__listIcon --js_fullDM
<?php
            if ($_GET['dm'] === 'full') {
                echo 'productList__tilesIcon--active';
            }
            ?>">
                <img src="./photos/list.svg" alt="list view">
            </div>
        </div>
        <div class="productList__right">
            <div class="productList__selects">
                <span class="productList__controlsText">Sortuj</span>
                <select class="order productList__order">
                    <?php
                    if (!empty($view['orderOptions']) && is_array($view['orderOptions'])) {
                        foreach ($view['orderOptions'] as $option) { ?>
                            <option value="<?= $option['order'] ?>" <?= $option['selected'] ?> ><?= $option['text'] ?></option>
                        <?php }
                    } ?>
                </select>

                <span class="productList__controlsText">ilość</span>
                <select class="limit productList__limit">
                    <?php
                    if (!empty($view['limitOptions']) && is_array($view['limitOptions'])) {
                        foreach ($view['limitOptions'] as $option) {
                            if ($option['value']) {
                                ?>
                                <option value="<?= $option['value'] ?>" <?= $option['selected'] ?>> <?= $option['text'] ?> </option>
                            <?php } else { ?>
                                <option <?= $option['selected'] ?>> <?= $option['text'] ?> </option>
                            <?php }
                        }
                    } ?>
                </select>
            </div>


            <div class="pages productList__pages">
                <?php
                $isInputCreated = false;
                if ($view['pages']['pages_count'] > 1) {
                    ?>

                    <a class="pages__prev"> < </a>

                    <?php
                    for ($i = 1; $i <= $view['pages']['pages_count']; $i++) {
                        if ($i < 3 || $i == $view['pages']['pages_count']) {
                            ?>
                            <a href="javascript:void(0)" class="pages__item <?php
                            if (isset($_GET['page'])) {
                                if ($i == $_GET['page']) {
                                    echo 'pages__item--active';
                                }
                            } elseif ($i == 1) {
                                echo 'pages__item--active';
                            }
                            ?>" data-page="<?= $i ?>">
                                <?= $i ?>
                            </a>

                            <?php
                        } elseif (!$isInputCreated) {
                            ?>
                            <a href="javascript:void(0)" class="pages__item--input <?php
                            if (isset($_GET['page']) && $_GET['page'] >= 3 && $_GET['page'] < $view['pages']['pages_count']) {
                                echo 'pages__item--active';
                            }
                            ?>">
                                <input type="number" value="<?php

                                if (isset($_GET['page']) && $_GET['page'] >= 3 && $_GET['page'] < $view['pages']['pages_count']) {
                                    echo $_GET['page'];
                                }

                                ?>" placeholder="..." class="productListNav__pageInput">
                            </a>
                            <?php
                            $isInputCreated = true;
                        }
                    }
                    ?>

                    <a class="pages__next">
                        >
                    </a>

                <?php } ?>
            </div>

        </div>
    </form>
</div>

<link rel="stylesheet" href="css/productListNav.css">
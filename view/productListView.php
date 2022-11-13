<?php
global $scripts;
$scripts[] = 'productTile';
?>

    <section class="productList">

    <div class="productList__list">
        <?php
        if (isset($view['productArray'])) {

            try {
                if (file_exists("./template/productTile[" . $view['dm'] . "].php")) {
                    if (!empty($view['productArray']) && is_array($view['productArray'])) {
                        foreach ($view['productArray'] as $row) {
                            include "./template/productTile[" . $view['dm'] . "].php";
                        }
                    }
                } else {
                    throw new Exception('template: productTile[' . $view['dm'] . '].php was not found! <br/>');
                }
            } catch (Exception $e) {
                echo $e->getMessage();
            }


        } else { ?>

            <!--
            <div class="noItems__image">
            <img src="http://localhost/elhurt-test/photos/no-items.gif" alt="no-items image">
            </div>
            -->

            <div class="noItems__text">
                Nie znalezionio produktów spełniających kryteria wyszukiwania.
            </div>

        <?php } ?>
    </div>


    <link rel="stylesheet" href="./css/productTile.css">
    <link rel="stylesheet" href="./css/productTileFull.css">

<?php
if (!isset($_GET['dm']) || $_GET['dm'] == 'icon') {
    echo '<link rel="stylesheet" href="css/productList.css">';
} else {
    echo '<link rel="stylesheet" href="css/productListFull.css">';
}
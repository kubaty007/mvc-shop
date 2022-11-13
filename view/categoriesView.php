<link rel="stylesheet" href="./css/categories.css">
<?php


// przykład załączania modułu (kontroler/model/widok)
// echo '<div>';
//     \Load\controller('sampleModule');
//     \SampleModuleController\_default();
// echo '</div>';

\Load\controller('breadcrumbs');
\breadcrumbsController\_default();

?>
<div class="categories -container">
    <div class="categories__left">
        <?php
        \Load\controller('menu');
        \menuController\_default();
        ?>

        <div class="filters__container">
            <?php
            \Load\controller('filters');
            \filtersController\_default();
            ?>
        </div>

    </div>

    <div class="categories__right">
        <?php
        \Load\controller('categoryHeader');
        \categoryHeaderController\_default();

        \Load\controller('categoryTiles');
        \categoryTilesController\_default();

        \Load\controller('categoryBanner');
        \categoryBannerController\_default();
        ?>

        <div class="productListNav__container"></div>

        <div class="productList__container">
            <?php
            \Load\controller('productList');
            \productListController\_default();
            ?>
        </div>

        <div class="productListNav__container">
            <?php
            \Load\controller('productListNav');
            \productListNavController\_default();
            ?>
        </div>


    </div>
</div>

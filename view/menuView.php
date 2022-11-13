<link rel="stylesheet" href="./css/menu.css">

<section class="menu">
    <div class="menu__header -bold">
        <div><?= !empty($view['activeCat']['name']) ? $view['activeCat']['name'] : 'Placeholder' ?></div>
        <div class="menu__mobileIcon"><span class="menu__mobileArrow icon_arrow-right"></span></div>
    </div>
    <?php
    if (!empty($view['categories'])) {
        global $scripts;
        $scripts[] = 'menu';
        ?>
        <nav class="menu__categories --js-menu-categories">
            <ul class="menu__list">
                <?php
                if (is_array($view['categories'])) {
                    foreach ($view['categories'] as $category) {
                        ?>
                        <li class="menu__item -text">
                            <div><a class="menu__link"
                                    href="kategorie/<?= !empty($category['uri']) ? $category['uri'] : 'javascript:void(0)' ?>"><?= !empty($category['name']) ? $category['name'] : 'Placeholder Category' ?></a><?= !empty($category['subCats']) ? $view['activeCat']['name'] == $category['name'] ? '<div class="menu__icon"><span class="--js-menu-plus" style="transform: rotate(405deg)">+</span></div>' : '<div class="menu__icon"><span class="--js-menu-plus">+</span></div>' : '' ?>
                            </div>
                            <?php
                            if (!empty($category['subCats']) && is_array($category['subCats'])) {
                                ?>
                                <ul class="menu__list menu__list--nested <?= $view['activeCat']['name'] == $category['name'] ? 'menu__list--show' : '' ?>">
                                    <?php

                                    foreach ($category['subCats'] as $subCat){
                                    ?>
                                    <li class="menu__item menu__item--nested <?= $view['activeCat']['name'] == $category['name'] ? 'menu__item--show' : '' ?> -text">
                                        <a class="menu__link"
                                           href="kategorie/<?= !empty($subCat['uri']) ? $subCat['uri'] : 'javascript:void(0)' ?>"><?= !empty($subCat['name']) ? $subCat['name'] : 'Placeholder Category' ?></a>
                                        <?php
                                        }
                                        ?>
                                </ul>
                                <?php
                            }
                            ?>
                        </li>
                        <?php
                    }
                }
                ?>
            </ul>
        </nav>
        <?php
    }
    ?>
</section>

<?php
if (!empty($view)) {
    global $scripts;
    $scripts[] = 'mobileMenu';
    $seg_count = \Helper\uriParse();
    ?>

    <link rel="stylesheet" href="./css/header.css">

    <header class="header">

        <section class="header__top -container">
            <?= ($seg_count['segment_count'] <= 2) ? '<h1>' : '<a href="./" class="header__logo">' ?>
            <img src="photos/logo.png" alt="Elhurt logo">
            <?= ($seg_count['segment_count'] <= 2) ? '</h1>' : '</a>' ?>

            <nav class="header__nav">
                <ul class="header__navList">

                    <?php
                    if (!empty($view['mainNavItems']) && is_array($view['mainNavItems'])) {
                        foreach ($view['mainNavItems'] as $item) {
                            ?>

                            <li class="header__navListItem <?= $item['classes'] ?>">
                                <a href="<?= !empty($item['href']) ? $item['href'] : 'javascript:void(0);' ?>">
                                    <?= $item['icon'] ?>
                                    <?= $item['text'] ?>
                                </a>
                            </li>

                        <?php }
                    } ?>

                    <li class="header__navListItem cart">
                        <a href="<?= !empty($view['cart']['href']) ? $view['cart']['href'] : 'javascript:void(0);' ?>">
                            <div class="cart__icon">
                                <i class="icon_cart"></i>
                                <div class="cart__itemCounter">
                                    <?= $view['cart']['itemQuantity'] ?>
                                </div>
                            </div>
                            <div class="cart__text">
                                <div class="cart__textTop">twój koszyk</div>
                                <div class="cart__textBottom">
                                    <?= sprintf("%0.2f", $view['cart']['itemsValue']) ?>
                                    zł
                                </div>
                            </div>
                            <div class="cart__arrow">
                                <i class="icon_arrow-right"></i>
                            </div>
                        </a>
                    </li>
                </ul>
            </nav>
        </section>

        <section class="header__bottom">
            <nav class="header__bottomNav -container">
                <ul class="header__bottomList">

                    <?php
                    if (!empty($view['categories']) && is_array($view['categories'])) {
                        foreach ($view['categories'] as $category) {
                            ?>

                            <li class="header__listItem">
                                <a href="<?= 'kategorie/' . $category['uri'] ?>">
                                    <?= $category['name'] ?>
                                </a>
                            </li>

                        <?php }
                    } ?>
                </ul>
            </nav>
        </section>

        <div class="header__mobileDarkBackground"></div>

        <section class="header__mobile">
            <div class="header__mobileTop">
                <div class="header__mobileTopLeft">
                    <i class="icon_arrow-left --js_mobileMenuButton"></i>
                    kategorie
                </div>
                <i class="icon_x --js_mobileMenuButton_main"></i>
            </div>
            <nav class="header__mobileLinks">
                <ul class="header__mobileList">
                    <li class="header__mobileItem">
                        produkty
                        <i class="icon_arrow-right"></i>
                        <div class="header__mobile">
                            <div class="header__mobileTop">
                                <div class="header__mobileTopLeft">
                                    <i class="icon_arrow-left --js_mobileMenuButton"></i>
                                    produkty
                                </div>
                                <i class="icon_x --js_mobileMenuButton_main"></i>
                            </div>
                            <nav class="header__mobileLinks">
                                <ul class="header__mobileList">
                                    <?php
                                    if (!empty($view['categories']) && is_array($view['categories'])) {
                                        foreach ($view['categories'] as $category) {
                                            ?>

                                            <li class="header__mobileItem">
                                                <a href="<?= 'kategorie/' . $category['uri'] ?>">
                                                    <?= $category['name'] ?>
                                                </a>
                                            </li>

                                        <?php }
                                    } ?>
                                </ul>
                            </nav>
                        </div>
                    </li>
                    <li class="header__mobileItem">
                        producenci
                        <i class="icon_arrow-right"></i>
                    </li>
                    <li class="header__mobileItem">
                        nowości
                    </li>
                    <li class="header__mobileItem">
                        promocje
                    </li>
                    <li class="header__mobileItem">
                        polecamy
                    </li>
                    <li class="header__mobileItem">
                        o nas
                    </li>
                    <li class="header__mobileItem">
                        inspiracje
                    </li>
                </ul>
            </nav>
        </section>


    </header>


<?php }
<link rel="stylesheet" href="./css/footer.css">

<footer class="footer">
    <div class="footer__top -container">

        <?php
        global $scripts;
        $scripts[] = 'footer';
        if (!empty($view['categories']) && is_array($view['categories'])) {
            foreach ($view['categories'] as $category) {
                ?>
                <nav class="footer__column">
                    <ul class="footer__list">
                        <li class="footer__title">
                            <?= $category['name'] ?>
                            <i class="icon_arrow-right --js_footerButton"></i>
                        </li>

                        <?php
                        foreach ($category['items'] as $item) { ?>
                            <li class="footer__link --js_footerLink">
                                <a href="<?= $item['uri'] ?>">
                                    <?= $item['itemName'] ?>
                                </a>
                            </li>
                        <?php } ?>

                    </ul>
                </nav>
            <?php }
        } ?>
    </div>

    <div class="footer__copyright">
        <div class="footer__copyrightWrapper -container">
            <div class="footer__left">
                <?= $view['copyright']; ?>
            </div>
            <div class="footer__right"><?= $view['author'] ?></div>
        </div>
    </div>
</footer>

<?php
//\helper\debug($view, 'Debug info');
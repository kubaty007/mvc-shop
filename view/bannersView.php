<?php
if (!empty($view)) {
    global $scripts;
    $scripts[] = 'banners';
    ?>

    <link rel="stylesheet" href="./css/banners.css">

    <section class="banners -container">
        <?php
        if (!empty($view) && is_array($view)) {
            foreach ($view as $banner) {
                ?>
                <div class="banners__banner">
                    <div>
                        <picture class="banners__img">
                            <source media="(max-width: 768px)"
                                    srcset="./photos/<?= !empty($banner['photoSmall']) ? $banner['photoSmall'] : '' ?>">
                            <source media="(min-width: 769px)"
                                    srcset="./photos/<?= !empty($banner['photoBig']) ? $banner['photoBig'] : 'no_photo.png' ?>">
                            <img src="./photos/<?= !empty($banner['photoBig']) ? $banner['photoBig'] : 'no_photo.png' ?>"
                                 alt="<?= !empty($banner['photoAlt']) ? $banner['photoAlt'] : 'placeholder' ?>">
                        </picture>
                    </div>
                    <div class="banners__gradient"></div>
                    <div class="banners__wrapper">
                        <div class="banners__typography">
                            <div class="banners__text -title">
                                <?php
                                echo !empty($banner['bannerContent']) ? $banner['bannerContent'] : 'no_photo.png';
                                ?>
                            </div>
                            <?php
                            if (!empty($banner['URI'])) {
                                ?>
                                <a class="banners__button -button -bold" href="<?= $banner['URI'] ?>">zobacz wiecej</a>
                                <?php
                            } else {
                                echo "";
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <?php
            }
        }
        ?>
    </section>

    <?php
} else {
    echo "";
}
?>
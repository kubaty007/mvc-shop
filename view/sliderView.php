<?php
if (!empty($view) && is_array($view)) {
    global $scripts;
    $scripts[] = 'mainSlider';
    ?>

    <link rel="stylesheet" href="./css/mainSlider.css">

    <section class="slider -container">
        <!------------------- SLIDES ----------------------->
        <div class="slider__container">
            <?php
            foreach ($view as $slide) {
                ?>
                <div class="slider__slide slider__animation">
                    <div class="slider__image">
                        <picture class="slider__image">
                            <source media="(max-width: 768px)"
                                    srcset="./photos/<?= !empty($slide['photoSmall']) ? $slide['photoSmall'] : '' ?>">
                            <source media="(min-width: 769px)"
                                    srcset="./photos/<?= !empty($slide['photoBig']) ? $slide['photoBig'] : 'no_photo.png' ?>">
                            <img src="./photos/<?= !empty($slide['photoBig']) ? $slide['photoBig'] : 'no_photo.png' ?>"
                                 alt="<?= !empty($slide['photoAlt']) ? $slide['photoAlt'] : 'placeholder' ?>">
                        </picture>
                    </div>
                    <div class="slider__gradient"></div>
                    <div class="slider__wrapper">
                        <div class="slider__typography slider__animation">
                            <?php
                            echo !empty($slide['bannerContent']) ? $slide['bannerContent'] : '' ?>
                        </div>
                        <?php
                        if (!empty($slide['URI'])) {
                            ?>
                            <a class="slider__button -button" href="<?= $slide['URI'] ?>">zobacz wiecej</a>
                            <?php
                        } else {
                            echo "";
                        }
                        ?>
                    </div>

                </div>
                <?php
            }
            ?>
            <!---------------------------------------------------->

            <!------------------- CONTROLS ----------------------->
            <?php
            if (count($view) > 1) {
                ?>
                <button class="slider__arrow slider__arrow--left"><i class="icon_arrow-left"></i></button>
                <button class="slider__arrow slider__arrow--right"><i class="icon_arrow-right"></i></button>
                <div class="slider__dots">
                    <?php
                    foreach ($view as $dots => $dot) {
                        ?>
                        <button class="slider__dot <?php if ($dots === array_key_first($view)) {
                            echo 'slider__dot--active';
                        } ?>"></button>
                        <?php
                    }
                    ?>
                </div>
            <?php } ?>
        </div>
    </section>
<?php }
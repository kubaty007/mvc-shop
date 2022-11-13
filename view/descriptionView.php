<?php
global $scripts;
$scripts[] = 'description';

if(!empty($view) && is_array($view)) {
?>

<section class="description">

    <div class="description__header">
        <div class="-container">
            <?= $view['title'] ?>
        </div>
    </div>

    <div class="description__body -container">
        <div class="description__text">
            <?= $view['text'] ?>
        </div>

        <div class="description__videoWrapper">
            <div class="description__video">
                <?= $view['video'] ?>
                <img src="<?= $view['mask'] ?>" alt="video mask" class="description__mask">
                <img src="photos/play.svg" class="description__play">
            </div>
        </div>

    </div>

</section>

<link rel="stylesheet" href="./css/description.css">

<?php }
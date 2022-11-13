<?php
if(!empty($view)) {
?>
<link rel="stylesheet" href="./css/categoryBanner.css">

<div class="categoryBanner">
    <div class="categoryBanner__img">
        <img src="./photos/<?=!empty($view['photoBig']) ? $view['photoBig'] : 'no_photo.png'?>" alt="<?=!empty($view['photoAlt']) ? $view['photoAlt'] : 'Placeholder Alt'?>">
    </div>
    <div class="categoryBanner__gradient"></div>
    <div class="categoryBanner__wrapper">
        <div class="categoryBanner__typography">
            <?=!empty($view['bannerContent']) ? $view['bannerContent'] : 'Placeholder Content' ?>
            <?php
            if(!empty($view['URI'])) {
            ?>
            <a class="categoryBanner__button -button -bold" href="javascript:void(0)">zobacz wiecej</a>
            <?php
            }
            ?>
        </div>
    </div>
</div>

<?php
}
?>

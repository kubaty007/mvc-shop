<link rel="stylesheet" href="./css/categoryHeader.css">
<?php
global $scripts;
$scripts[] = 'categoryHeader';
?>

<section class="categoryHeader">
    <h1 class="categoryHeader__header -title"><?=!empty($view['name']) ? $view['name'] : 'Placeholder Title' ?></h1>
    <div class="categoryHeader__description">
        <p class="-text">
            <span><?=!empty($view['description']) ? $view['shown'] : 'Placeholder description'?></span><?=!empty($view['hidden']) ? '<span class="categoryHeader__hide">...</span>' : ''?><span class="categoryHeader__collapsible"><?=!empty($view['hidden']) ? $view['hidden'] : ''?></span>
        </p>
    </div>
    <div class="categoryHeader__more">
        <div class="categoryHeader__line"></div>
        <?=!empty($view['hidden']) ? '<div class="categoryHeader__text -bold -text --js-categoryHeader">ROZWIŃ</div>' : ''?>
    </div>
</section>


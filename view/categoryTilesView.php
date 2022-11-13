<?php
if (!empty($view) && is_array($view)) {
    ?>
    <link rel="stylesheet" href="./css/categoryTiles.css">

    <div class="categoryTiles">
        <?php
        foreach ($view as $tile) {
            ?>
            <a class="categoryTiles__tile <?= $tile['active'] == 1 ? 'categoryTiles__tile--active' : '' ?>"
               href="kategorie/<?= !empty($tile['uri']) ? $tile['uri'] : 'home' ?>">
                <div class="categoryTiles__image"><img src="<?= $tile['photoSmall'] ?>" alt=" <?= !empty($tile['name']) ? $tile['name'] : 'Placeholder Name' ?>">
                </div>
                <div class="categoryTiles__text -text"><?= !empty($tile['name']) ? $tile['name'] : 'Placeholder Name' ?></div>
            </a>
        <?php } ?>
    </div>
    <?php
}
//\helper\debug($view);
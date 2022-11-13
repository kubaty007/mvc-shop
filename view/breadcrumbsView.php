<link rel="stylesheet" href="./css/breadcrumbs.css">

<section class="breadcrumbs">
    <div class="breadcrumbs__container -container">
        <?php
        if (!empty($view['breadcrumbs']) && is_array($view['breadcrumbs'])) {
            foreach ($view['breadcrumbs'] as $part) {
                if ($part === $view['breadcrumbs']['default']) {
                    ?>
                    <a class="breadcrumbs__part" href="<?= $part['uri'] ?>"><?= $part['name'] ?></a>
                    <?php
                } else {
                    ?>
                    <a class="breadcrumbs__part" href="kategorie/<?= $part['uri'] ?>"><?= $part['name'] ?></a>
                    <?php
                }
            }
        } else {
            ?>
            <a class="breadcrumbs__part" href="javascript:void(0)"> Strona główna </a>
            <?php
        }

        ?>
    </div>
</section>
<?php
//\helper\debug($view);

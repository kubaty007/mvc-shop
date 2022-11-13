<section class="filters">
    <?php

    //\helper\debug($view);
    global $scripts;
    $scripts[] = 'filters';
    $scripts[] = 'priceRange';
    ?>
    <form class="--js_filterForm" method="get">

        <div class="filters__currentTitle">
            filtry
            <i class="icon_arrow-right --js_hideFilters"></i>
        </div>

        <div class="filters__body">

            <div class="filters__current">

                <ul class="filters__currentBox">
                    <?php

                    if (!empty($view['producers']['items']) && is_array($view['producers']['items'])) {
                        foreach ($view['producers']['items'] as $producer) {
                            if ($producer['value'] === 'checked') {
                                echo '<li class="filters__currentItem">Producent: ' . $producer['name'] . '<i class="icon_x --js_deleteFilter" data-name="' . $producer['inputName'] . '"></i> </li>';
                            }
                        }
                    }


                    if (!empty($view['filters']['kolor']['values']) && is_array($view['filters']['kolor']['values'])) {
                        foreach ($view['filters']['kolor']['values'] as $kolor) {
                            if ($kolor['value'] === 'checked') {
                                echo '<li class="filters__currentItem"> Kolor: ' . $kolor['name'] . '<i class="icon_x --js_deleteFilter" data-name="' . $kolor['inputName'] . '"></i> </li>';
                            }
                        }
                    }

                    if (!empty($view['filters']['rozmiar']['values']) && is_array($view['filters']['rozmiar']['values'])) {
                        foreach ($view['filters']['rozmiar']['values'] as $rozmiar) {
                            if ($rozmiar['value'] === 'checked') {
                                echo '<li class="filters__currentItem">Rozmiar: ' . $rozmiar['name'] . '<i class="icon_x --js_deleteFilter" data-name="' . $rozmiar['inputName'] . '"></i> </li>';
                            }
                        }
                    }

                    if (!empty($view['filters']['price']['minInput']['value'])) {
                        if ($view['filters']['price']['minInput']['value'] != $view['filters']['price']['minInput']['min']) {
                            echo '<li class="filters__currentItem"> Droższe niż: ' . $view['filters']['price']['minInput']['value'] . ' PLN <i class="icon_x --js_deleteFilter" data-name="' . $view['filters']['price']['minInput']['inputName'] . '"></i></li>';
                        }
                    }

                    if (!empty($view['filters']['price']['maxInput']['value'])) {
                        if ($view['filters']['price']['maxInput']['value'] != $view['filters']['price']['maxInput']['max']) {
                            echo '<li class="filters__currentItem"> Tańsze niż: ' . $view['filters']['price']['maxInput']['value'] . ' PLN <i class="icon_x --js_deleteFilter" data-name="' . $view['filters']['price']['maxInput']['inputName'] . '"></i></li>';
                        }
                    }

                    ?>
                </ul>
            </div>

            <div class="filters__item producers">
                <div class="filters__name">
                    <?= $view['producers']['name'] ?>
                </div>
                <ul class="filters__values">
                    <?php
                    if (!empty($view['producers']['items']) && is_array($view['producers']['items'])) {
                        foreach ($view['producers']['items'] as $value) {
                            ?>
                            <li class="filters__valueItem">
                                <input type="checkbox" class="filter__valuesItem --js_filterItem"
                                       id="<?= $value['inputName'] ?>"
                                       name="<?= $value['inputName'] ?>" <?= $value['value'] ?>>
                                <label for="<?= $value['inputName'] ?>"><?= $value['name'] ?></label>
                            </li>

                        <?php }
                    } ?>
                </ul>
                <span class="producers__moreButton">więcej</span>
            </div>


            <?php
            if (!empty($view['filters']) && is_array($view['filters'])) {
                foreach ($view['filters'] as $filter) {
                    //\helper\debug($filter, 'filter');

                    switch ($filter['type']) {

                        case 'color': ?>
                            <div class="filters__item color">
                                <div class="filters__name">
                                    <?= $view['filters']['kolor']['name'] ?>
                                </div>
                                <ul class="filters__values filters__values--color">
                                    <?php
                                    if (!empty($view['filters']['kolor']['values']) && is_array($view['filters']['kolor']['values'])) {
                                        foreach ($view['filters']['kolor']['values'] as $value) {
                                            ?>
                                            <li class="filters__valueItem">
                                                <input type="checkbox"
                                                       class="--js_filterItem filters__valueItemCheckbox--color"
                                                       id="<?= $value['inputName'] ?>"
                                                       name="<?= $value['inputName'] ?>" <?= $value['value'] ?>>
                                                <label for="<?= $value['inputName'] ?>"
                                                       style="background: <?= $value['hex'] ?>"
                                                       class="filters__valueItemLabel--color"></label>
                                            </li>
                                        <?php }
                                    } ?>
                                </ul>
                            </div> <?php
                            break;


                        case 'textInCheckbox': ?>
                            <div class="filters__item size">
                                <div class="filters__name">
                                    <?= $view['filters']['rozmiar']['name'] ?>
                                </div>
                                <ul class="filters__values filters__values--size">
                                    <?php
                                    if (!empty($view['filters']['rozmiar']['values']) && is_array($view['filters']['rozmiar']['values'])) {
                                        foreach ($view['filters']['rozmiar']['values'] as $value) {
                                            ?>
                                            <li class="filters__valueItem">
                                                <input type="checkbox"
                                                       class="--js_filterItem filters__valueItemCheckbox--size"
                                                       id="<?= $value['inputName'] ?>"
                                                       name="<?= $value['inputName'] ?>" <?= $value['value'] ?>>
                                                <label for="<?= $value['inputName'] ?>"
                                                       class="filters__valueItemLabel--size">
                                                    <?= $value['name'] ?>
                                                </label>

                                            </li>
                                        <?php }
                                    } ?>
                                </ul>
                            </div> <?php
                            break;


                        case 'range': ?>
                            <div class="filters__item">
                                <div class="filters__name">
                                    <?= $view['filters']['price']['name'] ?>
                                </div>
                                <div class="sideBar__ranges">

                                    <input type="range" name="<?= $view['filters']['price']['minInput']['inputName'] ?>"
                                           id="<?= $view['filters']['price']['minInput']['inputName'] ?>"
                                           min="<?= $view['filters']['price']['minInput']['min'] ?>"
                                           max="<?= $view['filters']['price']['minInput']['max'] ?>"
                                           class="minRange --js_filterItem"
                                           value="<?= $_GET[$view['filters']['price']['minInput']['inputName']] ?? $view['filters']['price']['minInput']['value'] ?>">
                                    <input type="range" name="<?= $view['filters']['price']['maxInput']['inputName'] ?>"
                                           id="<?= $view['filters']['price']['maxInput']['inputName'] ?>"
                                           min="<?= $view['filters']['price']['maxInput']['min'] ?>"
                                           max="<?= $view['filters']['price']['maxInput']['max'] ?>"
                                           class="maxRange --js_filterItem"
                                           value="<?= $_GET[$view['filters']['price']['maxInput']['inputName']] ?? $view['filters']['price']['maxInput']['value'] ?>">
                                    <div class="cover"></div>

                                </div>
                                <div class="sideBar__inputs">
                                    <input type="number" class="sideBar__upperInput --js_filterItem"
                                           value="<?= $view['filters']['price']['minInput']['value'] ?>"
                                           min="<?= $view['filters']['price']['minInput']['min'] ?>"
                                           max="<?= $view['filters']['price']['minInput']['max'] ?>">
                                    <input type="number" class="sideBar__lowerInput --js_filterItem"
                                           value="<?= $view['filters']['price']['maxInput']['value'] ?>"
                                           min="<?= $view['filters']['price']['maxInput']['min'] ?>"
                                           max="<?= $view['filters']['price']['maxInput']['max'] ?>">
                                </div>
                            </div> <?php
                            break;
                    }
                }
            }
            ?>

        </div>


    </form>
</section>

<link rel="stylesheet" href="./css/filters.css">

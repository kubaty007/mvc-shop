<?php
if (!empty($view['parameters']) && is_array($view['parameters'])) {
    ?>
    <section class="details">
        <div class="details__header">
            <div class="details__title -container">
                <?= $view['title'] ?>
            </div>
        </div>
        <div class="-container">
            <table class="details__table -container">
                <?php
                foreach ($view['parameters'] as $parameter) { ?>
                    <tr class="details__row">
                        <td class="details__leftCol">
                            <?= $parameter['name'] ?>
                        </td>
                        <td class="details__rightCol">
                            <?php
                            foreach ($parameter['values'] as $value) {
                                echo $value . ' ';
                            } ?>
                        </td>
                    </tr>
                <?php } ?>
            </table>
        </div>
    </section>

    <link rel="stylesheet" href="css/details.css">

<?php }
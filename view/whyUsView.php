<link rel="stylesheet" href="./css/whyUs.css">

<section class="whyUs" style="background-image: url('./photos/<?= $view['main'][0]['photoBig'] ?>')">
    <div class="whyUs__grayout"></div>
    <div class="-sectionHeader whyUs__sectionHeader -container">
        <h2 class="-title">
            Sprawdź dlaczego my
        </h2>
    </div>
    <div class="whyUs__text">
        <?php echo $view['main'][0]['bannerContent'] ?>
    </div>
    <div class="whyUs__blocks">
        <?php
        if (!empty($view['small']) && is_array($view['small'])) {
            foreach ($view['small'] as $item) {
                ?>
                <div class="whyUs__block">
                    <div class="whyUs__icon"><img src="./icons/<?= $item['photoBig'] ?>" alt="<?= $item['photoAlt'] ?>">
                    </div>
                    <div class="whyUs__text whyUs__text--bold">
                        <?php echo $item['bannerContent'] ?>
                    </div>
                </div>
            <?php }
        } ?>
    </div>
    <a class="whyUs__button -button -bold" href="javascript:void(0)">
        <p>informacje o firmie</p>
    </a>
</section>

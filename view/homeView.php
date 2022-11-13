<div class="-bgGray">
<?php

// przykład załączania modułu (kontroler/model/widok)
// echo '<div>';
//     \Load\controller('sampleModule');
//     \SampleModuleController\_default();
// echo '</div>';

\Load\controller('slider');
\sliderController\_default();

\Load\controller('banners');
\bannersController\_default();

\Load\controller('productSlider');
\productSliderController\_default();

\Load\controller('whyUs');
\whyUSController\_default();
?>
</div>

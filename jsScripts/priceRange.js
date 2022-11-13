function rangeInput() {
    const minRange = document.querySelector('.minRange'),
        maxRange = document.querySelector('.maxRange'),
        minInput = document.querySelector('.sideBar__upperInput'),
        maxInput = document.querySelector('.sideBar__lowerInput');


    minRange.addEventListener('input', () => {
        if (parseInt(minRange.value) >= parseInt(maxRange.value)) {
            maxRange.value = parseInt(minRange.value) + 1;
            maxInput.value = parseInt(minRange.value) + 1;
        }
        minInput.value = minRange.value;

        coverSize();

    })

    maxRange.addEventListener('input', () => {
        if (parseInt(maxRange.value) <= parseInt(minRange.value)) {
            minRange.value = parseInt(maxRange.value) - 1;
            minInput.value = parseInt(maxRange.value) - 1;
        }
        maxInput.value = maxRange.value;

        coverSize();
    })


    function inputMin() {

        let minInputValue = parseInt(minInput.value),
            maxInputValue = parseInt(maxInput.value);

        //if exceed max of input
        if (minInputValue > parseInt(minInput.getAttribute('max'))) {
            minInputValue = parseInt(minInput.getAttribute('max'));
            minInput.value = minInputValue;
        }

        //if exceed min of input
        else if (minInputValue < parseInt(minInput.getAttribute('min'))) {
            minInputValue = parseInt(minInput.getAttribute('min'));
            minInput.value = minInputValue;
        }

        //if exceed max value
        if (maxInputValue <= minInputValue) {
            maxInput.value = minInputValue + 1;
        }

        //update range input
        minRange.value = minInput.value;
        maxRange.value = maxInput.value;

        coverSize();
    }


    function inputMax() {

        let minInputValue = parseInt(minInput.value),
            maxInputValue = parseInt(maxInput.value);

        //if exceed max of input
        if (maxInputValue > parseInt(maxInput.getAttribute('max'))) {
            maxInputValue = parseInt(maxInput.getAttribute('max'));
            maxInput.value = maxInputValue;
        }
        //if exceed min of input
        else if (maxInputValue < parseInt(maxInput.getAttribute('min'))) {
            maxInputValue = parseInt(maxInput.getAttribute('min'));
            maxInput.value = maxInputValue;
        }
        //if exceed min value
        if (minInputValue >= maxInputValue) {
            minInput.value = maxInputValue - 1;
        }

        //update range input
        minRange.value = minInput.value;
        maxRange.value = maxInput.value;

        coverSize();
    }


//min slider
    minInput.addEventListener('blur', inputMin);
//max slider
    maxInput.addEventListener('blur', inputMax);

    coverSize();
}

rangeInput();

/**
 * updates background between input range thumbs
 */
function coverSize() {

    let leftValue = parseInt(document.querySelector('.minRange').value),
        leftMax = parseInt(document.querySelector('.minRange').max),
        rightValue = parseInt(document.querySelector('.maxRange').value),
        rightMax = parseInt(document.querySelector('.maxRange').max);

    document.querySelector('.cover').style.left = (leftValue / leftMax) * 100 + '%';
    document.querySelector('.cover').style.width = 100 - (leftValue / leftMax * 100) - ((rightMax - rightValue) / rightMax * 100) + '%';
}
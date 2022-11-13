(() => {
    "use strict";

//scrolling

    const slider = document.querySelector('.--js__productSlider'),
        sliderItems = document.querySelectorAll('.--js_productSliderItem'),
        buttonLeft = document.querySelector('.--js__productSliderLeft'),
        buttonRight = document.querySelector('.--js__productSliderRight');

    let currentScrollPosition = 0,
        tileWidth = sliderItems[0].offsetWidth,
        sliderStyle = window.getComputedStyle(slider),
        gap = parseInt(sliderStyle.getPropertyValue('gap'), 10);

    //cant execute function with parameter in eventListener ;/
    function scrollLeft() {
        scrollProducts('left');
    }

    function scrollRight() {
        scrollProducts('right');
    }

    function scrollProducts(direction) {
        let maxScrollPosition = (sliderItems.length * tileWidth) + ((sliderItems.length - 1) * gap) - slider.offsetWidth;

        let newScrollPosition;

        //update
        tileWidth = sliderItems[0].offsetWidth;
        sliderStyle = window.getComputedStyle(slider);
        gap = parseInt(sliderStyle.getPropertyValue('gap'), 10);

        if (window.innerWidth > 767) {
            buttonLeft.style.display = 'flex';
            buttonRight.style.display = 'flex';
        }


        updateButtons();


        setTimeout(() => {
            if (direction === 'left') {
                newScrollPosition = currentScrollPosition - tileWidth - gap;

                if (newScrollPosition <= 0) {
                    newScrollPosition = 0;
                    buttonLeft.style.opacity = '0';

                    setTimeout(() => {
                        buttonLeft.style.display = 'none';
                    }, 300);

                }

            } else {
                newScrollPosition = currentScrollPosition + tileWidth + gap;

                if (newScrollPosition >= maxScrollPosition) {
                    newScrollPosition = maxScrollPosition;
                    buttonRight.style.opacity = '0';

                    setTimeout(() => {
                        buttonRight.style.display = 'none';
                    }, 300);
                }
            }

            currentScrollPosition = newScrollPosition;
            slider.scrollTo(newScrollPosition, 0);

        }, 2)
    }

    buttonLeft.addEventListener('click', scrollLeft);
    buttonRight.addEventListener('click', scrollRight);


    function updateButtons() {
        if(slider.offsetWidth < (sliderItems.length * tileWidth) + ((sliderItems.length-1) * gap)) {

            setTimeout(() => {
                buttonLeft.style.opacity = '1';
                buttonRight.style.opacity = '1';
            }, 1);
        } else {
            setTimeout(() => {
                buttonLeft.style.opacity = '0';
                buttonRight.style.opacity = '0';
            }, 1);
        }
    }
    updateButtons();

    setTimeout(() => {
        buttonLeft.style.opacity = '0';
    }, 3);


    window.addEventListener('resize', updateButtons);


//swipe

    //add touch-action: pan-y; if browser is Chrome

    if (navigator.appVersion.indexOf("Chrome/") != -1) {
        document.querySelector('.productSlider__slider').style.touchAction = 'pan-y';
    }

    let xDown = null;
    let yDown = null;

    let swiped = false;

    slider.addEventListener('touchstart', handleTouchStart, false);
    slider.addEventListener('touchmove', handleTouchMove, false);

    function getTouches(event) {
        return event.touches
    }

    function handleTouchStart(event) {
        const firstTouch = getTouches(event)[0];
        xDown = firstTouch.clientX;
        yDown = firstTouch.clientY;
        swiped = false;
    }

    function handleTouchMove(event) {
        if(!swiped) {   //check if already scrolled
            if (! xDown || ! yDown) {
                return;
            }

            let xUp = event.touches[0].clientX;
            let yUp = event.touches[0].clientY;

            let xDiff = xDown - xUp;
            let yDiff = yDown - yUp;

            if (Math.abs(xDiff) > Math.abs(yDiff)) {    //check if swipe is horizontal
                if (xDiff > 0) {    //check if swipe is left or right
                    scrollRight();
                } else {
                    scrollLeft()
                }
            } else {
                if(yDiff > 0) {    //check if swipe is up or down
                    //console.log('down');
                } else {
                    //console.log('up');
                }
            }
            swiped = true;
        }
    }

})();
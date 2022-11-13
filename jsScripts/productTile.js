"use strict";

function tiles() {
    const productTiles = document.querySelectorAll('.--js_productTile');

    productTiles.forEach((tile) => {

        const buyZone = tile.querySelector('.--js_buyZoneWrapper'),
            details = tile.querySelector('.--js_details'),
            decrementButton = tile.querySelector('.--js_inputButton--left'),
            incrementButton = tile.querySelector('.--js_inputButton--right'),
            input = tile.querySelector('.--js_quantityInput'),
            url = new URL(window.location.href);


//hover
        if(!url.searchParams.has('dm') || url.searchParams.get('dm') === 'icon') {
            function isMobile() {
                return window.innerWidth <= 767;
            }

            function hover() {
                details.style.transform = 'translateY(0)';
                buyZone.style.opacity = '1';
            }

            function unHover() {
                details.style.transform = 'translateY(70px)';
                buyZone.style.opacity = '0';
            }

            if(isMobile()) {
                hover();
            }

            window.addEventListener('resize', () => {
                if(isMobile()) hover();
                else unHover();
            })

            tile.addEventListener('mouseover', () => {
                if (!isMobile()) hover();
            })

            tile.addEventListener('mouseleave', () => {
                if (!isMobile()) unHover();
            })
        }



//quantity input buttons
        decrementButton.addEventListener('click', () => {
            if (input.value > 0) input.value--;
        })

        incrementButton.addEventListener('click', () => {
            input.value++;
        })


//validate quantity input
        let value = '';
        input.addEventListener("input", function () {
            if (this.value === '') {
                value = '';
                this.value = value;
            }
            if (this.value < 0 || /^[0-9]+$/.test(this.value) === false) {
                this.value = value;
            } else {
                value = this.value;
            }
        })
    })
}
tiles();



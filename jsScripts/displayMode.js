"use strict";

/**
 * Gets url search parameter 'dm' and changes display mode of product list depending on value of 'dm'
 */

function displayModes() {


    const icon = document.querySelectorAll('.--js_iconDM');
    const full = document.querySelectorAll('.--js_fullDM');

    //dm = icon
    icon.forEach( (item) => {
        item.addEventListener('click', () => {
            let url = new URL(window.location.href);
            if (url.searchParams.get('dm') === 'full') {
                if(url.searchParams.has('dm')) {
                    url.searchParams.set('dm', 'icon');
                } else {
                    url.searchParams.append('dm', 'icon');
                }
                window.location.href = url.toString();
            }
        })
    })

    //dm = full
    full.forEach( (item) => {
        item.addEventListener('click', () => {
            let url = new URL(window.location.href);
            if (url.searchParams.get('dm') === 'icon' || !url.searchParams.has('dm')) {
                if(url.searchParams.has('dm')) {
                    url.searchParams.set('dm', 'full');
                } else {
                    url.searchParams.append('dm', 'full');
                }
                window.location.href = url.toString();
            }
        })
    })
}
displayModes();
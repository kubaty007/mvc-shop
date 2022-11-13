"use strict";

function appendControls() {

    const productListControls = document.querySelector('.productList__controls');

    const containers = document.querySelectorAll('.productListNav__container');
    containers.forEach((container) => {
        if (container.innerHTML.length === 0) {
            let clone = productListControls.cloneNode(true);
            container.appendChild(clone);
        }
    })
}
appendControls();

function reloadListInputs() {

    const orderInputs = document.querySelectorAll('.order'),
        limitInputs = document.querySelectorAll('.limit'),
        pageInputs = document.querySelectorAll('.pages__item'),
        pagePrev = document.querySelectorAll('.pages__prev'),
        pageNext = document.querySelectorAll('.pages__next'),
        pageInput = document.querySelectorAll('.pages__item--input');

    limitInputs.forEach((input) => {
        input.addEventListener('input', () => {
            let url = new URL(window.location.href);
            if (url.searchParams.has('limit')) {
                url.searchParams.delete('limit');
            }
            url.searchParams.append('limit', input.value);

            if (url.searchParams.has('page')) {
                url.searchParams.delete('page');
            }
            url.searchParams.append('page', '1');

            window.location.href = url.toString();
        })
    })

    orderInputs.forEach((input) => {
        input.addEventListener('input', () => {
            let url = new URL(window.location.href);
            if (url.searchParams.has('order')) {
                url.searchParams.delete('order');
            }
            url.searchParams.append('order', input.value);

            window.location.href = url.toString();
        })
    })

    let lastPage = 1;

    if(pageInputs.length > 0) {
        lastPage = pageInputs[pageInputs.length-1].dataset.page.toString();
    }

    pageInputs.forEach((input) => {

        input.addEventListener('click', () => {
            let url = new URL(window.location.href);
            if (url.searchParams.has('page')) {
                url.searchParams.delete('page');
            }
            url.searchParams.append('page', input.dataset.page);

            window.location.href = url.toString();
        })
    })

    pagePrev.forEach((input) => {
        input.addEventListener('click', () => {
            let url = new URL(window.location.href);
            if (url.searchParams.has('page') && url.searchParams.get('page') > 1) {
                url.searchParams.set('page', (parseInt(url.searchParams.get('page')) - 1).toString());
                window.location.href = url.toString();
            }
        })
    })

    pageNext.forEach((input) => {
        input.addEventListener('click', () => {
            let url = new URL(window.location.href);
            if (url.searchParams.has('page') && url.searchParams.get('page') < parseInt(lastPage)) {
                url.searchParams.set('page', (parseInt(url.searchParams.get('page')) + 1).toString());
                window.location.href = url.toString();
            } else if (!url.searchParams.has('page')) {
                url.searchParams.append('page', '2');
                window.location.href = url.toString();
            }
        })
    })


    pageInput.forEach((input) => {
        input.addEventListener('change', () => {
            pageFromInput(input);
        })

        input.addEventListener('keypress', (event) => {
            if (event.key === "Enter") {
                event.preventDefault();
                pageFromInput(input)
            }
        })
    })

    function pageFromInput(input) {
        let url = new URL(window.location.href);
        if (url.searchParams.has('page')) {
            url.searchParams.delete('page');
        }
        url.searchParams.append('page', input.querySelector('.productListNav__pageInput').value.toString());

        window.location.href = url.toString();
    }
}

reloadListInputs();

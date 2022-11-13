(() => {
    "use strict";

    document.addEventListener('DOMContentLoaded', reload)

    function reload() {
        const form = document.querySelector('.--js_filterForm');

        const submit = debounce(() => {
            form.requestSubmit()
        })

        document.querySelectorAll('.--js_filterItem').forEach((item) => {
            item.addEventListener('input', submit)
        })

        form.addEventListener('submit', getData)

        const deleteFilterButtons = document.querySelectorAll('.--js_deleteFilter');

        deleteFilterButtons.forEach((button) => {
            button.addEventListener('click', () => {
                const filter = button.dataset.name;

                if (filter === 'minPrice' || filter === 'maxPrice') {

                    switch (filter) {
                        case "minPrice":
                            document.querySelector('#' + filter).value = '0';
                            break;
                        case "maxPrice":
                            document.querySelector('#' + filter).value = document.querySelector('#' + filter).getAttribute('max');
                    }
                    coverSize();
                } else {
                    document.querySelector('#' + filter).checked = false;
                }



                button.parentElement.style.opacity = '0';
                button.parentElement.style.transform = 'translateX(-100%)';
                setTimeout(() => {
                    const lastChild = document.querySelector('.filters__currentBox').lastElementChild;
                    button.parentElement.style.maxHeight = '0';
                    if(button.parentElement === lastChild) {
                        button.parentElement.style.marginTop = '-15px';
                    } else {
                        button.parentElement.style.marginBottom = '-15px';
                    }
                }, 300)


                submit();
            })
        })


        //hide filters
        const hideFilters = document.querySelector('.--js_hideFilters'),
            filtersBody = document.querySelector('.filters__body');

        let counter = 0;

        hideFilters.addEventListener('click', () => {
            if (counter % 2 === 0) {
                filtersBody.style.display = 'block';
                hideFilters.style.rotate = '90deg';
            } else {
                filtersBody.style.display = 'none';
                hideFilters.style.rotate = '0deg';
            }
            counter++;
        })


        //hide 6+ producers
        const producers = document.querySelector('.producers'),
            producerItems = producers.querySelectorAll('.filters__valueItem'),
            showMoreProducers = producers.querySelector('.producers__moreButton');

            counter = 0;
        showMoreProducers.addEventListener('click', () => {
            let i = 1;
            producerItems.forEach((item) => {

                if (i > 5) {
                    if(counter % 2 === 0) {
                        item.style.display = 'flex';
                        showMoreProducers.innerHTML = 'mniej';
                    } else {
                        item.style.display = 'none';
                        showMoreProducers.innerHTML = 'więcej';
                    }
                }
                i++;
            })
            counter++;
        })


    }


    function debounce(callback, delay = 1800) {
        let timeout
        return (...args) => {
            clearTimeout(timeout)
            timeout = setTimeout(() => {
                callback(...args)
            }, delay)
        }
    }


    const filtersUrl = 'http://localhost/elhurt-test/filters/action',   //filters
        productListUrl = 'http://localhost/elhurt-test/productList/action',
        mainUrl = window.location.href,
        productListNavUrl = 'http://localhost/elhurt-test/productListNav/action';


    function getData(event) {
        let data = this,
            url1 = new URL(filtersUrl),
            url2 = new URL(productListUrl),
            url3 = new URL(mainUrl),
            url4 = new URL(productListNavUrl);


        data.querySelectorAll('.--js_filterItem').forEach((input) => {

            if(url1.searchParams.has(input.getAttribute('name'))) {
                url1.searchParams.delete(input.getAttribute('name'));
            }

            if (url3.searchParams.has(input.getAttribute('name'))) {
                url3.searchParams.delete(input.getAttribute('name'));
            }

            //handle filer check
            if (input.checked) {
                url1.searchParams.append(input.getAttribute('name'), '1');
                url3.searchParams.append(input.getAttribute('name'), '1');
            }


            if (input.getAttribute('type') === 'range') {
                url1.searchParams.append(input.getAttribute('name'), input.value);
                url3.searchParams.append(input.getAttribute('name'), input.value);
            }


        })

        if (url3.searchParams.has('page')) {
            url3.searchParams.set('page', '1');
        }

        url2 += '?' + url3.toString().split('?')[1];
        url4 += '?' + url3.toString().split('?')[1];

        // update url
        window.history.pushState({"html": '', "pageTitle": ''}, "", url3);


        //fetch filters
        fetch(url1, {
            method: 'GET'
        }).then(res => res.text())
            .then(function (data) {
                document.querySelector('.filters__container').innerHTML = data;
                reload();
                rangeInput();
            })
            .then(() => {
                //fetch product list
                fetch(url2, {
                    method: 'GET'
                }).then(res => res.text())
                    .then(function (data) {
                        if (data.length > 0) {
                            document.querySelector('.productList__container').innerHTML = data;
                        } else {
                            document.querySelector('.productList__container').innerHTML = /*'<div class="noItems__image"><img src="photos/no-items.gif" alt="no-items image"></div>*/'<div class="noItems__text">Nie znalezionio produktów spełniających kryteria wyszukiwania.</div>';
                        }
                        tiles();
                    })
            })
            .then(() => {
                //fetch product list nav
                fetch(url4, {
                    method: 'GET'
                }).then(res => res.text())
                    .then(function (data) {
                        document.querySelectorAll('.productListNav__container').forEach((element) => {
                            element.innerHTML = data;
                            reloadListInputs();
                            displayModes();
                        })
                    })
            })

        event.preventDefault();
    }
})();
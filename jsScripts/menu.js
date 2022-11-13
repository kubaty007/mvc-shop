(() => {
    const categories = document.querySelector(".--js-menu-categories");
    const expand = categories.querySelectorAll('.menu__icon');
    const items = categories.querySelectorAll('li.menu__item:not(.menu__item--nested)');
    if(expand !== null && items !== null) {
        items.forEach(item => {
            item.addEventListener('click', function(event) {
                if(Array.from(expand).find(node => node.isEqualNode(event.target)) || Array.from(expand).find(node => node.isEqualNode(event.target.parentNode))) {
                    items.forEach(i => {
                        const plus = i.querySelector('.--js-menu-plus');
                        const nestedList = i.querySelector('.menu__list--nested');
                        const nestedItems = i.querySelectorAll('.menu__item--nested');
                        if (i === item) {
                            if (nestedList.classList.contains('menu__list--show')) {
                                plus.style.transform = 'rotate(0)';
                                setTimeout(() => {
                                    nestedList.classList.remove('menu__list--show')
                                }, 400);
                                nestedItems.forEach(nestedItem => {
                                    nestedItem.classList.remove('menu__item--show');
                                })
                            } else {
                                plus.style.transform = 'rotate(405deg)';
                                nestedList.classList.add('menu__list--show');
                                nestedItems.forEach(nestedItem => {
                                    setTimeout(() => {
                                        nestedItem.classList.add('menu__item--show')
                                    }, 300);
                                })
                            }
                        } else {
                            plus.style.transform = 'rotate(0)';
                            setTimeout(() => {
                                nestedList.classList.remove('menu__list--show')
                            }, 400);
                            nestedItems.forEach(nestedItem => {
                                nestedItem.classList.remove('menu__item--show');
                            })
                        }
                    })
                }
            })
        })
    }
    const container = document.querySelector(".menu__categories"),
        arrow = document.querySelector(".menu__mobileArrow");

    if(container !== null) {
        let count = 0;
        arrow.addEventListener('click', () => {
            if(count % 2 === 0) {
                container.style.maxHeight = "1000px";
                arrow.style.transform = "rotate(90deg)"
                count++
            } else {
                container.style.maxHeight = "0";
                arrow.style.transform = "rotate(0deg)"
                count++
            }
        })
    }

    function throttle(func, limit) {
        let inThrottle = false;
        let waiting;
        function timeout() {
            if (waiting == null) {
                inThrottle = false;
            } else {
                func(...waiting);
                waiting = null;
                setTimeout(timeout, limit);
            }
        }

        return (...args) => {
            if (inThrottle) {
                waiting = args
                return
            }
            func(...args)
            inThrottle = true;

            inThrottle = setTimeout(timeout, limit)
        }
    }

    window.addEventListener('resize', throttle(() => {
        if(window.innerWidth > 768) {
            container.style.maxHeight = "1500px";
            arrow.style.transform = "rotate(90deg)"
        }
    }, 500))


})();
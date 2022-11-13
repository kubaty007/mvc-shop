(() => {
    "use strict";

    const mainMenuButtons = document.querySelectorAll('.--js_mobileMenuButton_main'),
        menuButtons = document.querySelectorAll('.--js_mobileMenuButton'),
        menus = document.querySelectorAll('.header__mobile'),
        darkBackground = document.querySelector('.header__mobileDarkBackground'),
        items = document.querySelectorAll('.header__mobileItem');

    mainMenuButtons.forEach((button) => {
        button.addEventListener('click', mobileMenu)
    })

    darkBackground.addEventListener('click', mobileMenu);

    menuButtons[0].addEventListener('click', mobileMenu);

    let counter = 0;

    function mobileMenu() {
        menus.forEach(menu => {
            if(counter % 2 === 0) {
                menus[0].style.left = '0';
                darkBackground.style.display = 'block';
                setTimeout(() => {
                    darkBackground.style.opacity = '0.5';
                }, 1);

            } else {
                menu.style.left = '-100%';
                darkBackground.style.opacity = '0';
                setTimeout(() => {
                    darkBackground.style.display = 'none';
                }, 300);
            }
        })
        counter++
    }


    items.forEach(item => {
        const arrows = item.querySelectorAll('[class^="icon_arrow"]'),
            menu = item.querySelector('.header__mobile');

        let showing = false;

        mainMenuButtons.forEach((button) => {
            button.addEventListener('click', () => {showing = false});
        })

        if(arrows !== null) {
            arrows.forEach(arrow => {
                arrow.addEventListener('click', () => {
                    if(showing === false && arrow.classList.contains('icon_arrow-right')) {
                        if(menu !== null) {
                            menu.style.left = '0';
                            showing = true;
                        }
                    }
                    else if(showing === true && arrow.classList.contains('icon_arrow-left')) {
                        menu.style.left = '-100%';
                        showing = false;
                    }
                })
            })
        }
    })


    window.addEventListener('resize', () => {
        if(window.innerWidth > 767) {
            darkBackground.style.display = 'none';
        } else {
            if (counter % 2 !== 0) {    //checks if mobile menu is open
                darkBackground.style.display = 'block';
            }
        }
    })

})();
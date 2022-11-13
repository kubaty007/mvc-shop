(()=> {
    "use strict";

    const footerButtons = document.querySelectorAll('.--js_footerButton');

    footerButtons.forEach((button) => {
        let counter = 0;
        button.addEventListener('click', () => {


            const links = button.parentElement.parentElement.querySelectorAll('.--js_footerLink');
            links.forEach((link) => {
                if (counter % 2 === 0) {
                    link.style.display = 'block';
                    button.style.transform = 'rotate(270deg)';
                } else {
                    link.style.display = 'none';
                    button.style.transform = 'rotate(90deg)';
                }
            })
            counter++;
        })
    })
})();
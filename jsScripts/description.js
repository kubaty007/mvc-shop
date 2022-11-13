'use strict';
(() => {
    const play = document.querySelector('.description__play'),
        mask = document.querySelector('.description__mask'),
        iframe = document.querySelector('iframe');

    play.addEventListener('click', () => {
        play.style.display = 'none';
        mask.style.display = 'none';
        let src = iframe.getAttribute('src');
        src += '?autoplay=1&disablekb=1&fs=0&modestbranding=1';
        iframe.setAttribute('src', src);
    })

})();
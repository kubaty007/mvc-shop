(() => {
    const gallery = document.querySelector(".productGallery"),
        blocks = gallery.querySelectorAll(".productGallery__block"),
        scroll =  gallery.querySelector(".productGallery__blocks"),
        container = gallery.querySelector(".productGallery__scroll"),
        img = gallery.querySelector(".--js-imgTarget"),
        arrows = gallery.querySelectorAll(".productGallery__arrow"),
        max = blocks.length;

    if(max !== 0) {

        let counter = 0;

        blocks.forEach(block => {
            block.addEventListener('click', () => {
                blocks.forEach(el => {
                    el.classList.remove("productGallery__block--active");
                })
                block.classList.add("productGallery__block--active");
                counter = Array.prototype.indexOf.call(blocks, block);
                img.src = block.dataset.src;

                translate(counter)
            })
        })

        arrows.forEach(arrow => {
            arrow.addEventListener('click', () => {

                if (counter >= 0 && counter < max) {

                    if ((arrow.classList.contains("productGallery__arrow--right") || arrow.classList.contains("productGallery__arrow--down")) && counter + 1 < max) {
                        counter += 1;
                    } else if ((arrow.classList.contains("productGallery__arrow--left") || arrow.classList.contains("productGallery__arrow--up")) && counter - 1 >= 0) {
                        counter -= 1;
                    }

                    blocks.forEach(el => {
                        el.classList.remove("productGallery__block--active");
                    })
                    blocks[counter].classList.add("productGallery__block--active");
                    img.src = blocks[counter].dataset.src;

                    translate(counter)
                }
            })
        })

        window.addEventListener('resize', throttle(() => {
            if (window.innerWidth < 768) {
                translate()
            } else {
                translate(counter)
            }
        }, 500))

        translate();

        function translate(counter = 0) {
                let height = 5 + blocks[0].offsetHeight,
                    scrollThreshold = Math.floor((Math.floor(container.offsetHeight / height)) / 2),
                    translate,
                    maxScrollPosition = (max - container.offsetHeight / height) * height,
                    move = counter - scrollThreshold;
                arrows.forEach(arrow => {
                    if (counter === 0) {
                        if (arrow.classList.contains("productGallery__arrow--left") || arrow.classList.contains("productGallery__arrow--up")) {
                            arrow.style.opacity = "0.2";
                            arrow.style.pointerEvents = "none";
                        } else {
                            arrow.style.opacity = "0.6";
                            arrow.style.pointerEvents = "auto";
                        }
                    } else if (counter === max - 1) {
                        if (arrow.classList.contains("productGallery__arrow--right") || arrow.classList.contains("productGallery__arrow--down")) {
                            arrow.style.opacity = "0.2";
                            arrow.style.pointerEvents = "none";
                        } else {
                            arrow.style.opacity = "0.6";
                            arrow.style.pointerEvents = "auto";
                        }
                    }  else {
                        arrow.style.opacity = "0.6";
                        arrow.style.pointerEvents = "auto";
                    }
                })
            if (window.innerWidth > 768) {
                if(counter <= 2) {
                    scroll.style.transform = `translateY(0px)`;
                } else if ((move >= 0 && counter < max - scrollThreshold)) {
                    translate = height * move;
                    scroll.style.transform = `translateY(${-translate}px)`;
                } else if (counter >= max - 3) {
                    scroll.style.transform = `translateY(${-maxScrollPosition}px)`;
                }

                } else {
                    scroll.style.transform = `translateY(0px)`;
            }
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
    }

})();
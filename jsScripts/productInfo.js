(() => {

    const info = document.querySelector(".productInfo"),
        increment = info.querySelector(".productInfo__value--increment"),
        decrement = info.querySelector(".productInfo__value--decrement"),
        input = info.querySelector("input");

    decrement.addEventListener('click', () => {
        if (input.value > 0) input.value--;
    })

    increment.addEventListener('click', () => {
        input.value++;
    })


    let value = '';

    input.addEventListener("input", function () {
        if (this.value === '') {
            value = '';
            this.value = value;
        }
        if (this.value <= 0 || /^[0-9]+$/.test(this.value) === false) {
            this.value = value;
        } else {
            value = this.value;
        }
    })

    const variants = info.querySelectorAll(".productInfo__variant"),
        scroll =  info.querySelector(".productInfo__variants"),
        container = info.querySelector(".productInfo__scroll"),
        arrows = info.querySelectorAll(".productInfo__arrow"),
        max = variants.length;

    if(max !== 0) {

        let counter = 0;

        arrows.forEach(arrow => {
            arrow.addEventListener('click', () => {
                console.log(counter)
                if (counter >= 0 && counter < max) {
                    if (arrow.classList.contains("productInfo__arrow--right") && counter + 1 < max) {
                        counter += 1;
                        console.log(counter + " updated")
                    } else if (arrow.classList.contains("productInfo__arrow--left") && counter - 1 >= 0) {
                        counter -= 1;
                        console.log(counter + " updated")
                    }
                    translate(counter, true)
                }
            })
        })

        translate();

        window.addEventListener('resize', throttle(() => {
            translate();
        }, 500));


        function translate(move = 0, flag = false) {
            let width = 10 + variants[0].offsetWidth,
                scrollVisible = (Math.floor(container.offsetWidth / width)),
                translate,
                maxScrollPosition = (max - container.offsetWidth / width) * width;

            if (move > max - scrollVisible && flag) {
                counter = max - scrollVisible;
                move = counter;
            }

            arrows.forEach(arrow => {
                if (container.offsetWidth / (width * max) < 1) {
                    arrow.style.display = "flex";
                } else {
                    arrow.style.display = "none";
                }

                if (move >= max - scrollVisible) {
                    if (arrow.classList.contains("productInfo__arrow--right")) {
                        arrow.style.pointerEvents = "none";
                        arrow.style.opacity = "0.2";
                    } else {
                        arrow.style.opacity = "0.6";
                        arrow.style.pointerEvents = "auto";
                    }
                } else if (move === 0) {
                    if (arrow.classList.contains("productInfo__arrow--left")) {
                        arrow.style.pointerEvents = "none";
                        arrow.style.opacity = "0.2";
                    } else {
                        arrow.style.opacity = "0.6";
                        arrow.style.pointerEvents = "auto";
                    }
                }  else {
                    arrow.style.opacity = "0.6";
                    arrow.style.pointerEvents = "auto";
                }
            })

            if(max > scrollVisible) {
                if ((move >= 0 && move < max - scrollVisible)) {
                    translate = width * move;
                    scroll.style.transform = `translateX(${-translate}px)`;
                } else if (move === max - scrollVisible) {
                    scroll.style.transform = `translateX(${-maxScrollPosition}px)`;
                }
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

})()

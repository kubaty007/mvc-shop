(() => {
    const sliders = document.querySelectorAll(".slider__container");

    sliders.forEach(slider => {
        const arrows = slider.querySelectorAll(".slider__arrow");
        const left = slider.querySelector(".slider__arrow--left");
        const slides = slider.querySelectorAll(".slider__slide");
        const dots = slider.querySelectorAll(".slider__dot");
        let slideIndex = 0;
        if(slides.length > 0){

            function autoSlide() {
                slideIndex += 1;
                if (slideIndex > slides.length) {slideIndex = 1}
                if (slideIndex < 1) {slideIndex = slides.length}
                slides.forEach(slide => {
                    slide.style.display = "none";
                });
                dots.forEach(dot => {
                    dot.classList.remove("slider__dot--active");
                });
                slides[slideIndex-1].style.display = "block";
                dots[slideIndex-1].classList.add("slider__dot--active");
                timer = setTimeout(autoSlide, 5000);
            }

            autoSlide();

            arrows.forEach(arrow => {
                arrow.addEventListener("click", () => {
                    if(arrow == left){
                        slideIndex -=2;
                    }
                    clearTimeout(timer);
                    autoSlide();
                });
            })
            dots.forEach(dot => {
                dot.addEventListener("click", () => {
                    slides.forEach(slide => {
                        slide.style.display = "none";
                    });
                    dots.forEach(dot => {
                        dot.classList.remove("slider__dot--active");
                    });
                    counter = Array.prototype.indexOf.call(dots, dot);
                    slides[counter].style.display = "block";
                    dots[counter].classList.add("slider__dot--active");
                });
            });

        } else {
            arrows.forEach(arrow => {arrow.style.display = "none";})
        }

       slides.forEach(slide => {
           let touchstartX = 0;
           let touchendX = 0;
           let touchstartY = 0;
           let touchendY = 0;

           slide.addEventListener('touchstart', touch => {
               touchstartX = touch.changedTouches[0].screenX;
               touchstartY = touch.changedTouches[0].screenY;
           })

           slide.addEventListener('touchend', e => {
               clearTimeout(timer);
               touchendX = e.changedTouches[0].screenX;
               touchendY = e.changedTouches[0].screenY;

               let xAbs = Math.abs(touchstartX - touchendX);
               let yAbs = Math.abs(touchstartY - touchendY);

               if (xAbs > yAbs) {
                   if(xAbs > 75) {
                       if (touchendX > touchstartX) {
                           slideIndex -= 2
                       }
                       autoSlide();
                   }
               }
           });
       });
    });
})();

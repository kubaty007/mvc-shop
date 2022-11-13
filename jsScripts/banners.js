(() => {
    const bannerfields = document.querySelectorAll('.banners');

    bannerfields.forEach(field => {
        const banners = field.querySelectorAll('.banners__banner')

        banners.forEach(banner => {
            const img = banner.querySelector('.banners__img');

            banner.addEventListener('mouseover', () => {
                img.style.transform = "scale(1.05)";
            })

            banner.addEventListener('mouseleave', () => {
                img.style.transform = "scale(1)";
            })
        })
    })
})();
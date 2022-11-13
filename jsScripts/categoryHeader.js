(() => {
    const ext = document.querySelector(".--js-categoryHeader");
    const coll = document.querySelector(".categoryHeader__collapsible");
    const dots = document.querySelector(".categoryHeader__hide");
    let count = 0;
    if(ext !== null) {
        ext.addEventListener("click", () => {
            if(count % 2 === 0) {
                ext.innerHTML = 'ZWIŃ';
                coll.style.display = 'inline';
                setTimeout(() => {
                    coll.style.opacity = '1';
                    dots.style.display = 'none';
                }, 100);
            }else {
                ext.innerHTML = 'ROZWIŃ';
                coll.style.opacity = '0';
                setTimeout(() => {
                    coll.style.display = 'none';
                    dots.style.display = 'inline';
                }, 100);
            }
            count++;
        });
    }

})();
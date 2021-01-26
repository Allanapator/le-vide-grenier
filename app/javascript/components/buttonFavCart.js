const buttonFavCart = () => {
    const btn = document.querySelectorAll(".button-heart-cart");

    btn.forEach(e => {
        e.addEventListener('click', () => {
            if (e.innerHTML.includes('far fa-heart')) {
                e.innerHTML = `<i id="" class="button-like-cart fas fa-heart" ></i>`
            } else {
                e.innerHTML = `<i id="" class="button-like-cart far fa-heart" ></i>`
            }
        })
    })
}
export { buttonFavCart };
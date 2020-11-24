const buttonFavCart = () => {
    const btn = document.querySelectorAll(".button-like-cart");

    btn.forEach(e => {
        e.addEventListener('click', () => {
            if (e.className.includes('far fa-heart')) {
                e.className = "button-like-cart gold fas fa-heart";
            } else {
                e.className = "button-like-cart gold far fa-heart";
            }
        })
    })
}
export { buttonFavCart };
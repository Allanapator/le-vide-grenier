const buttonHeart = () => {
    const btnHeart = document.querySelector("#button-heart-cart-circle");

    if (btnHeart) {
        btnHeart.addEventListener('click', () => {
            if (btnHeart.style.color !== "white") {
                btnHeart.style.backgroundColor = "#d5a870"
                btnHeart.style.color = "white"
            } else {
                btnHeart.style.backgroundColor = "#EBEBEB"
                btnHeart.style.color = "#878787"
            }
        })
    }
}
export { buttonHeart };
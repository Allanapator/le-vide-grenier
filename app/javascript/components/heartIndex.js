const heart = () => {
    const button = document.querySelectorAll(".btn-heart-index")
    const cards = document.querySelectorAll(".card-product")

    cards.forEach(card => {
        card.addEventListener("mouseover", () => {
            if ($(window).width() > 535) {
                button.forEach(btn => {
                    if (card.getAttribute('data-number') === btn.getAttribute('data-number')) {
                        btn.classList.add("dis-block")
                        btn.classList.remove("none")
                    }
                })
            }
        })
        card.addEventListener("mouseout", () => {
            if ($(window).width() > 535) {
                button.forEach(btn => {
                    if (card.getAttribute('data-number') === btn.getAttribute('data-number')) {
                        btn.classList.add("none")
                        btn.classList.remove("dis-block")
                    }
                })
            }
        })
    })
}

export { heart };
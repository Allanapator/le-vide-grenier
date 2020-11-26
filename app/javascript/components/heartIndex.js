const heart = () => {
    const btn = document.querySelectorAll(".btn-heart-index")
    const card = document.querySelectorAll(".card-product")

    card.forEach(e => {
        e.addEventListener("mouseover", () => {
            btn.forEach(b => {
                b.classList.add("dis-block")
                b.classList.remove("none")
            })
        })
        e.addEventListener("mouseout", () => {
            btn.forEach(b => {
                b.classList.add("none")
                b.classList.remove("dis-block")
            })
        })
    })
}

export { heart };
const buttonSearch = () => {
    const btn = document.querySelector("#button-search-logo");
    const block = document.querySelector(".search-form")
    const input = document.querySelector("#input_search")

    btn.addEventListener('click', () => {
        if (block.className.includes("none")) {
            block.classList.add("dis-block")
            btn.style.color = "#d5a870"
            block.classList.remove("none")
            input.focus()
        } else {
            block.classList.remove("dis-block")
            btn.style.color = "white"
            block.classList.add("none")
        }
    })
}
export { buttonSearch };
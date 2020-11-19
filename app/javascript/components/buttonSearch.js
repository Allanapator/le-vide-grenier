const buttonSearch = () => {
    const btn = document.querySelector("#button-search-logo");
    const block = document.querySelector(".search-form")

    btn.addEventListener('click', () => {
        if (block.style.display == "none") {
            block.style.display = "block"
            console.log('1')
        } else {
            block.style.display = "none"
            console.log('2')
        }
    })
}
export { buttonSearch };
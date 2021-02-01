const btnPay = () => {
    const btnOk = document.querySelector("#btn-pay");
    const btnPayment = document.querySelector("#pay")

    btnOk.addEventListener('click', (e) => {

        if (btnPayment.className.includes("none")) {
            btnPayment.classList.add("block")
            block.classList.remove("none")
        } else {
            block.classList.remove("block")
            block.classList.add("none")
        }
    })
}
export { btnPay };
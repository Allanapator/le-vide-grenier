const button = () => {
  const buttonHeart = document.querySelectorAll(".button-heart")

  buttonHeart.forEach(btnHeart => {
    btnHeart.addEventListener("click", () => {
      if (btnHeart.innerHTML.includes("far fa-heart")) {
        btnHeart.innerHTML = `<i id="" class="button-like fas fa-heart" ></i>`
      } else {
        btnHeart.innerHTML = `<i id="" class="button-like far fa-heart" ></i>`
      }
    })
  })
}
export { button };

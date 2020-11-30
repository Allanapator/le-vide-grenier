const button = () => {
  const buttonHeart = document.querySelectorAll(".button-heart")
  const btns = document.querySelectorAll(".button-like");
  const cards = document.querySelectorAll(".card-product")

  buttonHeart.forEach(btnHeart => {
    btnHeart.addEventListener("click", () => {
      if (btnHeart.innerHTML.includes("far fa-heart")) {
        btnHeart.innerHTML = `<i id="" class="button-like fas fa-heart" ></i>`
        console.log("hello")
      } else {
        btnHeart.innerHTML = `<i id="" class="button-like far fa-heart" ></i>`
        console.log("bye bye")
      }
    })
  })
}
export { button };

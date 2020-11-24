const button = () => {
  const btn = document.querySelectorAll(".button-like");

  btn.forEach(e => {
    e.addEventListener('click', () => {
      if (e.className.includes('far fa-heart')) {
        e.className = 'button-like fas fa-heart';
      } else {
        e.className = 'button-like far fa-heart';
      }
    })
  })
}
export { button };
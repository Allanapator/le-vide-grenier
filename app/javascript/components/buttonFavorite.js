const button = () => {
  const btn = document.querySelectorAll(".button-like");

  btn.forEach(e => {
    e.addEventListener('click', () => {
      if (e.className === 'far fa-heart') {
        e.className = 'fas fa-heart';
      }
      else {
        e.className = 'far fa-heart';
      }
    })
  })
}

export { button };
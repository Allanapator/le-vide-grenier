const button = () => {
    const btn = document.querySelector("#button-like");
    if(btn){
      btn.addEventListener('click', () => {
        if(btn.className === 'far fa-heart') {
          btn.className = 'fas fa-heart';
          }      
        else {
          btn.className = 'far fa-heart';
        }
      })
    }
}

export { button };
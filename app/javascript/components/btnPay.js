const btnPay = () => {
  const recap = document.querySelector(".recap");
  if (recap) {
    window.addEventListener("load", (e) => {
      e.preventDefault();
      Swal.fire({
        icon: "info",
        title: "Procédure de paiement factice",
        text:
          "La méthode de paiement est en mode test pour éviter les réelles transactions. Remplissez les numéros de carte bleue par: '4242 4242 4242 4242' pour procéder à la transaction virtuelle.",
        confirmButton: true,
        closeOnConfirm: true,
      });
    });
  }
};
export { btnPay };

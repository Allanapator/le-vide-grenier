const btnPay = () => {
  const recap = document.querySelector(".recap");
  if (recap) {
    window.addEventListener("load", (e) => {
      e.preventDefault();
      Swal.fire({
        icon: "info",
        title: "Procédure de paiement factice",
        text:
          "La méthode de paiement est en mode test pour l'instant. Si vous souhaitez acheter l'oeuvre nous vous conseillons de contacter les artistes via notre rubrique 'À propos de nous'",
        confirmButton: true,
        closeOnConfirm: true,
      });
    });
  }
};
export { btnPay };

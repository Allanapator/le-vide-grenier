import swal from "sweetalert";

// const initSweetalert = (selector, options = {}, callback = () => { }) => {
//     const swalButton = document.querySelector(selector);
//     if (swalButton) { // protect other pages
//         swalButton.addEventListener('click', () => {
//             swal({
//                 title: "Êtes-vous sûre de vouloir supprimer ce panier ?",
//                 text: "Une fois supprimé, vous ne pourrez plus récupérer ce panier!",
//                 icon: "warning",
//                 buttons: true,
//                 dangerMode: true,
//             })
//                 .then((willDelete) => {
//                     if (willDelete) {
//                         swal("Votre panier a bien été supprimé!", {
//                             icon: "success",
//                         });
//                     } else {
//                         swal("Votre panier a bien été sauvegardé");
//                     }
//                 });
//         });
//     }
// };

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) {
    // protect other pages
    swalButton.addEventListener("click", () => {
      swal(options); // <-- add the `.then(callback)`
    });
  }
};

export { initSweetalert };

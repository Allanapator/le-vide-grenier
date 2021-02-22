const btnDelete = () => {
    const recap = document.querySelector("#del-button-hid");
    $(recap).on('click', '.button', function (e) {
        e.preventDefault();
        var id = $(this).data('id');
        swal({
            title: "Are you sure!",
            type: "error",
            confirmButtonClass: "btn-danger",
            confirmButtonText: "Yes!",
            showCancelButton: true,
        },
            function () {
                $.ajax({
                    type: "POST",
                    url: "{{url('/destroy')}}",
                    data: { id: id },
                    success: function (data) {
                        //
                    }
                });
            });
    });
    // if (recap) {
    //     recap.addEventListener("click", (e) => {
    //         e.preventDefault();
    //         Swal.fire({
    //             title: "Are you sure?",
    //             text: "You will not be able to recover this imaginary file!",
    //             type: "warning",
    //             showCancelButton: true,
    //             confirmButtonClass: 'btn-danger',
    //             confirmButtonText: 'Yes, delete it!',
    //             cancelButtonText: "No, cancel plx!",
    //             closeOnConfirm: false,
    //             closeOnCancel: false
    //         },
    //             function (isConfirm) {
    //                 if (isConfirm) {

    //                     // Call your delete item function here.
    //                     swal("Deleted!", "Your imaginary file has been ted!", "success");
    //                 } else {
    //                     swal("Cancelled", "Your imaginary file is safe :)", "error");
    //                 }
    //             });
    //     });
    // }
};
export { btnDelete };
$(document).ready(function () {
    console.log("this is remove product")
    $('#submitUpdatePassword').click(function (e) {
        e.preventDefault();
        let password = $('#forgot_password').val()
        let confirmPassword = $('#forgot_confirm_password').val()
        var path = window.location.pathname;
        var parts = path.split('/');
        var id = parts[parts.length - 1];
        console.log("password: " + password + " confirmPassword: " + confirmPassword + "id: " + id);
        Swal.fire({
            text: "Bạn có muốn cap nhat mat khau nay khong?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            cancelButtonText: 'Trở lại',
            confirmButtonText: 'Có'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    type: 'POST',
                    url: '/post-update-password/' + id,
                    data: {
                        password: password,
                        confirmPassword: confirmPassword

                    },
                    success: function (response) {
                        if (response == 'fail') {
                            Swal.fire({
                                icon: 'warning',
                                title: 'Something wrong !',
                                showConfirmButton: true
                            });
                        } else if (response == 'errorPassword') {
                            Swal.fire({
                                icon: 'error',
                                title: 'Thanh cong',
                                text: "Nhap lai mat khau khong chinh xac !",
                                showConfirmButton: false,
                                timer: 3500
                            });
                        } else {
                            Swal.fire({
                                icon: 'success',
                                title: 'Thanh cong',
                                text: "Cap nhat mat khau thanh công !",
                                showConfirmButton: false,
                                timer: 3500
                            });
                            window.location.href = '/login';
                        }
                    },
                    error: function (xhr, status, error) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Xoa san pham thất bại',
                            text: "Có lỗi xảy ra, vui lòng thử lại !",
                            showConfirmButton: false,
                            timer: 2000
                        });
                    }
                });
            }
        })
    })

})
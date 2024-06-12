<?php

//login.php

include('database_connection.php');

session_start();

if(isset($_SESSION["admin_id"]))
{
  header('location:index.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Hệ thống điểm danh sinh viên</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
    @keyframes gradientAnimation {
        0% {
            background-position: 0% 50%;
        }

        50% {
            background-position: 100% 50%;
        }

        100% {
            background-position: 0% 50%;
        }
    }

    @keyframes bubble {
        0% {
            transform: translateY(0) scale(1);
            opacity: 1;
        }

        100% {
            transform: translateY(-100vh) scale(1.5);
            opacity: 0;
        }
    }

    @keyframes typing {
        from {
            width: 0;
        }

        to {
            width: 100%;
        }
    }

    @keyframes blink {
        50% {
            border-color: transparent;
        }
    }

    body {
        background: linear-gradient(270deg, #6a11cb, #2575fc, #ff6f61, #ff9a9e);
        background-size: 800% 800%;
        animation: gradientAnimation 15s ease infinite;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        color: #fff;
        overflow: hidden;
        position: relative;
    }

    .bubbles {
        position: absolute;
        width: 100%;
        height: 100%;
        overflow: hidden;
        z-index: -1;
    }

    .bubble {
        position: absolute;
        bottom: -100px;
        width: 40px;
        height: 40px;
        background-color: rgba(255, 255, 255, 0.2);
        border-radius: 50%;
        animation: bubble 20s linear infinite;
    }

    .bubble:nth-child(1) {
        left: 10%;
        animation-duration: 15s;
        animation-delay: 0s;
    }

    .bubble:nth-child(2) {
        left: 20%;
        width: 20px;
        height: 20px;
        animation-duration: 20s;
        animation-delay: 5s;
    }

    .bubble:nth-child(3) {
        left: 25%;
        animation-duration: 25s;
        animation-delay: 2s;
    }

    .bubble:nth-child(4) {
        left: 40%;
        width: 50px;
        height: 50px;
        animation-duration: 18s;
        animation-delay: 7s;
    }

    .bubble:nth-child(5) {
        left: 55%;
        width: 35px;
        height: 35px;
        animation-duration: 22s;
        animation-delay: 3s;
    }

    .bubble:nth-child(6) {
        left: 70%;
        width: 25px;
        height: 25px;
        animation-duration: 19s;
        animation-delay: 8s;
    }

    .bubble:nth-child(7) {
        left: 80%;
        animation-duration: 17s;
        animation-delay: 6s;
    }

    .bubble:nth-child(8) {
        left: 90%;
        width: 45px;
        height: 45px;
        animation-duration: 25s;
        animation-delay: 1s;
    }

    .card {
        background: rgba(255, 255, 255, 0.1);
        border: none;
        border-radius: 15px;
    }

    .card-header {
        background: rgba(255, 255, 255, 0.2);
        border-bottom: none;
        font-size: 1.5em;
    }

    .form-control {
        background: rgba(255, 255, 255, 0.2);
        border: none;
        color: #fff;
    }

    .form-control:focus {
        background: rgba(255, 255, 255, 0.3);
        box-shadow: none;
    }

    .btn-info {
        background: #6a11cb;
        border: none;
    }

    .btn-info:hover {
        background: #2575fc;
    }

    .btn-info:disabled {
        background: #b0b0b0;
    }

    .text-danger {
        font-size: 0.9em;
    }

    .typing-animation {
        display: inline-block;
        overflow: hidden;
        white-space: nowrap;
        border-right: 0.15em solid #fff;
        animation: typing 3s steps(30, end) infinite, blink 0.75s step-end infinite;
        font-size: 1.5em;
        font-family: monospace;
        width: 0;
    }
    </style>
</head>

<body>

    <div class="bubbles">
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
    </div>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card mt-5">
                    <div class="card-header text-center">
                        <span class="typing-animation">Đăng nhập Admin</span>
                    </div>
                    <div class="card-body">
                        <form method="post" id="admin_login_form">
                            <div class="form-group">
                                <label>Nhập username</label>
                                <input type="text" name="admin_user_name" id="admin_user_name" class="form-control" />
                                <span id="error_admin_user_name" class="text-danger"></span>
                            </div>
                            <div class="form-group">
                                <label>Nhập mật khẩu</label>
                                <input type="password" name="admin_password" id="admin_password" class="form-control" />
                                <span id="error_admin_password" class="text-danger"></span>
                            </div>
                            <div class="form-group text-center">
                                <input type="submit" name="admin_login" id="admin_login" class="btn btn-info"
                                    value="Đăng nhập" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>



<script>
$(document).ready(function() {
    $('#admin_login_form').on('submit', function(event) {
        event.preventDefault();
        $.ajax({
            url: "check_admin_login.php",
            method: "POST",
            data: $(this).serialize(),
            dataType: "json",
            beforeSend: function() {
                $('#admin_login').val('Đang xác thực...');
                $('#admin_login').attr('disabled', 'disabled');
            },
            success: function(data) {
                if (data.success) {
                    // location.href = "<?php echo $base_url; ?>admin";
                    location.href = "index.php";
                }
                if (data.error) {
                    $('#admin_login').val('Login');
                    $('#admin_login').attr('disabled', false);
                    if (data.error_admin_user_name != '') {
                        $('#error_admin_user_name').text(data.error_admin_user_name);
                    } else {
                        $('#error_admin_user_name').text('');
                    }
                    if (data.error_admin_password != '') {
                        $('#error_admin_password').text(data.error_admin_password);
                    } else {
                        $('#error_admin_password').text('');
                    }
                }
            }
        });
    });
});

document.addEventListener('DOMContentLoaded', (event) => {
    const element = document.querySelector('.typing-animation');
    element.addEventListener('animationiteration', () => {
        element.style.width = '0';
        void element.offsetWidth; // Trigger a reflow, flushing the CSS changes
        element.style.width = ''; // Remove the width override to let the animation run again
    });
});
</script>
<!-- <?php

//login.php

include('database_connection.php');

session_start();

if(isset($_SESSION["admin_id"]))
{
  header('location:index.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Hệ thống điểm danh sinh viên</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body>

    <div class="jumbotron text-center" style="margin-bottom:0">
        <h1>Hệ thống điểm danh sinh viên</h1>
    </div>


    <div class="container">
        <div class="row">
            <div class="col-md-4">

            </div>
            <div class="col-md-4" style="margin-top:20px;">
                <div class="card">
                    <div class="card-header">Trang đăng nhập Admin</div>
                    <div class="card-body">
                        <form method="post" id="admin_login_form">
                            <div class="form-group">
                                <label>Nhập username</label>
                                <input type="text" name="admin_user_name" id="admin_user_name" class="form-control" />
                                <span id="error_admin_user_name" class="text-danger"></span>
                            </div>
                            <div class="form-group">
                                <label>Nhập mật khẩu</label>
                                <input type="password" name="admin_password" id="admin_password" class="form-control" />
                                <span id="error_admin_password" class="text-danger"></span>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="admin_login" id="admin_login" class="btn btn-info"
                                    value="Đăng nhập" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-4">

            </div>
        </div>
    </div>

</body>

</html>

<script>
$(document).ready(function() {
    $('#admin_login_form').on('submit', function(event) {
        event.preventDefault();
        $.ajax({
            url: "check_admin_login.php",
            method: "POST",
            data: $(this).serialize(),
            dataType: "json",
            beforeSend: function() {
                $('#admin_login').val('Validate...');
                $('#admin_login').attr('disabled', 'disabled');
            },
            success: function(data) {
                if (data.success) {
                    location.href = "<?php echo $base_url; ?>admin";
                }
                if (data.error) {
                    $('#admin_login').val('Login');
                    $('#admin_login').attr('disabled', false);
                    if (data.error_admin_user_name != '') {
                        $('#error_admin_user_name').text(data.error_admin_user_name);
                    } else {
                        $('#error_admin_user_name').text('');
                    }
                    if (data.error_admin_password != '') {
                        $('#error_admin_password').text(data.error_admin_password);
                    } else {
                        $('#error_admin_password').text('');
                    }
                }
            }
        });
    });
});
</script> -->
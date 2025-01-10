<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration Form</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Light background for the page */
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full height of the viewport */
            margin: 0;
        }

        .registration-form {
            padding: 30px;
            background-color: #fff; /* White background for the form */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            width: 100%;
            max-width: 800px; /* Make the form larger */
        }

        .registration-form .form-icon {
            text-align: center;
            background-color: #5891ff;
            border-radius: 50%;
            font-size: 50px;
            color: white;
            width: 120px;
            height: 120px;
            margin: auto;
            margin-bottom: 30px;
            line-height: 120px;
        }

        .registration-form .item {
            border-radius: 20px;
        }

        .registration-form .create-account {
            border-radius: 30px;
            padding: 12px 20px;
            font-size: 20px;
            font-weight: bold;
            background-color: #5791ff;
            border: none;
            color: white;
        }

        .form-group.row {
            margin-bottom: 20px;
        }

        @media (max-width: 576px) {
            .registration-form form {
                padding: 40px 30px;
            }

            .registration-form .form-icon {
                width: 80px;
                height: 80px;
                font-size: 35px;
                line-height: 80px;
            }
        }
    </style>
</head>
<body>
    <div class="registration-form card">
        <div class="card-body">
            <div class="form-icon">
                <span><i class="icon icon-user"></i></span>
            </div>
            <form action="submitForm" method="POST">
                <!-- Full Name -->
                <div class="form-group row">
                    <label for="name" class="col-sm-4 col-form-label">Full Name:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control item" id="name" name="name" placeholder="Enter Full Name" required>
                    </div>
                </div>

                <!-- Mobile Number -->
                <div class="form-group row">
                    <label for="mobile" class="col-sm-4 col-form-label">Mobile Number:</label>
                    <div class="col-sm-8">
                        <input type="tel" class="form-control item" id="mobile" name="mobile" placeholder="Enter Mobile Number" required maxlength="10">
                    </div>
                </div>

                <!-- Email -->
                <div class="form-group row">
                    <label for="email" class="col-sm-4 col-form-label">Email:</label>
                    <div class="col-sm-8">
                        <input type="email" class="form-control item" id="email" name="email" placeholder="Enter Email" required>
                    </div>
                </div>

                <!-- Register Button -->
                <div class="form-group">
                    <button type="submit" class="btn btn-block create-account">Register</button>
                </div>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script>
/*         $(document).ready(function(){
            $('#mobile').mask('00000-00000'); // Phone number mask
        }); */
        $(document).ready(function () {
            // Pre-fill the mobile input with "+91 "
            $('#mobile').val('+91 ');

            // Set the mask to allow only 10 digits after "+91 "
            $('#mobile').mask('+91 00000-00000', {
                placeholder: "+91 _____-_____",
                onComplete: function (cep) {
                    console.log('Input complete: ' + cep);
                }
            });

            // Prevent users from deleting the "+91 " part
            $('#mobile').on('keydown', function (e) {
                const cursorPos = this.selectionStart;
                if (cursorPos <= 4 && (e.key === 'Backspace' || e.key === 'Delete')) {
                    e.preventDefault();
                }
            });
        });
    </script>
</body>
</html>

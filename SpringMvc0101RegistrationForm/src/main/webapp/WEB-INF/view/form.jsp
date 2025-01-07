<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration Form</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="form-style.css">
    <style>
        body {
            background-color: oceanblue;
        }

        .registration-form {
         padding: 20px; 
      
        }

        .registration-form form {
            background-color: #fff;
            max-width: 600px;
            margin: auto;
            padding: 20px 40px;
            border-radius: 30px;
           /*  border-top-right-radius: 30px; */
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
        }

        .registration-form .form-icon {
            text-align: center;
            background-color: #5891ff;
            border-radius: 50%;
            font-size: 40px;
            color: white;
            width: 100px;
            height: 100px;
            margin: auto;
            margin-bottom: 50px;
            line-height: 100px;
        }

        .registration-form .item {
            border-radius: 20px;
           /*  margin-bottom: 5px; */
           /*  padding: 10px 20px; */
        }

        .registration-form .create-account {
            border-radius: 30px;
            padding: 10px 20px;
            font-size: 18px;
            font-weight: bold;
            background-color: #5791ff;
            border: none;
            color: white;
           /*  margin-top: 20px; */
        }

        .registration-form .social-media {
            max-width: 600px;
            background-color: #fff;
            margin: auto;
       /*      padding: 35px 0; */
            text-align: center;
 /*            border-bottom-left-radius: 30px;
            border-bottom-right-radius: 30px; */
            color: #9fadca;
            border-top: 1px solid #dee9ff;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
        }



        @media (max-width: 576px) {
            .registration-form form {
                padding: 40px 30px;
            }

            .registration-form .form-icon {
                width: 70px;
                height: 70px;
                font-size: 30px;
                line-height: 70px;
            }
        }
    </style>
</head>
<body>
    <div class="registration-form">
        <form action="formaction" method="POST">
            <div class="form-icon">
                <span><i class="icon icon-user"></i></span>
            </div>

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

            <!-- Place -->
            <div class="form-group row">
                <label for="place" class="col-sm-4 col-form-label">Place:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control item" id="place" name="place" placeholder="Enter Place" required>
                </div>
            </div>

            <!-- Password -->
            <div class="form-group row">
                <label for="password" class="col-sm-4 col-form-label">Password:</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control item" id="password" name="password" placeholder="Enter Password" required>
                </div>
            </div>

            <!-- Register Button -->
            <div class="form-group">
                <button type="submit" class="btn btn-block create-account">Register</button>
            </div>
        </form>

    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script>
        $(document).ready(function(){
            $('#mobile').mask('0000-0000'); // Phone number mask
        });
    </script>
</body>
</html>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>iKnow Academy</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../static/assets/img/favicon.png" rel="icon">
    <link href="../static/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="../static/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../static/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../static/assets/vendor/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="../static/assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="../static/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../static/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="../static/assets/css/style.css" rel="stylesheet">
</head>
<body>
<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

        <h1 class="logo mr-auto"><a href="/">iKnow Academy</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav class="main-nav d-none d-lg-block">
            <ul>
                <li class="active"><a href="/">Home</a></li>
            </ul>
        </nav><!-- .main-nav-->

    </div>
</header>
<div class="container" style="margin-top: 100px">
    <div class="row">
        <div class="col-md-6 offset-3">
            <div class="jumbotron">
                <form action="/login" method="post">
                    <h4 class="text-center">Login page</h4>
                    <div class="form-group">
                        <input class="form-control" type="text" name="username" placeholder="enter username" style="box-shadow: black">
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" name="password" placeholder="enter password">
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <button type="submit" class="btn-info form-control">Sing in</button>
                </form>
            </div>

        </div>
    </div>

</div>

</body>
</html>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link rel="stylesheet" href="../static/css/bootstrap.css">
    <title>Student Registration Page</title>
    <#include "parts/security.ftl">
    <#include "parts/authority.ftl">
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

    <!-- Template Main CSS File -->
    <link href="../static/assets/css/style.css" rel="stylesheet">
</head>
<body>
<header id="header" class="fixed-top header-transparent">
    <div class="container d-flex align-items-center">

        <h1 class="logo mr-auto"><a href="/">iKnow Academy</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav class="main-nav d-none d-lg-block">
                <ul>
                    <li class="active"><a href="/">Home</a></li>
                    <li>
                        <form action="/logout" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <a href="#" class="text-dark" onclick="this.parentNode.submit()">Log Out</a>
                        </form>
                    </li>
                </ul>
            </nav><!-- .main-nav-->
    </div>
</header><!-- End Header -->
<div class="container" style="margin-top: 120px">
    <div class="row">
        <div class="col-md-6 offset-3">
            <div class="jumbotron">
                <div class="card align-items-center">
                    <img src="${students.getPhoto()}" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Name: ${students.getName()}</h5>
                        <h5 class="card-title">Surname: ${students.getSurname()}</h5>
                        <h5 class="card-title">Phone: ${students.getPhone_number()}</h5>
                        <p class="card-text">First module: ${result.first_module}</p>
                        <p class="card-text">Second module: ${result.second_module}</p>
                        <p class="card-text">Third module: ${result.third_module}</p>
                        <p class="card-text">Full rating: ${result.first_module + result.second_module + result.third_module}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>


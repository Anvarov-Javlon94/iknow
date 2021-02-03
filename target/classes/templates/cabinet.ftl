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
<#--<div class="container" style="margin-top: 120px">-->
<#--    <div class="row">-->
<#--        <div class="col-md-6 offset-3">-->
<#--            <div class="jumbotron">-->
<#--                <div class="card align-items-center">-->
<#--                    <img src="${students.getPhoto()}" class="card-img-top" alt="...">-->
<#--                    <div class="card-body">-->
<#--                        <h5 class="card-title">Name: ${students.getName()}</h5>-->
<#--                        <h5 class="card-title">Surname: ${students.getSurname()}</h5>-->
<#--                        <h5 class="card-title">Phone: ${students.getPhone_number()}</h5>-->
<#--                        <p class="card-text">First module: ${result.first_module}</p>-->
<#--                        <p class="card-text">Second module: ${result.second_module}</p>-->
<#--                        <p class="card-text">Third module: ${result.third_module}</p>-->
<#--                        <p class="card-text">Full rating: ${result.first_module + result.second_module + result.third_module}</p>-->
<#--                    </div>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--    </div>-->
<#--</div>-->

<#--<div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="200">-->
<#--    <div class="member">-->
<#--        <img src="${students.getPhoto()}" class="card-img-top" alt="...">&ndash;&gt;-->
<#--        <div class="member-info">-->
<#--            <div class="member-info-content">-->
<#--                <h4>Sarah Jhonson</h4>-->
<#--                <span>Product Manager</span>-->
<#--                <div class="social">-->
<#--                    <a href=""><i class="fa fa-twitter"></i></a>-->
<#--                    <a href=""><i class="fa fa-facebook"></i></a>-->
<#--                    <a href=""><i class="fa fa-google-plus"></i></a>-->
<#--                    <a href=""><i class="fa fa-linkedin"></i></a>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--    </div>-->
<#--</div>-->

<div class="container" style="margin-top: 120px">
    <div class="row">
        <div class="col-lg-12">
<#--            <div class="jumbotron">-->
                <div class="align-items-center">
                    <div class="card text-left" style="width: 18rem;">
                        <img class="card-img-top" src="${students.getPhoto()}" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">1-guruh talabasi</h5>
                            <p class="card-text">O'ta Shijoatli serqirra yigit, ingliz tilimi chuqur o'rganayotgan mujjik</p>
                        </div>
                        <ul class="list-group list-group-flush" id="cabinet_info">
                            <li class="list-group-item">
                                <p class="card-title"><b>Name:</b> ${students.getName()}</p>
                            </li>
                            <li class="list-group-item">
                                <p class="card-title"><b>Surname:</b> ${students.getSurname()}</p>
                            </li>
                            <li class="list-group-item">
                                <p class="card-title"><b>Phone:</b> ${students.getPhone_number()}</p>
                            </li>
                            <li class="list-group-item">
                                <p class="card-text"><b>First module:</b> ${result.first_module}</p>
                            </li>
                            <li class="list-group-item">
                                <p class="card-text"><b>Second module:</b> ${result.second_module}</p>
                            </li>
                            <li class="list-group-item">
                                <p class="card-text"><b>Third module:</b> ${result.third_module}</p>
                            </li>
                            <li class="list-group-item">
                                <p class="card-text"><b>Full rating:</b> ${result.first_module + result.second_module + result.third_module}</p>
                            </li>
                        </ul>
                        <div class="card-body">
                            <a href="#" class="card-link">Card link</a>
                            <a href="#" class="card-link">Another link</a>
                        </div>
                    </div>
                </div>
<#--            </div>-->
        </div>
    </div>
</div>
</body>
</html>


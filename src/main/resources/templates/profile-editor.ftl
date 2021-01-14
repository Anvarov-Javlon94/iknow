<!DOCTYPE html>
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
        <#if isAuthority>
            <nav class="main-nav d-none d-lg-block">
                <ul>
                    <li class="active"><a href="/">Home</a></li>
                    <li><a href="/student-list">Student list</a></li>
                    <li>
                        <form action="/logout" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <a href="#" class="text-dark" onclick="this.parentNode.submit()">Log Out</a>
                        </form>
                    </li>
                </ul>
            </nav><!-- .main-nav-->

        <#elseif isAdmin>
            <nav class="main-nav d-none d-lg-block">
                <ul>
                    <li class="active"><a href="/">Home</a></li>
                    <li>
                        <a href="/student-list" class="text-dark">Student List</a>
                    </li>
                    <li>
                        <form action="/logout" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <a href="#" class="text-dark" onclick="this.parentNode.submit()">Log Out</a>
                        </form>
                    </li>
                </ul>
            </nav><!-- .main-nav-->
        </#if>
    </div>
</header><!-- End Header -->
<div class="container" style="margin-top: 100px">
    <div class="row">
        <div class="col-md-6 offset-3">
            <div class="jumbotron">
                <form action="/profile-after-register" method="post">
                    <div class="form-group">
                        <input class="form-control" type="text" placeholder="${students.getUsername()}" style="box-shadow: black" readonly>
                    </div>
                    <div class="form-group">
                        <input class="form-control  <#if error??>is-invalid</#if>" type="text" name="surname" placeholder="enter surname" style="box-shadow: black">
                        <div class="invalid-feedback">Surname field cannot be empty</div>
                    </div>
                    <div class="form-group">
                        <input class="form-control  <#if error??>is-invalid</#if>" type="text" name="name" placeholder="enter name" style="box-shadow: black">
                        <div class="invalid-feedback">Name field cannot be empty</div>
                    </div>
                    <div class="form-group">
                        <input class="form-control <#if error??>is-invalid</#if>" type="text" name="phone" placeholder="+9989" style="box-shadow: black">
                        <div class="invalid-feedback">Phone cannot be empty</div>
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="hidden" name="id" value="${studentId}">
                    <input type="hidden" name="username" value="${students.getUsername()}">
                    <button type="submit" class="btn-warning form-control">Registration</button>
                </form>
            </div>
        </div>
    </div>

</div>

</body>
</html>
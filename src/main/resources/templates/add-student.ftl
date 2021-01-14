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
                <h4 class="text-dark text-center font-weight-bold"><#if title??>${title}</#if></h4>
                <h4 class="text-center">Add user Form</h4>
                <#if error??><h4 class="text-center">${error}</h4></#if>
                <form action="/add-student" method="post" ENCTYPE="multipart/form-data">
                    <div class="form-group">
                        <input class="form-control <#if error??>is-invalid"</#if> type="text" name="username" placeholder="enter username" style="box-shadow: black">
                        <div class="invalid-feedback">Please enter username correct</div>
                    </div>
                    <div class="form-group">
                        <input class="form-control <#if error??>is-invalid"</#if> type="password" name="password" placeholder="enter password">
                        <div class="invalid-feedback">Please enter password correct</div>
                    </div>
                    <div class="form-group">
                        <input class="form-control <#if error??>is-invalid"</#if> type="password" name="password_verify" placeholder="repeat password">
                        <div class="invalid-feedback">Please enter password correct</div>
                    </div>
<#--                    <div class="form-group">-->
<#--                        <input class="form-control" type="file" name="image">-->
<#--                    </div>-->
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="hidden" name="name" value="default">
                    <input type="hidden" name="surname" value="default">
                    <button type="submit" class="btn-info form-control">Add User</button>
                </form>
            </div>

        </div>
    </div>

</div>

</body>
</html>
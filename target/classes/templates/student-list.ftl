<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link rel="stylesheet" href="../static/css/bootstrap.css">
    <link rel="stylesheet" href="../static/css/student_list_style.css"
<#--    <title>Student Registration Page</title>-->
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
                        <a href="/add-student-page" class="text-dark">Student Add</a>
                    </li>
                    <li>
                        <form action="/logout" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <a href="#" class="text-dark" onclick="this.parentNode.submit()">Log Out</a>
                        </form>
                    </li>
                    <li>
                        <form action="/search-student" method="post">
                            <input class="search_style" type="text" placeholder="search user" name="student-name">
                            <input class="search_style" type="submit" value="search">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                        </form>
                    </li>
                </ul>
            </nav><!-- .main-nav-->
        </#if>
    </div>
</header><!-- End Header -->

<div class="container" style="margin-top: 100px">
    <div class="row">
        <div class="col-md-12">
            <div class="jumbotron table_background_color">
                <table class="table table-striped">
                    <thead style="color: #fff; background-color: #1bb1dc;">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">NAME</th>
                        <th scope="col">FIRST MODULE</th>
                        <th scope="col">SECOND MODULE</th>
                        <th scope="col">THIRD MODULE</th>
                        <th scope="col">Full Rating</th>
                     <#if isAdmin> <th scope="col">Delete</th> </#if>
                        <#--        <th scope="col">Image</th>-->
                      <#if isAdmin> <th scope="col">Action</th> </#if>
                    </tr>
                    </thead>
                    <tbody>
                    <#list students as k,v>
                        <tr>
                            <th scope="col">${k.getId()}</th>
                            <th scope="col">${k.getUsername()}</th>
                            <th scope="col">${v.getFirst_module()}</th>
                            <th scope="col">${v.getSecond_module()}</th>
                            <th scope="col">${v.getThird_module()}</th>
                            <th scope="col">${v.first_module + v.second_module + v.third_module}</th>
                      <#if isAdmin><th><a href="/delete/${k.getId()}"><input class="button_crud" type="submit" name="id" value="delete"></a></th></#if>
                      <#if isAdmin><th><a href="/edit/${k.getId()}"><input class="button_crud" type="submit" name="id" value="edit"></a></th>     </#if>
<#--                            <th><input type="hidden" name="usr_id"></th>-->
                        </tr>
                    </#list>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<!-- Vendor JS Files -->
<script src="../static/assets/vendor/jquery/jquery.min.js"></script>
<script src="../static/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../static/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="../static/assets/vendor/php-email-form/validate.js"></script>
<script src="../static/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="../static/assets/vendor/counterup/counterup.min.js"></script>
<script src="../static/assets/vendor/venobox/venobox.min.js"></script>
<script src="../static/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="../static/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
<script src="../static/assets/vendor/aos/aos.js"></script>

<!-- Template Main JS File -->
<script src="../static/assets/js/main.js"></script>

</body>
</html>
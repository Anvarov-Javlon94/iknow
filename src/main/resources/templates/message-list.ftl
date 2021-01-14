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
        <div class="col-md-12">
            <div class="jumbotron">
                <div class="card-columns">
                    <#list messages as message>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title font-weight-bold">${message.getMessage_name()}</h5>
                            <p class="card-text">${message.getMessage_subject()}</p>
                            <p class="card-text">${message.getMessage_text()}</p>
                            <p class="card-text">${message.getMessage_reg_date()}</p>
                            <p class="card-footer"><small class="text-muted">${message.getMessage_phone()}</small></p>
                            <form action="/processed-message/${message.getId()}">
                                <input type="submit" value="Прочитано">
                            </form>
                        </div>
                    </div>
                    </#list>
                </div>
            </div>

        </div>
    </div>

</div>

</body>
</html>
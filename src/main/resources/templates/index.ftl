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

  <!-- Template Main CSS File -->
  <link href="../static/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Rapid - v2.2.0
  * Template URL: https://bootstrapmade.com/rapid-multipurpose-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
<#include "parts/security.ftl">
<#include "parts/authority.ftl">
  <!-- ======= Top Bar ======= -->


  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-transparent">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="/">iKnow Academy</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      <#if isAuthority>
      <nav class="main-nav d-none d-lg-block">
        <ul>
          <li class="active"><a href="/">Home</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#team">Team</a></li>
          <li><a href="#footer">Contact Us</a></li>
          <li><a href="/student-list">Student list</a></li>
          <li>
            <form action="/cabinet" method="post">
              <input type="hidden" name="_csrf" value="${_csrf.token}">
              <input type="hidden" name="id" value="${studentId}">
              <a href="#" class="text-dark" onclick="this.parentNode.submit()">Cabinet</a>
            </form>
          </li>
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
            <li><a href="#about">About Us</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#team">Team</a></li>
            <li><a href="#footer">Contact Us</a></li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Admin Panel
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a href="/add-student-page" class="text-dark">Add Student</a>
            <a href="/student-list" class="text-dark">Student List</a>
            <a href="/get-all-message" class="text-dark">All Messages</a>
              </div>
            </li>
            <li>
              <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <a href="#" class="text-dark" onclick="this.parentNode.submit()">Log Out</a>
              </form>
            </li>
          </ul>
        </nav><!-- .main-nav-->
      <#else>
       <nav class="main-nav d-none d-lg-block">
        <ul>
          <li class="active"><a href="/">Home</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#team">Team</a></li>
          <li><a href="#footer">Contact Us</a></li>
          <li>
            <form  method="post">
              <a href="/iknow/login" onclick="this.form.submit()">Login</a>
              <input type="hidden" name="_csrf" value="${_csrf.token}">
            </form>
          </li>
        </ul>
      </nav><!-- .main-nav-->
      </#if>
    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="clearfix">
    <div class="container d-flex h-100">
      <div class="row justify-content-center align-self-center" data-aos="fade-up">
        <div class="col-md-6 intro-info order-md-first order-last" data-aos="zoom-in" data-aos-delay="100">
          <h2>iKnow Academy Solutions<br>for Your <span>English!</span></h2>
          <div>
            <a href="#about" class="btn-get-started scrollto">Get Started</a>
          </div>
        </div>

        <div class="col-md-6 intro-img order-md-last order-first" data-aos="zoom-out" data-aos-delay="200">
          <img src="../static/assets/img/intro-img.svg" alt="" class="img-fluid">
        </div>
      </div>

    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">

      <div class="container" data-aos="fade-up">
        <div class="row">

          <div class="col-lg-5 col-md-6">
            <div class="about-img" data-aos="fade-right" data-aos-delay="100">
              <img src="../static/assets/img/about-img.jpg" alt="">
            </div>
          </div>

          <div class="col-lg-7 col-md-6">
            <div class="about-content" data-aos="fade-left" data-aos-delay="100">
              <h2>About Us</h2>
              <h3>Odio sed id eos et laboriosam consequatur eos earum soluta.</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
              <p>Aut dolor id. Sint aliquam consequatur ex ex labore. Et quis qui dolor nulla dolores neque. Aspernatur consectetur omnis numquam quaerat. Sed fugiat nisi. Officiis veniam molestiae. Et vel ut quidem alias veritatis repudiandae ut fugit. Est ut eligendi aspernatur nulla voluptates veniam iusto vel quisquam. Fugit ut maxime incidunt accusantium totam repellendus eum error. Et repudiandae eum iste qui et ut ab alias.</p>
              <ul>
                <li><i class="ion-android-checkmark-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                <li><i class="ion-android-checkmark-circle"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                <li><i class="ion-android-checkmark-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
              </ul>
            </div>
          </div>
        </div>
      </div>

    </section><!-- End About Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h3>Services</h3>
          <p>Laudem latine persequeris id sed, ex fabulas delectus quo. No vel partiendo abhorreant vituperatoribus.</p>
        </header>

        <div class="row">

          <div class="col-md-6 col-lg-4 wow bounceInUp" data-aos="zoom-in" data-aos-delay="100">
            <div class="box">
              <div class="icon" style="background: #fceef3;"><i class="ion-ios-analytics-outline" style="color: #ff689b;"></i></div>
              <h4 class="title"><a href="">Lorem Ipsum</a></h4>
              <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="200">
            <div class="box">
              <div class="icon" style="background: #fff0da;"><i class="ion-ios-bookmarks-outline" style="color: #e98e06;"></i></div>
              <h4 class="title"><a href="">Dolor Sitema</a></h4>
              <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="300">
            <div class="box">
              <div class="icon" style="background: #e6fdfc;"><i class="ion-ios-paper-outline" style="color: #3fcdc7;"></i></div>
              <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
              <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 wow" data-aos="zoom-in" data-aos-delay="100">
            <div class="box">
              <div class="icon" style="background: #eafde7;"><i class="ion-ios-speedometer-outline" style="color:#41cf2e;"></i></div>
              <h4 class="title"><a href="">Magni Dolores</a></h4>
              <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="200">
        <div class=" box">
            <div class="icon" style="background: #e1eeff;"><i class="ion-ios-world-outline" style="color: #2282ff;"></i></div>
            <h4 class="title"><a href="">Nemo Enim</a></h4>
            <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
          </div>
        </div>
        <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="300">
          <div class="box">
            <div class="icon" style="background: #ecebff;"><i class="ion-ios-clock-outline" style="color: #8660fe;"></i></div>
            <h4 class="title"><a href="">Eiusmod Tempor</a></h4>
            <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
          </div>
        </div>

      </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container-fluid" data-aos="fade-up">

        <header class="section-header">
          <h3>Why choose us?</h3>
          <p>Laudem latine persequeris id sed, ex fabulas delectus quo. No vel partiendo abhorreant vituperatoribus.</p>
        </header>

        <div class="row">

          <div class="col-lg-6" data-aos="zoom-in" data-aos-delay="100">
            <div class="why-us-img">
              <img src="../static/assets/img/why-us.jpg" alt="" class="img-fluid">
            </div>
          </div>

          <div class="col-lg-6">
            <div class="why-us-content">
              <p>Molestiae omnis numquam corrupti omnis itaque. Voluptatum quidem impedit. Odio dolorum exercitationem est error omnis repudiandae ad dolorum sit.</p>
              <p>
                Explicabo repellendus quia labore. Non optio quo ea ut ratione et quaerat. Porro facilis deleniti porro consequatur
                et temporibus. Labore est odio.

                Odio omnis saepe qui. Veniam eaque ipsum. Ea quia voluptatum quis explicabo sed nihil repellat..
              </p>

              <div class="features clearfix" data-aos="fade-up" data-aos-delay="100">
                <i class="fa fa-diamond" style="color: #f058dc;"></i>
                <h4>Corporis dolorem</h4>
                <p>Commodi quia voluptatum. Est cupiditate voluptas quaerat officiis ex alias dignissimos et ipsum. Soluta at enim modi ut incidunt dolor et.</p>
              </div>

              <div class="features clearfix" data-aos="fade-up" data-aos-delay="200">
                <i class="fa fa-object-group" style="color: #ffb774;"></i>
                <h4>Eum ut aspernatur</h4>
                <p>Molestias eius rerum iusto voluptas et ab cupiditate aut enim. Assumenda animi occaecati. Quo dolore fuga quasi autem aliquid ipsum odit. Perferendis doloremque iure nulla aut.</p>
              </div>

              <div class="features clearfix" data-aos="fade-up" data-aos-delay="300">
                <i class="fa fa-language" style="color: #589af1;"></i>
                <h4>Voluptates dolores</h4>
                <p>Voluptates nihil et quis omnis et eaque omnis sint aut. Ducimus dolorum aspernatur. Totam dolores ut enim ullam voluptas distinctio aut.</p>
              </div>

            </div>

          </div>

        </div>

      </div>

      <div class="container">
        <div class="row counters" data-aos="fade-up" data-aos-delay="100">

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">274</span>
            <p>Clients</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">421</span>
            <p>Projects</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">1,364</span>
            <p>Hours Of Support</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">${number?size}</span>
            <p>Total Students</p>
          </div>

        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container" data-aos="fade-up">
        <div class="section-header">
          <h3>Team</h3>
          <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
        </div>

        <div class="row">

          <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="100">
            <div class="member">
              <img src="../static/assets/img/team-1.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Walter White</h4>
                  <span>Chief Executive Officer</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="200">
            <div class="member">
              <img src="../static/assets/img/team-2.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Sarah Jhonson</h4>
                  <span>Product Manager</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="300">
            <div class="member">
              <img src="../static/assets/img/team-3.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>William Anderson</h4>
                  <span>CTO</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="400">
            <div class="member">
              <img src="../static/assets/img/team-4.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Amanda Jepson</h4>
                  <span>Accountant</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Team Section -->
    </main>
  <!-- ======= Footer ======= -->
  <footer id="footer" class="section-bg">
    <div class="footer-top">
      <div class="container">

        <div class="row">

          <div class="col-lg-6">

            <div class="row">

              <div class="col-sm-6">

                <div class="footer-info">
                  <h3>iKnow Academy</h3>
                  <p>Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.</p>
                </div>

                <div class="footer-newsletter">
                  <h4>Our Newsletter</h4>
                  <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna veniam enim veniam illum dolore legam minim quorum culpa amet magna export quem.</p>
                  <form action="" method="post">
                    <input type="email" name="email"><input type="submit" value="Subscribe">
                  </form>
                </div>

              </div>

              <div class="col-sm-6">
                <div class="footer-links">
                  <h4>Useful Links</h4>
                  <ul>
                    <li><a href="/">Home</a></li>
                    <li><a href="#about">About us</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#team">Terms of service</a></li>
                  </ul>
                </div>

                <div class="footer-links">
                  <h4>Contact Us</h4>
                  <p>
                    A108 Adam Street <br>
                    New York, NY 535022<br>
                    United States <br>
                    <strong>Phone:</strong> +1 5589 55488 55<br>
                    <strong>Email:</strong> info@example.com<br>
                  </p>
                </div>

                <div class="social-links">
                  <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                  <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                  <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                  <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                </div>

              </div>

            </div>

          </div>

          <div class="col-lg-6">

            <div class="form">

              <h4>Send us a message</h4>
              <p>Eos ipsa est voluptates. Nostrum nam libero ipsa vero. Debitis quasi sit eaque numquam similique commodi harum aut temporibus.</p>

              <form action="/add-message-for-admin" method="post">
                <div class="form-group">
                  <input type="text" name="message_name" class="form-control" placeholder="Your Name"/>
                  <div class="validate"></div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="message_phone" placeholder="Your phone"/>
                  <div class="validate"></div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="message_subject" placeholder="Subject" />
                  <div class="validate"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="message_text" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                  <div class="validate"></div>
                </div>
                <input type="submit" value="Send Message">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
              </form>

            </div>

          </div>

        </div>

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>iKnow Academy</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
        All the links in the footer should remain intact.
        You can delete the links only if you purchased the pro version.
        Licensing information: https://bootstrapmade.com/license/
        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Rapid
      -->
        Designed by <a href="#">janvarov</a>
      </div>
    </div>
  </footer><!-- End  Footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

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
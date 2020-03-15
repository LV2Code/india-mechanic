<!DOCTYPE html>
<html lang="en">
	<head>
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-PKBVVB3');</script>
<!-- End Google Tag Manager -->
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<title>Best Car Repair Service Center | Denting Painting | Wheel Care</title>
		<meta name="keyword" content="Best Car Repair Service Center | Denting Painting | Wheel Care">
		<meta name="description" content="Best car repair service center provide car cleaning, denting, painting, wheel care and insurance renewal with lots of repair workshop">
		<link rel="shortcut icon" href="{{asset('/design/images/favicon.png')}}" type="image/x-icon">
		<link rel="apple-touch-icon" href="{{asset('/design/images/apple-touch-icon.webp')}}" />
		<link href="{{asset('/design/css/master.css')}}" rel="stylesheet">

	</head>
	<body class="m-index" data-scrolling-animations="true" data-equal-height=".b-auto__main-item">
		<!-- Google Tag Manager (noscript) -->
		<noscript>
			<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PKBVVB3"
				height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
		<!-- End Google Tag Manager (noscript) -->
		<nav class="b-nav" style=" background-color: #f5f2d0;">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 col-xs-4">
						<div class="wow slideInLeft" data-wow-delay="0.3s">
							<a href="index"><img src="{{asset('/design/images/logo/logo.webp')}}" alt="IndiaMechanic Logo"></a>
						</div>
					</div>
					<div class="col-sm-9 col-xs-8" style="padding-top: 20px;">
						<div class="b-nav__list wow slideInRight" data-wow-delay="0.3s">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#nav">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div>
							<div class="collapse navbar-collapse navbar-main-slide" id="nav">
								<ul class="navbar-nav-menu">
									<li>
										<a href="index">Home</a>
									</li>

									<li class="dropdown">
										<a class="dropdown-toggle" data-toggle='dropdown' href="services">Services <span class="fa fa-caret-down"></span></a>
										<ul class="dropdown-menu h-nav">
											@foreach($services as $service)
												<li>
													<a href="{{ route('service.show', ['id'=>$service->id]) }}">
														{{ $service['title'] }}
													</a>
												</li>
											@endforeach
										</ul>
									</li>
									<li><a href="workshops">Workshops</a></li>
									<li><a href="about">About</a></li>
									<!-- <li><a href="blog">Blog</a></li> -->
									<li><a href="contact">Contact</a></li>
									<li><a href="/login">Login</a></li>
									<span class="b-search__main-form-submit">
									<button type="submit" class="btn m-btn" data-toggle="modal" data-target="#ContactModal" style="margin-top: -10px;">Get Quote<span class="fa fa-angle-right"></span></button>
								</span>
								</ul>

							</div>
						</div>
					</div>
				</div>
			</div>
		</nav><!--b-nav-->



    @yield('content')



    <!-- Footer -->
		<div class="b-features">
			<div class="container">
				<div class="row">
					<div class="col-md-9 col-md-offset-3 col-xs-6 col-xs-offset-6">
						<ul class="b-features__items">
							<li class="wow zoomInUp" data-wow-delay="0.3s" data-wow-offset="100">Advance Workshops</li>
							<li class="wow zoomInUp" data-wow-delay="0.3s" data-wow-offset="100">Experienced Mechanics</li>
							<li class="wow zoomInUp" data-wow-delay="0.3s" data-wow-offset="100">Genuine OEM / OES spares</li>
						</ul>
					</div>
				</div>
			</div>
		</div><!--b-features-->

		<div class="b-info">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-xs-6">
						<aside class="b-info__aside wow zoomInLeft" data-wow-delay="0.3s">
							<article class="b-info__aside-article">
								<h3>POPULAR WORKSHOP</h3>
								<div class="b-info__aside-article-item">
									<h6>Pune  |  PCMC</h6>
									<h6>Baramati  |  Nashik</h6>
								</div>
							</article>
							<article class="b-info__aside-article">
								<h3>About us</h3>
								<p>India Mechanic is one point solution for all your worries related to car service & repairs. With its network of multi branded service station , India Mechanic is standardising car service & repair industry.</p>
							</article>
							<a href="about" class="btn m-btn">Read More<span class="fa fa-angle-right"></span></a>
						</aside>
					</div>
					<div class="col-md-3 col-xs-6">
						<div class="b-info__latest">
							<h3>Facebook Live</h3>
							<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FIndiaMechanic%2F&tabs=timeline&width=260&height=180&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="260" height="180" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
						</div>
					</div>
					<div class="col-md-3 col-xs-6">
						<div class="b-info__twitter">
							<h3>Popular Services</h3>
							<ul class="f-features__items">
								<li>Car Servicing</li><br>
								<li>Car Denting Painting</li><br>
								<li>Car Cleaning</li><br>
								<li>Car Repair Service</li><br>
								<li>Car Wheel Care</li><br>
								<li>Car AC Services</li><br>
								<li>Insurance Renewal</li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-xs-6">
						<address class="b-info__contacts wow zoomInUp" data-wow-delay="0.3s">
							<p>Contact us</p>
							<div class="b-info__contacts-item">
								<span class="fa fa-map-marker"></span>
								<h5>202 Diggaj Plaza, Kharadi-Pune 411014</h5>
							</div>
							<div class="b-info__contacts-item">
								<span class="fa fa-phone"></span>
								<h5> Phone:<a href="tel:7218558855"> +91 7218558855</a></h5>
							</div>
							<div class="b-info__contacts-item">
								<span class="fa fa-phone"></span>
								<h5> Phone:<a href="tel:7218558882"> +91 7218558882</a></h5>
							</div>

							<div class="b-info__contacts-item">
								<span class="fa fa-envelope"></span>
								<h5>Email:<a href="mailto:indiamechanic@gmail.com"> indiamechanic@gmail.com</h5>
							</div>
						</address>

					</div>
				</div>
			</div>
		</div><!--b-info-->

		<footer class="b-footer">
			<a id="to-top" href="#this-is-top"><i class="fa fa-chevron-up"></i></a>
			<div class="container">
				<div class="row">
					<div class="col-xs-5">
						<div class="b-footer__company wow fadeInLeft" data-wow-delay="0.3s">
							<div class="">
								<a href="index"><img src="{{asset('/design/images/logo/logo.webp')}}" alt="IndiaMechanic Logo"></a>
							</div>
						</div>
					</div>
					<div class="col-xs-3">
						<nav class="b-footer__content-nav">
						<h6><a href="http://adflixmedia.com/">Best Digital Marketing Company In Pune </a></h6>
						<nav class="b-footer__content-nav">
					</div>
					<div class="col-xs-4">
						<div class="b-footer__content wow fadeInRight" data-wow-delay="0.3s">
							<div class="b-footer__content-social">
								<a href="https://www.facebook.com/IndiaMechanic/"><span class="fa fa-facebook-square"></span></a>
                <a href="https://twitter.com/india_mechanic"><span class="fa fa-twitter-square"></span></a>
                <a href="https://www.instagram.com/mechanicindia/"><span class="fa fa-instagram"></span></a>
                <a href="https://www.youtube.com/channel/UCf-ESxv6jptvtkCjh9cZhvg"><span class="fa fa-youtube-square"></span></a>
                <a href="https://in.pinterest.com/indiamechanic/"><span class="fa fa-pinterest-square"></span></a>
                <a href="#"><span class="fa fa-linkedin-square"></span></a>
							</div>
							<nav class="b-footer__content-nav">
								<ul>
									<li><a href="index">Home</a></li>
									<li><a href="services">Services</a></li>
									<li><a href="workshops">Workshops</a></li>
									<li><a href="about">About</a></li>
									<li><a href="contact">Contact</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</footer>
	<!--b-footer-->
<!--==================================
=            contact form            =
===================================-->
<!-- Modal -->
<div class="modal fade" id="ContactModal" role="dialog">
  <div class="temp-custom-modal-wrap">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content temp-custom-modal-content">
        <button type="button" class="close temp-custom-close-button" data-dismiss="modal">&times;</button>
        <div class="modal-body temp-custom-modal-body">
          <div class="temp-login-form-wrapper">
            <div class="row custom-row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 temp-form-column-wrap-image"
            	style="background-image: url({{asset('/design/media/popup.webp')}})">
                <div class=" temp-contact-column-wrap-image">
                  <div class="temp-form-inner-wrapper">
                    <h3>Get Instant Quote For Car Repair Service Near You</h3>
                    <p>Worried about your car service?</p>
                    <p>No need to hesitate, ask anything about your car and it's issue. Please just feel entries that we will contact you as soon as possible.</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="temp-form-column-wrap">
                  <h2>Get Quote</h2>
                  <form id="contact_form" method="post" role="form" action="contact.php">
                    <div class="row">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input class="temp_input_field" type="text" id="name" name="name" required="" placeholder="Name">
                            <label class="temp_input_label"></label>
                          </span>
                        </div>
                      </div>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input class="temp_input_field" type="email" id="email" name="email" required="" placeholder="Email">
                            <label class="temp_input_label">
                            </label>
                          </span>
                        </div>
                      </div>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                          <span class="temp-span-wrap temp-span-input-label-wrap">
                            <input class="temp_input_field" type="mobile" pattern="^\d{10}$" id="mobile" name="mobile" required="" placeholder="Mobile No.">
                            <label class="temp_input_label">
                            </label>
                          </span>
                        </div>
                      </div>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="temp-login-button-wrap">
                         <button type="submit" class="btn btn-info temp-form-button" id="btnContactUs">Submit</button>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--====  End of contact form  ====-->
		<!--Main-->
		<script src="{{asset('/design/js/jquery-1.11.3.min.js')}}"></script>
		<script src="{{asset('/design/js/jquery-ui.min.js')}}"></script>
		<script src="{{asset('/design/js/bootstrap.min.js')}}"></script>
		<script src="{{asset('/design/js/modernizr.custom.js')}}"></script>

		<script src="{{asset('/design/assets/rendro-easy-pie-chart/dist/jquery.easypiechart.min.js')}}"></script>
		<script src="{{asset('/design/js/waypoints.min.js')}}"></script>
		<script src="{{asset('/design/js/jquery.easypiechart.min.js')}}"></script>
		<script src="{{asset('/design/js/classie.js')}}"></script>

		<!--Switcher-->
		<script src="{{asset('/design/assets/switcher/js/switcher.js')}}"></script>
		<!--Owl Carousel-->
		<script src="{{asset('/design/assets/owl-carousel/owl.carousel.min.js')}}"></script>
		<!--bxSlider-->
		<script src="{{asset('/design/assets/bxslider/jquery.bxslider.js')}}"></script>
		<!-- jQuery UI Slider -->
		<script src="{{asset('/design/assets/slider/jquery.ui-slider.js')}}"></script>

		<!--Theme-->
		<script src="{{asset('/design/js/jquery.smooth-scroll.js')}}"></script>
		<script src="{{asset('/design/js/wow.min.js')}}"></script>
		<script src="{{asset('/design/js/jquery.placeholder.min.js')}}"></script>
		<script src="{{asset('/design/js/theme.js')}}"></script>s
	</body>
</html>
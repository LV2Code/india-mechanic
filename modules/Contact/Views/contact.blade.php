@extends('frontend.layouts.frontend')

@section('content')

	<section class="b-pageHeader">
		<div class="container">
			<h1 class=" wow zoomInLeft" data-wow-delay="0.5s">Contact Us</h1>
			<div class="b-pageHeader__search wow zoomInRight" data-wow-delay="0.5s">
				<h3>Get In Touch With Us Now</h3>
			</div>
		</div>
	</section><!--b-pageHeader-->

	<!-- <div class="b-breadCumbs s-shadow wow zoomInUp" data-wow-delay="0.5s">
		<div class="container">
			<a href="index" class="b-breadCumbs__page">Home</a><span class="fa fa-angle-right"></span><a href="contact" class="b-breadCumbs__page m-active">Contact Us</a>
		</div>
	</div> --><!--b-breadCumbs-->

	<div class="b-map wow zoomInUp" data-wow-delay="0.5s">
		<iframe src="https://www.google.com/maps/d/u/0/embed?mid=1aqRqHeFCRuvwhYWqDsUeFbxFBHgau6Jm" width="100%" height="520"></iframe>
	</div><!--b-map-->

	<section class="b-contacts s-shadow" style="background-color:#fff">
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
					<div class="b-contacts__form">
						<header class="b-contacts__form-header s-lineDownLeft wow zoomInUp" data-wow-delay="0.5s">
							<h2 class="s-titleDet">Contact Form</h2>
						</header>
					</div>
						<p class=" wow zoomInUp" data-wow-delay="0.5s">Enter your comments through the form below,
						and our customer service professionals will contact you as soon as possible.</p>
						<div class="b-items__aside-main wow zoomInUp" data-wow-delay="0.5s">
							<form id="contactForm" action="contact.php" class="s-form wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">
							<div class="s-relative">
							<select name="services" class="m-select" id="services">
								    <option value="">Select Service</option>
                                    <option value="Car Servicing">Car Servicing</option>
                                    <option value="Denting Painting">Denting Painting</option>
                                    <option value="Car Cleaning">Car Cleaning</option>
                                    <option value="Wheel Care">Wheel Care</option>
                                    <option value="AC Services">AC Services</option>
                                    <option value="Car Repair">Car Repair</option>
                                    <option value="Insurance Renewal">Insurance Renewal</option>
							</select>
							<span class="fa fa-caret-down"></span>
							</div>
							<input type="text" name="name" id="name" placeholder="Name" required="" >
							<input type="text" placeholder="Email Id" required="" name="email" id="email">
							<input type="text" placeholder="Phone No" required="" name="phone" id="phone">
							<textarea id="message" name="message" placeholder="Requirement" required=""></textarea>
							<button type="submit" class="btn m-btn">SUBMIT NOW<span class="fa fa-angle-right"></span></button>
						</form>
						</div>
				</div>
				<div class="col-xs-6">
					<div class="b-contacts__address">
						<!-- <div class="b-contacts__address-hours">
							<h2 class="s-titleDet wow zoomInUp" data-wow-delay="0.5s">popular workshops</h2>
							<div class="b-contacts__address-hours-main wow zoomInUp" data-wow-delay="0.5s">
								<div class="row">
									<button type="submit" class="btn m-btn">PUNE</button>
									<button type="submit" class="btn m-btn">PCMC</button>
									<button type="submit" class="btn m-btn">BARAMATI</button>
									<button type="submit" class="btn m-btn">NASHIK</button>
								</div>
							</div>
						</div> -->
						<div class="b-contacts__address-info">
							<h2 class="s-titleDet wow zoomInUp" data-wow-delay="0.5s">contact details</h2>
							<address class="b-contacts__address-info-main wow zoomInUp" data-wow-delay="0.5s">
								<div class="b-contacts__address-info-main-item">
									<div class="row">
									<div class="col-lg-4 col-md-4 col-xs-12">
										<span class="fa fa-home"></span>
										HEAD OFFICE
									</div>
									<div class="col-lg-8 col-md-8 col-xs-12">
											<em>202 Diggaj Plaza, Kharadi-Pune 411014</em>
									</div>
								</div>
								</div>
								<div class="b-contacts__address-info-main-item">
									<div class="row">
										<div class="col-lg-4 col-md-4 col-xs-12">
											<span class="fa fa-phone"></span>
											PHONE
										</div>
										<div class="col-lg-8 col-md-8 col-xs-12">
											<a href="tel:7218558855"><em>+91 7218558855</em></a>
										</div>
									</div>
								</div>
								<div class="b-contacts__address-info-main-item">
									<div class="row">
										<div class="col-lg-4 col-md-4 col-xs-12">
											<span class="fa fa-envelope"></span>
											EMAIL
										</div>
										<div class="col-lg-8 col-md-8 col-xs-12">
											<a href="mailto:indiamechanic@gmail.com"><em>indiamechanic@gmail.com</em></a>
										</div>
									</div>
								</div>
							</address>
						</div>
						<div class="b-blog__aside-popular wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">
							<header class="s-lineDownLeft">
								<h2 class="s-titleDet">Popular Services</h2>
							</header>
							<div class="b-blog__aside-popular-posts">
								<div class="b-blog__aside-popular-posts-one">
									<img class="img-responsive" src="media/services/car-servicing.webp" alt="car-denting-painting">
									<h4><a href="car-servicing">Car Servicing</a></h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

<!--b-contacts-->

@endsection
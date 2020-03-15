@extends('frontend.layouts.frontend')

@section('content')

	<section class="b-pageHeader">
		<div class="container">
			<h1 class="wow zoomInLeft" data-wow-delay="0.7s">About Us</h1>
			<div class="b-pageHeader__search wow zoomInRight" data-wow-delay="0.7s">
				<h3>Complete Car Repair Services</h3>
			</div>
		</div>
	</section>
	<!--b-pageHeader-->

	<div class="b-breadCumbs s-shadow" style="width: 500px;">
		<div class="container">
			<a href="index" class="b-breadCumbs__page">Home</a><span class="fa fa-angle-right"></span>
			<a href="about" class="b-breadCumbs__page m-active">About Us</a>
		</div>
	</div>
	<!--b-breadCumbs-->

	<section class="b-best">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-xs-12">
					<div class="b-best__info">
						<header class="s-lineDownLeft b-best__info-head">
							<h2 class="wow zoomInUp" data-wow-delay="0.5s">COMPLETE CAR REPAIR & SERVICE SOLUTION</h2>
						</header>
						<h6 class="wow zoomInUp" data-wow-delay="0.5s">India Mechanic is one point solution for all your worries related to car service & repairs. With its network of multi branded service station , India Mechanic is standardising car service & repair industry.</h6>
						<p class="wow zoomInUp" data-wow-delay="0.5s">We provide Affordable and precise by expert near youu. At the best car service center. Don't Worry about price & quality. We provide finest quality work with affordable price on denting & painting, Also we offer 2 years warranty on paint. We provide all car cleaning services,such as car wash,interior cleaning,wax polish,rubbing and polishing. We provide everything in wheel services. Such as new Tyres, wheel alignment, wheel balancing etc.</p>
						<a href="workshops" class="btn m-btn m-readMore wow zoomInUp" data-wow-delay="0.5s">Workshops<span class="fa fa-angle-right"></span></a>
					</div>
				</div>
				<div class="col-sm-6 col-xs-12">
				<img class="img-responsive center-block wow zoomInUp" data-wow-delay="0.5s" alt="best" src="{{ asset('design/media/doc/get-in-touch.webp') }}" />
				</div>
			</div>
		</div>
	</section><!--b-best-->

	<section class="b-what s-shadow m-home">
		<div class="container">
			<h3 class="s-title wow zoomInUp" data-wow-delay="0.5s">About India Mechanic</h3>
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div class="b-world__item wow zoomInLeft" data-wow-delay="0.5s">
						<img class="img-responsive" src="{{ asset('design/media/doc/car-repair.webp') }}" alt="Car repir service" />
						<div class="b-world__item-val">
						</div>
						<h2 style="text-align: center;">Who we are</h2>
						<p>India Mechanic is one point solution for all your worries related to car service & repairs. With its network of multi branded service station , India Mechanic is standardising car service & repair industry.</p>
					</div>
				</div>
				<div class="col-sm-4 col-xs-12">
					<div class="b-world__item wow zoomInUp" data-wow-delay="0.5s">
						<img class="img-responsive"  src="{{ asset('design/media/doc/mission.webp') }}" alt="mazda" />
						<div class="b-world__item-val">
						</div>
						<h2 style="text-align: center;">Our Mission</h2>
						<p>India Mechanic strives to make car service & repair more easy and affordable for eveyone. Our mission is to provide a seamless service experience to all our customers.</p>
					</div>
				</div>
				<div class="col-sm-4 col-xs-12">
					<div class="b-world__item wow zoomInRight" data-wow-delay="0.5s">
						<img class="img-responsive"  src="{{ asset('design/media/doc/car-repair.webp') }}" alt="chevrolet" />
						<div class="b-world__item-val">
						</div>
						<h2 style="text-align: center;">What Makes Us Unique.</h2>
						<p>Quality & customer satisfaction is what we believe in and With our state of the art tools & technologies we work hard to provide a premium quality service experience to our customers.</p>
					</div>
				</div>
			</div>
		</div>
	</section><!--b-what-->

	<section class="b-more">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-xs-12">
					<div class="b-more__why wow zoomInLeft" data-wow-delay="0.5s">
						<h2 class="s-title">WHY CHOOSE US</h2>
						<p>India Mechanic is one point solution for all your worries related to car service & repairs. With its network of multi branded service station , India Mechanic is standardising car service & repair industry.</p>
						<ul class="s-list">
							<li><span class="fa fa-check"></span>Live Update On Your Car Service Update.</li>
							<li><span class="fa fa-check"></span>Free Pickup And Drop.</li>
							<li><span class="fa fa-check"></span>Genuine OEM/OSS Spare.</li>
							<li><span class="fa fa-check"></span>Affordable Pricing.</li>
							<li><span class="fa fa-check"></span>One Month Service Warranty.</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-xs-12">
					<div class="b-more__info wow zoomInRight" data-wow-delay="0.5s">
						<h2 class="s-title">FAQ's</h2>
						<div class="b-more__info-block">
							<div class="b-more__info-block-title">What is India Mechanic?<a class="j-more" href="#"><span class="fa fa-angle-left"></span></a></div>
							<div class="b-more__info-block-inside j-inside">
								<p>India Mechanic is an online platform who allows people to avail hassle free, fast, affordable and quality service with transparency as key factor. India Mechanic is not only generated leads but also control everything from booking appointment,pickup car to avail spare part or check a work quality at service center.</p>
							</div>
						</div>
						<div class="b-more__info-block">
							<div class="b-more__info-block-title">What are the services given by India Mechanic?<a href="#" class="j-more"><span class="fa fa-angle-left"></span></a></div>
							<div class="b-more__info-block-inside j-inside">
								<p>We are taking care of all kinds of car services varying from the car wash, to all kind of repairs and servicing.We also serve Dent repairing and painting. We have done Insurance claim also.</p>
								<p>Car Servicing</p>
								<p>Denting and Painting </p>
								<p>Wheel Care</p>
								<p>Car Cleaning </p><p>AC Work </p><p>Car Repair</p><p>Battery Replace</p>
								<p>Insurance Renewal </p>
							</div>
						</div>
						<div class="b-more__info-block">
							<div class="b-more__info-block-title">Why should Choose India Mechanic?<a href="#" class="j-more"><span class="fa fa-angle-left"></span></a></div>
							<div class="b-more__info-block-inside j-inside">
									<p>India Mechanic offers the quality car service with transparency.
									Following things are matters:</p>
									<p>Live updates on your car service progress.</p>
									<p>Free pickup and drop.</p>
									<p>Genuine (OEM/OSS) Spares.</p>
									<p>Affordable pricing. </p>
									<p>1 month service warranty.</p>
									<p>You also check your vehicle work history .</p>
							</div>
						</div>

						<div class="b-more__info-block">
							<div class="b-more__info-block-title">Where can I book a car service appointment with India Mechanic?<a href="#" class="j-more"><span class="fa fa-angle-left"></span></a></div>
							<div class="b-more__info-block-inside j-inside">
									<p>Appointment can be book through India Mechanic car website or by downloading the android app. For appointment you can also call or whatsapp on 7218558855.</p>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section><!--b-more-->

	<section class="b-brands s-shadow">
		<div class="container">
			<h5 class="s-titleBg wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">FIND OUT MORE</h5><br>
			<h3 class="s-title wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">BRANDS WE OFFER</h3>
			<div class="">

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{ asset('design/media/brands/tata.webp') }}" alt="tata">
				</div>
				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{ asset('design/media/brands/ford.webp') }}" alt="ford">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{ asset('design/media/brands/honda.webp') }}" alt="honda">
				</div>
				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{ asset('design/media/brands/skoda.webp') }}" alt="skoda">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{ asset('design/media/brands/hyundai.webp') }}" alt="hyundai">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{ asset('design/media/brands/chevrolet.png') }}" alt="chevrolet" style="width: 140px">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{ asset('design/media/brands/nissan.png') }}" alt="nissan" style="width: 110px">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{ asset('design/media/brands/suzuki.png') }}" alt="suzuki" style="width: 110px">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{ asset('design/media/brands/volkswagen.png') }}" alt="volkswagen" style="width: 110px">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{ asset('design/media/brands/datsun.png') }}" alt="datsun" >
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{ asset('design/media/brands/fiat.png') }}" alt="fiat" style="width: 110px">
				</div>
			</div>
		</div>
	</section>

	<!--b-personal-->


@endsection
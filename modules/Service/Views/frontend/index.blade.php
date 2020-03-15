@extends('Page::design.layouts.frontend')

@section('content')

	<section class="b-slider">
		<div id="carousel" class="slide carousel carousel-fade">
			<div class="carousel-inner">
				<div class="item active">
					<img src="{{asset('/design/media/main-slider/1.webp')}}" alt="sliderImg" />
					<div class="container">
						<div class="carousel-caption b-slider__info">
							<h3>Find Best Packages For</h3>
							<h2>Car Repair Services</h2>
							<p><span>Complete Care Of Your Car</span></p>
							<a class="btn m-btn" href="/design/car-servicing">Book Now<span class="fa fa-angle-right"></span></a>
						</div>
					</div>
				</div>
				<div class="item">
					<img src="{{asset('/design/media/main-slider/2.webp')}}" alt="sliderImg" />
					<div class="container">
						<div class="carousel-caption b-slider__info">
							<h3>Fix Dent On Car</h3>
							<h2>Car Denting Painting</h2>
							<p>Starts From <span>@ 1999*</span></p>
							<a class="btn m-btn" href="/design/car-dent-paint">Book Now<span class="fa fa-angle-right"></span></a>
						</div>
					</div>
				</div>
				<div class="item">
					<img src="{{asset('/design/media/main-slider/3.webp')}}"  alt="sliderImg"/>
					<div class="container">
						<div class="carousel-caption b-slider__info">
							<h3>Clean Your Dirty Car</h3>
							<h2>Car Cleaning</h2>
							<p>Starts From <span>@ 199*</span></p>
							<a class="btn m-btn" href="/design/car-cleaning">Book Now<span class="fa fa-angle-right"></span></a>
						</div>
					</div>
				</div>
				<div class="item">
					<img src="{{asset('/design/media/main-slider/4.webp')}}"  alt="sliderImg"/>
					<div class="container">
						<div class="carousel-caption b-slider__info">
							<h3>Issue in car wheel?</h3>
							<h2>Car Wheel Care</h2>
							<p>Starts From <span>@ 149*</span></p>
							<a class="btn m-btn" href="/design/wheel-care">Book Now<span class="fa fa-angle-right"></span></a>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control right" href="#carousel" data-slide="next">
				<span class="fa fa-angle-right m-control-right"></span>
			</a>
			<a class="carousel-control left" href="#carousel" data-slide="prev">
				<span class="fa fa-angle-left m-control-left"></span>
			</a>
		</div>
	</section><!--b-slider-->

	<section class="" style="background-color: #f76d2b">
		<div class="container">
			<form action="contact.php" method="POST" class="b-search__main">
				<div class="b-search__main-title wow zoomInUp" data-wow-delay="0.3s">
					<h2>Get Instant Quote For Car Repair Service</h2>
				</div>
				<div class="b-search__main-form wow zoomInUp" data-wow-delay="0.3s">
					<div class="row">
						<div class="col-xs-12 col-md-8">
							<div class="m-firstSelects" style=" margin-bottom: 0px;">
								<!-- <div class="col-xs-3">
									<select id="brand" name="brand">
               							<option>Brand</option>
										<option value="Maruti Suzuki">Maruti Suzuki</option>
										<option value="Chevrolet">Chevrolet</option>
										<option value="Hyundai">Hyundai</option>
										<option value="Mahindra">Mahindra</option>
										<option value="Tata">Tata</option>
										<option value="Toyota">Toyota</option>
										<option value="Fiat">Fiat</option>
										<option value="Ford">Ford</option>
										<option value="Honda">Honda</option>
										<option value="Volkswagen">Volkswagen</option>
										<option value="Skoda">Skoda</option>
										<option value="Renault">Renault</option>
										<option value="Nissan">Nissan</option>
									</select>
									<span class="fa fa-caret-down"></span>
									<p></p>
								</div> -->
								<div class="col-xs-4 b-contact__md">
									<input type="text" name="car-model" id="car-model" placeholder="Car Maker & Model" required="" />
									<p></p>
								</div>
								<div class="col-xs-4 b-contact__md" >
									<select name="services" id="services" required="" style="border: 1px solid #000; width: 258px;">
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
									<p></p>
								</div>

								<div class="col-xs-3 b-contact__md">
									<input type="text" name="name" id="name" placeholder="Name" required="" />
									<p></p>
								</div>

								<div class="col-xs-4 b-contact__md">
									<input type="text" name="mobile" pattern="^\d{10}$" id="mobile" placeholder="Phone No." required="" />
									<p></p>
								</div>

								<div class="col-xs-4 b-contact__md">
									<input type="text" name="city" id="city" placeholder="Area" required="" />
									<p></p>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-xs-12 text-left s-noPadding">
							<div class="b-search__main-form-submit">
								<!-- <a href="#">Advanced search</a> -->
								<button type="submit" class="btn m-btn">Get Quote<span class="fa fa-angle-right"></span></button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>

	<!--b-search-->

	<div class="b-features">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-md-offset-3 col-xs-6 col-xs-offset-6">
				</div>
			</div>
		</div>
	</div>

	<!--b-features-->
	<section class="b-featured">
		<div class="container">
			<h1
				class="s-title wow zoomInUp"
				data-wow-delay="0.3s">Best Car Repair Services</h1>

			<div
				id="carousel-small"
				class="owl-carousel enable-owl-carousel"
				data-items="3"
				data-navigation="true"
				data-auto-play="true"
				data-stop-on-hover="true"
				data-items-desktop="3"
				data-items-desktop-small="3"
				data-items-tablet="4"
				data-items-tablet-small="4">

				@foreach($services as $service)
					<div>
						<div
							class="b-world__item wow zoomInLeft"
							data-wow-delay="0.3s"
							data-wow-offset="100">

							<a href="car-servicing">
								<img
									class="img-responsive"
									width="320"
									height="200"
									src="{{get_file_url($service->banner_image_id, 'full')}}"
									alt="{{ $service->title }}" />
							</a>
							<div class="b-world__item-val">
								<div class="b-world__item-val-circles">
									<span></span>
									<span></span>
									<span></span>
									<span></span>
									<span></span>
								</div>
							</div>

							<h2 style="font-size: 25px">
								<a href="car-servicing">{{ \Str::title($service->title) }}</a>
							</h2>
							<div class="b-featured__item-price"> Starts From : @ {{ $service->starting_price }}* </div>
							<div>

								<div class="col-sm-3 col-xs-12">
									<a href="car-servicing" class="btn m-btn">View Packages<span class="fa fa-angle-right"></span></a>
								</div>
							</div>
						</div>
					</div>
				@endforeach
			</div>
		</div>
	</section><!--b-featured-->

	<section class="b-welcome">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-xs-12">
					<div class="b-welcome__text wow fadeInLeft" data-wow-delay="0.3s" data-wow-offset="100">
						<h3>WELCOME TO INDIA MECHANIC</h3>
						<h3>COMPLETE CAR REPAIR</h3>
						<p>India Mechanic is one point solution for all your worries related to <a href="car-servicing"> car service </a> and repairs. With its network of multi branded service station , India Mechanic is standardising car service and repair industry.</p>
						<p>India Mechanic strives to make car service and repair more easy and affordable for eveyone. Our mission is to provide a seamless service experience to all our customers.</p>
						<ul>
							<li><span class="fa fa-check"></span>Live Update On Your Car Service. </li>
							<li><span class="fa fa-check"></span>Free Pickup And Drop.</li>
							<li><span class="fa fa-check"></span>Affordable Pricing. </li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-xs-12">
					<div class="b-welcome__services wow fadeInRight" data-wow-delay="0.3s" data-wow-offset="100">
						<div class="row">
							<div class="col-xs-6 m-padding">
								<div class="b-welcome__services-auto">
									<div class="b-welcome__services-img m-auto">
										<span class="fa fa-cab"></span>
									</div>
									<h3>Advance Workshop</h3>
								</div>
							</div>
							<div class="col-xs-6 m-padding">
								<div class="b-welcome__services-trade">
									<div class="b-welcome__services-img m-trade">
										<span class="fa fa-male"></span>
									</div>
									<h3> Experienced Mechanic</h3>
								</div>
							</div>
							<div class="col-xs-12 text-center">
								<span class="b-welcome__services-circle"></span>
							</div>
							<div class="col-xs-6 m-padding">
								<div class="b-welcome__services-buying">
									<div class="b-welcome__services-img m-buying">
										<span class="fa fa-cogs"></span>
									</div>
									<h3>Genuine OEM / OES Spare</h3>
								</div>
							</div>
							<div class="col-xs-6 m-padding">
								<div class="b-welcome__services-support">
									<div class="b-welcome__services-img m-support">
										<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
											width="45px" height="45px" viewBox="0 0 612 612" style="enable-background:new 0 0 612 612;" xml:space="preserve">
											<g>
												<path d="M257.938,336.072c0,17.355-14.068,31.424-31.423,31.424c-17.354,0-31.422-14.068-31.422-31.424
													c0-17.354,14.068-31.423,31.422-31.423C243.87,304.65,257.938,318.719,257.938,336.072z M385.485,304.65
													c-17.354,0-31.423,14.068-31.423,31.424c0,17.354,14.069,31.422,31.423,31.422c17.354,0,31.424-14.068,31.424-31.422
													C416.908,318.719,402.84,304.65,385.485,304.65z M612,318.557v59.719c0,29.982-24.305,54.287-54.288,54.287h-39.394
													C479.283,540.947,379.604,606.412,306,606.412s-173.283-65.465-212.318-173.85H54.288C24.305,432.562,0,408.258,0,378.275v-59.719
													c0-20.631,11.511-38.573,28.46-47.758c0.569-84.785,25.28-151.002,73.553-196.779C149.895,28.613,218.526,5.588,306,5.588
													c87.474,0,156.105,23.025,203.987,68.43c48.272,45.777,72.982,111.995,73.553,196.779C600.489,279.983,612,297.925,612,318.557z
													M497.099,336.271c0-13.969-0.715-27.094-1.771-39.812c-24.093-22.043-67.832-38.769-123.033-44.984
													c7.248,8.15,13.509,18.871,17.306,32.983c-33.812-26.637-100.181-20.297-150.382-79.905c-2.878-3.329-5.367-6.51-7.519-9.417
													c-0.025-0.035-0.053-0.062-0.078-0.096l0.006,0.002c-8.931-12.078-11.976-19.262-12.146-11.31
													c-1.473,68.513-50.034,121.925-103.958,129.46c-0.341,7.535-0.62,15.143-0.62,23.08c0,28.959,4.729,55.352,12.769,79.137
													c30.29,36.537,80.312,46.854,124.586,49.59c8.219-13.076,26.66-22.205,48.136-22.205c29.117,0,52.72,16.754,52.72,37.424
													c0,20.668-23.604,37.422-52.72,37.422c-22.397,0-41.483-9.93-49.122-23.912c-30.943-1.799-64.959-7.074-95.276-21.391
													C198.631,535.18,264.725,568.41,306,568.41C370.859,568.41,497.099,486.475,497.099,336.271z M550.855,264.269
													C547.4,116.318,462.951,38.162,306,38.162S64.601,116.318,61.145,264.269h20.887c7.637-49.867,23.778-90.878,48.285-122.412
													C169.37,91.609,228.478,66.13,306,66.13c77.522,0,136.63,25.479,175.685,75.727c24.505,31.533,40.647,72.545,48.284,122.412
													H550.855L550.855,264.269z"/>
											</g>
										</svg>

									</div>
									<h3>One Month Service Warranty.</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section><!--b-welcome-->

	<section class="b-asks">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-10 col-sm-offset-1 col-md-offset-0 col-xs-12">
					<div class="b-asks__first wow zoomInLeft" data-wow-delay="0.3s" data-wow-offset="100">
						<div class="b-asks__first-circle">
							<span class="fa fa-search"></span>
						</div>
						<div class="b-asks__first-info">
							<h3>LOOKING FOR FIX ISSUE IN YOUR CAR?</h3>
							<p>If you don't know about you car issue. Don't worry we help you to find it.</p>
						</div>
						<div class="b-asks__first-arrow">
							<a data-toggle="modal" data-target="#ContactModal"><span class="fa fa-angle-right"></span></a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-10 col-sm-offset-1 col-xs-12 col-md-offset-0">
					<div class="b-asks__first m-second wow zoomInRight" data-wow-delay="0.3s" data-wow-offset="100">
						<div class="b-asks__first-circle">
							<span class="fa fa-car"></span>
						</div>
						<div class="b-asks__first-info">
							<h3>GOT DAMAGED YOUR CAR?</h3>
							<p>We are here to give all posible solution with insurance claim for your damage car. </p>
						</div>
						<div class="b-asks__first-arrow">
							<a href="car-dent-paint"><span class="fa fa-angle-right"></span></a>
						</div>
					</div>
				</div>
				<div class="col-xs-12">
					<p class="b-asks__call wow zoomInUp" data-wow-delay="0.3s" data-wow-offset="100">QUESTIONS? CALL US  : <span><a href="tel:7218558855">+91 7218558855</a></span></p>
				</div>
			</div>
		</div>
	</section><!--b-asks-->

	<section class="b-count">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-xs-12 percent-blocks m-main" data-waypoint-scroll="true">
					<div class="row">
						<div class="col-sm-3 col-xs-6">
							<div class="b-count__item">
								<div class="b-count__item-circle">
									<span class="fa fa-car"></span>
								</div>
								<div class="chart" data-percent="650">
									<h3  class="percent">650 +</h3>
								</div>
								<h5>SERVICED CAR'S</h5>
							</div>
						</div>
						<div class="col-sm-3 col-xs-6">
							<div class="b-count__item">
								<div class="b-count__item-circle">
									<span class="fa fa-users"></span>
								</div>
								<div class="chart" data-percent="540">
									<h3  class="percent">540 +</h3>
								</div>
								<h5>HAPPY CUSTOMER</h5>
							</div>
						</div>
						<div class="col-sm-3 col-xs-6">
							<div class="b-count__item">
								<div class="b-count__item-circle">
									<span class="fa fa-building-o"></span>
								</div>
								<div class="chart" data-percent="25">
									<h3  class="percent">25</h3>
								</div>
								<h5>WORKSHOPS</h5>
							</div>
						</div>
						<div class="col-sm-3 col-xs-6">
							<div class="b-count__item j-last">
								<div class="b-count__item-circle">
									<span class="fa fa-suitcase"></span>
								</div>
								<div class="chart" data-percent="4">
									<h3  class="percent">4 +</h3>
								</div>
								<h5>CITIES</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section><!--b-count-->
	<section class="b-brands s-shadow">
		<div class="container">
			<h5 class="s-titleBg wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">FIND OUT MORE</h5><br>
			<h3 class="s-title wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">BRANDS WE OFFER</h3>
			<div class="">

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{asset('/design/media/brands/tata.webp')}}" alt="tata">
				</div>
				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{asset('/design/media/brands/ford.webp')}}" alt="ford">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{asset('/design/media/brands/honda.webp')}}" alt="honda">
				</div>
				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{asset('/design/media/brands/skoda.webp')}}" alt="skoda">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{asset('/design/media/brands/hyundai.webp')}}" alt="hyundai">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{asset('/design/media/brands/chevrolet.png')}}" alt="chevrolet" style="width: 140px">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{asset('/design/media/brands/nissan.png')}}" alt="nissan" style="width: 110px">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{asset('/design/media/brands/suzuki.png')}}" alt="suzuki" style="width: 110px">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{asset('/design/media/brands/volkswagen.png')}}" alt="volkswagen" style="width: 110px">
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{asset('/design/media/brands/datsun.png')}}" alt="datsun" >
				</div>

				<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rotateIn;">
					<img src="{{asset('/design/media/brands/fiat.png')}}" alt="fiat" style="width: 110px">
				</div>
			</div>
		</div>
	</section>
	<section class="b-contact">
		<div class="container">
			<div class="row wow zoomInLeft" data-wow-delay="0.3s" data-wow-offset="100">
				<div class="col-xs-4">
					<div class="b-contact-title">
						<h5>Worried about cost</h5><br />
						<h3>Get instant Car Repair</h3>
					</div>
				</div>
				<div class="col-xs-8">
					<div class="b-contact__form">
						<p>We will discuss about your car problem & give affordable quotetion</p>
						<form action="contact.php" method="POST">
	<div><span class="fa fa-user"></span><input type="text" name="name" value="" placeholder="Name" required="" /></div>
	<div><span class="fa fa-phone"></span><input type="text" name="mobile" value="" placeholder="Mobile no." required="" /></div>
	<div><span class="fa fa-envelope"></span><input type="text" name="email" value="" placeholder="Email Id" required="" /></div>
	<div style="padding-top: 1.5%"><span class="fa fa-envelope"></span><input type="text" name="requirement" value="" placeholder="Requirement" required="" /></div>
							<button type="submit"><span class="fa fa-angle-right"></span></button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--b-contact-->

	<section class="b-review">
		<div class="container">
			<div class="col-sm-10 col-sm-offset-1 col-xs-12">
				<div id="carousel-small-rev" class="owl-carousel enable-owl-carousel" data-items="1" data-navigation="true" data-auto-play="true" data-stop-on-hover="true" data-items-desktop="1" data-items-desktop-small="1" data-items-tablet="1" data-items-tablet-small="1">
					<div class="b-review__main">
						<div class="b-review__main-person">
							<div class="b-review__shailesh">
							</div>
						</div>
						<h5><span>Shailesh Dange</span>, Swift Dzire <em>"</em></h5>
						<p>This place offers very good service on account of their experienced team headed by an equally experienced person who believes in providing top class service at reasonable price. Total value for money and sincere people makes this place very sort after for maintenance and repair services of premium and other cars. All the best to them to continue with the good work.</p>
					</div>
					<div class="b-review__main">
						<div class="b-review__main-person">
							<div class="b-review__ajay">
							</div>
						</div>
						<h5><span>Ajay Kadam</span>, Hyundai i20<em>"</em></h5>
						<p>Took my Car there for accidental job and paid servicing... I feel that they are professional in their approach in customer relations and job work is also satisfactory.  They are safe to rely for big and precious cars . I saw lots of premium and super premium cars there. I can recommend them for sure .
						</p>
					</div>
					<div class="b-review__main">
						<div class="b-review__main-person">
							<div class="b-review__ravi">
							</div>
						</div>
						<h5><span>Ravi Bharti</span>, Honda City<em>"</em></h5>
						<p>My experience with them was delightful. I got my Honda City transmission repaired at much much less price than the original estimate from Honda. They took just 1 day including parts arrangement n everything. My car is running absolutely fine now.</p>
					</div>
					<div class="b-review__main">
						<div class="b-review__main-person">
							<div class="b-review__shubham">
							</div>
						</div>
						<h5><span>Shubham Wairale</span>, Hyundai Verna<em>"</em></h5>
						<p>Thanks a lot for the service provided for my Verna superb, My experience at India Mechanic was good. no disappointment after visiting this service center</p>
					</div>
				</div>
			</div>
		</div>
	</section><!--b-review-->
@endsection
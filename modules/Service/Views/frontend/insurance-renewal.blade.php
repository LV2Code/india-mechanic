@extends('Page::design.layouts.frontend')

@section('content')


	<section class="b-pageHeader">
		<div class="container">
			<h1 class="wow zoomInLeft" data-wow-delay="0.5s" style="margin-left: 15px;">CAR SERVICES</h1>
			<div class="b-pageHeader__search wow zoomInRight" data-wow-delay="0.5s" style="margin-right: 15px;">
				<h3>Best Car Service Center</h3>
			</div>
		</div>
	</section><!--b-pageHeader-->



	<div class="b-items">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-sm-8 col-xs-12">
					<div class="row">

			<div id="carousel" class="col-lg-10 slide carousel carousel-fade">
				<div class="carousel-inner">
				<div class="item active">
					<img src="media/services/car-servicing-1.webp" alt="sliderImg" />
				</div>
				<div class="item">
					<img src="media/services/car-servicing-2.webp" alt="sliderImg" />
				</div>
				<div class="item">
					<img src="media/services/car-servicing-3.webp"  alt="sliderImg"/>
				</div>
			</div>
			<a class="carousel-control right" href="#carousel" data-slide="next">
				<span class="fa fa-angle-right m-control-right"></span>
			</a>
			<a class="carousel-control left" href="#carousel" data-slide="prev">
				<span class="fa fa-angle-left m-control-left"></span>
			</a>
		</div>

						<div class="col-md-5 col-xs-12">
							<h2 class="s-title wow zoomInUp" data-wow-delay="0.3s" style="margin-top: 20px;">Packages</h2>
							<div class="b-items__cell wow zoomInUp" data-wow-delay="0.5s" style="background-color:  #f5f2d0 ; border-style: double; border-width: 3px;border-color: #ff7300">
								<div class="b-items__cars-one-img">
									<img class='img-responsive' src="media/services/classic-service.webp" alt='jaguar'/>
									<!-- <form action="/" method="post">
										<input type="checkbox" name="check7" id='check7'/>
										<label for="check7" class="b-items__cars-one-img-check"><span class="fa fa-check"></span></label>
									</form> -->
								</div>
								<div class="b-items__cell-info">
									<div class="s-lineDownLeft b-items__cell-info-title">
										<h2 style="font-size: 20px">CLASSIC SERVICE</h2>
									</div>
									<p>Every 10000 kms or 12 months</p>
									<div class="row m-smallPadding">
										<div class="col-xs-6">
										<ul>
										<li>Engine Oil Replace</li>
										<li>Oil Filter Replace</li>
										<li>Air Filter Replace</li>
										<li>AC Filter Clean</li>
										<li>Coolant Topup</li>
										<li>Battery Water Topup</li>
										<li>Brake Fluid Check</li>

									</ul>
										</div>
										<div class="col-xs-6">
											<div class="b-items__cell-info-km">
												<ul>
										<li>Wiper Fluid Fill</li>
										<li>Brake Pad Service</li>
										<li>Caliper Pin Greasing</li>
										<li>35 Point Inspection</li>
										<li>Car Wash</li>
										<li>Interior Vaccuming</li>
										<li>Dashboard and Tyre Polish</li>
												</ul>
											</div>
											<a data-toggle="modal" data-target="#ContactModal" class="btn m-btn"style="margin-top: 8px;">BOOK NOW<span class="fa fa-angle-right"></span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-5 col-xs-12" style="padding-top: 70px;">
							<div style="background-color:  #f5f2d0 ; border-style: double; border-width: 3px;border-color: #ff7300;height: 559px;">
							<div class="b-items__cell wow zoomInUp" data-wow-delay="0.5s" >
								<div class="b-items__cars-one-img">
									<img class='img-responsive' src="media/services/primary-service.webp" alt='merc'/>
									<form action="/" method="post">
									<input type="checkbox" name="check8" id='check8'/>
									<label for="check8" class="b-items__cars-one-img-check"><span class="fa fa-check"></span></label>
									</form>
								</div>
								<div class="b-items__cell-info">
									<div class="s-lineDownLeft b-items__cell-info-title">
										<h2 style="font-size: 20px">PRIMARY SERVICE</h2>
									</div>
									<p>Every 5000 km or 6 moths</p>
									<div class="row m-smallPadding">
										<div class="col-xs-6">
									<ul>
												<li>Engine Oil Replace</li>
												<li>Oil Filter Replace</li>
												<li>Air Filter Clean</li>
												<li>AC Filter Clean</li>
												<li>Coolant Topup</li>
												<li>Battery Water Topup</li>
									</ul>
										</div>
										<div class="col-xs-6">
											<div class="b-items__cell-info-km">
												<ul>
												<li>Brake Fluid Check</li>
												<li>Wiper Fluid Fill</li>
												<li>Brake Air Pressure</li>
												<li>All General Checkup</li>
												<li>Car Wash</li>
												<li>Interior Vaccuming</li>
												</ul>
											</div>
											<a data-toggle="modal" data-target="#ContactModal" class="btn m-btn" style="margin-top: 20px;">BOOK NOW<span class="fa fa-angle-right"></span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						</div>
					</div>
					<div class="b-article__main-related s-shadow">
							<div class="s-lineDownLeft  s-titleLeft">
								<div>
									<h2 class="s-titleDet wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;"> Related Services</h2>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="row">
								<div class="col-sm-6 col-xs-9">
									<div class="b-article__main-related-item wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">
										<div class="row m-smallPadding">
											<div class="col-xs-4">
											<a href="car-cleaning"><img class="center-block img-responsive" src="media/services/car-cleaning.webp" alt="related" style="height: 62px;"></a>
											</div>
											<div class="col-xs-8">
												<h5><a href="car-cleaning">Car Cleaning</a></h5>
													<div class="b-blog__posts-one-body-head-notes">
													<span class="b-blog__posts-one-body-head-notes-note"><span class="fa fa-user"></span>Our Admin</span>
													<span class="b-blog__posts-one-body-head-notes-note"><span class="fa fa-calendar-o"></span>20th May 2015</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-xs-9">
									<div class="b-article__main-related-item wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">
										<div class="row m-smallPadding">
											<div class="col-xs-4">
									<img class="center-block img-responsive" src="media/services/insurance.webp" alt="related" style="height: 62px;">				</div>
											<div class="col-xs-8">
												<h5><a href="insurance-renewal">Insurance Renewal</a></h5>
												<div class="b-blog__posts-one-body-head-notes">
													<span class="b-blog__posts-one-body-head-notes-note"><span class="fa fa-user"></span>Our Admin</span>
													<span class="b-blog__posts-one-body-head-notes-note"><span class="fa fa-calendar-o"></span>20th May 2015</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
				</div>

				<div class="col-lg-3 col-sm-4 col-xs-12">
					<aside class="b-items__aside">
						<h2 class="s-title wow zoomInUp" data-wow-delay="0.5s">GET INSTANT QUOTE</h2>
						<div class="b-items__aside-main wow zoomInUp" data-wow-delay="0.5s">
							<form>
								<div class="b-items__aside-main-body">
								<div class="b-contact__md">
									<input type="text" name="car-model" id="car-model" placeholder="Car Maker & Model" required="" style="border: 1px solid #fff;"/>
									<p></p>
								</div>
								<div >
									<select name="services" id="services" class="m-select" required="" style="border: 1px solid #fff; width: 258px; background-color: #555555">
                                        <option value="">Services</option>
                                        <option value="Car Servicing">Car Servicing</option>
                                        <option value="Denting Painting">Denting Painting</option>
                                        <option value="Car Cleaning">Car Cleaning</option>
                                        <option value="Wheel Care">Wheel Care</option>
                                        <option value="AC Services">AC Services</option>
                                        <option value="Car Repair">Car Repair</option>
                                        <option value="Insurance Renewal">Insurance Renewal</option>
									</select>
									<p></p>
								</div>

								<div class="b-contact__md">
									<input type="text" name="name" id="name" placeholder="Name" required="" style="border: 1px solid #fff;"/>
									<p></p>
								</div>

								<div class="b-contact__md">
									<input type="text" name="mobile" id="mobile" placeholder="Phone No." required="" style="border: 1px solid #fff;"/>
									<p></p>
								</div>

								<div class="b-contact__md">
									<input type="text" name="area" id="area" placeholder="Area" required="" style="border: 1px solid #fff;"/>
									<p></p>
								</div>
								</div>
								<footer class="b-items__aside-main-footer">
									<button type="submit" class="btn m-btn">GET QUOTE<span class="fa fa-angle-right"></span></button><br />
									<a href="">ADVANCE SEARCH</a>
								</footer>
							</form>
						</div>
						<div class="b-blog__aside-popular wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">
							<header class="s-lineDownLeft">
								<h2 class="s-titleDet">Popular Services</h2>
							</header>
							<div class="b-blog__aside-popular-posts">
								<div class="b-blog__aside-popular-posts-one">
									<img class="img-responsive" src="media/services/dent-paint.webp" alt="car-denting-painting">
									<h4><a href="car-dent-paint">Car Denting Painting</a></h4>
								</div>
								<div class="b-blog__aside-popular-posts-one">
									<img class="img-responsive" src="media/services/wheel-care.webp" alt="outlander">
									<h4><a href="wheel-care">Car Wheel Care</a></h4>
								</div>
							</div>
						</div>
						<div class="b-items__aside-sell wow zoomInUp" data-wow-delay="0.5s">
							<div class="b-items__aside-sell-img b-items__aside-insurance-img">
								<h3>SELL YOUR CAR</h3>
							</div>
							<div class="b-items__aside-sell-info">
								<p>
									Nam tellus enimds eleifend dignis lsim
									biben edum tristique sed metus fusce
									Maecenas lobortis.
								</p>
								<a class="btn m-btn">CONTACT US<span class="fa fa-angle-right"></span></a>
							</div>
						</div>
						<div class="b-detail__main-aside-about-call wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">
							<span class="fa fa-phone"></span>
							<div>+91 7218558855</div>
							<p>QUESTIONS? CALL US 24/7</p>
						</div>
					</aside>
				</div>
			</div>
		</div>
	</div><!--b-items-->
@endsection
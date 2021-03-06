@extends('Page::design.layouts.frontend')

@section('content')


	<section class="b-pageHeader">
		<div class="container">
			<h1 class="wow zoomInLeft" data-wow-delay="0.5s" style="margin-left: 15px;">WHEEL CARE</h1>
			<div class="b-pageHeader__search wow zoomInRight" data-wow-delay="0.5s" style="margin-right: 15px;">
				<a href="index"> <h3 style="color: #fff">Best Car Repair Service Center</h3></a>
			</div>
		</div>
	</section>


<div class="b-breadCumbs s-shadow" style="width: 500px;">
		<div class="container">
			<a href="index" class="b-breadCumbs__page">Home</a><span class="fa fa-angle-right"></span>
			<a href="services" class="b-breadCumbs__page m-active">Services</a><span class="fa fa-angle-right"></span>
			<a href="wheel-care" class="b-breadCumbs__page m-active">Car Wheel Care</a>
		</div>
	</div>
	<!--b-pageHeader-->

	<div class="b-items">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-sm-8 col-xs-12">
					<div class="row">

			<div id="carousel" class="col-lg-12 slide carousel carousel-fade">
				<div class="carousel-inner">
				<div class="item active">
					<img src="media/services/wheel-care-1.webp" alt="car-cleaning" style="width: 820px;" />
				</div>
				<div class="item">
					<img src="media/services/wheel-care-2.webp" alt="car-cleaning" style="width: 820px; height: 400px;" />
				</div>
				<div class="item">
					<img src="media/services/wheel-care-3.webp" alt="car-cleaning" style="width: 820px;" />
				</div>
			</div>
			<a class="carousel-control right" href="#carousel" data-slide="next">
				<span class="fa fa-angle-right m-control-right"></span>
			</a>
			<a class="carousel-control left" href="#carousel" data-slide="prev">
				<span class="fa fa-angle-left m-control-left"></span>
			</a>
		</div>

						<div class="col-md-4 col-xs-12">
							<h2 class="s-title wow zoomInUp" data-wow-delay="0.3s" style="margin-top: 20px;">Packages</h2>
							<div style="background-color:  #f5f2d0 ; border-style: double; border-width: 3px;border-color: #ff7300;height: 350px;">
							<div class="b-items__cell wow zoomInUp" data-wow-delay="0.5s">
								<div class="b-items__cars-one-img">
									<img class='img-responsive' src="media/services/tyre-rotation.webp" alt='Tyre Rotation'/>
									<!-- <form action="/" method="post">
										<input type="checkbox" name="check7" id='check7'/>
										<label for="check7" class="b-items__cars-one-img-check"><span class="fa fa-check"></span></label>
									</form> -->
								</div>
								<div class="b-items__cell-info">
									<div class="s-lineDownLeft b-items__cell-info-title">
										<h2 style="font-size: 20px">TYRE ROTATION</h2>
									</div>
									<p></p>
									<div class="row m-smallPadding">
										<div class="col-xs-12">
									<!-- <ul>
										<li>Vacuum Cleaning</li>
										<li>Dashboard Polishing</li>
										<li>Interior Shampooing</li>
									</ul> -->
									<div class="b-items__cell-info-km">

											</div>
											<a data-toggle="modal" data-target="#ContactModal"  class="btn m-btn"style="margin-top: 8px;">BOOK NOW<span class="fa fa-angle-right"></span></a>
										</div>

										</div>
									</div>
								</div>
								</div>
							</div>
						<div class="col-md-4 col-xs-12" style="padding-top: 70px;">
							<div style="background-color:  #f5f2d0 ; border-style: double; border-width: 3px;border-color: #ff7300;height: 350px;">
							<div class="b-items__cell wow zoomInUp" data-wow-delay="0.5s">
								<div class="b-items__cars-one-img">
									<img class='img-responsive' src="media/services/wheel-alignment.webp" alt='wheel-alignment'/>
									<!-- <form action="/" method="post">
										<input type="checkbox" name="check7" id='check7'/>
										<label for="check7" class="b-items__cars-one-img-check"><span class="fa fa-check"></span></label>
									</form> -->
								</div>
								<div class="b-items__cell-info">
									<div class="s-lineDownLeft b-items__cell-info-title">
										<h2 style="font-size: 20px">WHEEL ALIGNMENT</h2>
									</div>
									<p></p>
									<div class="row m-smallPadding">
										<div class="col-xs-12">
									<!-- <ul>
										<li>Pressure Car Wash</li>
										<li>Rubbing Compound</li>
										<li>Wax Polishing</li>
										<li>Machine Rubbing</li>
										<li>Tyre Dressing&Alloy Cleaning</li>
									</ul> -->
									<div class="b-items__cell-info-km">

											</div>
											<a data-toggle="modal" data-target="#ContactModal"  class="btn m-btn"style="margin-top: 8px;">BOOK NOW<span class="fa fa-angle-right"></span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						</div>
						<div class="col-md-4 col-xs-12" style="padding-top: 70px;">
							<div style="background-color:  #f5f2d0 ; border-style: double; border-width: 3px;border-color: #ff7300;height: 350px;">
							<div class="b-items__cell wow zoomInUp" data-wow-delay="0.5s" >
								<div class="b-items__cars-one-img">
									<img class='img-responsive' src="media/services/wheel-balancing.webp" alt='wheel-balancing'/>
									<!-- <form action="/" method="post">
									<input type="checkbox" name="check8" id='check8'/>
									<label for="check8" class="b-items__cars-one-img-check"><span class="fa fa-check"></span></label>
									</form> -->
								</div>
								<div class="b-items__cell-info">
									<div class="s-lineDownLeft b-items__cell-info-title">
										<h2 style="font-size: 20px">WHEEL BALANCING</h2>
									</div>
									<p></p>
									<div class="row m-smallPadding">
										<div class="col-xs-12">
									<!-- <ul>
										<li>Pressure Car Wash</li>
										<li>Rubbing Compound</li>
										<li>Wax Polishing</li>
										<li>Machine Rubbing</li>
										<li>Tyre Dressing&Alloy Cleaning</li>
									</ul> -->
									<div class="b-items__cell-info-km">

											</div>
											<a data-toggle="modal" data-target="#ContactModal"  class="btn m-btn"style="margin-top: 8px;">BOOK NOW<span class="fa fa-angle-right"></span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						</div>
					</div>
					<div class="b-article__main-related s-shadow" style="padding-top: 5%">
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
												<h5><a href="car-servicing">Car Servicing</a></h5>
													<div class="b-blog__posts-one-body-head-notes">
													<span class="b-blog__posts-one-body-head-notes-note">Best Car Service Center</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-xs-9">
									<div class="b-article__main-related-item wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">
										<div class="row m-smallPadding">
											<div class="col-xs-4">
											<a href="car-dent-paint"><img class="center-block img-responsive" src="media/services/car-dent-paint-1.webp" alt="related" style="height: 62px;"></a>
											</div>
											<div class="col-xs-8">
												<h5><a href="car-dent-paint">Car Denting Painting</a></h5>
													<div class="b-blog__posts-one-body-head-notes">
													<span class="b-blog__posts-one-body-head-notes-note">Quality Work On Denting Painting By Experts</span>
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
							<form id="contact_form" method="post" role="form" action="wheel-care-contact.php">
								<div class="b-items__aside-main-body">
								<div class="b-contact__md">
									<input type="text" name="car-model" id="car-model" placeholder="Car Maker & Model" required="" style="border: 1px solid #fff;"/>
									<p></p>
								</div>
								<div >
									<select name="services" id="services" class="m-select" required="" style="border: 1px solid #fff; width: 258px; background-color: #555555">
                                        <option value="">Select Service </option>
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
									<img class="img-responsive" src="media/services/car-dent-paint-2.webp" alt="car-denting-painting">
									<h4><a href="car-dent-paint">Car Denting Painting</a></h4>
								</div>
								<div class="b-blog__aside-popular-posts-one">
									<img class="img-responsive" src="media/services/car-cleaning-1.webp" alt="outlander">
									<h4><a href="car-cleaning">Car Cleaning</a></h4>
								</div>
							</div>
						</div>
						<div class="b-items__aside-sell wow zoomInUp" data-wow-delay="0.5s">
							<div class="b-items__aside-wheel-care-img b-items__aside-sell-img">
								<h3>WHEEL CARE</h3>
							</div>
							<div class="b-items__aside-sell-info">
								<p>
									We provide wheel care, wheel alignment and wheel balancing with replacement of wheels of multiple brands.
								</p>
								<a href="contact" class="btn m-btn">CONTACT US<span class="fa fa-angle-right"></span></a>
							</div>
						</div>
						<div class="b-detail__main-aside-about-call wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">
							<a href="tel:+91 7218558855"> <span class="fa fa-phone"></span></a>
							<div>+91 7218558855</div>
							<p>QUESTIONS? CALL US 24/7</p>
						</div>
					</aside>
				</div>
			</div>
		</div>
	</div><!--b-items-->
@endforeach
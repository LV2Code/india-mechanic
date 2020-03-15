@extends('Page::design.layouts.frontend')

@section('content')
	<section class="b-pageHeader">
		<div class="container">
			<h1 class="wow zoomInLeft" data-wow-delay="0.5s" style="margin-left: 15px;">Car Denting Painting</h1>
			<div class="b-pageHeader__search wow zoomInRight" data-wow-delay="0.5s" style="margin-right: 15px;">
				<h3>Best Car Repair Service Center</h3>
			</div>
		</div>
	</section><!--b-pageHeader-->

	<div class="b-breadCumbs s-shadow" style="width: 500px;">
		<div class="container">
			<a href="index" class="b-breadCumbs__page">Home</a><span class="fa fa-angle-right"></span>
			<a href="services" class="b-breadCumbs__page m-active">Services</a><span class="fa fa-angle-right"></span>
			<a href="car-dent-paint" class="b-breadCumbs__page m-active">Car Denting Painting</a>
		</div>
	</div>

	<div class="b-items">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-sm-8 col-xs-12">
					<div class="row">

			<div id="carousel" class="col-lg-12 slide carousel carousel-fade">
				<div class="carousel-inner">
				<div class="item active">
					<img src="media/services/car-dent-paint-1.webp" alt="sliderImg" />
				</div>
				<div class="item">
					<img src="media/services/car-dent-paint-2.webp" alt="sliderImg" />
				</div>
				<div class="item">
					<img src="media/services/car-dent-paint-3.webp" alt="sliderImg" />
				</div>
			</div>
			<a class="carousel-control right" href="#carousel" data-slide="next">
				<span class="fa fa-angle-right m-control-right"></span>
			</a>
			<a class="carousel-control left" href="#carousel" data-slide="prev">
				<span class="fa fa-angle-left m-control-left"></span>
			</a>
		</div>

	<div><h2 class="s-title wow zoomInUp" data-wow-delay="0.3s" style="margin-top: 20px;">Packages</h2></div>
			<div>
			<div class="col-md-4 col-xs-12">
			<div class="owl-item" style="width: 285px;">
				<div>
					<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s" data-wow-offset="150" style="visibility: visible; animation-delay: 0.3s; animation-name: rotateIn;">
							<img src="media/services/dent-paint/front-bumper.webp" alt="car front-bumper">
						<div class="b-featured__item-price">
							RS.2200*
						</div>
						<div class="clearfix"></div>
						<h5>FRONT BUMPER</h5>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-12">
			<div class="owl-item" style="width: 285px;">
				<div>
					<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s" data-wow-offset="150" style="visibility: visible; animation-delay: 0.3s; animation-name: rotateIn;">
							<img src="media/services/dent-paint/rear-bumper.webp" alt="Car Rear Bumper Dent Paint">
						<div class="b-featured__item-price">
							RS.2400*
						</div>
						<div class="clearfix"></div>
						<h5>REAR BUMPER</h5>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-12">
			<div class="owl-item" style="width: 285px;">
				<div>
					<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s" data-wow-offset="150" style="visibility: visible; animation-delay: 0.3s; animation-name: rotateIn;">
							<img src="media/services/dent-paint/bonnet.webp" alt="car bonnet">
						<div class="b-featured__item-price">
							RS.2400*
						</div>
						<div class="clearfix"></div>
						<h5>BONNET</h5>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-12">
			<div class="owl-item" style="width: 285px;">
				<div>
					<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s" data-wow-offset="150" style="visibility: visible; animation-delay: 0.3s; animation-name: rotateIn;">
							<img src="media/services/dent-paint/fender.webp" alt="Car fender">
						<div class="b-featured__item-price">
							RS.2000*
						</div>
						<div class="clearfix"></div>
						<h5>FENDER</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
		<hr>
		<div class="col-md-4 col-xs-12">
			<div class="owl-item" style="width: 285px;">
				<div>
					<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s" data-wow-offset="150" style="visibility: visible; animation-delay: 0.3s; animation-name: rotateIn;">
					<img src="media/services/dent-paint/front-door.webp" alt="Car Front Door">
						<div class="b-featured__item-price">
							RS.2400*
						</div>
						<div class="clearfix"></div>
						<h5>FRONT DOOR</h5>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-12">
			<div class="owl-item" style="width: 285px;">
				<div>
					<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s" data-wow-offset="150" style="visibility: visible; animation-delay: 0.3s; animation-name: rotateIn;">
							<img src="media/services/dent-paint/rear-door.webp" alt="rear door dent paint">
						<div class="b-featured__item-price">
							RS.2400*
						</div>
						<div class="clearfix"></div>
						<h5>REAR DOOR</h5>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-12">
			<div class="owl-item" style="width: 285px;">
				<div>
					<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s" data-wow-offset="150" style="visibility: visible; animation-delay: 0.3s; animation-name: rotateIn;">
							<img src="media/services/dent-paint/quarter-panel.webp" alt="quarter-panel dent paint">
						<div class="b-featured__item-price">
							RS.2100*
						</div>
						<div class="clearfix"></div>
						<h5>QUARTER PANEL</h5>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-12">
			<div class="owl-item" style="width: 285px;">
				<div>
					<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s" data-wow-offset="150" style="visibility: visible; animation-delay: 0.3s; animation-name: rotateIn;">
							<img src="media/services/dent-paint/trunk.webp" alt="Dickey Dent Paint">
						<div class="b-featured__item-price">
							RS.2400*
						</div>
						<div class="clearfix"></div>
						<h5>DICKEY</h5>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-12">
			<div class="owl-item" style="width: 285px;">
				<div>
					<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s" data-wow-offset="150" style="visibility: visible; animation-delay: 0.3s; animation-name: rotateIn;">
							<img src="media/services/dent-paint/running-board.webp" alt="running board dent paint">							<div class="b-featured__item-price">
							RS.2000*
						</div>
						<div class="clearfix"></div>
						<h5>RUNNING BOARD</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4 col-xs-12">
			<div class="owl-item" style="width: 285px;">
				<div>
					<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s" data-wow-offset="150" style="visibility: visible; animation-delay: 0.3s; animation-name: rotateIn;">
					<img src="media/services/dent-paint/full-body.webp" alt="Car Full Body Dent Paint">
						<div class="b-featured__item-price">
							RS.28,000*
						</div>
						<div class="clearfix"></div>
						<h5>FULL BODY</h5>
					</div>
				</div>
			</div>
		</div>
		<h2 class="s-title wow zoomInUp" data-wow-delay="0.5s">As Per Car Model (Hatch Back, Sedan, SUV, and colour type price will be vary. Contact to : 7218558855.)</h2>
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
													<span class="b-blog__posts-one-body-head-notes-note">Provide All Cleaning Services</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-xs-9">
									<div class="b-article__main-related-item wow zoomInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">
										<div class="row m-smallPadding">
											<div class="col-xs-4">
											<a href="car-cleaning"><img class="center-block img-responsive" src="media/services/car-servicing.webp" alt="related" style="height: 62px;"></a>
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
							</div>
						</div>
				</div>

				<div class="col-lg-3 col-sm-4 col-xs-12">
					<aside class="b-items__aside">
						<h2 class="s-title wow zoomInUp" data-wow-delay="0.5s">GET INSTANT QUOTE</h2>
						<div class="b-items__aside-main wow zoomInUp" data-wow-delay="0.5s">
							<form id="contact_form" method="post" role="form" action="car-dent-paint-contact.php">
								<div class="b-items__aside-main-body">
								<div class="b-contact__md">
									<input type="text" name="car-model" id="car-model" placeholder="Car Maker & Model" required="" style="border: 1px solid #fff;"/>
									<p></p>
								</div>
								<div >
									<select name="services" class="m-select" id="services" required="" style="border: 1px solid #fff; width: 258px; background-color: #555555">
                                        <option value="">Select Service</option>
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
									<input type="text" name="city" id="city" placeholder="Area" required="" style="border: 1px solid #fff;"/>
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
									<img class="img-responsive" src="media/services/insurance.webp" alt="outlander">
									<h4><a  data-toggle="modal" data-target="#ContactModal">Car Insurance Renewal</a></h4>
								</div>
								<div class="b-blog__aside-popular-posts-one">
									<img class="img-responsive" src="media/services/wheel-care.webp" alt="outlander">
									<h4><a href="wheel-care">Car Wheel Care</a></h4>
								</div>
							</div>
						</div>
						<div class="b-items__aside-sell wow zoomInUp" data-wow-delay="0.5s">
							<div class="b-items__aside-dent-paint-img b-items__aside-sell-img">
								<h3>DENTING PAINTING</h3>
							</div>
							<div class="b-items__aside-sell-info">
								<p>
								India Mechanic provide quality work on denting painting repair under the supervision of expert mechanic
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

@endsection
@extends('frontend.layouts.frontend')

@section('content')

	<section class="b-pageHeader">
		<div class="container">
			<h1 class="wow zoomInLeft" data-wow-delay="0.5s" style="margin-left: 15px;">CAR SERVICING</h1>
			<div class="b-pageHeader__search wow zoomInRight" data-wow-delay="0.5s" style="margin-right: 15px;">
				<h3>Best Car Repair Service Center</h3>
			</div>
		</div>
	</section>

	<div class="b-items">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-sm-8 col-xs-12">
					<div class="row">
						<div id="carousel" class="col-lg-12 slide carousel carousel-fade">
							<div class="carousel-inner">
								@foreach($service->getGallery() as $key => $item)
									@if($item['thumb'])
										<div class="{{ $key ? 'item' : 'item active'}}">
											<img
												alt="sliderImg"
												style="width: 820px;"
												src="{{ $item['thumb'] }}"/>
										</div>
									@endif
								@endforeach
							</div>

							<a class="carousel-control right" href="#carousel" data-slide="next">
								<span class="fa fa-angle-right m-control-right"></span>
							</a>
							<a class="carousel-control left" href="#carousel" data-slide="prev">
								<span class="fa fa-angle-left m-control-left"></span>
							</a>
						</div>

						@foreach($service->packages as $package)
							<div class="col-md-5 col-xs-12">
								<h2
									class="s-title wow zoomInUp"
									data-wow-delay="0.3s"
									style="margin-top: 20px;">Packages</h2>

								<div
									class="b-items__cell wow zoomInUp"
									data-wow-delay="0.5s"
									style="background-color:  #f5f2d0 ; border-style: double; border-width: 3px;border-color: #ff7300">
									<div class="b-items__cars-one-img">
										<img
											class='img-responsive'
											src='{{get_file_url($package->banner_image_id, 'full')}}'
											alt='jaguar'/>
									</div>

									<div class="b-items__cell-info">
										<div
											class="s-lineDownLeft b-items__cell-info-title"
											style="width: 100px">
											<h2 style="font-size: 20px"> {{ $package['title'] }} </h2>
										</div>
										<p>{{ $package['subtitle'] }}</p>
										<div> {{ $package['detail'] }} </div>
									{{-- 	<div class="row m-smallPadding">
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
										</div> --}}
									</div>
								</div>
							</div>
						@endforeach
					</div>



					<div class="b-article__main-related s-shadow">
						<div class="s-lineDownLeft  s-titleLeft">
							<div>
								<h2
									class="s-titleDet wow zoomInUp"
									data-wow-delay="0.5s"
									style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">
									Related Services
								</h2>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="row">
							@foreach($related_services as $service)
								<div class="col-sm-6 col-xs-9">
									<div
										data-wow-delay="0.5s"
										class="b-article__main-related-item wow zoomInUp"
										style="visibility: visible; animation-delay: 0.5s; animation-name: zoomInUp;">
										<div class="row m-smallPadding">
											<div class="col-xs-4">
												<a href="wheel-care">
													<img
														alt="related"
														class="center-block img-responsive"
														src='{{get_file_url($service->banner_image_id, 'full')}}'
														style="height: 62px;"></a>
											</div>
											<div class="col-xs-8">
												<h5><a href="wheel-care">{{ $service['title'] }}</a></h5>
												<div class="b-blog__posts-one-body-head-notes">
													<span class="b-blog__posts-one-body-head-notes-note">{{ $service['description'] }}</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							@endforeach
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-sm-4 col-xs-12">
					<aside class="b-items__aside">
						<h2 class="s-title wow zoomInUp" data-wow-delay="0.5s">GET INSTANT QUOTE</h2>
						<div class="b-items__aside-main wow zoomInUp" data-wow-delay="0.5s">
						<form id="contact_form" method="post" role="form" action="car-servicing-contact.php">
								<div class="b-items__aside-main-body">
								<div class="b-contact__md">
					<input type="text" name="car-model" required="" id="car-model" placeholder="Car Maker & Model" style="border: 1px solid #fff;"/>
									<p></p>
								</div>
								<div >
									<select name="services" required="" id="services" class="m-select" style="border: 1px solid #fff; width: 258px; background-color: #555555">
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
								<input type="text" name="name" id="name" required="" placeholder="Name" style="border: 1px solid #fff;"/>
									<p></p>
								</div>

								<div class="b-contact__md">
								<input type="text" name="mobile" id="mobile" required="" placeholder="Phone No." style="border: 1px solid #fff;"/>
									<p></p>
								</div>

								<div class="b-contact__md">
								<input type="text" name="area" id="area" required="" placeholder="Area" style="border: 1px solid #fff;"/>
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
									<img class="img-responsive" src="media/services/wheel-care.webp" alt="outlander">
									<h4><a href="wheel-care">Car Wheel Care</a></h4>
								</div>
								<div class="b-blog__aside-popular-posts-one">
									<img class="img-responsive" src="media/services/car-servicing.webp" alt="car-denting-painting">
									<h4><a href="car-servicing">Car Servicing</a></h4>
								</div>
							</div>
						</div>
						<div class="b-items__aside-sell wow zoomInUp" data-wow-delay="0.5s">
							<div class="b-items__aside-servicing-img b-items__aside-sell-img">
								<h3>CAR SERVICING</h3>
							</div>
							<div class="b-items__aside-sell-info">
								<p>
									India Mechanic is car service repair center where all cars repair by expert mechanic.
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
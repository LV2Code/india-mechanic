@extends('Page::design.layouts.frontend')

@section('content')

	<div
		class="container"
		style="
			width: 500px;
		    margin-top: 125px;
		    margin-bottom: 125px;
		">

		<form
			method="POST"
			action="{{ route('login') }}">

    		@csrf

			<h3>Login</h3>
			<hr>

			<div class="row">
				<div class="col-md-12">
				  	<div class="form-group">
				    	<label for="email">Email address:</label>
				    	<input
				    		type="email"
				    		name="email"
				    		class="form-control"
				    		>
				  	</div>

				  	<div class="form-group">
				    	<label for="pwd">Password:</label>
				    	<input
				    		type="password"
				    		name="password"
				    		class="form-control"
				    		>
				  	</div>
				  	<div class="checkbox">
				    	<label>
				    		<input
				    			type="checkbox"
				    			name="remember"
				    			value="1"> Remember me
				    	</label>
				  	</div>
				  	<button
				  		type="submit"
				  		class="btn btn-primary">Submit</button>
				</div>
			</div>
		</form>


		@if (session()->get('error'))
			<div
				class="alert alert-danger"
				style="margin-top: 20px;">
			  <strong>Error!</strong> {{ session()->get('error') }}
			</div>
		@endif
	</div>


@endsection
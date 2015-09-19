<!DOCTYPE html>
<html>
<head>
<title>Page Not Found</title>
<meta name="layout" content="admin">
<g:if env="development">
	<asset:stylesheet src="errors.css" />
</g:if>
</head>
<body>

	<!-- row -->
	<div class="row">

		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

			<div class="row">
				<div class="col-sm-12">
					<div class="text-center error-box">
						<h1 class="error-text-2 bounceInDown animated">
							Error 404 <span class="particle particle--c"></span><span
								class="particle particle--a"></span><span
								class="particle particle--b"></span>
						</h1>
						<h2 class="font-xl">
							<strong><i
								class="fa fa-fw fa-warning fa-lg text-warning"></i> Page <u>Not</u>
								Found</strong>
						</h2>
						<br />
						<p class="lead">
							The page you requested could not be found, Its under
							construction..will be available soon. Please use your browsers <b>Back</b>
							button to navigate to the page you have previously come from
						</p>
						<%--
									<p class="font-md">
										<b>... That didn't work on you? Dang. May we suggest a search, then?</b>
									</p>
									<br>
									<div class="error-search well well-lg padding-10">
										<div class="input-group">
											<input class="form-control input-lg" type="text" placeholder="let's try this again" id="search-error">
											<span class="input-group-addon"><i class="fa fa-fw fa-lg fa-search"></i></span>
										</div>
									</div>
								--%>
					</div>
				</div>
			</div>
			<!-- end row -->
		</div>
</body>
</html>

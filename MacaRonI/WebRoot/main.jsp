<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>MIOS</title>
<link rel="icon" href="image/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<!-- script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script-->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!--script src="custom.js"></script-->
<link href="style/carousel.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="style/styles.css">
</head>

<!-- NAVBAR
================================================== -->
<body>
	<div class="navbar-wrapper">
		<div class="container">
			<nav class="navbar navbar-inverse navbar-fixed-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<!-- a class="navbar-brand" href="#">MIO<span class="greenfont">S</span></a-->
						<a class="navbar-brand" href="main.jsp"><span class="logo">MIO<span
								class="greenfont">S</span></span></a>

					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="home active"><a href="#">Home</a></li>
							<li class="database"><a href="database.jsp">Database</a></li>
							<li class="about"><a href="#about">About</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">More <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#contact">Contact</a></li>
									<li><a href="#">Resource</a></li>
								</ul></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#member">Our Team</a></li>
							<li><a href="http://www.osu.edu/">Resource</a></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</nav>

		</div>
	</div>
	<!-- Carousel================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide" src="image/home.jpg" alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>
							Medical Image Overlay <span class="greenfont">S</span>oftware
						</h1>
						<p>A new way of exploring our brain.</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide" src="image/database1.jpg"
					alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Fully Functional Database</h1>
						<p>It's amazing what a click can trigger.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Learn
								more</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide" src="image/hololen1.jpg" alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>3D Model</h1>
						<p>MRIpro Alpha &middot; Hololen phase I</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Browse
								gallery</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->
	<div class="main-search fullsize">
		<!-- START THE FEATURETTES -->
		<div class="container input-group">
			<input type="text" class="form-control" placeholder="Name | MRN...">
			<span class="input-group-btn">
				<button class="btn btn-default" type="button"><a href="team.jsp" target="_blank">
					<img src="image/search.png" /></a>
				</button>
			</span>
		</div>
		</div>
	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">
		<!-- START THE FEATURETTES -->
		<a name="about"></a>
		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					MIOS - <span class="text-muted">It'll blow your mind.</span>
				</h2>
				<p class="lead">MIOS, Medical Imaging Overlay Software, is a
					proposed augmented reality project to be implemented as a 3-D
					supplementary tool in the medical field to expand on prior 2-D
					knowledge.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					src="image/yo1.png" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 col-md-push-5">
				<h2 class="featurette-heading">
					A new way <span class="text-muted">to explore our brain.</span>
				</h2>
				<p class="lead">The intended purpose of MIOS is for personnel to
					be able to view a desired image (a patient's brain scan, injury,
					anatomy atlas, etc.) and overlay it 1:1 on the patient or to have
					it immediately available at that moment; additionally, its design
					can incorporate multi-user collaboration for the purpose of
					diagnosis and teaching while also presenting data instantly. Its
					use can be tailored to the classroom, the operating room, or the
					clinic.</p>
			</div>
			<div class="col-md-5 col-md-pull-7">
				<img class="featurette-image img-responsive center-block"
					src="image/heart.png" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">
		<div class="containermarketing">
			<a name="member"></a>
			<!-- Three columns of text below the carousel -->
			<div class="row">
				<div class="col-lg-4">
					<img class="img-circle" src="image/ryan.jpg"
						alt="Generic placeholder image" width="140" height="140">
					<h2>Ryan Tran</h2>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img class="img-circle" src="image/oli.jpg"
						alt="Generic placeholder image" width="140" height="140">
					<h2>Oli Mason</h2>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img class="img-circle" src="image/sean.jpg"
						alt="Generic placeholder image" width="140" height="140">
					<h2>Sean Sun</h2>
				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-4">
					<img class="img-circle" src="image/lynn.png"
						alt="Generic placeholder image" width="140" height="140">
					<h2>
						Lynn Li<a href="http://limanlan.com"><img
							style="padding-left:5px; margin-bottom:10px;" height="24"
							src="image/site2.png" /></a>
					</h2>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img class="img-circle" src="image/yongsheng.jpg"
						alt="Generic placeholder image" width="140" height="140">
					<h2>Yongsheng Zhang</h2>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img class="img-circle" src="image/nan.jpg"
						alt="Generic placeholder image" width="140" height="140">
					<h2>Nan Liang</h2>
				</div>
			</div>
		</div>

		<!-- /END THE FEATURETTES -->


		<!-- FOOTER -->
		<footer>
			<p class="pull-right">
				<a href="#">Back to top</a>
			</p>
			<p>
				&copy; MacaRonI Inc. &middot; <a href="#">Terms</a>
			</p>
		</footer>

		<!-- /.container -->
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>

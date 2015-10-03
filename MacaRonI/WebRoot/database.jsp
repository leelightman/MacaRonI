<%@include file="header.jsp"%>
<!-- NAVBAR
================================================== -->
<body>
	<%@include file="nav.jsp"%>
	

	<!-- Wrap the rest of the page in another container to center all the content. -->
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
	<div class="main-search container marketing">
		<!-- START THE FEATURETTES -->
		<div class="input-group">
			<input type="text" class="form-control" placeholder="Name | MRN...">
			<span class="input-group-btn">
				<button class="btn btn-default" type="button">
					<img src="image/search.png" />
				</button>
			</span>
		</div>
		<a name="about"></a>

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

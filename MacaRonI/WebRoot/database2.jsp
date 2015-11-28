<%@include file="header.jsp"%>
<!-- NAVBAR
================================================== -->
<script type="text/javascript">
	$(document).ready(function() {
		$(".tabs-menu a").click(function(e) {
			event.preventDefault();
			$(this).parent().addClass("current");
			$(this).parent().siblings().removeClass("current");
			var tab = $(this).attr("href");
			$(".tab-content").not(tab).css("display", "none");
			$(tab).fadeIn();
		});
	});

	(function() {
		$.getJSON("http://localhost:8080/MacaRonI/db/client.json", function(
				data) {
			$.each(data.Sheet1, function(key, val) {
				window.console.log(key);
				var items = [];

				$.each(val, function(itemkey, itemval) {
					var th = [];
					window.console.log(key);
					window.console.log(itemkey);
					th.push("<th><div>" + itemkey + "</div></th>");
					items.push("<td><div>" + itemval + "</div></td>");
				});

				$("<tr/>", {
					"class" : "my-new-list",
					html : items.join("")
				}).appendTo("#client-list");
			})

			;
		});
	})();

	$(document).ready(function() {
		(function($) {
			$('#filter').keyup(function() {
				var rex = new RegExp($(this).val(), 'i');
				$('.searchable tr').hide();
				$('.searchable tr').filter(function() {
					return rex.test($(this).text());
				}).show();

			});

		}(jQuery));

	});
	var table2_Props = {
		col_5 : "select",
		col_4 : "none",
		display_all_text : " [ Show all ] ",
		sort_select : true
	};
	var tf2 = setFilterGrid("allClient", table2_Props);
</script>

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
	<div class="container">
		<div>
			<div>
				<input id="filter" type="text" class="form-control searchinput"
					placeholder="Name | MRN" />
			</div>
		</div>
	</div>
	<div class="fullsize gray database">
		<div class="container gray">
			<table id="allClient" class="table">
				<thead>
					<th>First Name</th>
					<th>Middle</th>
					<th>Last Name</th>
					<th>Age</th>
					<th>Gender</th>
					<th>City</th>
					<th>State</th>
					<th>MRN</th>
				</thead>
				<tbody class="searchable" id="client-list">
					</th>
			</table>
		</div>
	</div>
	<!-- FOOTER -->
	<%@include file="footer.jsp"%>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>

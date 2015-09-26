<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>MIOS</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="http://tablefilter.free.fr/TableFilter/tablefilter_all_min.js"></script>
<link href="http://tablefilter.free.fr/TableFilter/filtergrid.css" rel="stylesheet" type="text/css" />

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
<link href="carousel.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
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
	 $.getJSON( "db/client.json", function( data ) {
	  $.each( data.Sheet1, function( key, val ) {
	  		  	window.console.log(key);
	  var items = [];
	  
	  $.each( val, function( itemkey, itemval ) {
	  	var th=[];
	  	window.console.log(key);
	  		  	window.console.log(itemkey);
	  	th.push( "<th><div>" + itemkey + "</div></th>" );
	    items.push( "<td><div>" + itemval + "</div></td>" );
	  });

	 $( "<tr/>", {
	    "class": "my-new-list",
	    html: items.join( "" )
	  }).appendTo( "#client-list" );
	})
	
	;});
})();

$(document).ready(function () {

    (function ($) {

        $('#filter').keyup(function () {

            var rex = new RegExp($(this).val(), 'i');
            $('.searchable tr').hide();
            $('.searchable tr').filter(function () {
                return rex.test($(this).text());
            }).show();

        });

    }(jQuery));

});
var table2_Props = {
    col_5: "select",
    col_4: "none",
    display_all_text: " [ Show all ] ",
    sort_select: true
};
var tf2 = setFilterGrid("allClient", table2_Props);

</script>

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
	<hr class="featurette-divider">
	<div class="container">
		<div>
			<div>
			<input id="filter" type="text" class="form-control searchinput" placeholder="Name | MRN" />
			</div>
		</div>
	</div>
	<div class="fullsize gray">
		<div class="container gray">
			<div><table id="allClient">
			<thead>
			<th>First Name	</th>
			<th>Middle	</th>
			<th>Last Name	</th>
			<th>Age	</th>
			<th>Gender	</th>
			<th>City	</th>
			<th>State	</th>
			</thead><tbody class="searchable" id="client-list"></th></table></div>
		</div>
	</div>
</body>
</html>

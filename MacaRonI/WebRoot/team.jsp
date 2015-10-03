<%@include file="header.jsp"%>
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
	 <%@include file="nav.jsp"%>
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

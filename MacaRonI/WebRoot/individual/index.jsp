<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>MIOS</title>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link href="http://tablefilter.free.fr/TableFilter/filtergrid.css"
	rel="stylesheet" type="text/css" />
<link rel="icon" href="http://localhost:8080/MacaRonI/image/favicon.ico">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Bootstrap Core CSS -->
<link
	href="../MacaRonI/bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="../MacaRonI/bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">

<!-- Timeline CSS -->
<link href="../MacaRonI/dist/css/timeline.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../MacaRonI/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="../MacaRonI/bower_components/morrisjs/morris.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="../MacaRonI/bower_components/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="http://localhost:8080/MacaRonI/style/carousel.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8080/MacaRonI/style/styles.css ">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>


<body style="background:#ddd">

	<div id="wrapper">
		<!-- Navigation -->
		<%@include file="../nav.jsp"%>
		<div id="page-wrapper">
			<s:iterator value="%{#request.list}" var="patient">
				<p>&nbsp</p>
				<p>&nbsp</p>
				<div class="row" style="margin-bottom:20px;border-bottom:1px solid #ddd;padding-bottom:10px;">
					<div class="col-lg-4" style="text-align:left;">
						<span><a style="color:#ccc;"
							href="show.action"><i class="fa fa-arrow-left fa-2x"></i></a></span>
					</div>
					<div class="col-lg-4" style="text-align:center;">
						<span style="font-size:35px;margin:10px;" class="h1"><s:property
								value="#patient.name" /></span>
					</div>
					<div class="col-lg-4" style="text-align:right;">
						<span><a
							style="background:transparent; color:#ccc;"
							href="delete.action?id=<s:property value='#patient.id'/>"><i
								class="fa fa-trash fa-2x"></i></a></span>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-3 col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-stethoscope fa-5x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class="huge">MRN</div>
									</div>
								</div>
							</div>
							<a href="#">
								<div class="panel-footer">
									<span class="pull-left"><s:property value="#patient.mrn" /></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="panel panel-green">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-heart fa-5x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class="huge">Age</div>
									</div>
								</div>
							</div>
							<a href="#">
								<div class="panel-footer">
									<span class="pull-left"><s:property value="#patient.age" /></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="panel panel-yellow">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-user fa-5x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class="huge">Gender</div>
									</div>
								</div>
							</div>
							<a href="#">
								<div class="panel-footer">
									<span class="pull-left"><s:property
											value="#patient.gender" /></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="panel panel-red">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-support fa-5x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class="huge">MRI</div>
										<div>
											<s:property value="#patient.ftype" />
										</div>
									</div>
								</div>
							</div>
							<!-- <a href="MRI_1.jsp" target="_blank">
							<div class="panel-footer">
								<span class="pull-left">View Details</span> <span
									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a> -->
							<a href="http://localhost:8080/MacaRonI/individual/MRI_1.jsp" target="_blank">
								<div class="panel-footer">
									<span class="pull-left"><a href="generateView.action?fpath=<s:property value='#patient.file'/>">View Details</a></span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</s:iterator>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-8">

					<!-- /.panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-clock-o fa-fw"></i> Medical History
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<ul class="timeline">
								<li>
									<div class="timeline-badge">
										<i class="fa fa-check"></i>
									</div>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">10-7-2015</h4>
											<p>
												<small class="text-muted"><i class="fa fa-user-md"></i>
													First Scan</small>
											</p>
										</div>
										<div class="timeline-body">
											<p>Test1</p>
										</div>
									</div>
								</li>
								<li class="timeline-inverted">
									<div class="timeline-badge warning">
										<i class="fa fa-credit-card"></i>
									</div>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">2-7-2015</h4>
											<p>
												<small class="text-muted"><i class="fa fa-user-md"></i>
													MRI Scan</small>
											</p>
										</div>
										<div class="timeline-body">
											<p>test2</p>
										</div>
									</div>
								</li>
								<li>
									<div class="timeline-badge info">
										<i class="fa fa-save"></i>
									</div>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">6-7-2014</h4>
											<p>
												<small class="text-muted"><i class="fa fa-user-md"></i>
													Alert II</small>
											</p>
										</div>
										<div class="timeline-body">
											<p>test3</p>
											<div class="btn-group">
												<ul class="dropdown-menu" role="menu">
													<li><a href="#">Action</a></li>
													<li><a href="#">Another action</a></li>
													<li><a href="#">Something else here</a></li>
													<li class="divider"></li>
													<li><a href="#">Separated link</a></li>
												</ul>
											</div>
										</div>
									</div>
								</li>
								<li class="timeline-inverted">
									<div class="timeline-badge success">
										<i class="fa fa-graduation-cap"></i>
									</div>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">1-7-2014</h4>
											<p>
												<small class="text-muted"><i class="fa fa-user-md"></i>
													Alert I</small>
											</p>
										</div>
										<div class="timeline-body">
											<p>test4</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-8 -->
				<div class="col-lg-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-bar-chart-o fa-fw"></i> Measurements Tracking
							<div class="pull-right">
								<div class="btn-group">
									<button type="button"
										class="btn btn-default btn-xs dropdown-toggle"
										data-toggle="dropdown">
										Actions <span class="caret"></span>
									</button>
									<ul class="dropdown-menu pull-right" role="menu">
										<li><a href="#">Action</a></li>
										<li><a href="#">Another action</a></li>
										<li><a href="#">Something else here</a></li>
										<li class="divider"></li>
										<li><a href="#">Separated link</a></li>
									</ul>
								</div>
							</div>
						</div>

						<!-- /.panel-heading -->
						<div class="panel-body">
							<div id="morris-area-chart"></div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-bell fa-fw"></i> Notifications Panel
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="list-group">
								<a href="#" class="list-group-item"> <i
									class="fa fa-envelope fa-fw"></i> Message <span
									class="pull-right text-muted small"><em>27 minutes
											ago</em> </span>
								</a> <a href="#" class="list-group-item"> <i
									class="fa fa-tasks fa-fw"></i> New Task <span
									class="pull-right text-muted small"><em>43 minutes
											ago</em> </span>
								</a> <a href="#" class="list-group-item"> <i
									class="fa fa-users fa-fw"></i> Meeting <span
									class="pull-right text-muted small"><em>11:30 AM</em> </span>
								</a> <a href="#" class="list-group-item"> <i
									class="fa fa-bolt fa-fw"></i> No Page <span
									class="pull-right text-muted small"><em>11:13 AM</em> </span>
								</a> <a href="#" class="list-group-item"> <i
									class="fa fa-warning fa-fw"></i> No Alert <span
									class="pull-right text-muted small"><em>10:57 AM</em> </span>
								</a>
							</div>
							<!-- /.list-group -->
							<a href="#" class="btn btn-default btn-block">View All Alerts</a>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-pie-chart fa-fw"></i> Pie Chart Example
						</div>
						<div class="panel-body">
							<div id="morris-donut-chart"></div>
							<a href="#" class="btn btn-default btn-block">View Details</a>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->

					<!-- /.panel .chat-panel -->
				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="../MacaRonI/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="../MacaRonI/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="../MacaRonI/bower_components/metisMenu/dist/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="../MacaRonI/bower_components/raphael/raphael-min.js"></script>
	<script src="../MacaRonI/bower_components/morrisjs/morris.min.js"></script>
	<script src="../MacaRonI/js/morris-data.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="../MacaRonI/dist/js/sb-admin-2.js"></script>

</body>

</html>

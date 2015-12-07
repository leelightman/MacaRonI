<%@ taglib uri="/struts-tags" prefix="s"%>
<%@include file="header.jsp"%>
<body>
	<%@include file="nav.jsp"%>
	<!-- Wrap the rest of the page in another container to center all the content. -->
	<%@include file="carousel.jsp"%>
	<div class="database container marketing">
		<div>
			<div class="align-left">
			<span style="font-size:20px;">Patient's Name or MRNumber: </span>
				<s:form action="findPatients.action" method="post"><s:textfield
						name="tst" />
					<span class="btn btn-primary"><i style="padding-left:10px;" class="fa fa-search"></i><s:submit value="Search" /></span>
				</s:form>
			</div>
			<p class="clear"></p>
		</div>
	</div>
	<!-- /END THE FEATURETTES -->
	<div class="fullsize gray database">
		<div class="container gray">
			<table id="dataTable" class="table">
				<tr>
					<th>ID</td>
					<th>MRN</td>
					<th>Patient Name</td>
					<th>Patient Age</td>
					<th>Gender</td>
				</tr>
				<s:iterator value="%{#request.list}" var="patient">
					<tr>
					    <td><s:property value="#patient.id" /></td>
						<td><s:property value="#patient.mrn" /></td>
						<td><a href="patientInfo.action?id=<s:property value='#patient.id'/>"><s:property value="#patient.name" /></a></td>
						<td><s:property value="#patient.age" /></td>
						<td><s:property value="#patient.gender" /></td>
					</tr>
				</s:iterator>
			</table>
			<p>
				<a href="addPatient.jsp"><i class="fa fa-plus-square fa-2x"></i></a>
			</p>
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

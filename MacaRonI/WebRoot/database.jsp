<%@ taglib uri="/struts-tags" prefix="s"%>
<%@include file="header.jsp"%>
<body>
	<%@include file="nav.jsp"%>
	<!-- Wrap the rest of the page in another container to center all the content. -->
	<%@include file="carousel.jsp"%>
	<div class="database container marketing">
		<div>
			<div class="align-left">
				<s:form action="findByName.action" method="post">
					<s:textfield name="name" placeholder="Patient's Name" />
					<a class="btn btn-lg btn-primary"><s:submit value="search" /></a>
				</s:form>
			</div>
			<div class="align-right">
				<s:form action="findByMRN.action" method="post">
					<s:textfield name="mrn" placeholder="MRN" />
					<a class="btn btn-lg btn-primary"><s:submit value="search" /></a>
				</s:form>
			</div>
			<p class="clear"></p>
		</div>
	</div>
	<!-- /END THE FEATURETTES -->
	<div class="fullsize gray database">
		<div class="container gray">
			<table id="allClient" class="table">
				<tr>
					<td align="center">MRN</td>
					<td align="center">Patient Name</td>
					<td align="center">Patient Age</td>
					<td align="center">Gender</td>
					<td align="center">File Type</td>
					<td align="center">File Path</td>
				</tr>
				<s:iterator value="%{#request.list}" var="patient">
					<tr>
						<td align="center"><s:property value="#patient.mrn" /></td>
						<td align="center"><s:property value="#patient.name" /></td>
						<td align="center"><s:property value="#patient.age" /></td>
						<td align="center"><s:property value="#patient.gender" /></td>
						<td align="center"><s:property value="#patient.ftype" /></td>
						<td align="center"><s:property value="#patient.file" /></td>
						<td align="center"><a
							href="delete.action?id=<s:property value='#patient.id'/>">delete
								patient</a></td>
					</tr>
				</s:iterator>
			</table>
			<p><a href="addPatient.jsp"><i class="fa fa-plus-square fa-2x"></i></a></p>
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

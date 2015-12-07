<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@include file="header.jsp"%>
<body>
	<%@include file="nav.jsp"%>

	<div class="fullsize gray database">
		<p>&nbsp</p>
		<div class="container gray">
			<div class="row"
				style="margin-bottom:20px;border-bottom:1px solid #ddd;padding-bottom:10px;">
				<div class="col-lg-4" style="text-align:left;">
					<span><a style="color:#5a5a5a;" href="show.action"><i
							class="fa fa-arrow-left fa-2x"></i></a></span>
				</div>
				<div class="col-lg-4" style="text-align:center;">
					<span style="color:#5a5a5a;font-size:35px;margin:10px;" class="h1">Search
						Result</span>
				</div>
			</div>
			<table id="dataTable" class="table" border="1" width="50%"
				align="center">
				<tr>
					<th></th>
					<th>ID</th>
					<th>MRN#</th>
					<th>Name</th>
					<th>Age</th>
					<th>Gender</th>
				</tr>
				<s:iterator value="%{#request.list}" var="patient">
					<tr>
						<td><a
							href="patientInfo.action?id=<s:property value='#patient.id'/>"><i
								class="fa fa-user"></i></a></td>
						<td><s:property value="#patient.id" /></td>
						<td><s:property value="#patient.mrn" /></td>
						<td><a
							href="patientInfo.action?id=<s:property value='#patient.id'/>"><s:property
									value="#patient.name" /></a></td>
						<td><s:property value="#patient.age" /></td>
						<td><s:property value="#patient.gender" /></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>

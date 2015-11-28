<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@include file="header.jsp"%>
<body>
	<%@include file="nav.jsp"%>

	<div class="fullsize gray database">

		<div class="container gray">
			<table border="1" width="50%" align="center">
				<tr bgcolor="#cccc00">
					<td align="center">ID</td>
					<td align="center">MRNumber</td>
					<td align="center">PatientName</td>
					<td align="center">PatientAge</td>
					<td align="center">Gender</td>
					<td align="center">FileType</td>
					<td align="center">FilePath</td>
				</tr>
				<s:iterator value="%{#request.list}" var="patient">
					<tr>
						<td align="center"><s:property value="#patient.id" /></td>
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
		</div>
	</div>
</body>
</html>

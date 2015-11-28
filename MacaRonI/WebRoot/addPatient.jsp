<%@ taglib uri="/struts-tags" prefix="s"%>

<%@include file="header.jsp"%>
<body>
	<%@include file="nav.jsp"%>
	<div class="add-patient fullsize gray database">
		<div class="container gray">
			<s:form action="add.action" method="post">
				<fieldset class="span4">
					<label>Name:</label>
					<s:textfield name="name" label="Patient Name:" />
					<label>MRN:</label>
					<s:textfield name="mrn" label="MRNumber:" />
				</fieldset>
				<fieldset class="span4">
					<label>Gender:</label>
					
					<s:select label="Patient Gender:" name="gender"
						headerValue="Select" list="#{'Male':'Male', 'Female':'Female'}"
						required="true" />
					<label>Age:</label>
					<s:textfield name="age" label="Patient Age:" />
				</fieldset>
				<fieldset class="span4">
					<label>File Type:</label>
					<s:textfield name="ftype" label="File Type:" />
					<label>File Path:</label>
					<s:textfield name="file" label="File Path:" />
				</fieldset>
				<span class="button"><s:submit value="Save" /></span>
			</s:form>
		</div>
	</div>
	<%@include file="footer.jsp"%>

</body>
</html>

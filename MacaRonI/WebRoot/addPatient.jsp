<%@ taglib uri="/struts-tags" prefix="s"%>

<%@include file="header.jsp"%>
<body>
	<%@include file="nav.jsp"%>
	<div class="add-patient fullsize gray database">
		<div class="container gray">
		<h2>Add New Patient</h2>
			<s:form action="add.action" method="post">
				<fieldset class="span4">
					<label>Name:</label>
					<s:textfield name="name" label="Patient Name:" /><hr>
					<label>MRN:</label>
					<s:textfield name="mrn" label="MRNumber:" /><hr>
				</fieldset>
				<fieldset class="span4">
					<label>Gender:</label>

					<s:select label="Patient Gender:" name="gender"
						headerValue="Select" list="#{'Male':'Male', 'Female':'Female'}"
						required="true" /><hr>
					<label>Age:</label>
					<s:textfield name="age" label="Patient Age:" /><hr>
				</fieldset>
				<fieldset class="span4">
					<label>File Type:</label>
					<s:select label="File Type:" name="ftype" headerValue="Select"
						list="#{'Nifti':'Nifti', 'Dicom':'Dicom', 'TIFF':'TIFF'}"
						required="true" /><hr>
					<label>File Path:</label>
					<s:textfield name="file" label="File Path:" /><hr>
				</fieldset>
				<i class="fa fa-floppy-o"><s:submit value="Save" /></i>
			</s:form>
		</div>
	</div>
	<%@include file="footer.jsp"%>

</body>
</html>

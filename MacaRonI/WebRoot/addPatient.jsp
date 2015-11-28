<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'addPatient.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>  
   <s:form action="add.action" method="post">
    Patient Name: <s:textfield name="name" label="Patient Name:" />
    MRNumber:<s:textfield name="mrn" label="MRNumber:" />
     Patient Gender:<s:textfield name="gender" label="Patient Gender:" />
     File Type:<s:textfield name="ftype" label="File Type:" />
     File Path:<s:textfield name="file" label="File Path:" />
     Patient Age:<s:textfield name="age" label="Patient Age:" />
    <s:submit value="Save" />
    </s:form>
  </body>
</html>

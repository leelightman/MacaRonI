<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'searchResult.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
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
    	<td align="center"><a href="delete.action?id=<s:property value='#patient.id'/>">delete patient</a></td>
    	</tr>
    	</s:iterator>
    </table>
  </body>
</html>

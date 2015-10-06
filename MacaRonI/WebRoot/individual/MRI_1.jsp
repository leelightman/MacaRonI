<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <%@include file="../header.jsp" %>
  
  <body>
    <h1>This is MRI image reading page </h1>
    <APPLET CODE="src.HelloWorld.class" WIDTH=150 HEIGHT=150>
	</APPLET>
  </body>
</html>

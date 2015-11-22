<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@include file="../header.jsp"%>


<body>
	
	<h1>This is MRI image reading page</h1>
	<p>
		<applet archive="../applet/AppletTest.jar" code="appExample.class">
		</applet>
	</p>
	<!-- p>
		<applet codebase="." code="com.helloapp.class" archive="../applet/Hello.jar"
			width=750 height=550 security=all-permissions> </applet>
	</p-->
</body>
</html>

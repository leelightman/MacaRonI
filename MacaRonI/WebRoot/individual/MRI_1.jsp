<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@include file="../header.jsp"%>


<body>
	<%@include file="../nav.jsp"%>
	<h1>This is MRI image reading page</h1>
	<p>
		<applet
			archive="../applet/ij-embed.jar" code="ij.ImageJApplet.class" codebase=".">
			<param value="../image/1.jpg" name="url1"></param>
			<param value="../image/2.jpg" name="url1"></param>
		</applet>
	</p>
	<!-- p>
		<applet codebase="." code="com.helloapp.class" archive="../applet/Hello.jar"
			width=750 height=550 security=all-permissions> </applet>
	</p-->
</body>
</html>

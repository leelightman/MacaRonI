<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>MIOS</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  
  <body>
  <section class="header">
  <article>
		<a href="index.html"><span class="logo">MIO<span class="redfont">S</span></span></a>
	
		<ul class="menubar">
			<li><a href="log-in.html">Log In</a></li>				
			<li><a href="http://www.osu.edu/">Resource</a></li>
		</ul>
	</article>
	</section>
	<p class="clear"></p>
   <section class="bg">
  	<article>
  		<div class="left">
  			<img src="image/1.jpg" />
  		</div>
  		<div class="right">
  			<img src="image/2.jpg" />
  		</div>
  		<p class="clear"></p>
  	</article>
  </section> 
  <section class="bg">
  	<article>
  		<div class="left">
  			<img src="image/3.jpg" />
  		</div>
  		<div class="right">
  			<img src="image/4.jpg" />
  		</div>
  		<p class="clear"></p>
  	</article>
  </section>
    
  </body>
</html>

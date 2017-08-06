<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Checkerboard</title>
<style type="text/css">
.redbox {
	height: 50px;
	width: 50px;
	background-color:red;
	display:inline-block;
}
.bluebox {
	height:50px;
	width:50px;
	background-color:blue;
	display:inline-block;
}
</style>
</head>

<body>

	<% int w = 1; %>
	<% int h = 1; %>
	
	<% if (request.getParameter("width") != null){ 
		 w = Integer.parseInt(request.getParameter("width"));
	}else{
		w = 1;
	}
	%>
	
	<% if (request.getParameter("height") != null){ 
		 h = Integer.parseInt(request.getParameter("height"));
	} else {
		h = 1;
	}
	%>
	
	<h1>Checkerboard: <%= w %>w X <%= h %>h</h1>

	
	<% for (int i = 0; i < h; i++){ %>
		<% if (i % 2 != 0 ){ %>
			<% for (int j = 0; j < w; j++){ %>
				<% if (j % 2 == 0){ %>
					<div class = "redbox"></div>
				<% } else{ %>
					<div class = "bluebox"></div>
				<% } %>
			<% } %>
		<%}else{ %>
			<% for (int j = 0; j < w; j++){ %>
				<% if (j % 2 == 0){ %>
					<div class = "bluebox"></div>
				<% } else{ %>
					<div class = "redbox"></div>
				<% } %>
			<% } %>
		<%} %>
		<br>
	<% } %>
	
</body>
</html>
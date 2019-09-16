<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"
>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"
></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"
></script>
<link rel="stylesheet" href="style.css">
<title>PRJ321x_03</title>
</head>
<body>

	 	<div class="wrapper">
	    <div class="container">
	    	<%@ include file="header.jsp"%>
	    	 <%request.setCharacterEncoding("UTF-8");%>
	    	<div class="content">
	    		<div class="row">
	 			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> <h5 style="color:red;">THÔNG TIN ĐĂNG KÝ HỌC VIÊN</h5></div>
	 		</div>
	 		<div class="row">
	 			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> Name: <%= request.getParameter("name")%></div>
	 		</div>
	 		<div class="row">
	 			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> First Name: <%= request.getParameter("firtname")%></div>
	 		</div>
	 		<div class="row">
	 			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> Phone: <%= request.getParameter("phone")%></div>
	 		</div>
	 		<div class="row">
	 			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> Email: <%= request.getParameter("email")%></div>
	 		</div>
	 		<div class="row">
	 			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	 				<span style="color:red">MÔN HỌC ĐĂNG KÝ</span>
	 			</div>
	 		</div>
	 		<div class="row">
	 			
	 			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	 					<% String[] subject = request.getParameterValues("checkboxSubject");
	 						for(int i=0;i < subject.length;i++){
	 							%><div><%=subject[i]%></div><%
	 						}
	 					
	 					%>
	 			</div>
	 		</div>
	    	</div>
	    	<%@ include file="footer.jsp"%>
	    </div>
		</div>	
</body>
</html>
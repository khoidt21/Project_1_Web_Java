<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.fibonacci.Cal"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css">
<title>PRJ321x_02</title>
</head>
<body>

		<div class="wrapper">
	    <div class="container">
	    	<%@ include file="header.jsp"%>
	    	<div class="content">
	    		<div style="margin-top:20px"><span style="color:red;font-weight:bold;text-center;font-size:15px;">Dãy số Fibonacci</span></div>
				<div>
					<% 
						int n= 10946; int t1=0;int t2=1;
						while(t1 <=n){
							%><span><%=t1 + " " %></span><%
							int sum = t1+t2;
							t1 = t2;
							t2 = sum;
						}
					%>
				</div>
	    	</div>
	    	<%@ include file="footer.jsp"%>
	    </div>
		</div>	

    
</body>
<style>
.navbar{
	margin-bottom: 0px !important;
}
</style>
</html>
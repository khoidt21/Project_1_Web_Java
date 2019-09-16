<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css">
<title>PRJ321x_01</title>
</head>
<body>

	<div class="wrapper">
	    <div class="container">
	    	<%@ include file="header.jsp"%>
	    	<div class="row">
	    		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	    			<div class="content" style="margin-top:20px">
				   <%for(int i=1;i<=500;i++)
			   		{
			 	       if(i%2!=0 && i%5==0){  
			 		   %>
			 		   		<span style='color:red;font-weight:bold'><%=i +" "%></span><% 
			 	   	   }
			 	   	   else if(i%2!=0){
			 		   		%><span><%=i + " "%></span><% 
			 	       }
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
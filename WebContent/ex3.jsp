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
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="content" style="margin-top: 20px">
						<form id="form1" name="form1" action="process.jsp" method="POST">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<h6 class="title">REGISTER SUBJECTS</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text" id="">Name <span
												style="color: red"
											>(*)</span>
										</div>
										<input type="text" class="form-control" id="name" name="name"
											value=""
										> <span class="valName" style="color: red; display: none;">Name
											is not validation</span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text" id="">First Name <span
												style="color: red"
											>(*)</span>
										</div>
										<input type="text" class="form-control" id="firtname"
											name="firtname" value=""
										>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text" id="">Phone <span
												style="color: red"
											>(*)</span>
										</div>
										<input type="text" class="form-control" id="phone"
											name="phone" value=""
										>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text" id="">Email <span
												style="color: red"
											>(*)</span>
										</div>
										<input type="text" class="form-control" id="email"
											name="email" value=""
										>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<div id="validcheckbox"></div>
									<div class="checkbox">
										<label><input type="checkbox" name="checkboxSubject"
											value="Java"
										>Java</label>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="checkboxSubject"
											value="Android"
										>Android</label>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" name="checkboxSubject"
											value="C"
										>C</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<input type="submit" class="btn btn-primary" value="Submit">
									<button type="reset" class="btn btn-danger">Clear</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<%@ include file="footer.jsp"%>
		</div>
	</div>
</body>
<script>
	$(document)
			.ready(
					function() {

						$('#form1')
								.submit(
										function(e) {

											var name = $('#name').val();
											var firtname = $('#firtname').val();
											var email = $('#email').val();
											var phone = $('#phone').val();
											var valid = true;

											$(".error").remove();

											if (name.length < 1) {
												$('#name')
														.after(
																'<span class="error" style="color:red">This field is required</span>');
												valid = false;
											}
											if (firtname.length < 1) {
												$('#firtname')
														.after(
																'<span class="error" style="color:red">This field is required</span>');
												valid = false;
											}
											if (email.length < 1) {
												$('#email')
														.after(
																'<span class="error" style="color:red">This field is required</span>');
												valid = false;
											} else {
												var regEx = /^\b[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i;
												var validEmail = regEx
														.test(email);
												if (!validEmail) {
													$('#email')
															.after(
																	'<span class="error" style="color:red">Enter a valid email</span>');
													valid = false;
												}
											}
											if (phone.length < 1) {
												$('#phone')
														.after(
																'<span class="error" style="color:red">This field is required</span>');
												valid = false;
											} else {
												var regEx = /^\d{10}$/;
												var validPhone = regEx
														.test(phone);
												if (!validPhone) {
													$('#phone')
															.after(
																	'<span class="error" style="color:red">Enter a valid phone.Min length of digits should be 10</span>');
													valid = false;
												}
											}
											if ($('input[type=checkbox]:checked').length == 0) {
												$('#validcheckbox')
														.after(
																'<span class="error" style="color:red">Enter a valid subjects</span>');
												valid = false;
											}
											return valid;
										});

					});
</script>
</html>
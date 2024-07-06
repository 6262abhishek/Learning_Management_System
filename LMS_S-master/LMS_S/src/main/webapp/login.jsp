<%
       session.invalidate();
	   response.setHeader("Cache-Control","no-cache,");
	   response.setHeader("Cache-Control","no-store, must-revalidate");
	   response.setHeader("Pragma","no-cache");
	   response.setDateHeader ("Expires", 0);
	   
	  

%>
<!DOCTYPE html>
<html lang="en">
<head>
<script>
history.forward();
</script>

<title>Sign in Form by Nishant</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/signin-image.jpg" alt="sing up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Create an
							account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign in</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Your Name" required="required"/>
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" required="required"/>
							</div>
							<div class="form-group">
								<a href="forgotPassword.jsp">Forgot Password</a>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "failed"){
		swal("Oops","Wrong Username or Password","error");
	}
	else if(status == "invalidEmail"){
		swal("Oops","Please Enter Username","error");
	}
	else if(status == "invalidPassword"){
		swal("Oops","Please Enter Password","error");
	}
	else if(status == "resetSuccess"){
		swal("Yeah","Password Reset Successfully","success");
	}
	else if(status == "resstFailed"){
		swal("Oops","Password Reset Failed","error");
	}
	</script>
</body>

</html>
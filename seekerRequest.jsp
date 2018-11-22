<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Organ</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style/w3.css">
<link rel="stylesheet" href="style/raleway.css">
<link rel="stylesheet" href="style/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
}
</style>
<body class="w3-light-grey">

	<!-- Top container -->
	<div class="w3-container  w3-top w3-black w3-large w3-padding"
		style="z-index: 4">
		<button class="w3-btn w3-hide-large w3-padding-0 w3-hover-text-grey"
			onclick="w3_open();">
			<i class="fa fa-bars"></i>  Menu
		</button>
		<span class="w3-right">Organ Donation Portal</span>
	</div>

	<!-- Sidenav/menu -->
	<nav class="w3-sidenav w3-collapse w3-white w3-animate-left"
		style="z-index: 3; width: 300px;" id="mySidenav">
		<br>


		<hr>
		<div class="w3-container">
			<h5>Dashboard</h5>
		</div>
		<a href="#"
			class="w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black"
			onclick="w3_close()" title="close menu"><i
			class="fa fa-remove fa-fw"></i> Close Menu</a> <a href="index.jsp"
			class="w3-padding w3-blue"><i class="fa fa-users fa-fw"></i> 
			Home</a> <a href="#" class="w3-padding"><i class="fa fa-eye fa-fw"></i> Get
			Involved</a> <a href="#" class="w3-padding"><i
			class="fa fa-users fa-fw"></i>  About us</a> <a href="#"
			class="w3-padding"><i class="fa fa-bullseye fa-fw"></i> Impact</a> <a
			href="#" class="w3-padding"><i class="fa fa-diamond fa-fw"></i> 
			Articles</a> <a href="#" class="w3-padding"><i
			class="fa fa-bell fa-fw"></i> News & Events</a> <a href="#"
			class="w3-padding"><i class="fa fa-bank fa-fw"></i> General</a> <a
			href="#" class="w3-padding"><i class="fa fa-history fa-fw"></i>
			History</a> <a href="#" class="w3-padding"><i class="fa fa-cog fa-fw"></i>
			Settings</a><br> <br>
	</nav>


	<!-- Overlay effect when opening sidenav on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity"
		onclick="w3_close()" style="cursor: pointer" title="close side menu"
		id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px;">
		<!-- Team Section -->
		<br></br> <br></br>

		<div class="w3-container w3-section">
			<header class="w3-container w3-blue">
				<p style="text-align: center; font-size: 2em; margin: 10px;">Enter
					your Details</p>
			</header>
			<!-- Contact Section -->
			<div class="w3-padding-64 w3-content w3-text-grey" id="contact">

				<form action="SeekerRequestServlet" method="get">
					<p>
						<input class="w3-input w3-padding-16" type="text"
							placeholder="Organ name" required name="organ">
					</p>
					<p>
						<input class="w3-input w3-padding-16" type="number"
							placeholder="Age" required name="age">
					</p>
					<p>
						<select class="w3-select" name="gender">
							<option value="" disabled selected>Gender</option>
							<option value="male">Male</option>
							<option value="female">Female</option>
						</select>
					</p>

					<p>
						<textarea name="report" class="w3-input w3-padding-16"
							placeholder="enter your medial reports" rows="4" cols="50">

</textarea>

					</p>
					<p>
						<select class="w3-select" name="medical">
							<option value="" disabled selected>Select your Medical Assistant</option>
							<option value="John">Dr.John</option>
							<option value="vimala">Dr.vimala</option>
							<option value="philip">Dr.philip</option>
						</select>
					</p>
					
					<p>

						<button class="w3-btn w3-blue w3-padding-large" type="submit">
							<i class="fa fa-paper-plane"></i>Send Request
						</button>
					</p>
				</form>
				<!-- End Contact Section -->
			</div>
		</div>
		<hr>

		<div class="w3-container w3-dark-grey w3-padding-32">
			<div class="w3-row">
				<div class="w3-container w3-third">
					<h5 class="w3-bottombar w3-border-green">
						<a href="#">About us</a>
					</h5>

				</div>
				<div class="w3-container w3-third">
					<h5 class="w3-bottombar w3-border-red">
						<a href="#">Terms</a>
					</h5>

				</div>
				<div class="w3-container w3-third">
					<h5 class="w3-bottombar w3-border-orange">
						<a href="#">Privacy</a>
					</h5>

				</div>
			</div>
		</div>



		<!-- Footer -->


		<!-- End page content -->
	</div>
	<script src="js/jquery.min.js"></script>
	<script>
		// Get the Sidenav
		var mySidenav = document.getElementById("mySidenav");

		// Get the DIV with overlay effect
		var overlayBg = document.getElementById("myOverlay");

		// Toggle between showing and hiding the sidenav, and add overlay effect
		function w3_open() {
			if (mySidenav.style.display === 'block') {
				mySidenav.style.display = 'none';
				overlayBg.style.display = "none";
			} else {
				mySidenav.style.display = 'block';
				overlayBg.style.display = "block";
			}
		}

		// Close the sidenav with the close button
		function w3_close() {
			mySidenav.style.display = "none";
			overlayBg.style.display = "none";
		}

		$(document).ready(function() {

			
		});
	</script>

</body>
</html>

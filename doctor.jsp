<%@page import="com.mynute.uit.organ.OrganRegisterBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<title>organ</title>
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
		<button class="w3-btn w3-hide-large  w3-padding-0 w3-hover-text-grey"
			onclick="w3_open();">
			<i class="fa fa-bars"></i> Menu
		</button>
		<span class="w3-right">Organ Donation Portal</span>
	</div>

	<!-- Sidenav/menu -->
	<nav class="w3-sidenav w3-collapse w3-white w3-animate-left"
		style="z-index: 3; width: 300px;" id="mySidenav">
		<br>
		<%
		OrganRegisterBean bean = (OrganRegisterBean) session.getAttribute("user");
			if (session.getAttribute("user") == null) {
		%>
		<div class="w3-container w3-row">

			<div class="w3-black  w3-hover-opacity-off w3-padding w3-round-large">
				<h1 class="w3-xlarge">Welcome</h1>
				<hr class="w3-opacity">
				<p>Foundation - Member Login: free of charge</p>
				<p>
					<a href="login.jsp" class="w3-btn-block w3-green w3-round">
						Login <i class="fa fa-windows"></i>

					</a>
				</p>
				<p>
					<a href="register.jsp" class="w3-btn-block w3-green w3-round">
						Register <i class="fa fa-windows"></i>
					</a>
				</p>
			</div>

		</div>
		<%
			} else {
		%>
		<div class="w3-container w3-row">
			<div class="w3-col s4">
				<img src="img/avatar2.png" class="w3-circle w3-margin-right"
					style="width: 46px">
			</div>
			<div class="w3-col s8">
				<span>Welcome, <strong> <%=bean.getName()%></strong></span><br>
				<a href="#"
					class="w3-hover-none w3-hover-text-red w3-show-inline-block"><i
					class="fa fa-envelope"></i></a> <a href="#"
					class="w3-hover-none w3-hover-text-green w3-show-inline-block"><i
					class="fa fa-user"></i></a> <a href="logout.jsp"
					class="w3-hover-none w3-hover-text-blue w3-show-inline-block"><i
					class="fa fa-power-off" aria-hidden="true"></i></a>
			</div>
		</div>
		<%
			}
		%>
		<hr>
		<div class="w3-container">
			<h5>Dashboard</h5>
		</div>
		<a href="#"
			class="w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black"
			onclick="w3_close()" title="close menu"><i
			class="fa fa-remove fa-fw"></i> Close Menu</a> <a href="#"
			class="w3-padding w3-blue"><i class="fa fa-users fa-fw"></i> 
			Overview</a> <a href="#" class="w3-padding"><i
			class="fa fa-eye fa-fw"></i> Get Involved</a> <a href="#"
			class="w3-padding"><i class="fa fa-users fa-fw"></i> About us</a> <a
			href="#" class="w3-padding"><i class="fa fa-bullseye fa-fw"></i>
			Impact</a> <a href="#" class="w3-padding"><i
			class="fa fa-diamond fa-fw"></i> Articles</a> <a href="#"
			class="w3-padding"><i class="fa fa-bell fa-fw"></i> News & Events</a>
		<a href="#" class="w3-padding"><i class="fa fa-bank fa-fw"></i>
			General</a> <a href="#" class="w3-padding"><i
			class="fa fa-history fa-fw"></i> History</a> <a href="#"
			class="w3-padding"><i class="fa fa-cog fa-fw"></i> Settings</a><br>
		<br>
	</nav>


	<!-- Overlay effect when opening sidenav on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity"
		onclick="w3_close()" style="cursor: pointer" title="close side menu"
		id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px; margin-top: 43px;">

		<!-- The Tour Section -->
		<div class="w3-white" id="tour">
			<div class="w3-container w3-content w3-padding"
				style="max-width: 800px">
				<h2 class="w3-wide w3-center">New Seekers</h2>
				<p class="w3-opacity w3-center">
					<i>Invite to confirmation!</i>
				</p>
				<br>


				<div class="w3-row-padding w3-black w3-padding-32"
					style="margin: 0 -16px">
					<div class="w3-third w3-margin-bottom">
						<img src="img/avatar.png" alt="New York" style="width: 100%"
							class="w3-hover-opacity">
						<div class="w3-container w3-white">
							<p>
								<b>Abdul Kalam</b>
							</p>
							<p class="w3-opacity">tel: +91 985645782</p>
							<p class="w3-opacity">Mail : Kalam@gmail.com</p>

							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Invite</button>
							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Details</button>
						</div>
					</div>
					<div class="w3-third w3-margin-bottom">
						<img src="img/avatar.png" alt="New York" style="width: 100%"
							class="w3-hover-opacity">
						<div class="w3-container w3-white">
							<p>
								<b>Sachin tendulkar</b>
							</p>
							<p class="w3-opacity">tel: +91 985645782</p>
							<p class="w3-opacity">Mail : Kalam@gmail.com</p>

							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Invite</button>
							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Details</button>
						</div>
					</div>
					<div class="w3-third w3-margin-bottom">
						<img src="img/avatar.png" alt="New York" style="width: 100%"
							class="w3-hover-opacity">
						<div class="w3-container w3-white">
							<p>
								<b>Abhinav Bhindra</b>
							</p>
							<p class="w3-opacity">tel: +91 985645782</p>
							<p class="w3-opacity">Mail : Kalam@gmail.com</p>

							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Invite</button>
							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Details</button>
						</div>
					</div>
					<div class="w3-third w3-margin-bottom">
						<img src="img/avatar.png" alt="New York" style="width: 100%"
							class="w3-hover-opacity">
						<div class="w3-container w3-white">
							<p>
								<b>P T Usha</b>
							</p>
							<p class="w3-opacity">tel: +91 985645782</p>
							<p class="w3-opacity">Mail : Kalam@gmail.com</p>

							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Invite</button>
							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Details</button>
						</div>
					</div>
					<div class="w3-third w3-margin-bottom">
						<img src="img/avatar.png" alt="New York" style="width: 100%"
							class="w3-hover-opacity">
						<div class="w3-container w3-white">
							<p>
								<b>M D Vasudevan</b>
							</p>
							<p class="w3-opacity">tel: +91 985645782</p>
							<p class="w3-opacity">Mail : Kalam@gmail.com</p>

							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Invite</button>
							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Details</button>
						</div>
					</div>
					<div class="w3-third w3-margin-bottom">
						<img src="img/avatar.png" alt="New York" style="width: 100%"
							class="w3-hover-opacity">
						<div class="w3-container w3-white">
							<p>
								<b>kalpana chaula</b>
							</p>
							<p class="w3-opacity">tel: +91 985645782</p>
							<p class="w3-opacity">Mail : Kalam@gmail.com</p>

							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Invite</button>
							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Details</button>
						</div>
					</div>
					<div class="w3-third w3-margin-bottom">
						<img src="img/avatar.png" alt="New York" style="width: 100%"
							class="w3-hover-opacity">
						<div class="w3-container w3-white">
							<p>
								<b>Sarojini naidu</b>
							</p>
							<p class="w3-opacity">tel: +91 985645782</p>
							<p class="w3-opacity">Mail : Kalam@gmail.com</p>

							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Invite</button>
							<button class="w3-btn w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Details</button>
						</div>
					</div>
					<div id="ticketModal" class="w3-modal">
						<div class="w3-modal-content w3-animate-top w3-card-8">
							<header class="w3-container w3-blue w3-center w3-padding-32">
								<span
									onclick="document.getElementById('ticketModal').style.display='none'"
									class="w3-closebtn w3-padding-xlarge w3-xxlarge w3-display-topright">×</span>
								<h2 class="w3-wide">
									<i class="fa fa-suitcase w3-margin-right"></i>Tickets
								</h2>
							</header>
							<div class="w3-container">
								<p>
									<label class="w3-text-gray"><i class="fa fa-shopping-cart"></i> Tickets, $15
										per person</label>
								</p>
								<input class="w3-input w3-border" type="text"
									placeholder="How many?">
								<p>
									<label class="w3-text-gray"><i class="fa fa-user"></i> Send To</label>
								</p>
								<input class="w3-input w3-border" type="text"
									placeholder="Enter email">
								<button
									class="w3-btn-block w3-blue w3-padding-12 w3-section w3-right">
									PAY <i class="fa fa-check"></i>
								</button>
								<button class="w3-btn w3-red w3-section"
									onclick="document.getElementById('ticketModal').style.display='none'">
									Close <i class="fa fa-remove"></i>
								</button>
								<p class="w3-right">
									Need <a href="#" class="w3-text-blue">help?</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>


		<!-- <div class="w3-container">
			<h5>General Stats</h5>
			<p>New Visitors</p>
			<div class="w3-progress-container w3-grey">
				<div id="myBar" class="w3-progressbar w3-green" style="width: 25%">
					<div class="w3-center w3-text-white">+25%</div>
				</div>
			</div>

			<p>New Users</p>
			<div class="w3-progress-container w3-grey">
				<div id="myBar" class="w3-progressbar w3-orange" style="width: 50%">
					<div class="w3-center w3-text-white">50%</div>
				</div>
			</div>

			<p>Bounce Rate</p>
			<div class="w3-progress-container w3-grey">
				<div id="myBar" class="w3-progressbar w3-red" style="width: 75%">
					<div class="w3-center w3-text-white">75%</div>
				</div>
			</div>
		</div>
		<hr>

		<div class="w3-container">
			<h5>Countries</h5>
			<table
				class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
				<tr>
					<td>United States</td>
					<td>65%</td>
				</tr>
				<tr>
					<td>UK</td>
					<td>15.7%</td>
				</tr>
				<tr>
					<td>Russia</td>
					<td>5.6%</td>
				</tr>
				<tr>
					<td>Spain</td>
					<td>2.1%</td>
				</tr>
				<tr>
					<td>India</td>
					<td>1.9%</td>
				</tr>
				<tr>
					<td>France</td>
					<td>1.5%</td>
				</tr>
			</table>
			<br>
			<button class="w3-btn">
				More Countries  <i class="fa fa-arrow-right"></i>
			</button>
		</div>
		<hr>
		<div class="w3-container">
			<h5>Recent Users</h5>
			<ul class="w3-ul w3-card-4 w3-white">
				<li class="w3-padding-16"><span
					onclick="this.parentElement.style.display='none'"
					class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> <img
					src="img/avatar2.png" class="w3-left w3-circle w3-margin-right"
					style="width: 35px"> <span class="w3-xlarge">Mike</span><br>
				</li>
				<li class="w3-padding-16"><span
					onclick="this.parentElement.style.display='none'"
					class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> <img
					src="img/avatar5.png" class="w3-left w3-circle w3-margin-right"
					style="width: 35px"> <span class="w3-xlarge">Jill</span><br>
				</li>
				<li class="w3-padding-16"><span
					onclick="this.parentElement.style.display='none'"
					class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> <img
					src="img/avatar6.png" class="w3-left w3-circle w3-margin-right"
					style="width: 35px"> <span class="w3-xlarge">Jane</span><br>
				</li>
			</ul>
		</div>	-->
		<hr>

		<div class="w3-container">
			<h5>Recent Comments</h5>
			<div class="w3-row">
				<div class="w3-col m2 text-center">
					<img class="w3-circle" src="img/avatar3.png"
						style="width: 96px; height: 96px">
				</div>
				<div class="w3-col m10 w3-container">
					<h4>
						John <span class="w3-opacity w3-medium">Sep 29, 2014, 9:12
							PM</span>
					</h4>
					<p>Keep up the GREAT work! I am cheering for you!! Lorem ipsum
						dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua.</p>
					<br>
				</div>
			</div>

			<div class="w3-row">
				<div class="w3-col m2 text-center">
					<img class="w3-circle" src="img/avatar1.png"
						style="width: 96px; height: 96px">
				</div>
				<div class="w3-col m10 w3-container">
					<h4>
						Bo <span class="w3-opacity w3-medium">Sep 28, 2014, 10:15
							PM</span>
					</h4>
					<p>Sed do eiusmod tempor incididunt ut labore et dolore magna
						aliqua.</p>
					<br>
				</div>
			</div>
		</div>
		<!--
		<br>
		<div class="w3-container w3-dark-grey w3-padding-32">
			<div class="w3-row">
				<div class="w3-container w3-third">
					<h5 class="w3-bottombar w3-border-green">Demographic</h5>
					<p>Language</p>
					<p>Country</p>
					<p>City</p>
				</div>
				<div class="w3-container w3-third">
					<h5 class="w3-bottombar w3-border-red">System</h5>
					<p>Browser</p>
					<p>OS</p>
					<p>More</p>
				</div>
				<div class="w3-container w3-third">
					<h5 class="w3-bottombar w3-border-orange">Target</h5>
					<p>Users</p>
					<p>Active</p>
					<p>Geo</p>
					<p>Interests</p>
				</div>
			</div>
		</div> -->
		<!-- Footer -->
		<footer class="w3-container w3-padding-16 w3-light-grey">
			<h4>FOOTER</h4>
			<p>
				Powered by <a href="http://www.mynute.com" target="_blank">www.mynute.com</a>
			</p>
		</footer>
		<!-- End page content -->
	</div>

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
	</script>

</body>
</html>

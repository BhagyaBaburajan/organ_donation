<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<title>Organ</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%=path%>/style/w3.css">
<link rel="stylesheet" href="<%=path%>/style/raleway.css">
<link rel="stylesheet" href="<%=path%>/style/font-awesome.min.css">
<script src="<%=path%>/js/jquery.min.js"></script>
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
}
</style>
<body class="w3-light-grey">

	<!-- Top container -->
	<c:import url="../WEB-INF/tiles/admin/common/header.jsp" />


	<!-- Sidenav/menu -->
	<nav class="w3-sidenav w3-collapse w3-white w3-animate-left"
		style="z-index: 3; width: 300px;" id="mySidenav">
		<br>


		<hr>
		<!-- menu nav -->
		<c:import url="../WEB-INF/tiles/admin/common/index_menu_nav.jsp" />
	</nav>


	<!-- Overlay effect when opening sidenav on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity"
		onclick="w3_close()" style="cursor: pointer" title="close side menu"
		id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px; margin-top: 43px;">




		<!-- Team Section -->
		<br></br> <br></br>

		<!-- register content -->
		<c:import url="../WEB-INF/tiles/admin/add/addContent.jsp" />



		<!-- Footer -->

		<c:import url="../WEB-INF/tiles/admin/common/footer.jsp" />
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

		$(document).ready(function() {

			$('#confirm').blur(function() {
				//alert('hello');
				var pass = $.trim($('#password').val());
				var confirm = $.trim($('#confirm').val());
				//alert(pass+" : "+confirm);
				if (pass !== confirm) {
					$('#confirm-label').removeClass('w3-hide');
				} else {

					if (!($('#confirm-label').hasClass('w3-hide'))) {
						$('#confirm-label').addClass('w3-hide');

					}
				}
			});
			
			
			$('#medical-btn').click(function(e) {
				var pass = $.trim($('#password').val());
				var confirm = $.trim($('#confirm').val());
				if (pass !== confirm) {
					e.preventDefault();
				}
					
				});
			
		});
	</script>

</body>
</html>

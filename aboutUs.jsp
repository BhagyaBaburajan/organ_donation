
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<c:import url="WEB-INF/tiles/common/header.jsp" />

	<!-- Sidenav/menu -->
	<nav class="w3-sidenav w3-collapse w3-white w3-animate-left"
		style="z-index: 3; width: 300px;" id="mySidenav">

		<!-- side nave login -->
		<c:import url="WEB-INF/tiles/common/index_login_nav.jsp" />

		<!-- menu nav -->
		<c:import url="WEB-INF/tiles/common/index_menu_nav.jsp" />
	</nav>


	<!-- Overlay effect when opening sidenav on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity"
		onclick="w3_close()" style="cursor: pointer" title="close side menu"
		id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px; margin-top: 43px;">
		<%-- <c:import url="WEB-INF/tiles/index/index_main_content.jsp" /> --%>
		<!-- Header -->
		<c:import url="WEB-INF/tiles/other/aboutUs.jsp" />

		<!-- body info -->
		<%-- <c:import url="WEB-INF/tiles/index/index_content_info.jsp" /> --%>
		<!-- Footer -->
		<c:import url="WEB-INF/tiles/common/footer.jsp" />
		<!-- 	<footer class="w3-container w3-padding-16 w3-light-grey">
			<h4>FOOTER</h4>
			<p>
				Powered by <a href="http://www.w3schools.com/w3css/default.asp"
					target="_blank">w3.css</a>
			</p>
		</footer> -->

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

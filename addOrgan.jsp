<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	System.out.println(path);
%>
<div>
	<h3 class="w3-center">Organ or Tissues Registration</h3>
	
	<form action="<%=path%>/ImageProcessServlet" method="post"
		enctype="multipart/form-data"
		class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
		<h2 class="w3-center">Add Organ or Tissues</h2>

		<div class="w3-row w3-section">
			<div class="w3-col" style="width: 50px">
				<i class="w3-xxlarge fa fa-user"></i>
			</div>
			<div class="w3-rest">
				<input class="w3-input w3-border" type="text" placeholder="Name"
					required name="name">
			</div>
		</div>
		<div class="w3-row w3-section">
			<div class="w3-col" style="width: 50px">
				<i class="w3-xxlarge fa fa-user"></i>
			</div>
			<div class="w3-rest">
				<input class="w3-input w3-border" type="text"
					placeholder="Description" required name="description">
			</div>
		</div>
		<div class="w3-row w3-section">
			<div class="w3-col" style="width: 50px">
				<i class="w3-xxlarge fa fa-user"></i>
			</div>
			<div class="w3-rest">
				Organ Type <input type="radio" name="type" value="Organ" checked>
				Organ <input type="radio" name="type" value="Tissues">
				Tissues
			</div>
		</div>
		<div class="w3-row w3-section">
			<div class="w3-col" style="width: 50px">
				<i class="w3-xxlarge fa fa-envelope-o"></i>
			</div>
			<div class="w3-rest">
				<input class="w3-input w3-border" type="file" name="image"
					value="Organ Image" placeholder="Suitable Image for the Organ">
			</div>
		</div>
		<p class="w3-center">
			<button class="w3-button w3-section w3-blue w3-ripple">Add
				Organ</button>
		</p>
	</form>
	<p class="w3-center w3-large">Organs must be removed as soon as
		possible after the determination of brain death, while circulation is
		being maintained artificially . Tissues may be removed within 12 to 24
		hours</p>
	<!-- End Add Organ -->
</div>


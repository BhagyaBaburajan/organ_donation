<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	System.out.println(path);
%>
<div class="w3-container w3-section">
	<header class="w3-container w3-blue">
		<p style="text-align: center; font-size: 2em; margin: 10px;">Add
			Medical Assistant</p>
	</header>
	<!-- Contact Section -->
	<div class="w3-padding-64 w3-content w3-text-grey" id="contact">

		<form action="<%=path%>/AddMedicalAssistServlet" method="post">
			<div id="error-pan"
				class="w3-panel w3-pale-red w3-text-red w3-card-2 w3-border-left w3-border-red w3-animate-zoom">
				<p>
					<b> Username or Password already exist or other problem.! try
						again!</b>
				</p>
			</div>
			<p>
				<input class="w3-input w3-padding-16" type="text" placeholder="Name"
					required name="Name">
			</p>
			<p>
				<input class="w3-input w3-padding-16" type="email"
					placeholder="Email" required name="Email">
			</p>
			<p>
				<input class="w3-input w3-padding-16" type="number"
					placeholder="Phone" required name="phone">
			</p>

			<p>
				<input class="w3-input w3-padding-16" type="text"
					placeholder="User Name" required name="user">
			</p>
			<p>
				<input id="password" class="w3-input w3-padding-16" type="password"
					placeholder="Password" required name="password">
			</p>
			<p>
				<input id="confirm" class="w3-input w3-padding-16" type="password"
					placeholder="Confirm Password" required name="confirm"> <label
					id="confirm-label" class="w3-validate w3-hide w3-text-red">Password
					not matched!!</label>
			</p>
			<p>
				<input type="hidden" name="type" value="doctor">

			</p>

			<p>
				<button id="medical-btn" class="w3-btn w3-blue w3-padding-large" type="submit">
					<i class="fa fa-paper-plane"></i> Add Medical Assistant
				</button>
			</p>
		</form>
		<!-- End Contact Section -->
	</div>
</div>
<!-- 		<script>
$(function(){
	 $("#password").click(function(){
		 $("#error-pan").remove();
		 $("#password").removeClass("w3-border-red");
		 /* $("#password").addClass("w3-border-green"); */
	 });
	 $("#username").click(function(){
		 $("#error-pan").remove();
		 $("#username").removeClass("w3-border-red");
		/*  $("#username").addClass("w3-border-green"); */
	 });
	
});
</script> -->
<hr>
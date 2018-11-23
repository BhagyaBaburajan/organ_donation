<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="w3-container w3-section">
	<header class="w3-container w3-blue">
		<p style="text-align: center; font-size: 2em; margin: 10px;">Sign
			in to your account</p>
	</header>
	<div class="w3-container w3-full w3-margin-top"
		style="margin-left: 5%;">
		<div id="error-pan"
			class="w3-panel w3-pale-red w3-text-red w3-card-2 w3-border-left w3-border-red w3-animate-zoom">
			<p>
				<b>Incorrect username or password!!</b>
			</p>
		</div>
		<form class="w3-container w3-card-4 w3-margin-top"
			action="AuthenticationServlet" method="post">

			<p>
				<input class="w3-input w3-border-red" type="text" style="width: 90%"
					id="username" name="username" required> <label
					class="w3-label w3-validate"><b>User Name</b></label>
			</p>
			<p>
				<input id="password" class="w3-input w3-border-red" type="password" name="password"
					style="width: 90%" required> <label
					class="w3-label w3-validate"><b>Password</b></label>
			</p>


			<p>
				<input class="w3-radio" type="radio" name="type" value="doctor"
					checked> <label class="w3-validate">Medical
					Assistant</label> <input class="w3-radio" type="radio" name="type"
					value="donor"> <label class="w3-validate">Donor</label> <input
					class="w3-radio" type="radio" name="type" value="seeker"> <label
					class="w3-validate">Seeker</label>

			</p>
			<p>
				<button type="submit"
					class="login w3-btn w3-section w3-blue w3-ripple">Log in</button>
			</p>

		</form>

	</div>
</div>
<script>
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
</script>
<hr>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="w3-container w3-section">
	<header class="w3-container w3-blue w3-round">
		<p style="; font-size: 2em; margin: 10px;"><i class="fa fa-windows"></i>   Sign
			in to your Account</p>
	</header>
	<div class="w3-container w3-full w3-margin-top"
		style="margin-left: 5%;">

		<form class="w3-container w3-card-4 w3-margin-top"
			action="AuthenticationServlet" method="post">

			<p>
				<input class="w3-input" type="text" style="width: 90%"
					name="username" required> <label
					class="w3-label w3-validate"><b>User Name</b></label>
			</p>
			<p>
				<input class="w3-input" type="password" name="password"
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
<hr>

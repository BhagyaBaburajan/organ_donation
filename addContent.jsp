<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	String path=request.getContextPath();
	System.out.println(path);
	%>
<div class="w3-container w3-section">
			<header class="w3-container w3-blue">
				<p style="text-align: center; font-size: 2em; margin: 10px;">Add Medical Assistant </p>
			</header>
			<!-- Contact Section -->
			<div class="w3-padding-64 w3-content w3-text-grey" id="contact">

				<form action="<%=path %>/AddMedicalAssistServlet" method="post">
					<p>
						<input class="w3-input w3-padding-16" type="text"
							placeholder="Name" required name="Name">
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
						<input id="password" class="w3-input w3-padding-16"
							type="password" placeholder="Password" required name="password">
					</p>
					<p>
						<input id="confirm" class="w3-input w3-padding-16" type="password"
							placeholder="Confirm Password"  name="confirm" required> <label
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
		<hr>
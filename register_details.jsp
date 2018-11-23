<%@page import="com.mynute.uit.organ.OrganRegisterBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	System.out.println(path);
	OrganRegisterBean bean = (OrganRegisterBean) session.getAttribute("medical");
	if (bean != null) {
%>
<div class="w3-container w3-section">
	<header class="w3-container w3-blue">
		<p style="text-align: center; font-size: 2em; margin: 10px;">
			Detailed Registration</p>
	</header>
	<!-- Contact Section -->
	<div class="w3-padding-64 w3-content w3-text-grey" id="contact">

		<form action="RegisterDetailsServlet" method="post">
			<p>
				<input class="w3-input w3-padding-16" type="text"
					placeholder="<%=bean.getName()%>  (<%=bean.getId()%>) "
					required name="Name" disabled="disabled">
			</p>
			<p>
				<input class="w3-input w3-padding-16" type="text"
					placeholder="Age" required name="age">
			</p>
			<p>
				<input class="w3-input w3-padding-16" type="text"
					placeholder="Address" required name="address">
			</p>

			<p>
				<select class="w3-select w3-padding-16" name="state">
					<option value="" disabled selected>Choose State</option>
					<option value="kerala">Kerala</option>
				</select>
			</p>
			<p>
				<select class="w3-select w3-padding-16" name="district"
					id="district">
					<option value="" disabled selected>Choose District</option>
					<option value="Thiruvananthapuram">Thiruvananthapuram</option>
					<option value="Kollam">Kollam</option>
					<option value="Pathanamthitta">Pathanamthitta</option>
					<option value="Alappuzha">Alappuzha</option>
					<option value="Kottayam">Kottayam</option>
					<option value="Idukki">Idukki</option>
					<option value="Ernakulam">Ernakulam</option>
					<option value="Thrissur">Thrissur</option>
					<option value="Palakkad">Palakkad</option>
					<option value="Malappuram">Malappuram</option>
					<option value="Kozhikode">Kozhikode</option>
					<option value="Wayanad">Wayanad</option>
					<option value="Kannur">Kannur</option>
					<option value="Kasargode">Kasargode</option>
				</select>
			</p>
			<p>
				<input class="w3-input w3-padding-16" type="text"
					placeholder="Local Place" required name="place">
			</p>
			<p>
				<select class="w3-select w3-padding-16" name="doctor" id="doctor">
					<option value="" disabled selected>Choose Medical
						Assistant</option>

				</select>
			</p>

			<!-- 	<p>
				<input class="w3-radio" type="radio" name="type" value="donor">
				<label class="w3-validate">Donor</label> <input class="w3-radio"
					type="radio" name="type" value="seeker"> <label
					class="w3-validate">Seeker</label>
			</p> -->

			<p>

				<button class="w3-btn w3-blue w3-padding-large" type="submit">
					<i class="fa fa-paper-plane"></i> Add Details
				</button>
			</p>
		</form>
		<!-- End Contact Section -->
	</div>
</div>
 <%
	} else {
%>Session null<%
	}
%> 
<script type="text/javascript">
	$(function() {
		$("#district").change(
						function() {
							$("#doctor").empty();
							/* 	console.log($("#district option:selected").text()); */
							dist = $(this).val();
							console.log($(this).val());
							$("#doctor").append(
											"<option value='' disabled selected>Choose Medical Assistant</option>");
							var doctor = {};
							doctor.url = "GetDoctorServlet";
							doctor.type = "POST";
							doctor.dataType = "json";
							doctor.data = {
								"dist" : dist
							};
							doctor.success = function(data) {
								console.log("success");
								console.log(data);
								$.each(data, function (key, value) {
								      console.log(value["name"]);
								      $("#doctor").append(
									  "<option value='"+value["id"]+"'>"+value["name"]+"</option>");  
								  })
								
							};
							$.ajax(doctor);

						});

	});
</script>
<hr>

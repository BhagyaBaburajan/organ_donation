<%@page import="java.sql.Statement"%>
<%@page
	import="com.mynute.uit.organ.register.details.RegisterDetailsBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mynute.uit.organ.Database"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mynute.uit.organ.OrganRegisterBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	System.out.println(path);
	OrganRegisterBean bean = (OrganRegisterBean) session.getAttribute("user");

	int organ_id = Integer.parseInt(request.getParameter("organ_id"));
	String organ_name = request.getParameter("organ_name");

	if (bean != null) {
%>
<div class="w3-container w3-section">
	<header class="w3-container w3-blue">
		<p style="text-align: center; font-size: 2em; margin: 10px;">
			Add your details for donating <span class="w3-text-black"> <b>'<%=organ_name%>'
			</b></span>
		</p>
	</header>
	<!-- Contact Section -->
	<div class="w3-padding-64 w3-content w3-text-grey" id="contact">
		<!-- <div id="error-pan"
			class="w3-panel w3-pale-red w3-text-red w3-card-2 w3-border-left w3-border-red w3-animate-zoom">
			<p>
				<b>!!</b>
			</p>
		</div> -->

		<form action="DonorDetailRegisterServlet" method="post">
			<p>
				<input type="hidden" name="id" value="<%=bean.getId()%>"> <input
					type="hidden" name="name" value="<%=bean.getName()%>"> <input
					type="hidden" name="organ_id" value="<%=organ_id%>">

			</p>
			<p>
				<input id="my-self" class="w3-radio " type="radio" name="d_type"
					value="donor" checked> <label
					class="w3-validate w3-margin-right">mySelf</label> <input
					id="relative" class="w3-radio" type="radio" name="d_type"
					value="seeker"> <label class="w3-validate">Relative
					(in case Brain Death person )</label>

			</p>

			<p id="donor">
				<label class="w3-label w3-text-blue">Donor Name</label> <input
					id="Name" class="w3-input w3-padding -16" type="text"
					placeholder="Donor Name( must filled with brain death person)"
					name="donor" title="Donor Name">
			</p>
			<p id="hospital">
				<label class="w3-label w3-text-blue">Hospital </label> <input
					class="w3-input w3-padding -16" type="text"
					placeholder="Hospital Name( must filled with brain death person)"
					name="hospital"
					title="Hospital Name( must filled with brain death person)">
			</p>
			<p id="h_place">
				<label class="w3-label w3-text-blue">Hospital Place</label> <input
					class="w3-input w3-padding -16" type="text"
					placeholder="Hospital Place( must filled with brain death person)"
					name="h_place"
					title="Hospital Place( must filled with brain death person)">
			</p>

			<p>
				<label class="w3-label w3-text-blue">Age</label> <input id="age"
					class="w3-input w3-padding-16" type="text" placeholder="Age"
					required name="age" title="Age">
			</p>
			<p>
				<label class="w3-label w3-text-blue">Address</label> <input
					id="addr" class="w3-input w3-padding-16" type="text"
					placeholder="Address" required name="address" title="Address">
			</p>
			<p>
				<label class="w3-label w3-text-blue">Local Place</label> <input
					id="place" class="w3-input w3-padding-16" type="text"
					placeholder="Local Place" required name="place" title="Local Place">
			</p>
			<p class="w3-padding"></p>

			<h5 class="w3-text-black">Choose place and Doctor for Medical
				Testing</h5>


			<p>
				<select class="w3-select w3-padding-16" name="state"
					title="Choose State" required>
					<option value="" disabled selected class="w3-text-blue">Choose
						State</option>
					<option value="kerala">Kerala</option>
				</select>
			</p>
			<p>
				<select class="w3-select w3-padding-16" name="district"
					id="district" title="Choose District" required>
					<option value="" disabled selected class="w3-text-blue">Choose
						District</option>
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
				<select class="w3-select w3-padding-16" name="doctor" id="doctor"
					title="Choose Medical Assistant" required>
					<option value="" disabled selected class="w3-text-blue">Choose
						Medical Assistant</option>

				</select>
			</p>
			<p>
				<button class="w3-btn w3-blue w3-padding-large" type="submit">
					<i class="fa fa-paper-plane"></i> Add Details
				</button>
			</p>
		</form>
		<!-- End Contact Section -->
	</div>
</div>
<hr>
<%
	} else {
%>Session null<%
	}
%>
<script type="text/javascript">
	$(function() {

		$("#donor").hide();
		$("#hospital").hide();
		$("#h_place").hide();
		var age;
		var addr;
		var place;

		$('#my-self').click(function() {
			$("#donor").hide();
			$("#hospital").hide();
			$("#h_place").hide();

			$("#age").val(age);
			$("#addr").val(addr);
			$("#place").val(place);

		});
		$('#relative').click(function() {

			age = $("#age").val();
			addr = $("#addr").val();
			place = $("#place").val();

			$("#age").val("");
			$("#addr").val("");
			$("#place").val("");

			$("#donor").show();
			$("#hospital").show();
			$("#h_place").show();

		});

		var getData = {};
		getData.url = "GetDetailedDataServlet";
		getData.type = "POST";
		getData.dataType = "json";
		getData.success = function(data) {
			console.log("success");
			console.log(data);
			$.each(data, function(key, value) {
				console.log(value["address"]);
				$("#addr").val(value["address"]);
				$("#age").val(value["age"]);
				$("#place").val(value["local_place"]);
			});
		};
		$.ajax(getData);

		$("#district")
				.change(
						function() {
							$("#doctor").empty();
							/* 	console.log($("#district option:selected").text()); */
							dist = $(this).val();
							console.log($(this).val());
							$("#doctor").empty();
							$("#doctor")
									.append(
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
								
								$.each(data, function(key, value) {
									console.log(value["name"]);
									$("#doctor").append(
											"<option value='"+value["id"]+"'>"
													+ value["name"]
													+ "</option>");
								})
							};
							$.ajax(doctor);

						});

	});
</script>


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
			Add your details for Request Organ <span class="w3-text-black">
				<b>'<%=organ_name%>'
			</b>
			</span>
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

		<form action="SeekerDetailRegisterServlet" method="post">
			
			<p>
				<input type="hidden" name="id" value="<%=bean.getId()%>"> <input
					type="hidden" name="name" value="<%=bean.getName()%>"> <input
					type="hidden" name="organ_id" value="<%=organ_id%>">

			</p>

			<p>
				<label class="w3-label w3-text-blue">Age</label> <input id="age"
					class="w3-input w3-padding-16" type="number" placeholder="Age"
					required name="age" title="Age">
			</p>
			<p>
				<label class="w3-label w3-text-blue">Profession</label> <input
					id="prof" class="w3-input w3-padding-16" type="text"
					placeholder="Profession " required name="prof" title="Profession">
			</p>
			<p>
				<label class="w3-label w3-text-blue">Hospital</label> <input
					id="hospital" class="w3-input w3-padding-16" type="text"
					placeholder="Hospital " required name="hospital" title="hospital">
			</p>
			<p>
				<label class="w3-label w3-text-blue">Hospital place</label> <input
					id="h_place" class="w3-input w3-padding-16" type="text"
					placeholder="Hospital place " required name="h_place"
					title="Hospital place">
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
			<p>
				<label class="w3-label w3-text-blue">State</label> <select
					class="w3-select w3-padding-16" name="s_state"
					title="Choose Seeker State" required>
					<option value="" disabled selected class="w3-text-blue">
						State</option>
					<option value="kerala">Kerala</option>
				</select>
			</p>
			<p>
				<label class="w3-label w3-text-blue">District</label> <select
					class="w3-select w3-padding-16" name="s_district"
					title="Choose District" required>
					<option value="" disabled selected class="w3-text-blue">
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
			<p class="w3-padding"></p>


			<p>
				<label class="w3-label w3-text-blue">Medical Details </label><br>
				
				<input id="my-self" class="w3-radio " type="radio" name="d_type" value="result" checked>
				<label class="w3-validate w3-margin-right"> Add common Medical test Result now</label>
				
				<input id="doctor" class="w3-radio" type="radio" name="d_type" value="toDoctor">
				<label class="w3-validate">Choose Doctor for Medical Testing</label>
			</p>
<!---------my-self----------  -->
			<div id="add-my-self">
				<p>
					<label class="w3-label w3-text-blue">Blood Group</label>
					<select class="w3-select w3-padding-16" name="blood" id="blood"
						title="Choose Blood Group" required>
						<option value="" disabled selected class="w3-text-blue">Choose
							Blood Group</option>
						<option value="O_p">O+</option>
						<option value="O_n">O-</option>
						<option value="A_p">A+</option>
						<option value="A_n">A-</option>
						<option value="B_p">B+</option>
						<option value="B_n">B-</option>
						<option value="AB_p">AB+</option>
						<option value="AB_n">AB-</option>

					</select>
				</p>
				<p>

					<label class="w3-label w3-text-blue">HIV </label> <br>
					
					<input class="w3-radio " type="radio" name="hiv" value="1" id="hiv" required="required">
					<label class="w3-validate w3-margin-right"> Positive</label>
					
					<input class="w3-radio" type="radio" name="hiv" value="0" id="hiv" >
					<label class="w3-validate">Negative</label>
				</p>
				<p>
					<label class="w3-label w3-text-blue">Ethnic</label><br>
					
					<input class="w3-radio " type="radio" name="ethnic" value="Black" id="ethnic" required="required">
					<label class="w3-validate w3-margin-right">black</label>
					
					<input class="w3-radio" type="radio" name="ethnic" value="White" id="ethnic">
					<label class="w3-validate">white</label>
				</p>


			</div>
<!---------doctor----------  -->
			<div id="add-doctor">
				<p>
					<select class="w3-select w3-padding-16" name="state" title="Choose State" id="state">
						<option value="" disabled selected class="w3-text-blue">State for Medical Testing</option>
						<option value="kerala">Kerala</option>
					</select>
				</p>
				<p>
					<select class="w3-select w3-padding-16" name="district" id="district" title="Choose District">
						<option value="" disabled selected class="w3-text-blue">ChooseDistrict for Medical Testing</option>
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
					<select class="w3-select w3-padding-16" name="doctor"
						id="select-doctor" title="Choose Medical Assistant">
						<option value="" disabled selected class="w3-text-blue">Choose
							Medical Assistant for Medical Testing</option>

					</select>
				</p>
			</div>
<!-- ---------- -->
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

		$("#add-doctor").hide();

		$('#my-self').click(function() {
			
			$("#state").val("");
			$("#district").val("");
			$("#select-doctor").val("");
			
			$("#state").removeAttr('required');
			$("#district").removeAttr('required');
			$("#select-doctor").removeAttr('required');

			$("#blood").attr('required', true);
			$("#ethnic").attr('required', true);
			$("#hiv").attr('required', true);
			
			$("#add-doctor").hide();
			$("#add-my-self").show();
		});

		$('#doctor').click(function() {

			$("#state").attr('required', true);
			$("#district").attr('required', true);
			$("#select-doctor").attr('required', true);
			
			
			
			$("#ethnic").removeAttr('required');
			$("#blood").removeAttr('required');
			$("#hiv").removeAttr('required');
			
			$("#ethnic").val("");
			$("#hiv").val("");
			$("#blood").val("");
			
			$("#ethnic").removeAttr("checked");
			$("#hiv").removeAttr("checked");
			
			

			$("#add-doctor").show();
			$("#add-my-self").hide();

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

		$("#district").change(
				function() {
					$("#doctor").empty();
					console.log($("#district option:selected").text());
					dist = $(this).val();
					console.log($(this).val());
					$("#select-doctor").empty();
					$("#select-doctor").append(
							"<option  disabled selected class='w3-text-blue'>Choose "
									+ "Medical Assistant</option>");
					var doctor = {};
					doctor.url = "GetDoctorServlet";
					doctor.type = "POST";
					doctor.dataType = "json";
					doctor.data = {
						"dist" : dist
					};
					doctor.success = function(data) {
						console.log("success............");
						console.log(data);
						$.each(data, function(key, value) {
							console.log(value["name"]);
							$("#select-doctor").append(
									"<option value='"+value["id"]+"'>"
											+ value["name"] + "</option>");
						})
					};
					$.ajax(doctor);

				});

	});
</script>


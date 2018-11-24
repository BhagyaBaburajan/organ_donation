<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="w3-container w3-section">
	<header class="w3-container w3-blue">
		<p style="text-align: center; font-size: 2em; margin: 10px;">
		Submit Seeker Details</p>
	</header>
	<!-- Contact Section -->
	<div class="w3-padding-64 w3-content w3-text-grey" id="contact">

		<form action="RegisterServlet" method="post">
			<p>
				<input class="w3-input w3-padding-16" type="text" placeholder="Name"
					required name="Name" disabled="disabled">
			</p>
			<p>
				<input class="w3-input w3-padding-16" type="text"
					placeholder="Address" required name="addr">
			</p>
			<p>
				<input class="w3-input w3-padding-16" type="number"
					placeholder="Age" required name="age">
			</p>
			<p>
				<select class="w3-select" name="gender">
					<option value="" disabled selected>Select Gender</option>
					<option value="Male">Male</option>
					<option value="Female">Female</option>
					<option value="Other">Other</option>
				</select>
			</p>
			<p>
				<select class="w3-select" name="organType">
					<option value="" disabled selected>Select Organ Type</option>
					<option value="1">organ</option>
					<option value="2">Tissue</option>
					<option value="3">Cell</option>
					<option value="4">Fluids</option>
				</select>
			</p>
			<p>
				<select class="w3-select" name="blood">
					<option value="" disabled selected>Select blood Group</option>
					<option value="A_positive">A+</option>
					<option value="A_negative">A-</option>
					<option value="B_positive">B+</option>
					<option value="B_negative">B-</option>
					<option value="AB_positive">AB+</option>
					<option value="AB_negative">AB-</option>
					<option value="O_positive">B+</option>
					<option value="O_negative">B-</option>
					<option value="other">others</option>
				</select>
			</p>
			<p>
				<input class="w3-input w3-padding-16" type="text"
					placeholder="% of Hb ( Hemoglobin )" required name="hb">
			</p>
			<p>
				<input class="w3-input w3-padding-16" type="text"
					placeholder=" TC ( Total leucocyte count )" required name="tc">
			</p>
			<p>
				<label class=" w3-label "> Hepatitis B (HBV, Hep B) </label> 
				<input class="w3-radio" type="radio" name="hbs_ag" value="1">
				<label class="w3-validate"> <b><i class="fa fa-plus" aria-hidden="true"></i> VE </b></label> 
				<input class="w3-radio" type="radio" name="hbs_ag" value="0"> 
				<label class="w3-validate"> <b><i class="fa fa-minus" aria-hidden="true"></i>VE </b></label>
			</p>
			<p>
				<label class=" w3-label ">HIV  </label> 
				<input class="w3-radio" type="radio" name="hiv" value="1">
				<label class="w3-validate"> <b><i class="fa fa-plus" aria-hidden="true"></i> VE </b></label> 
				<input class="w3-radio" type="radio" name="hiv" value="0"> 
				<label class="w3-validate"> <b><i class="fa fa-minus" aria-hidden="true"></i>VE </b></label>
			</p>
			
			<p>

				<button class="w3-btn w3-blue w3-padding-large" type="submit">
					<i class="fa fa-paper-plane"></i> Add Seeker Details
				</button>
			</p>
		</form>
		<!-- End Contact Section -->
	</div>
</div>
<hr>
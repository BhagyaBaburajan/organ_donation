
<%@page import="com.mynute.uit.organ.list.OrganListDAO"%>
<%@page import="com.mynute.uit.organ.list.OrganPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%
	List<OrganPOJO> organPOJOs = OrganListDAO.getAllOrgans2();
%>
<!-- Team Section -->
<div class="w3-container w3-padding" id="team">
	<h3 class="w3-center">Available Organ and Tissues</h3>
	<p class="w3-center w3-large">World Organ Donation Day is observed
		on 6 of August annually throughout the world</p>
	<div class="w3-row-padding w3-grayscale" style="margin-top: 64px">
		<%
			for (OrganPOJO organPOJO : organPOJOs) {
		%>
		<div class="w3-col l3 m6 w3-margin-bottom">
			<div class="w3-card-2">
				<!-- <img src="img/doctor.jpg" alt="John" style="width: 100%"> -->
				<img alt="Cant display Organ Image" src="data:image/png;base64, <%=organPOJO.getImageStr() %>" style="width: 100%" />
				<div class="w3-container">
					<h3><%=organPOJO.getName()%></h3>
					<p class="w3-opacity">
						Donation Type -
						<%=organPOJO.getType()%></p>
					<p>
						"<%=organPOJO.getDescription()%>".
					</p>
					<!-- <p>
						<button class="w3-btn-block">
							<i class="fa fa-envelope"></i>Contacts
						</button>
					</p> -->
				</div>
			</div>
		</div>
		<%
			}
		%>
	</div>
</div>


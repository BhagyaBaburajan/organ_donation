<%@page import="com.mynute.uit.organ.OrganRegisterBean"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <% String path=request.getContextPath(); %>
<br>
		<%-- <% OrganRegisterBean bean=(OrganRegisterBean)session.getAttribute("user");
			if (session.getAttribute("user")==null) {
		%> --%>
		<div class="w3-container w3-row">
			
					<div
						class="w3-black  w3-hover-opacity-off w3-padding w3-round-large">
						<h1 class="w3-xlarge">Welcome<b> ADMIN</b></h1>
						<hr class="w3-opacity">
						<p>Foundation - Member Login: free of charge</p>
						<!--<p>
							<a href="login.jsp" class="w3-btn-block w3-green w3-round">
								Login 
								<i class="fa fa-windows"></i>
								
							</a>
							</p> -->
						<p><a href="<%=path%>/admin/addMedical.jsp" class="w3-btn-block w3-green w3-round">
								Add MedicalAssistant 
								<i class="fa fa-plus"></i>
							</a>
						</p>
					</div>
				
		</div>
		<%-- <%
			} else {
		%> --%>
		<%-- <div class="w3-container w3-row">
			<div class="w3-col s4">
				<img src="img/avatar2.png" class="w3-circle w3-margin-right"
					style="width: 46px">
			</div>
			<div class="w3-col s8">
				<span>Welcome, <strong> <%=bean.getName()%></strong></span><br> <a href="#"
					class="w3-hover-none w3-hover-text-red w3-show-inline-block"><i
					class="fa fa-envelope"></i></a> <a href="#"
					class="w3-hover-none w3-hover-text-green w3-show-inline-block"><i
					class="fa fa-user"></i></a> <a href="logout.jsp"
					class="w3-hover-none w3-hover-text-blue w3-show-inline-block"><i class="fa fa-power-off" aria-hidden="true"></i></a>
			</div>
		</div> --%>
		<%-- <%
			}
		%> --%>
		<hr>
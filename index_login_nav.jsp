<%@page import="com.mynute.uit.organ.OrganRegisterBean"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<br>
		<% OrganRegisterBean bean=(OrganRegisterBean)session.getAttribute("user");
			if (session.getAttribute("user")==null) {
		%>
		<div class="w3-container w3-row">
			
					<div
						class="w3-blue  w3-hover-opacity-off w3-padding w3-round-large">
						<h1 class="w3-xlarge">Welcome</h1>
						<hr class="w3-opacity">
						<p>Foundation - Member Login: free of charge</p>
						<p>
							<a href="login.jsp" class="w3-btn-block w3-white w3-round">
								Login 
								<i class="fa fa-user"></i>
								
							</a></p>
								<p><a href="register.jsp" class="w3-btn-block w3-white w3-round">
								Register
								<i class="fa fa-user"></i>
							</a>
						</p>
					</div>
				
		</div>
		<%
			} else {
		%>
		<div class="w3-container w3-row  w3-margin w3-blue w3-round ">
		<%  
		if (bean.getType().equals("doctor")) {
			%>
			<h3 class="w3-text-blue ">Medical Officer</h3>
			<%	
		}else if(bean.getType().equals("donor")){
			%>
			<h3>Donor</h3>
			<%
		}else if(bean.getType().equals("seeker")){
				%>
				<h3>Seeker</h3>
				<%
		}
		%>
		<hr>
			<div class="w3-col s4">
				<!-- <img src="img/avatar2.png" class="w3-circle w3-margin-right"
					style="width: 46px"> -->
			</div>
			<div class="w3-col  w3-margin-bottom">
			Welcome,
			
				<span> <strong> <span class="w3-xlarge"><%=bean.getName()%></span></strong></span> <a href="logout.jsp" title="Logout"
					class="w3-hover-none w3-hover-text-red w3-show-inline-block"><i class="fa fa-power-off" aria-hidden="true"></i></a>
			</div>
			
		</div>
		<%
			}
		%>
		<hr>
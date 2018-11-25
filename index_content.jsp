<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.mynute.uit.organ.list.*"%>
<%@page import="com.mynute.uit.organ.OrganRegisterBean"%>

<%
	String path = request.getContextPath();
	System.out.println(path);
	OrganRegisterBean bean = (OrganRegisterBean) session.getAttribute("user");
	System.out.println("registration id  :" + bean.getId());
	int reg_id = bean.getId();
	List<OrganPOJO> list = OrganListDAO.getAllOrgans(reg_id);
%>
<!-- ---------------------------------------------------------------------------------------------------------------
     ################################################## seeker Index ###############################################
     ----------------------------------------------------------------------------------------------------------------. -->
<header class="w3-container" style="padding-top: 22px">
	<h3>
		<i class="fa fa-dashboard"></i> Request Your Organ which You Want
	</h3>
</header>
<!-- Pricing Tables -->




<!--  edd  -->




<%
	int count = 0;
	for (OrganPOJO pojo : list) {
		if (count == 0) {
%>
<div class="w3-row-padding w3-margin" style="margin: 0 -16px">
	<!-- <div class="w3-row-padding w3-margin-bottom"> -->
	<%
		}
	%>
	<div class="w3-quarter w3-margin-bottom w3-round">
		<a
			href="seekerCheckRegisterDetails.jsp?organ_id=<%=pojo.getId()%>&organ_name=<%=pojo.getName()%>"
			style="text-decoration: none;">
			<ul
				class="w3-ul w3-border w3-white w3-center  w3-hover-opacity w3-round ">
				<li class="w3-<%=pojo.getColor()%> w3-xlarge w3-padding-16"><%=pojo.getName()%></li>
				<li class="w3-padding"><i
					class="	fa <%=pojo.getIcon()%> w3-xxxlarge"></i></li>
				<%
					if (pojo.getAdd() == 1) {
				%>
				<li
					class="w3-black w3-padding-16 w3-hover-<%=pojo.getColor()%>">
					<b> Already Requested</b>
				</li>
				<%
					} else {
				%>
				<li
					class="w3-light-grey w3-padding-16 w3-hover-<%=pojo.getColor()%>">
					Request Your Organ</li>
				<%
					}
				%>

				<%-- <button class="w3-btn w3-black w3-padding w3-hover-<%=pojo.getColor() %> w3-round"></button> --%>

			</ul>
		</a>
	</div>
	<%-- 	<div class="w3-quarter">
		<a href="seekerCheckRegisterDetails.jsp?organ_id=<%=pojo.getId() %>&organ_name=<%=pojo.getName() %>"
			style="text-decoration: none;">
			<div class="w3-container w3-<%=pojo.getColor() %> w3-hover-shadow w3-padding-8">
				<div class="w3-left">
					<i class="	fa <%=pojo.getIcon() %> w3-xxxlarge"></i>
				</div>
				<div class="w3-right" >
				<% if(pojo.getAdd()==1){%>
					<h5>already requested </h5>
					<%} %> 
				</div>
				<div class="w3-clear"></div>
				<h4 class="w3-xlarge">
					<%=pojo.getName() %> <br>
				</h4>
			</div>
		</a>
	</div> --%>

	<%
		count++;
			if (count >= 4) {
	%>
</div>
<%
	count = 0;
		}

	}
%>
</div>

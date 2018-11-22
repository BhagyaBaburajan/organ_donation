<%@page import="java.util.List"%>
<%@page import="com.mynute.uit.organ.list.*"%>
<%@page import="com.mynute.uit.organ.OrganRegisterBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	System.out.println(path);
	OrganRegisterBean bean = (OrganRegisterBean) session.getAttribute("user");
	System.out.println("registration id  :"+bean.getId());
	int reg_id=bean.getId();
	List<OrganPOJO> list = OrganListDAO.getAllOrgans(reg_id);
%>
<header class="w3-container" style="padding-top: 22px">
	<h5>
		<b></b>
	</h5>
</header>
<%
	int count = 0;
	for (OrganPOJO pojo : list) {
		if (count == 0) {
%>
<div class="w3-row-padding w3-margin-bottom">
	<%
		}
	%>

	<div class="w3-quarter">
		<a href="donorCheckRegisterDetails.jsp?organ_id=<%=pojo.getId() %>&organ_name=<%=pojo.getName() %>"
			style="text-decoration: none;">
			<div class="w3-container w3-<%=pojo.getColor() %> w3-hover-shadow w3-padding-8">
				<div class="w3-left">
					<i class="	fa <%=pojo.getIcon() %> w3-xxxlarge"></i>
				</div>
				<div class="w3-right">
				<% if(pojo.getAdd()==1){%>
					<h5>Donated <i class="	fa fa-thumbs-o-up w3-xlarge"></i></h5>
					<%} %> 
				</div>
				<div class="w3-clear"></div>
				<h4 class="w3-xlarge">
					<%=pojo.getName() %> <br>
				</h4>
				
				
				
			</div>
		</a>
	</div>

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

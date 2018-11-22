<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mynute.uit.organ.Database"%>
<%@page
	import="com.mynute.uit.organ.register.details.RegisterDetailsBean"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="com.mynute.uit.organ.OrganRegisterBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<header class="w3-container" style="padding-top: 22px">
	<h5>
		<b> </b>
	</h5>
</header>

<div class="w3-row-padding w3-margin-bottom">
	<%
		String path = request.getContextPath();
		System.out.println(path);
		OrganRegisterBean bean = (OrganRegisterBean) session.getAttribute("user");
		if (bean != null) {

			Connection con = null;
			PreparedStatement st = null;
			ResultSet rs = null;

			String sql = "SELECT DR.*,R.type,O.name FROM detailed_register DR,register R,organ_list O WHERE DR.reg_id=? and DR.reg_id=R.id and DR.organ_id=O.id";
			try {
				con = Database.getConnection();
				st = con.prepareStatement(sql);
				st.setInt(1, bean.getId());
				rs = st.executeQuery();
	%>
	<div class="w3-card-2 w3-margin ">
		<div class="w3-container w3-padding w3-center">
			<h4><%=bean.getName()%>'s donated organs details
			</h4>
		</div>
		<ul class="w3-ul w3-hoverable w3-white">

			<%
				boolean checkData = false;
						while (rs.next()) {
			%>

			<%-- <%=rs.getString("address")%>
				<%=rs.getString("state")%> 
				<%=rs.getString("district")%> 
				<%=rs.getString("place")%>
				<%=rs.getString("doctor_id")%>
				<%=rs.getString("reg_id")%>
				<%=rs.getInt("msg_status")%>
				<%=rs.getString("age")%>  --%>
			<li class="w3-padding-16"><i class="fa fa-user-circle-o"
				aria-hidden="true"></i> Donate <span class="w3-xlarge"><%=rs.getString("name")%>
					 </span><br>
				<span><%=rs.getString("address")%> <a
					href="DeleteRegisterDetailesServlet?id=<%=rs.getInt("id")%>&organ_id=<%=rs.getInt("organ_id")%>"
					class="w3-btn w3-blue w3-right w3-margin-right">Delete</a></span> <br> <%
 	if (rs.getInt("msg_status") == 2) {
 %> <a
				href="donorViewMedicalResults.jsp?id=<%=rs.getInt("id")%>&organ_id=<%=rs.getInt("organ_id")%>&doctor_id=<%=rs.getString("doctor_id")%>&type=<%=rs.getString("type")%>&district=<%=rs.getString("district")%>"
				class="w3-btn w3-blue">Show Medical Results and Details</a> <span
				class="w3-text-green"> </span> <%
 	} else {
 %> <span class="w3-text-red"> Waiting for Medical Test </span> <%
 	}
 %></li>

			<%
				checkData = true;
						}
						if (!checkData) {
			%>

			<li class="w3-padding-16 w3-red"><span class="w3-xlarge">
					<i class="fa fa-exclamation" aria-hidden="true"></i> You Are not
					Donate any type of Organs.
			</span><br> <br> <span class="w3-text-green"> </span></li>


			<%
				}
			%>
		</ul>
	</div>
	<%
		} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (con != null)
						con.close();
					if (st != null)
						st.close();
					if (rs != null)
						rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
	%>
</div>
<%
	}
%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mynute.uit.organ.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mynute.uit.organ.OrganRegisterBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
	
<div class="w3-container w3-padding" id="team">
	<h3 class="w3-center">
		Requests from <b>Donors</b>and <b> Seekers</b>
	</h3>
	<%
		OrganRegisterBean bean = (OrganRegisterBean) session.getAttribute("user");
		Connection con = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		String sql = "select R.type,R.id,R.name,DR.district,DR.address,R.email,R.phone,DR.msg_status,O.name AS organ_name,DR.donor_name from detailed_register DR,register R,organ_list O where DR.doctor_id=? and DR.reg_id=R.id and DR.organ_id=O.id";
		try {
			con = Database.getConnection();
			st = con.prepareStatement(sql);
			st.setInt(1, bean.getId());
			rs = st.executeQuery();
			int row = 0;
			while (rs.next()) {
					if (row == 0) {
	%>
	<!--  Row -->
	<div class="w3-row-padding w3-grayscale"
		style="margin-top: 64px; height: 300px;">
		<%
			}
		%>
		<!-- column -->
		
		
		<div class="w3-col l3 m6 w3-margin-bottom ">
		 <%if(rs.getString("donor_name")==null||rs.getString("donor_name").equals("null")){
			 %>
			 <div class="w3-card-2 w3-yellow">
			 
			 <% 
			
		 }else{
			 %>
			 <div class="w3-card-2">
			 
			 <% 
			  
		 }%>
			
				<div class="w3-container">
					<h4>
						<b><%=rs.getString("type")%> (<span class="w3-text-red"> <%=rs.getString("organ_name")%></span> )</b>
					</h4>
					<h3><%=rs.getString("name")%></h3>
					<p class="w3-opacity"><%=rs.getString("phone")%></p>
					<p>
						<span><%=rs.getString("email")%></span><br> <span><%=rs.getString("address")%></span>
						<br> <span><%=rs.getString("district")%></span>
					</p>
					<% if(rs.getInt("msg_status")==0){ %>
					<p>
					 <p class="msg-p w3-yellow"></p>
					    <input type="hidden" class="id" value="<%=rs.getInt("id")%>">
						<button class="w3-btn-block w3-green send">
							<i class="fa fa-plus"></i> Send Message
						</button>
					</p>
					<% }else{  %>
					<p>
					    <input type="hidden" class="id" value="<%=rs.getInt("id")%>">
					    <p class="msg-p w3-yellow"></p>
						<button class="w3-btn-block w3-red send">
							<i class="fa fa-plus"></i> Send again Message
						</button>
					</p>
					<% }%>
					<p>
						<button class="w3-btn-block">
							<i class="fa fa-plus"></i> Add Details
						</button>
					</p>
				</div>
			</div>
		</div>
		<%
				row++;
					if (row >= 4) {
		%>
	</div>
	<%
						row = 0;
					}
			}
	%>
	<!--  end row -->
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
			}
		}
	%>
	</div>
	<script>
	$(function(){
		
		$(".send").click(function(){
			console.log("testing");
			var msg=$(this);
			$(this).parent().children('.msg-p').text("SMS sending..");
			var id = $(this).parent().children('.id').val();
			console.log(id);
			sms={};
			sms.url="SetSmsStatusServlet";
			sms.type="POST";
			sms.data={
					"reg_id":id
			}
			sms.success=function(data){
				console.log("success to update");
				msg.parent().children('.msg-p').html("sms send success");
				msg.remove();
			};
			$.ajax(sms);
		});
	});
	</script>
	
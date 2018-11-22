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
	OrganRegisterBean bean = (OrganRegisterBean) session.getAttribute("user");
	int organ_id = Integer.parseInt(request.getParameter("organ_id"));
	String organ_name = request.getParameter("organ_name");
	
	System.out.println("..organ_id.."+organ_id+"....organ_name..."+organ_name);
	
	if (bean != null) {
		int status = 0;
		Connection con = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		String sql = "SELECT id FROM detailed_register WHERE reg_id=? and organ_id=?";
		try {
			RegisterDetailsBean detailsBean = new RegisterDetailsBean();
			con = Database.getConnection();
			st = con.prepareStatement(sql);
			st.setInt(1, bean.getId());
			st.setInt(2, organ_id);
			rs = st.executeQuery();
			if (rs.next()) {
				status = rs.getInt("id");
			}

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
		System.out.println(status);
		
		if (status != 0) {
			response.sendRedirect("donorInsideDetails.jsp");// just redirect field
		} else {
			response.sendRedirect("donorRegisterDetails.jsp?organ_id="+organ_id+"&organ_name="+organ_name);
		}
	} else {

	}
%>


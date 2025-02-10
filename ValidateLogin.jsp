<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

	String uid=request.getParameter("txt_uid");
	String password=request.getParameter("txt_pass");
	Connection cn=(Connection)application.getAttribute("CONN");

	PreparedStatement ps=cn.prepareStatement("select * from login where userid=? and password=?");
	ps.setString(1, uid);
	ps.setString(2, password);
	
	ResultSet rs=ps.executeQuery();
	
	
	if(rs.next())
		{
		
			if(rs.getString(3).equals("Admin"))
				{
					response.sendRedirect("AdminWay.jsp");
					
				}
			else
				{
					response.sendRedirect("Userway.jsp");
					
				}
			
		}
	else
		{
		
				response.sendRedirect("ErrorPage.jsp");
		}
	

%>
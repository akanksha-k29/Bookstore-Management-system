package com.app;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.swing.JOptionPane;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;


@MultipartConfig(maxFileSize = 10000000L)
public class UploadServlet  extends HttpServlet{
	
	Connection cn;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		try
			{
					 cn=(Connection)config.getServletContext().getAttribute("CONN");
			
			}
		catch(Exception e)
			{
				JOptionPane.showMessageDialog(null, "Reason of Error::"+e.getMessage());
			}
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try
		{
					PrintWriter out=resp.getWriter();
				
					resp.setContentType("text/html");
			
					String category=req.getParameter("cmb_category");
					String bname=req.getParameter("txt_bname");
					String description=req.getParameter("ta_description");
					Part _part=req.getPart("file_upload");
					InputStream ins=_part.getInputStream();
					String author=req.getParameter("txt_author");
					double price= Double.parseDouble(req.getParameter("txt_bprice"));
					
					PreparedStatement ps=cn.prepareStatement("insert into books(bname,bdescription,cover_image,bprice,bauthor,category) values(?,?,?,?,?,?)");
					ps.setString(1, bname);
					ps.setString(2, description);
					ps.setBlob(3, ins);
					ps.setDouble(4, price);
					ps.setString(5, author);
					ps.setString(6, category);

					int a=ps.executeUpdate();
					
					
					if(a>0)
						{
						
							RequestDispatcher rd=req.getRequestDispatcher("bentry.jsp");
							rd.include(req, resp);
						
							out.println("<div align=center>");
							out.println("Record Inserted!");
							out.println("</div>");
						}
					
					
		
		
		}
	catch(Exception e)
		{
			JOptionPane.showMessageDialog(null, "Reason of Error::"+e.getMessage());
		}
	}

}

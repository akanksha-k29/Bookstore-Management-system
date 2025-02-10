package com.app;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

public class MyListener implements ServletContextListener{
	
	Connection cn;
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
	
			try
				{
					Class.forName("com.mysql.cj.jdbc.Driver");
					cn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bshop?autoReconnect=true&useSSL=false","root","boot");
					
					sce.getServletContext().setAttribute("CONN", cn);
				
				}
			catch(Exception e)
				{
				
					JOptionPane.showMessageDialog(null, "Reason of Error::"+e.getMessage());
				}
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		try
			{
				if(!cn.isClosed())
					cn.close();
			
			}
		catch(Exception e)
			{
			
			
			}
	}

}

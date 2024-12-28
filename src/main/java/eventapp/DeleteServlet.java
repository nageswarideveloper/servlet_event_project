package eventapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
@WebServlet("/del")
public class DeleteServlet extends HttpServlet{
@Override
public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
	int id = Integer.parseInt(req.getParameter("id"));
	Connection con =null;
	PreparedStatement ps=null;
//	System.out.println(id);
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management_sys","root","root");
		 ps = con.prepareStatement("delete from event where id=?");
		ps.setInt(1, id);
		int row = ps.executeUpdate();

		PrintWriter pw=res.getWriter();
		pw.write("<h1> id of"+id +" is Deleted sucessfully</h1>");
		RequestDispatcher rd = req.getRequestDispatcher("all");
		rd.include(req, res);
		
	} catch (ClassNotFoundException | SQLException e) {
		
		e.printStackTrace();
	}
	
	finally {
		if(ps!=null) {
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
		
	
}
}

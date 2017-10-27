package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ScopeServlet
 */
@WebServlet("/scope")
public class ScopeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScopeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String id=request.getParameter("id");
			String pw=request.getParameter("pwd");
			System.out.println(id+'\n'+pw);
			if(id==null||id.equals("")){
					throw new Exception("id는 필수 항목입니다.");
			}
			request.setAttribute("key", "rValue");
			request.getSession().setAttribute("key", "sValue");
			request.getServletContext().setAttribute("key", "appValue");
		} catch (Exception e) {
			request.setAttribute("error",e.getMessage());
		} finally{
			RequestDispatcher rd=request.getRequestDispatcher("jsp/Scope.jsp");
			rd.forward(request, response);			
		}
	}

}

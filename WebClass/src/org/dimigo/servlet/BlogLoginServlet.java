package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.MemberVo;

/**
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String pw=request.getParameter("pwd");
		boolean result=false;
		System.out.println(id + "test@naver.com".equals(id));
		if("test@naver.com".equals(id)){
			result=true;
		}
		HttpSession session=request.getSession();
		if(result){
			MemberVo mv=new MemberVo();
			mv.setId(id);
			mv.setPwd(pw);
			mv.setGrade(2);
			mv.setKlass(3);
			mv.setNum(17);
			mv.setName("Stoad");
			session.setAttribute("user",mv);
			RequestDispatcher rd=request.getRequestDispatcher("myblog/index.jsp");
			rd.forward(request,response);
		}
		else{
			request.setAttribute("error",id);
			RequestDispatcher rd=request.getRequestDispatcher("myblog/index.jsp");
			rd.forward(request, response);
		}
	}

}

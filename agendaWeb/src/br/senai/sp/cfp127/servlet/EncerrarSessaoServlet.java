package br.senai.sp.cfp127.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EncerrarSessaoServlet")
public class EncerrarSessaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EncerrarSessaoServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Invalida a sess�o e manda de volta para o login
		request.getSession().invalidate();
		response.sendRedirect("login.html");
	}

}

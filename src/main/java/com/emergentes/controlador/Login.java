
package com.emergentes.controlador;

import com.emergentes.utiles.Validate;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        action = (request.getParameter("action")==null) ? "view": request.getParameter("action");
        if (action.equals("login")){
            HttpSession ses =request.getSession();
            ses.invalidate();
        }
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println("Datos.. "+email+" "+password);
        
        // veridicar los datos
        Validate v = new Validate();
        
        if(v.checkUser(email, password)){
            //System.out.println("Todo OK");
            HttpSession ses = request.getSession();
            ses.setAttribute("login", "OK");
            response.sendRedirect("ClienteControlador");
        }else{
            //System.out.println("Incorrecto");
            response.sendRedirect("login.jsp");
        }
        
    }

}

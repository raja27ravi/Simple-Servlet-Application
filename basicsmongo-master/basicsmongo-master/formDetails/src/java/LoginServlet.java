/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mc13082
 */
public class LoginServlet extends HttpServlet {
    String username=null;
    String passwords=null;
public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    username = request.getParameter("name");
    passwords = request.getParameter("password");
    request.setAttribute("uname", username);
  
    if(passwords.equals(username)){ 
        RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
        rd.forward(request,response);  
    }  
    else{ 
        out.println("login failed");
        RequestDispatcher rd=request.getRequestDispatcher("failed.jsp");
        rd.include(request,response);
    }  
   
}
   
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LoginController;

import java.io.IOException;
import Dal.AccountDAO;
import Models.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class UserLogin extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public UserLogin() {
        super();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        if (session.getAttribute("userLogin") != null) {
            response.sendRedirect("HomePage.jsp");
        } else if (session.getAttribute("userLogin") == null) {
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("name");
        String password = request.getParameter("pass");
        AccountDAO login = new AccountDAO();
        Account account = login.getAccount(username, password);
        if (username.equals("") || password.equals("")){
              request.setAttribute("message", "Please enter your full username and password");
          processRequest(request, response);
        }
        if (account == null) {
            request.setAttribute("username", username);
            request.setAttribute("password", password);
            request.setAttribute("message", "Account does not exist. Try re-entering the user name or password");
            processRequest(request, response);
        } else {
//            if (request.getParameter("selector") != null && request.getParameter("selector").equals("on")) {
//                Cookie cookieSelector = new Cookie("accountId", String.valueOf(account.getAccountId()));
//                    cookieSelector.setMaxAge(604800);
//                    Cookie cookieValidator = new Cookie("username", account.getName() );
//                    cookieValidator.setMaxAge(604800);
//                    response.addCookie(cookieSelector);
//                    response.addCookie(cookieValidator);         
//            }
            if (account.getRole().equalsIgnoreCase("customer")) {
//                HttpSession session = request.getSession();
//                session.setAttribute("acc", account);
//                session.setAttribute("accname", account.getName());
                     request.setAttribute("usname", account.getName());
               request.getRequestDispatcher("HomePage.jsp").forward(request, response);
            } else if (account.getRole().equalsIgnoreCase("admin")) {

            } else if (account.getRole().equalsIgnoreCase("employee")) {

            }

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

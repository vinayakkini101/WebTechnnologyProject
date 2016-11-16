/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.JavaMD5Hash;
import model.SendMail;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CustomerWT;
import model.CustomerMasterDAOWT;
import javax.servlet.http.*;

import model.*;


/**
 *
 * @author universe
*/
public class SignUpServletWT extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
           
           CustomerWT c;
            c = CustomerWT.populateData4(request, response);
            System.out.println(c.getFirstName());
            System.out.println(c.getLastName());
            System.out.println(c.getContact());
            System.out.println(c.getAddress());
            System.out.println(c.getEmail());
            
            
            //Calling MD5 function
            String encrypt_pass=JavaMD5Hash.md5(c.getPassword());
            //Store encrypted password 
            c.setPassword(encrypt_pass);
 
            System.out.println(c.getPassword());
            
            
            
            request.setAttribute("customer",c);
            CustomerMasterDAOWT cdao = new CustomerMasterDAOWT();
            int check=cdao.createAccount(c);
    
            if(check>0)
            {
                request.setAttribute("customer",c);
                RequestDispatcher rd;
                rd = request.getRequestDispatcher("home.jsp");
                rd.forward(request, response);
                
               String to=request.getParameter("email");
               String subject = "Welcome to Car-MA";
                String message =  "You have successfully signed up for Car-Ma.com!";
                String user = "rocks.shaun@gmail.com";
                String pass = "manchesterrocks";
                SendMail.send(to,subject, message, user, pass);
                out.println("Mail sent successfully");
                
                
            }
            else
            {
                response.sendRedirect("SignUpFailed.jsp");
            }
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /*
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
        processRequest(request, response);
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.JavaMD5Hash;
import model.GenerateOTP;
import model.SMS;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CustomerMasterDAOWT;
import model.CustomerWT;

import model.*;


/**
 *
 * @author Vinayak
 */
public class ForgotPassServletWT extends HttpServlet {

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
            c = CustomerWT.populateData6(request, response);
   
            System.out.println(c.getEmail());
            
            String cont=c.getContact();           //stored in cont for SMS to be sent
           
            //String message=call otp func
            String message=GenerateOTP.gen();   
            
            //c.setPassword....overriding the user entered password with the random otp
            c.setPassword(message);
            //Calling MD5 function
            String NewPass=JavaMD5Hash.md5(c.getPassword());
            //Store encrypted password 
            c.setPassword(NewPass);
            
            
            System.out.println(message);
            System.out.println(cont);
            
            request.setAttribute("customer",c);
            CustomerMasterDAOWT cdao = new CustomerMasterDAOWT();
            int check=cdao.updatePassword(c);
    
         if(check>0)
         {
            request.setAttribute("customer",c);
            /*
                RequestDispatcher rd;
                rd = request.getRequestDispatcher("SignUpsuccess.jsp");
                rd.forward(request, response);
            */ 
            /*
            String to=request.getParameter("email");
            String subject = "Welcome to Car-MA";
            String actual_message="Your OTP is "+message+". This is your temporary password. Go to the password reset page to change your password.";       
            String user = "rocks.shaun@gmail.com";
            String pass = "manchesterrocks";
            SendMail.send(to,subject, actual_message, user, pass);
            out.println("Mail sent successfully");
            */
            
            SMS.sendSMS(message,cont);
            System.out.println("SMS sent successfully");
            
            response.sendRedirect("home.jsp");
                
         }
         else
         {
                response.sendRedirect("SignUpFailed.jsp");
         }
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.JavaMD5Hash;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;
import model.CustomerWT;
import model.CustomerMasterDAOWT;
/**
 *
 * @author universe
*/
public class LogInServletWT extends HttpServlet {

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
            c = CustomerWT.populateData2(request, response);
         
            System.out.println(c.getEmail());
            
            
            //Calling MD5 function
            String NewPass=JavaMD5Hash.md5(c.getPassword());
            //Store encrypted password 
            c.setPassword(NewPass);
            
            System.out.println(c.getPassword());
            
            
            
            String em=c.getEmail();
            String EncPass=JavaMD5Hash.md5("lord");
           
                
            if("lord@gmail.com".equals(em))
            {
                   request.setAttribute("customer",c);
                  CustomerMasterDAOWT cdao = new CustomerMasterDAOWT();
                   boolean a=cdao.checkAdminLogin(c);
            
                    if(a){
                        /*
                        request.setAttribute("customer",c);
                        RequestDispatcher rd;
                        rd = request.getRequestDispatcher("pagination.jsp");
                        rd.forward(request, response);
                        */
                        response.sendRedirect("admincontrol.jsp");
                        /*
                        RequestDispatcher rd1 = request.getRequestDispatcher("MailApp.java");
                        rd.forward(request,response);
                        */
                        /*
                        request.getRequestDispatcher("/MailApp?param5=value5").include(request,response);
                        */
                     }
                    else{
                                response.sendRedirect("register.jsp");
                      }
                    
            }
            else
            {
                 request.setAttribute("customer",c);
                  CustomerMasterDAOWT cdao = new CustomerMasterDAOWT();
                   boolean b=cdao.checkLogin(c);
            
                    if(b){
                 
                       
                        RequestDispatcher rd;
                        rd = request.getRequestDispatcher("home.jsp");
                        
                        System.out.println(c.getEmail());
            String sess=c.getEmail();
      
            HttpSession session = request.getSession();
            session.setAttribute("cemail", sess);
            //session.setAttribute("cpassword",c.getPassword);
            response.sendRedirect("home.jsp");
                
                        /*
                        RequestDispatcher rd1 = request.getRequestDispatcher("MailApp.java");
                        rd.forward(request,response);
                        */
                        /*
                        request.getRequestDispatcher("/MailApp?param5=value5").include(request,response);
                        */
                     }
                    else{
                            response.sendRedirect("loginsignup.jsp");
                      }
             
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

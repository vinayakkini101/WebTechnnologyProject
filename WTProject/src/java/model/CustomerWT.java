/* * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author universe
 */
public class CustomerWT {
    
    private String firstName;
    private String lastName;
    private String name;
    private String contact;
    private String address;
    private String email;
    private String password;
    private String source;
    private String destination;
    private int numOfDays;
    private String date;
    private String time;
    private String subject;
    private String message;
    private int registerNum;
    
   
       
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

   
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }
   

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getNumOfDays() {
        return numOfDays;
    }

    public void setNumOfDays(int numOfDays) {
        this.numOfDays = numOfDays;
    }

    public int getRegisterNum() {
        return registerNum;
    }

    public void setRegisterNum(int registerNum) {
        this.registerNum = registerNum;
    }

    
    
    
    public static CustomerWT populateData1(HttpServletRequest request, HttpServletResponse response)
    {
        CustomerWT c =new CustomerWT();
           
           
           c.setName(request.getParameter("name"));
           
           c.setEmail(request.getParameter("email"));
           c.setPassword(request.getParameter("password"));
           c.setSubject(request.getParameter("subject"));
           c.setMessage(request.getParameter("message"));
           
           
           /*
           c.setFirstName(request.getParameter("firstName"));
           c.setLastName(request.getParameter("lastName"));
           c.setContact(Integer.parseInt(request.getParameter("contact")));
           c.setAddress(request.getParameter("address"));
           c.setPassword(request.getParameter("password"));
           c.setSource(request.getParameter("source"));
           c.setDestination(request.getParameter("destination"));
           c.setNumOfDays(Integer.parseInt(request.getParameter("numOfDays")));
           c.setDate(request.getParameter("date"));
           c.setTime(request.getParameter("time"));
           c.setRegisterNum(Integer.parseInt(request.getParameter("registerNum")));
           
           */
           return c;
    }
    
    
    public static CustomerWT populateData2(HttpServletRequest request, HttpServletResponse response)
    {
        CustomerWT c =new CustomerWT();
           
           c.setEmail(request.getParameter("email"));
           c.setPassword(request.getParameter("password"));
     
               
           return c;
    }
    
     public static CustomerWT populateData3(HttpServletRequest request, HttpServletResponse response)
    {
        CustomerWT c =new CustomerWT();
        CarWT ca=new CarWT();
        
           c.setEmail(request.getParameter("email"));
           ca.setCarid(request.getParameter("carid"));
           c.setSource(request.getParameter("source"));
           c.setDestination(request.getParameter("destination"));
           c.setNumOfDays(Integer.parseInt(request.getParameter("numOfDays")));
           c.setDate(request.getParameter("date"));
           c.setTime(request.getParameter("time"));
           

           return c;
    }
     
     
    public static CustomerWT populateData4(HttpServletRequest request, HttpServletResponse response)
    {
        CustomerWT c =new CustomerWT();
           
         
           c.setFirstName(request.getParameter("firstName"));
           c.setLastName(request.getParameter("lastName"));
           c.setContact(request.getParameter("contact"));
           c.setAddress(request.getParameter("address"));
           c.setEmail(request.getParameter("email"));
           c.setPassword(request.getParameter("password"));
     
               
           return c;
    }
        
    
    public static CustomerWT populateData5(HttpServletRequest request, HttpServletResponse response)
    {
        CustomerWT c =new CustomerWT();
           

           c.setEmail(request.getParameter("email"));
         
           c.setPassword(request.getParameter("pass2"));
     
               
           return c;
    }
  
    
    public static CustomerWT populateData6(HttpServletRequest request, HttpServletResponse response)
    {
        CustomerWT c =new CustomerWT();
           
            c.setEmail(request.getParameter("email"));
           c.setContact(request.getParameter("contact"));
     
               
           return c;
    }
    
    public static CustomerWT populateData7(HttpServletRequest request, HttpServletResponse response)
    {
        CustomerWT c =new CustomerWT();
           
            c.setEmail(request.getParameter("email"));
           return c;
    }

    
    
}
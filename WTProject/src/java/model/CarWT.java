/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vinayak
 */
public class CarWT {
    
     String type;
     String brand;
     String model;
     String carid;
     String count;
     String price;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getCarid() {
        return carid;
    }

    public void setCarid(String carid) {
        this.carid = carid;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }
 
     public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
    
    public static CarWT populateData1(HttpServletRequest request, HttpServletResponse response)
    {
        CarWT ca=new CarWT();
        
        ca.setCarid(request.getParameter("carid"));
        ca.setType(request.getParameter("type"));
        ca.setModel(request.getParameter("model"));
        ca.setBrand(request.getParameter("brand"));
        ca.setCount(request.getParameter("count"));
        
        return ca;
    }
    
    public static CarWT populateData2(HttpServletRequest request, HttpServletResponse response)
    {
        CarWT ca=new CarWT();
        
        ca.setCarid(request.getParameter("carid"));
          ca.setPrice(request.getParameter("pr"));
          
        return ca;
    }

 
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.CarWT;

/**
 *
 * @author universe
 */
public class CustomerMasterDAOWT extends BaseDAOWT {
    Connection connection;
    PreparedStatement preparedStatement;
    Statement statement;
    ResultSet rs;
   
    
    public int createAccount(CustomerWT c) 
    {
        int check=0;
        
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        String sql = "INSERT INTO wtprojectdb.signup values(?,?,?,?,?,?)";
        try {
            preparedStatement= connection.prepareStatement(sql);
            preparedStatement.setString(1,c.getFirstName());;
            preparedStatement.setString(2,c.getLastName());
            preparedStatement.setString(3,c.getContact());
            preparedStatement.setString(4,c.getAddress());
            preparedStatement.setString(5,c.getEmail());
            preparedStatement.setString(6,c.getPassword());
            
                int count = preparedStatement.executeUpdate();
                check=count;
                if(count>0)
                {
                    System.out.println("Successfully Inserted");
                }else{
                    System.out.println("insertion failed");
                }
            } catch (SQLException ex) {
                    Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
                }
        return check;
    }
    
    
    
    
    /*
    public List findCustomerByName(String name)
    {    ArrayList<CustomerWT> addlist=new ArrayList<CustomerWT>();
        
        String sql="select * from wtprojectdb.customer where firstName like '%"+name+"%'";
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            preparedStatement=connection.prepareStatement(sql);
          
            rs=preparedStatement.executeQuery();
            while(rs.next())
            {   CustomerWT c  = new CustomerWT();
                System.out.println("test");
                c.setCustomerId(rs.getInt(1));
                c.setFirstName(rs.getString(2));
                c.setLastName(rs.getString(3));
                c.setDepartment(rs.getString(4));
                c.setEmail(rs.getString(5));
                addlist.add(c);
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return addlist;
    }
    public int removeCustomerById(int id)
    {int count = 0;
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String sql="delete from wtprojectdb.customer where ID = ?";
        try {
            preparedStatement= connection.prepareStatement(sql);
          
             preparedStatement.setInt(1,id);
                count = preparedStatement.executeUpdate();
                 if(count>0)
                {
                    System.out.println("Successfully Deleted");
                }else{
                    System.out.println("Deletion failed");
                }
                
             
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
              return count;
    }

*/
      public  boolean checkLogin(CustomerWT c)
    {
        try {
            connection=getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
           String sql = "SELECT * FROM wtprojectdb.signup WHERE  Email=? AND password=?";
        try {
                preparedStatement = connection.prepareStatement(sql);
                
                preparedStatement.setString(1,c.getEmail());
                preparedStatement.setString(2,c.getPassword());
                
                rs=preparedStatement.executeQuery();
                while( rs.next())
              {
              return true;
              }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
       
         return false;
    }
      
      
      
      public  boolean checkAdminLogin(CustomerWT c)
    {
        try {
            connection=getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
           String sql = "SELECT * FROM wtprojectdb.employee WHERE  Email=? AND password=?";
        try {
                preparedStatement = connection.prepareStatement(sql);
                
                preparedStatement.setString(1,c.getEmail());
                preparedStatement.setString(2,c.getPassword());
                
                rs=preparedStatement.executeQuery();
                while( rs.next())
              {
              return true;
              }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
       
         return false;
    }
      
      
      
         
      public void registerMethod(CustomerWT c,CarWT ca) 
    {
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        String sql = "INSERT INTO wtprojectdb.registration values(?,?,?,?,?,?,?)";
        try {
            preparedStatement= connection.prepareStatement(sql);
            preparedStatement.setString(1,c.getSource());;
            preparedStatement.setString(2,c.getDestination());
            preparedStatement.setInt(3,c.getNumOfDays());
            preparedStatement.setString(4,c.getDate());
            preparedStatement.setString(5,c.getTime());
          
            preparedStatement.setString(6,c.getEmail());
            preparedStatement.setString(7,ca.getCarid());
        
                int count = preparedStatement.executeUpdate();
                
                if(count>0)
                {
                    System.out.println("Successfully Inserted");
                }else{
                    System.out.println("insertion failed");
                }

                } catch (SQLException ex) {
                    Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
                }
        
    }
     
      public void putFeedback(CustomerWT c) 
    {
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        String sql = "INSERT INTO wtprojectdb.feedback values(?,?,?,?)";
        try {
            preparedStatement= connection.prepareStatement(sql);
            preparedStatement.setString(1,c.getName());
            preparedStatement.setString(2,c.getEmail());
            preparedStatement.setString(3,c.getSubject());
            preparedStatement.setString(4,c.getMessage());
        
                int count = preparedStatement.executeUpdate();
                
                if(count>0)
                {
                    System.out.println("Successfully Inserted");
                }else{
                    System.out.println("insertion failed");
                }
                } catch (SQLException ex) {
                    Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
                }
        
    }
      
      
      
     public int updatePassword(CustomerWT c) 
    {
        int check=0;
                
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        String sql = "UPDATE wtprojectdb.signup set password=? WHERE email=? ";
        try {
            preparedStatement= connection.prepareStatement(sql);
            
            preparedStatement.setString(2,c.getEmail());
            preparedStatement.setString(1,c.getPassword());
            
                int count = preparedStatement.executeUpdate();
          check=count;
                if(count>0)
                {
                    System.out.println("Successfully Inserted");
                }else{
                    System.out.println("insertion failed");
                }
                } catch (SQLException ex) {
                    Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
                }
       
        return check;
        
    } 
     
     
      public int addCar(CarWT ca) 
    {
        int check=0;
        
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        String sql = "INSERT INTO wtprojectdb.car values(?,?,?,?,?)";
        try {
            preparedStatement= connection.prepareStatement(sql);
            preparedStatement.setString(1,ca.getCarid());;
            preparedStatement.setString(2,ca.getType());
            preparedStatement.setString(3,ca.getBrand());
            preparedStatement.setString(4,ca.getModel());
            preparedStatement.setString(5,ca.getCount());
            
            
                int count = preparedStatement.executeUpdate();
                check=count;
                if(count>0)
                {
                    System.out.println("Successfully Inserted");
                }else{
                    
                    System.out.println("insertion failed");
                }
                } catch (SQLException ex) {
                    Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
                }
        return check;
    }
    
    
      public int removeCar(CarWT ca)
    {int count = 0;
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String sql="DELETE from wtprojectdb.car where carid = ?";
        try {
            preparedStatement= connection.prepareStatement(sql);
          
             preparedStatement.setString(1,ca.getCarid());
                count = preparedStatement.executeUpdate();
                 if(count>0)
                {
                    System.out.println("Successfully Deleted");
                }else{
                    System.out.println("Deletion failed");
                }
                
             
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
              return count;
    }

    
     public int removeCustomerById(String email)
    {int count = 0;
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String sql="DELETE  from wtprojectdb.signup where email= ?";
        try {
            preparedStatement= connection.prepareStatement(sql);
          
             preparedStatement.setString(1,email);
                count = preparedStatement.executeUpdate();
                 if(count>0)
                {
                    System.out.println("Successfully Deleted");
                }else{
                    System.out.println("Deletion failed");
                }
                
             
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
              return count;
    }

      
     /*
    public List DisplayCar() {
    /*
    private DataSource dataSource;
////    public ProductDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }
    
    public List<CarWT> list() throws SQLException {
        List<CarWT> ca = new ArrayList<CarWT>();

  
        List<CarWT> cal = new ArrayList<CarWT>();
         
        String sql="SELECT * FROM wtprojectdb.car";
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            preparedStatement=connection.prepareStatement(sql);
          
            rs=preparedStatement.executeQuery();
            while(rs.next()) 
            {
                CarWT ca = new CarWT();
                ca.setCarid(rs.getString(1));
                ca.setType(rs.getString(2));
                ca.setBrand(rs.getString(3));
                ca.setModel(rs.getString(4));
                ca.setCount(rs.getInt(5));
                cal.add(ca);
            }
        }
            
        catch (SQLException ex) {
        Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
        return cal;
    }
*/
      

    public ArrayList<CustomerWT> getAllCustomers(){
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
             ArrayList<CustomerWT> customerlist =new ArrayList<>();
             try{
                 Statement statement= connection.createStatement();
                 ResultSet rs=statement.executeQuery("SELECT * FROM wtprojectdb.signup LIMIT 10");
                 
                 while(rs.next()){
                     CustomerWT customer=new CustomerWT();
                     
                     customer.setFirstName(rs.getString("firstName"));
                     customer.setLastName(rs.getString("lastName"));
                     customer.setContact(rs.getString("contact"));
                   //  customer.getAddress(rs.getString("address"));
                     customer.setEmail(rs.getString("email"));
                     
                     customerlist.add(customer);
                 }
             }
             catch(SQLException e){
                 e.printStackTrace();
             }
            
        return customerlist;
}


public ArrayList<CarWT> getAllCars(){
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustomerMasterDAOWT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
             ArrayList<CarWT> carlist =new ArrayList<>();
             try{
                 Statement statement= connection.createStatement();
                 ResultSet rs=statement.executeQuery("SELECT * FROM wtprojectdb.car LIMIT 10");
                 
                 while(rs.next()){
                     CarWT car=new CarWT();
                     
                     car.setCarid(rs.getString("carid"));
                     car.setType(rs.getString("type"));
                     car.setBrand(rs.getString("brand"));
                     car.setModel(rs.getString("model"));
                     car.setCount(rs.getString("count"));
                   //  customer.getAddress(rs.getString("address"));
                    
                     
                     carlist.add(car);
                 }
             }
             catch(SQLException e){
                 e.printStackTrace();
             }
            
        return carlist;
}


}

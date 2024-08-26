/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnect;

/**
 *
 * @author MEDIAMART PHU SON
 */




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class DBConnect {

     public Connection getConnection()throws Exception {
        String url = "jdbc:sqlserver://ALEXANDER_T\\CSPTN1:1433;databaseName=Bookstore;user=sa;password=123;encrypt=false";

        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url);
    }   
 
   
    public static void main(String[] args){
        try{
            System.out.println(new DBConnect().getConnection());
        }catch(Exception e){
           
    }
    } 
}
    

 

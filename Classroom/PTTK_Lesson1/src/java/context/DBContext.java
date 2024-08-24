
package context;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class DBContext {

     public Connection getConnection()throws Exception {
        String url = "jdbc:sqlserver://ALEXANDER_T\\CSPTN1:1433;databaseName=bai1;user=sa;password=123;encrypt=false";
//         đoạn này nên thêm encrypt = false đề phòng sqlserver nó bảo mật 

// servername + portname + dbname + user + pass 

        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url);
    }   
 
   
    public static void main(String[] args){
        try{
            System.out.println(new DBContext().getConnection());
        }catch(Exception e){
            System.out.println("No");
    }
    } 
}
    

 
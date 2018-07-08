/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package aplikasipenjualan;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Raden
 */
public class KoneksiDB {
   private String url = "jdbc:mysql://localhost:3306/aplikasi_penjualan" ;
    private String username = "root";
    private String password = "";
    private String driver = "com.mysql.jdbc.Driver";
    private Connection conn;  
    
    public Connection get(){
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url,username,password);
        } catch (Exception e) {
            System.out.println(e+"");
        }
        return conn;
    }
}

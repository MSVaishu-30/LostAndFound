
package lostandfound;

import java.sql.Connection;
import java.util.logging.Level;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


/**
 *
 * @author hp
 */
public class ConnectMYSQL {

    private Connection ConnectMYSQL;

    public Connection connect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver Found!");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Driver Not Found!");
            System.out.println("Driver Found!" + e);
            System.exit(0);
        }

        try {
            ConnectMYSQL = DriverManager.getConnection("jdbc:mysql://localhost:3306/lostandfound", "root", "");
            System.out.println("Database Connected!");
        } catch (Exception se) {
            JOptionPane.showMessageDialog(null, "Database Connection Failed!");
            System.out.println("Database Connection Failed!" + se);
            System.exit(0);
        }
        return ConnectMYSQL;
    }
}
    


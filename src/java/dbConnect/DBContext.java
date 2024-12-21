package dbConnect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {

    /*USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE AND MULTILPE SQL SERVER INSTANCE(s)*/
    /*DO NOT EDIT THE BELOW METHOD, YOU MUST USE ONLY THIS ONE FOR YOUR DATABASE CONNECTION*/
    public Connection getConnection() throws Exception {
        String url = "jdbc:mysql://" + serverName + ":" + portNumber + "/" + dbName + "?useSSL=false";
        System.out.println("Connecting to database URL: " + url);
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(url, userID, password);
        System.out.println("Connection successful");
        return connection;
    }

    /*Insert your other code right after this comment*/
    /*Change/update information of your database connection, DO NOT change name of instance variables in this class*/
    private final String serverName = "localhost";
    private final String dbName = "Library_Manager";
    private final String portNumber = "3307"; // Default port for MySQL is 3306
    private final String userID = "root"; // Replace with your MySQL username
    private final String password = "@Rohan7777"; // Replace with your MySQL password

}
        
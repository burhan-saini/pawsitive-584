package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static final String URL =
        "jdbc:derby://localhost:1527/Pawsitive";

    private static final String USER = "paw";
    private static final String PASSWORD = "paw";

    public static Connection getConnection() {

        Connection conn = null;

        try {

            Class.forName("org.apache.derby.jdbc.ClientDriver");

            conn = DriverManager.getConnection(URL, USER, PASSWORD);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return conn;
    }

}
package com.cydeo.jdbcTests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_JDBCIntro {


    // CONNECTION STRING
    String dbUrl = "jdbc:oracle:thin:@54.210.245.220:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {


        //Create the connection
        //DriverManager class getConnection Method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        //It will help us to execute queries
        Statement statement = conn.createStatement();

        //ResultSet will store data after execution. It stores only data(there is no table info)
        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS where Manager_id is not null");


        //10-Administration-200-1700 -> print in this format

        while (rs.next()) {
            System.out.println(rs.getInt(1) + "-" + rs.getString(2) + "-" + rs.getInt(3) + "-" + rs.getInt(4));
        }

        System.out.println("_________________________________________");

        //Can we run another query in same connection ? -YES
        rs = statement.executeQuery("select * from LOCATIONS");
        //1297 Via Cola di Rie - Roma
        while (rs.next()) {
            System.out.println(rs.getString(2) + " - " + rs.getString(4));
        }


        //Close Connection
        rs.close();
        statement.close();
        conn.close();


    }


}

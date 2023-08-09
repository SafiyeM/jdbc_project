package com.cydeo.jdbctests.liveClasses;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_JDBCPractice {


    String dbURL = "jdbc:oracle:thin:@44.201.221.73:1521:xe";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void test1() throws SQLException {
            /*
        HOW TO INIT VARIABLE ?
        -> MAC --> OPT+ENTER
        -> WIN --> ALT+ENTER

         */
        // Driver manager will help us to create connection
        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        // Statement help us to execute any query
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // Resultset will store data after query execution
        ResultSet rs = statement.executeQuery("select  country_id, country_name from countries");


        //Retrieve Data

        System.out.println("__________________first row________________");
        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        System.out.println("__________________second row________________");
        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));
        System.out.println("__________________10th row________________");
        rs.absolute(10);

        System.out.println("__________________how many row we have________________");
        System.out.println(rs.getRow()); // -> from here we see only 10 row
        // to see all rows we need to go to the last row and get row count
        rs.last();
        int rowCount = rs.getRow();
        System.out.println(rowCount);

        System.out.println("__________________get me previous row information________________");
        rs.previous();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        System.out.println("__________________print all data dynamically________________");
        rs.beforeFirst();
        while (rs.next()) {
            System.out.println(rs.getString(1) + " - " + rs.getString(2));
        }

        // what if we have more than one row
        ResultSetMetaData rsmd = rs.getMetaData();

        System.out.println("---- HOW MANY COLUMN WE HAVE    -----");
        int columnCount = rsmd.getColumnCount();
        System.out.println(columnCount);

        System.out.println("---- WHAT ARE COLUMN NAMES    -----");
        System.out.println(rsmd.getColumnName(1));
        System.out.println(rsmd.getColumnName(2));

        System.out.println("---- PRINT ALL COLUMN NAMES DYNAMICALLY   -----");
        for (int i = 1; i <= columnCount; i++) {
            System.out.println(rsmd.getColumnName(i));
        }

        System.out.println("_____________Get all data dynamically________________");
        rs.beforeFirst();

        //iterate each row
        while(rs.next()){

            // iterate each column
            for (int i = 1; i <= columnCount; i++) {
                System.out.print(rsmd.getColumnName(i) + " - "+ rs.getString(i) + " ");
            }

            System.out.println();
        }





        // Close connection
        rs.close();
        statement.close();
        conn.close();


    }
}

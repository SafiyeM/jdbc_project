package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {


    // CONNECTION STRING
    String dbUrl = "jdbc:oracle:thin:@54.210.245.220:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {


        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select first_name, last_name from employees");

        // first row
        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        // second row
        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        // what if I want to get last row data?
        //last method
         /*
        ResultSet.TYPE_SCROLL_INSENSITIVE --> to do flexible navigation between rows
        ResultSet.CONCUR_READ_ONLY --> do not update anything from database, only read
         */
        rs.last();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        // how many rows we have (last + getRow)
        int rowNum = rs.getRow(); //the current row number; 0 if there is no current row

        System.out.println("rowNum = " + rowNum);

        System.out.println("--------ABSOLUTE---------");
        rs.absolute(46);
        // returns true : if the cursor is moved to a position in this ResultSet object;
        // returns false : if the cursor is before the first row or after the last row

        System.out.println(rs.getString(1) + " " + rs.getString(2)); //Alexander

        System.out.println("-------PREVIOUS----------");
        rs.previous(); // --> this brings the row 45
        //true if the cursor is now positioned on a valid row;
        // false if the cursor is positioned before the first row

        System.out.println(rs.getString(1) + " " + rs.getString(2)); //Guy Himuro

        //print the whole table
        rs.first(); //jump to first row

        rs.beforeFirst(); //jump into before first row

        System.out.println("---PRINTING TABLE----");

        while (rs.next()) {
            System.out.println(rs.getString(1) + " " + rs.getString(2));
        }


        rs.close();
        statement.close();
        conn.close();


    }
}

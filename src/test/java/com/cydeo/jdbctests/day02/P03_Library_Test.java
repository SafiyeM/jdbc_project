package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class P03_Library_Test {


    // Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username =  "library2_client";
    String password =  "6s2LQQTjBcGFfDhY";


    @Test
    public void task1(){

        //create connection
        DB_Util.createConnection(url, username, password);

        DB_Util.runQuery("select count(*) from books");

        String expectedBooksCount = DB_Util.getFirstRowFirstColumn();
        System.out.println(expectedBooksCount);
        /*
        Actual comes from UI with Selenium, cucumber, etc.
         */
        String actualBooksCount = "11620";
        Assertions.assertEquals(expectedBooksCount, actualBooksCount);


        // close connection
        DB_Util.destroy();









    }






}

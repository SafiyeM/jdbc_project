package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class P02_DBUtilsPractice {


    @Test
    public void task1(){
        // create connection
        DB_Util.createConnection();

        //run query
        DB_Util.runQuery("select first_name, last_name, salary from employees");

        //get result
        System.out.println("====GET ME FIRST ROW FIRST COLUMN===");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        System.out.println("====GET ME ALL COLUMN NAMES===");
        System.out.println(DB_Util.getAllColumnNamesAsList());

        System.out.println("====GET ME ALL FIRST NAMES===");
        System.out.println(DB_Util.getColumnDataAsList("first_name"));

        System.out.println("====GET ME HOW MANY ROWS WE HAVE===");
        System.out.println(DB_Util.getRowCount());

        System.out.println("====GET ME CERTAIN ROW INFO===");
        System.out.println("===GET ME AS MAP===");
        System.out.println(DB_Util.getRowMap(2));

        System.out.println("===GET ME AS LIST===");
        System.out.println(DB_Util.getRowDataAsList(2));

        System.out.println("===GET ME ALL DATA AS A LIST OF MAP ===");
        List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();

        for (Map<String, String> rowMap : allRowAsListOfMap) {
            System.out.println(rowMap);
        }


        // close connection
        DB_Util.destroy();


    }

















}

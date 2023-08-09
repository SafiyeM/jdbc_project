package com.cydeo.jdbctests.liveClasses;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class P02_DBUtil_Practice {


    @Test
    public void test1() {

        DB_Util.createConnection();

        DB_Util.runQuery("Select country_id, country_name from countries");



        System.out.println("GET ME ROW COUNT ");
        System.out.println(DB_Util.getRowCount());

        System.out.println("GET ME COLUMN COUNT ");
        System.out.println(DB_Util.getColumnCount());

        System.out.println("GET ALL COLUMN NAME AS LIST");
        System.out.println(DB_Util.getAllColumnNamesAsList());

        System.out.println("GET ROW DATA AS LIST--> FIRST ROW --> 1 ");
        System.out.println(DB_Util.getRowDataAsList(1));

        System.out.println("GET CELL VALUE --> int rowNum , int columnIndex");
        System.out.println(DB_Util.getCellValue(1, 1));

        System.out.println("GET CELL VALUE --> int rowNum ,String columnName");
        System.out.println(DB_Util.getCellValue(1, "Column_name"));


        System.out.println("GET FIRST ROW FIRST COLUMN VALUE");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        System.out.println("GET COLUMN DATA AS LIST--> int columnNum");
        System.out.println(DB_Util.getColumnDataAsList(1));

        System.out.println("GET COLUMN DATA AS LIST--> String columnName");
        System.out.println(DB_Util.getColumnDataAsList("Country_name"));

        System.out.println("GET ROW MAP");
        System.out.println(DB_Util.getRowMap(1));

        System.out.println("GET ALL ROW AS LIST OF MAP");
        List<Map<String, String>> allData = DB_Util.getAllRowAsListOfMap();

        //  we use for each loop to see allData in an organized way- > not necessary to do this step
        for (Map<String, String> eachRow : allData) {
            System.out.println(eachRow);
        }

        DB_Util.destroy();
    }




}

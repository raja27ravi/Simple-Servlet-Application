/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Servlet;

import javax.servlet.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

/**
 *
 * @author mc13082
 */
public class SaveServlet extends HttpServlet {
String empId=null;
String empName=null;
String teamname=null;
String tcat=null;
String tname=null;
String thours=null;
String ttopic=null;
String sdate=null;
String cdate=null;
Integer counter=0;

Integer i=0;

public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    empId=request.getParameter("employeeid");
    empName = request.getParameter("employeename");
    teamname = request.getParameter("projectteam");
   tcat = request.getParameter("trainingcategory");
    tname = request.getParameter("nameoftrainer");
     thours = request.getParameter("hoursoftraining");
      ttopic = request.getParameter("topic");
       sdate =  request.getParameter("startdate");
       cdate = request.getParameter("completiondate");
        request.setAttribute("uname", empName);
        request.setAttribute("emId", empId);
        request.setAttribute("teName", teamname);
     
    try{
        
        FileInputStream file = new FileInputStream(new File("C:\\Users\\mc13082\\Desktop\\form\\new.xls"));
        
    HSSFWorkbook workbook = new HSSFWorkbook(file);
        
    
    
                            
		HSSFSheet sheet = workbook.getSheetAt(0);
		
		Map<String, Object[]> data = new HashMap<>();
		//data.put("1", new Object[] {"Employee_Name", "Email"});
		data.put("2", new Object[] {empId, empName, teamname, tcat, tname, thours, ttopic, sdate ,cdate});
		
		counter = sheet.getPhysicalNumberOfRows();
		Set<String> keyset = data.keySet();
		int rownum = counter;
		for (String key : keyset) {
			HSSFRow row = sheet.createRow(rownum++);
			Object [] objArr = data.get(key);
			int cellnum = 0;
			for (Object obj : objArr) {
				Cell cell = row.createCell(cellnum++);
				if(obj instanceof Date) 
					cell.setCellValue((Date)obj);
				else if(obj instanceof Boolean)
					cell.setCellValue((Boolean)obj);
				else if(obj instanceof String)
					cell.setCellValue((String)obj);
				else if(obj instanceof Double)
					cell.setCellValue((Double)obj);
			}
		}
               
                    
                        file.close();
			FileOutputStream out = 
					new FileOutputStream(new File("C:\\Users\\mc13082\\Desktop\\form\\new.xls"));
			workbook.write(out);
			out.close();
                        
                        
                        
                        

			System.out.println("Excel written successfully..");
                        counter++;
			System.out.println(counter);
                        
                        RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
                        rd.forward(request,response);
                        
                          
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} 
    
}


}

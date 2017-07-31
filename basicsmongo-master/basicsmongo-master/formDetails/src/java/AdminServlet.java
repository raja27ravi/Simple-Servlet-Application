/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.servlet.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.hssf.usermodel.HSSFCell;
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
public class AdminServlet extends HttpServlet {
String adminame=null;
String adpassword=null;
   public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    adminame = request.getParameter("adminname");
    adpassword = request.getParameter("adminpassword");
    request.setAttribute("adname", adminame);
  
    try{
    FileInputStream file = new FileInputStream(new File("C:\\Users\\mc13082\\Desktop\\form\\new.xls"));
			 HSSFWorkbook workbook = new HSSFWorkbook(file);
    HSSFSheet worksheet = workbook.getSheetAt(0);
    ArrayList Rows = new ArrayList();
    
        for(int j = worksheet.getFirstRowNum()+1; j <= worksheet.getLastRowNum(); j++){
                        ArrayList row = new ArrayList();
			HSSFRow row1 = worksheet.getRow(j);
                        
			HSSFCell cellA1 = row1.getCell(0);
			String a1Val = cellA1.getStringCellValue();
                        row.add(a1Val);
			HSSFCell cellB1 = row1.getCell(1);
			String b1Val = cellB1.getStringCellValue();
                        row.add(b1Val);
			HSSFCell cellC1 = row1.getCell(2);
			String c1Val = cellC1.getStringCellValue();
                        row.add(c1Val);
			HSSFCell cellD1 = row1.getCell(3);
			String d1Val = cellD1.getStringCellValue();
                        row.add(d1Val);
                        HSSFCell cellE1 = row1.getCell(4);
			String e1Val = cellE1.getStringCellValue();
                        row.add(e1Val);
                        HSSFCell cellF1 = row1.getCell(5);
			String f1Val = cellF1.getStringCellValue();
                        row.add(f1Val);
                        HSSFCell cellG1 = row1.getCell(6);
			String g1Val = cellG1.getStringCellValue();
                        row.add(g1Val);
                        
                        HSSFCell cellH1 = row1.getCell(7);
			String h1Val = cellH1.getStringCellValue();
                        row.add(h1Val);
                        
                        
                        HSSFCell cellI1 = row1.getCell(8);
                        String i1Val = cellI1.getStringCellValue();
                        row.add(i1Val);
                        Rows.add(row);
			
			
        }
     
            request.setAttribute("results", Rows);
            if(adminame.equals("Admin") && adpassword.equals("admin")){ 
        RequestDispatcher rd=request.getRequestDispatcher("adminHome.jsp");
        rd.forward(request,response);  
    }  
    else{ 
        out.println("login failed");
        RequestDispatcher rd=request.getRequestDispatcher("afailed.jsp");
        rd.include(request,response);
    }
           
    }
    catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
    
    
     
   
}
}

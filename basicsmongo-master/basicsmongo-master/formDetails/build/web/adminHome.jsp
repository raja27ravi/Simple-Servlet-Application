<%-- 
    Document   : adminHome
    Created on : Sep 19, 2016, 10:49:03 AM
    Author     : mc13082
--%>

<%@page import="java.util.Locale.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Application Form</title>
        <link rel="stylesheet" href="submitform.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
<link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/plug-ins/1.10.7/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/plug-ins/1.10.7/integration/bootstrap/3/dataTables.bootstrap.js"></script>


<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js">
    
</script>
     
</head>
<body>

    <div class="header col-sm-12">
            <p class="heading">CRS TEAM - TRAINING DETAILS</p>  
    </div>
    <div class="wrapper container">
 <div class="formadmin col-sm-12">
     
     <% String userlabe=(String)request.getAttribute("adname"); %>
     
     <p class="welcomespeech">Hi <span class="welcome" id="drought"><%=userlabe%>,</span><br><br> <span class="clicktodownload">The Training Details of All Team Members is shown below</span></p>
    
    
     <p> 
     <br>
     <br>

<div>
<table id="sortable" class="col-sm-8 table fixed" border="1">
    <thead>
      <tr class="danger">
        <th>Employee ID</th>
        <th>Employee Name</th>
        <th class="col-sm-3">Team Name</th>
        <th>Training Category</th>
        <th>Name Of Trainer/Instructor</th>
        <th>Total hours of Training</th>
        <th>Topic of Training/Certification/Course</th>
        <th class="col-sm-2">Start Date</th>
        <th class="col-sm-2">Completion Date</th>
      </tr>
    </thead>
    <tbody>
   <%  ArrayList Rowed = new ArrayList();
    ArrayList Rowss = new ArrayList();
    String cells = null;
   int h=0;
    Rowed = (ArrayList)request.getAttribute("results");
    
   
    System.out.println(Rowed);
    for(int i=0;i<Rowed.size();i++){ 
    
    if(h==0){%>
        <tr class="">
           <% h++;}
        else if(h==1){ %>
        <tr class="">
          <% h++;  } 
            else{ %>
         <tr class="">
          <% h=1; } %>
       
       <% Rowss = (ArrayList)Rowed.get(i);
        for(int k=0;k<Rowss.size();k++){
            
            cells = (String)Rowss.get(k); 
            
            %><td><%= cells %></td> <%
        }
       %> </tr> <%
    }
    %>
    </tbody>
</table>
</div>
     <form method="post" action="adminDown" id="adminH" class="form-horizontal">
   
  <button type=submit id="downloadbutton" class="btn btn-primary">DOWNLOAD DETAILS</button>
  
  <a class="btn btn-primary logout" id="anchorbutton" role=button href="http://169.172.218.182:8080/formDetails">LOGOUT</a>
  
</form>
    </div>
     </div>
     <div id="results"></div>
<div class="footer col-sm-12">
</div>
   
     <script type="text/javascript" src="validation.js">
         
    </script> 

    </body>
</html>

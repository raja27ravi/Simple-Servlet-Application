<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
        <link rel="stylesheet" href="submitform.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
 <script type="text/javascript" src="validation.js"></script> 
  
    </head>
    
    <body>
        <div class="header col-sm-12">
        <p class="heading">CRS FUSION TEAM - TRAINING DETAILS</p>  
</div>
 <div class="indexform col-sm-12">
     <% String userlabel=(String)request.getAttribute("uname"); %>
     <%session.setAttribute("userId", userlabel);%>
     <p class="welcomespeech">Hi <span class="welcome"><%=userlabel%></span>,<br><br> Your Training Details have been submitted successfully.<br><br>You can close the window now or <a class="enteredretry" href="http://169.172.218.182:8080/formDetails/Home.jsp">Click here</a> to enter some more details of training.</p>
     <br>
     <a class="btn btn-primary logout" id="anchobutton" role=button href="http://169.172.218.182:8080/formDetails">LOGOUT</a>
     <br>

  </div>
       
 

        
<div id="results"></div>
<div class="footer col-sm-12">
</div>
    </body>
    
</html>
<%-- 
    Document   : adminLogin
    Created on : Sep 16, 2016, 6:03:15 PM
    Author     : mc13082
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="submitform.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="header col-sm-12">
    <p class="heading">CRS TEAM - TRAINING DETAILS</p>
</div>
<div class="indexform col-sm-12">
    <p class="welcomesp">Admin Login to retrieve Training Details</p>
    <br>
<form method="post" action="AdminServlet" id="mycontact" class="form-horizontal admincenter">
  <div class="form-group nameSection">
    <label class="control-label col-sm-2" for="Name">Name</label>
    <div class="col-sm-3">
      <input type="text" name="adminname" class="form-control" id="name" required="" oninvalid="this.setCustomValidity('Please enter your Name')" oninput="setCustomValidity('')" placeholder="Enter your Name">
    </div>
  </div>
  
  <div class="form-group courseNameSection">
    <label class="control-label col-sm-2" for="password">Password</label>
    <div class="col-sm-3">
      <input type="password" name="adminpassword" class="form-control" id="password" required="" oninvalid="this.setCustomValidity('Please enter Password')" oninput="setCustomValidity('')" placeholder="Enter Password">
    </div>
  </div>
 
 

  <button type=submit id="loginButton" class="btn btn-primary">LOGIN</button>
  


  
  </form>
</div>
<div id="results"></div>
<div class="footer col-sm-12">
</div>
<script type="text/javascript" src="validation.js"></script> 
</body>

</html>


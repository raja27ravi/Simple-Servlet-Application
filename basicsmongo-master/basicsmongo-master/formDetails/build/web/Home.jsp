<%-- 
    Document   : Home
    Created on : Sep 13, 2016, 3:41:31 PM
    Author     : mc13082
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Application Form</title>
        <link rel="stylesheet" href="submitform.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
     
  
    </head>
    
    <body>
        <div class="header col-sm-12">
        <p class="heading">CRS TEAM - TRAINING DETAILS</p>  
</div>
 <div class="formadmin col-sm-12">
     
     <% String userlabel=(String)request.getAttribute("uname"); %>
     
     <p class="welcomespeech"><br><br> Enter your Training Details and submit to proceed</p>
     <br>
     <br>
<form method="post" action="SaveServlet" id="mycontact" class="form-horizontal">
   
  <div class="form-group namSection">
    <label class="control-label col-sm-2" for="Name">Employee ID</label>
    <div class="col-sm-4">
      <input type="number" name="employeeid" class="form-control" id="name" required oninvalid="this.setCustomValidity('Please enter your Employee ID')" oninput="setCustomValidity('')" placeholder="Enter your Employee ID">
    </div>
  </div>
  
  <div class="form-group coursNameSection">
    <label class="control-label col-sm-2" for="email">Employee Name</label>
    <div class="col-sm-4">
      <input type="text" name="employeename" class="form-control" id="password" required oninvalid="this.setCustomValidity('Please enter your Name')" oninput="setCustomValidity('')" placeholder="Enter your Name">
    </div>
  </div>
    <div class="form-group projectteam">
        <label class="col-sm-2 control-label">Project Team</label>
        <div class="col-sm-4 selectContainer">
            <select required="" name="projectteam" class="form-control" id="projectteam" oninvalid="this.setCustomValidity('Please enter your team name')" oninput="setCustomValidity('')">
                <option value="">Select</option>
                <option value="Fusion Servicing">Fusion Servicing</option>
                <option value="Fusion ACQ">Fusion ACQ</option>
                <option value="Fusion Commercial">Fusion Commercial</option>                
              </select>
        </div>
    </div>
    <div class="form-group trainingCategory">
        <label class="col-sm-2 control-label">Training Category</label>
        <div class="col-sm-4 selectContainer">
            <select required="" name="trainingcategory" class="form-control" id="typeoftraining" oninvalid="this.setCustomValidity('Please enter Training category')" oninput="setCustomValidity('')">
                <option value="">Select</option>
                <option value="Internal Certification">Internal Certification</option>
                <option value="External Certification">External Certification</option>
                <option value="Internal Training">Internal Training</option>
                <option value="External Training">External Training</option>
                <option value="Internal KT">Internal KT (Project Specific)</option>
                <option value="iEvolve Course">iEvolve Course</option>
                <option value="TCS ION Course">TCS ION Course</option>
                <option value="CITI Mandatory Course">CITI Mandatory Course</option>
                <option value="Seminar">Conducted Training</option>
              </select>
        </div>
    </div>
    <div class="form-group nameofinstructor">
    <label class="control-label col-sm-2" for="email">Name of the Trainer/Instructor</label>
    <div class="col-sm-4">
      <input type="text" name="nameoftrainer" class="form-control" id="nameoftrainer" oninvalid="this.setCustomValidity('Please enter name of Trainer')" oninput="setCustomValidity('')" placeholder="Enter the Name of Trainer/Instructor">
    </div>
  </div>
    
    <div class="form-group nameofinstructor">
    <label class="control-label col-sm-2">Total hours of Training/Seminar</label>
    <div class="col-sm-4">
      <input type="number" name="hoursoftraining" class="form-control" id="hoursoftraining" required oninvalid="this.setCustomValidity('Please enter total hours of training')" oninput="setCustomValidity('')" placeholder="Enter total hours of training">
    </div>
    </div>
    <div class="form-group coursNameSection">
    <label class="control-label col-sm-2" for="email">Training/Certification/Course Name</label>
    <div class="col-sm-4">
      <input type="text" name="topic" class="form-control" id="password" required oninvalid="this.setCustomValidity('Please enter name of Training/Certification/Course')" oninput="setCustomValidity('')" placeholder="Enter your Training/Certification/Course Name">
    </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Training/Certification/Course Start Date</label>
        <div class="col-sm-4 date">
            <div class="input-group input-append date" id="datePicker">
                <input type="text" class="form-control" required="" maxlength="10" oninvalid="this.setCustomValidity('Please enter start date of Training/Certification/Course')" onchange="setCustomValidity('')" name="startdate" />
                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Training/Certification/Course Completion Date</label>
        <div class="col-sm-4 date">
            <div class="input-group input-append date" id="datePicker1">
                <input type="text" class="form-control" required="" maxlength="10" oninvalid="this.setCustomValidity('Please enter completion date of Training/Certification/Course')" onchange="setCustomValidity('')" name="completiondate" />
                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
            </div>
        </div>
    </div>
    
    
    
    <div>
  <button type=submit id="submitButton" class="btn btn-primary">SUBMIT DETAILS</button>
    </div>

</form>
  </div>
       
 

        
<div id="results"></div>
<div class="footer col-sm-12">
</div>
<script type="text/javascript" src="validation.js"></script> 
    </body>

</html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>EAS Serviceing Report Tool</title>
 
<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>
 
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
	<div class="navbar-header">
		<a class="navbar-brand" href="#" style="color:#ff9900">ESA Reporting Tool</a>
	</div>
  </div>
</nav>
 
<div class="jumbotron">
  <div class="container">
	<h1>${title}</h1>
	<p>
		<c:if test="${not empty name}">
			Hello ${name}
		</c:if>
 
		<c:if test="${empty name}">
			Welcome To Service Monitoring Tool!
		</c:if>
    </p>
    <p>
		<a class="btn btn-primary btn-lg" href="https://www.remedyprod.monsanto.com" role="button">Go To Remedy</a>
	</p>
	</div>
</div>
 
<div class="container">
 
  <div class="row">
	<div class="col-md-6">
		<h2>View List of Reports Service</h2>
		<a class="btn btn-warning btn-lg"  href="#" style="display:block" role="button">Report Service-D</a>
		
		<a class="btn btn-default btn-lg" href="#"  style="display:block" role="button">Report Service-T</a>
		<a class="btn btn-default btn-lg " href="#"  style="display:block" role="button">Report Service-Q</a>
		
		<a class="btn btn-success btn-lg" href="#"  style="display:block" role="button">Report Service-P</a>
		
	</div>
	<div class="col-md-6">
		<h2>Retrieve Document Service</h2>
		<a class="btn btn-warning btn-lg col md-12" href="#" style="display:block" role="button">Retrieve Document Service-D</a>
		<a class="btn btn-default btn-lg col md-12" href="#" style="display:block" role="button">Retrieve Document Service-T</a>
		<a class="btn btn-default btn-lg col md-12" href="#"  style="display:block" role="button">Retrieve Document Service-Q</a>
		<a class="btn btn-success btn-lg col md-12" href="#" style="display:block"  role="button">Retrieve Document Service-P</a>
			</div>
	<div class="col-md-6">
		<h2>Retrieve Criteria List For Report Service</h2>
		<a class="btn btn-warning btn-lg col md-12" href="#" style="display:block" role="button">Retrieve Criteria List-D</a>
		<a class="btn btn-default btn-lg col md-12" href="#" style="display:block" role="button">Retrieve Criteria List-T</a>
		<a class="btn btn-default btn-lg col md-12" href="#" style="display:block" role="button">Retrieve Criteria List-Q</a>
		<a class="btn btn-success btn-lg col md-12" href="#" style="display:block" role="button">Retrieve Criteria List-P</a>
	</div>
	<div class="col-md-6">
		<h2>Retrieve DS With Criteria Service</h2>
			<a class="btn btn-warning btn-lg col md-12" href="#" style="display:block"  role="button">Retrieve Criteria Service-D</a>
			<a class="btn btn-default btn-lg col md-12" href="#" style="display:block" role="button">Retrieve Criteria Service-T</a>
			<a class="btn btn-default btn-lg col md-12" href="#" style="display:block" role="button">Retrieve Criteria Service-Q</a>
			<a class="btn btn-success btn-lg col md-12" href="#" style="display:block" role="button">Retrieve Criteria Service-P</a>
	</div>
	
  </div>
 
 
  <hr>
  <footer>
	<p>&copy; Monsanto 2017</p>
  </footer>
</div>
 
<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />
 
<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 
</body>
</html>
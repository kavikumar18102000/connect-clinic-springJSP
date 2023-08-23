<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </head>
  
  <body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Connect Clinic</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#"> "Welcome -> ${username} "</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#"></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#"></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#"></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#"></a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#"></a>
        </li>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page"></a>
        </li>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page"></a>
        </li>
        </li><li class="nav-item">
          <a class="nav-link active" aria-current="page"></a>
        </li>
       </li><li class="nav-item">
          <a class="nav-link active" aria-current="page"></a>
        </li>
       </li><li class="nav-item">
          <a class="nav-link active" aria-current="page"></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page"></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="logout">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="bg-image p-5   mb-5 text-black" style="background-image:url(static/d11.jpg);background-size:cover;height:95vh">
<div class="container  jumbotron">
  <h4 class="text-center bg-info mt-3">CLINICS IN YOUR LOCATION </h4>

  
	 <style>
        a{
            color: white;
        }
        a:hover {
            color: white;
            text-decoration: none;
        }
    </style>


    <div class="container">
        <form:form>

            <table class="table table-dark table-hover mt-5" id="table" border="1">
            	<tr class="table-primary">
            		<th>CLINIC NAME</th>
            		<th>LOCATION</th>
            		<th>DOCTOR IN CHARGE</th>
            		<th>PHONE</th>
            		<th>OPEN TIME (AM)</th>
            		<th>CLOSE TIME (PM)</th>
            		<th>ACTION</th>
            	</tr>

            	<c:forEach var="clinic" items="${list}">
                    <tr class="table-danger">
                		<td>${clinic.clinicName}</td>
                		<td>${clinic.clinicLocation}</td>
                		<td>${clinic.doctorName}</td>
                		<td>${clinic.clinicPhone}</td>
                		<td>${clinic.openTime}</td>
                		<td>${clinic.closeTime}</td>
                		<td><button type="button" class="btn btn-danger">
                			<a href="/bookform/${clinic.clinicEmail}">Book Appointment</a>
                		</button></td>
                	</tr>

            	</c:forEach>

            </table>

        </form:form>
    </div>
</div>
</div>

  </body>
</html>
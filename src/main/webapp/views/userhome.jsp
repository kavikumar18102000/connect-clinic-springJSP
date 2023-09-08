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

    <c:if test="${message=='Not detected'}">
       <div class="alert alert-warning alert-dismissible fade show" role="alert">
		  <strong>No clinics detected in the entered location</strong> 
		  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	   </div>
    </c:if>
    <c:if test="${message=='Booking Ok'}">
       <div class="alert alert-warning alert-dismissible fade show" role="alert">
		  <strong>Appointment Booked Successfully</strong> 
		  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	   </div>
    </c:if>
     <c:if test="${message=='Deleted'}">
       <div class="alert alert-warning alert-dismissible fade show" role="alert">
		  <strong>Deleted Appointment Successfully</strong> 
		  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	   </div>
    </c:if>
     <c:if test="${message=='Not Deleted'}">
       <div class="alert alert-warning alert-dismissible fade show" role="alert">
		  <strong>Failed in deleting the appointment</strong> 
		  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	   </div>
    </c:if>
    

    <form class="d-flex justify-content-center align-items mt-5" role="search" action="/userSearch" method="post">
        <input class="form-control me-2 w-50" type="search" name="location" placeholder="     Search to book Appointments" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      
      <div class="container">
       <h4 class="text-center bg-info mt-3">YOUR RECENT APPOINTMENTS</h4>
        <form:form>

            <table class="table table-dark table-hover mt-5" id="table" border="1">
            	<tr class="table-primary">
            		<th>CLINIC NAME</th>
            		<th>LOCATION</th>
            		<th>DOCTOR Name</th>
            		<th>SLOT</th>
            		<th>TIME</th>
            		<th>ACTION</th>
            	</tr>

            	<c:forEach var="booking" items="${bookings}">
                    <tr class="table-danger">
                		<td>${booking.clinicName}</td>
                		<td>${booking.clinicAddress}</td>
                		<td>${booking.doctorName}</td>
                		<td>${booking.slot}</td>
                		<td>${booking.startTime}</td>
                		<td><button type="button" class="btn btn-danger">
                			<a href="/delete/${booking.bookingId}">Remove/Cancel</a>
                		</button></td>
                	</tr>

            	</c:forEach>

            </table>

        </form:form>
    </div>
  </body>
</html>
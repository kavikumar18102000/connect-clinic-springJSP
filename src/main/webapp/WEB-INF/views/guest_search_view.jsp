<%@ taglib prefix="background-image" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page = "base.jsp" />

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
                			<a href="/userlogin">Book Appointment</a>
                		</button></td>
                	</tr>

            	</c:forEach>

            </table>

        </form:form>
    </div>
</div>
</div>
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
          <a class="nav-link active" href="/logout">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="container mt-5">
    <div class="row">
      <div class="col-md-4"></div>
      <div class="col-md-4 jumbotron">
        <h4 class="text-center bg-info">BOOKING FORM</h4>
        <br>
<c:choose>
    <c:when test="${message=='Time slot taken'}">
       <div class="alert alert-warning alert-dismissible fade show" role="alert">
		  <strong>Time slot already taken..</strong> 
		  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	   </div>
    </c:when>
    <c:otherwise>
    </c:otherwise>
  </c:choose>

       <form:form action="/book" modelAttribute="bookings" autocomplete="off">
       		<div class="mb-3">
            <label for="clinic name " class="form-label">Clinic Name </label>
            <input type="text" class="form-control" id="c_name" aria-describedby="clininame" name="clinicName" placeholder="clinic name" value="${clinicName}" required>
          </div>
          <div class="mb-3">
            <label for="clinic address " class="form-label">Clinic Address <Address></Address> </label>
            <input type="text" class="form-control" id="c_address" name="clinicAddress" value="${clinicAddress}" placeholder="c_address" required>
          </div>
          <div class="mb-3">
            <label for="clinic address " class="form-label">Clinic Email <Address></Address> </label>
            <input type="text" class="form-control" id="c_address" name="clinicEmail" value="${clinicEmail}" placeholder="c_address" required>
          </div>
          <div class="mb-3">
            <label for="clinic address " class="form-label">Doctor </label>
            <input type="text" class="form-control" id="doctor" name="doctorName" value="${doctorName }" placeholder="Doctor" required>
          </div>
          <div class="mb-3">
            <label for="clinic contact " class="form-label">Patient Email</label>
            <input type="email" class="form-control" id="cphone" name="patientEmail" value="${useremail}" placeholder="email" required>
          </div>
          <div class="mb-3">
            <label for="name " class="form-label">Patient name</label>
            <input type="text" class="form-control" id="name" name="patientName"  placeholder="Enter Patient Name" required>
          </div>
           <div class="mb-3">
            <select class="form-control" id="gender" name="patientGender"  required>
                <option selected>Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Others">Others</option>
         
              </select>
          </div>
          <div class="mb-3">
            <select class="form-control" id="slot" name="slot"  required>
                <option selected>Slot</option>
                <option value="morning">Morning</option>
                <option value="evening">Evening</option>
                <option value="night">Night</option>
         
              </select>
              </div>
          <div class="mb-3">
            <select name="startTime" id="start_time" class="form-control" value="select start time"  required>
              <option selected>select start time</option>
              <option value="11:00:00">11:00:00</option>
              <option value="11:30:00">11:30:00</option>
              <option value="12:00:00">12:00:00</option>
              <option value="12:30:00">12:30:00</option>
              <option value="03:00:00">03:00:00</option>
              <option value="03:30:00">03:30:00</option>
              <option value="04:00:00">04:00:00</option>
              <option value="08:00:00">08:00:00</option>
              <option value="08:30:00">08:30:00</option>
            </select>
          </div>
          <div class="mb-3">
            <input type="text" value="EndTime" id="end_time" name = "endTime" class="form-control" readonly>
          </div>
          <div class="mb-3">
            <input type="date" class="form-control" name="date" placeholder="date" required>
          </div>
          <div class="mb-3">
            <input type="text" class="form-control" id="disease" name="disease" placeholder="Enter the disease" required>
          </div>
          <div class="form-group">

            <input type="text" class="form-control" id="number" name="patientPhone" placeholder="Enter the contact number" required>
          
          </div><br>
          <button type="submit" class="btn btn-primary" >Book Appointment</button>
          </div>
       </form:form>
      </div>
      <div class="col-md-4"></div>
    </div>

  </div>

  <script>
      var start_time = document.querySelector('#start_time');
      var end_time = document.querySelector('#end_time')
    start_time.addEventListener('change', function() {
    var value = start_time.value;
    switch(value) {
  
      case '11:00:00':
        end_time.value = '11:30:00';
        break;
      case '11:30:00':
        end_time.value = '12:00:00';
        break;
      case '12:00:00':
        end_time.value = '12:30:00';
        break;
      case '12:30:00':
        end_time.value = '01:00:00';
        break;
  
      case '03:00:00':
        end_time.value = '03:30:00';
        break;
      case '03:30:00':
        end_time.value = '04:00:00';
        break;
      case '04:00:00':
          end_time.value = '04:30:00';
          break;
      case '08:00:00':
        end_time.value = '08:30:00';
        break;
      case '08:30:00':
         end_time.value = '9:00:00';
         break;

        
      default:
        end_time.value = 'EndTime';
    }
  })
  </script>


  </body>
</html>
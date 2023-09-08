<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/webresources/style/style.css"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

    <script>
        function passcheck() {
          var a = document.getElementById("password");
          if (a.type === "password") {
            a.type = "text";
          } else {
            a.type = "password";
          }
        }
    </script>

  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark  text-dark">
      <div class="container-fluid">
      	<img alt="logo" class="logo" src="/webresources/images/stethoscope-1.png">
        <a class="navbar-brand text-dark" href="#">CONNECT CLINIC</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse ml-50" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active text-dark ml-50" aria-current="page" href="/">Home</a>
            </li>
    		<li class="nav-item dropdown">
      		<a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        		Authentication
      		</a>
      		<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
       		 <li><a class="dropdown-item text-dark"  href="usersignup">User Signup</a></li>
       		 <li><a class="dropdown-item text-dark" href="userlogin">User Login</a></li>
     	 </ul>
        </div>
      </div>
    </nav>
  </body>
</html>
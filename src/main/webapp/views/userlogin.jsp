<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="background-image" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page = "base.jsp" />


<div class="bg-image p-5   mb-5 text-black" style="background-image:url(static/d1.jpg);background-size:cover;height:80vh;">
<div class="container mt-1">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4 jumbotron">
 
    <c:if test="${message=='Invalid'}">
       <div class="alert alert-warning alert-dismissible fade show" role="alert">
		  <strong>Invalid Credentials</strong> 
		  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	   </div>
    </c:if>

   
    <h4 class="text-center bg-info">LOGIN FORM</h4>
    <br>
    <form action="/loginSuccess" method="post" autocomplete="off">
      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email address</label>
        <input type="email" class="form-control" id="useremail" aria-describedby="emailHelp" name="email" required>
        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
        <div id = "show"> <input type="checkbox" onclick="passcheck()"> Show Password</div>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    <br> 
    Not an user <a href="usersignup" class="loginhere">Sign Up Here</a>
  </div>
    <div class="col-md-4"></div>
    </div>
   </div>
</div>


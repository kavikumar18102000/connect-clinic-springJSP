<%@ taglib prefix="background-image" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page = "base.jsp" />

<c:choose>
    <c:when test="${message=='Not detected'}">
       <div class="alert alert-warning alert-dismissible fade show" role="alert">
		  <strong>No Clinics Detected in the entered location...</strong> 
		  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	   </div>
    </c:when>
    <c:when test="${message=='Logout'}">
    	<div class="alert alert-warning alert-dismissible fade show" role="alert">
		  <strong>Logged Out Successfully..</strong> 
		  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	   </div>
    </c:when>
    <c:otherwise>
      
    </c:otherwise>
</c:choose>

<div class="d-flex justify-content-center align-items">
    <form action="${pageContext.request.contextPath}/searchResults" method="post" >
        <input type="text" class="search" name="location"
               placeholder="       Enter your locality name to view clinics near you      " required>
        <input type="submit" class="searchbutton" value="search" >
    </form>
    
</div>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>shopping cart</title>
</head>
<body>
<center>
<h1>ShoppingCart</h1>

<h3> ${msg} </h3>

<h3> ${successMessage} </h3>

<h3> ${errorMessage} </h3>


${loginMessgae}
<hr>

<jsp:include page="CategoryMenu.jsp"></jsp:include>
<br>
<jsp:include page="CategoryMenu2.jsp"></jsp:include>
<br>


<c:if test="${empty loginMessage }">
<a href="login">Login </a><br>
</c:if>

<c:if test="${not empty loginMessage }">
<a href="logout">Logout </a><br>
<a href="mycart"> MyCarts </a>
</c:if>




<a href="register">Register </a><br>





      <c:if test="${isUserClickedLogin==true}">
        <jsp:include page="Login.jsp"></jsp:include><br>
      </c:if>
      
      
       <c:if test="${not empty errorMessage}">
        <jsp:include page="Login.jsp"></jsp:include><br>
      </c:if>
      


<c:if test="${isUserClickedRegister==true}">
         <jsp:include page="Register.jsp"></jsp:include>
</c:if>

</center>
</body>
</html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="navbar text-center">

<nav class="navbar navbar-inverse bg-primary">
 
	 <form class="navbar-form navbar-left" role="search">
       <div class="form-group">
         <input type="text" class="form-control" placeholder="Search">
       </div>
       <button type="submit" class="btn btn-default">Submit</button>
     </form>
<p class="navbar-text pull-right">
  <c:if  test="${!empty login}"> LogIn as: 	<span class="glyphicon glyphicon-user"></span> </c:if><a href="#" class="navbar-link"> ${login.user}</a>
  
 <c:choose>
    <c:when test="${login==null}">
      <a class="navbar-link" href="${pageContext.request.contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Log In</a>
        <br />
    </c:when>    
    <c:otherwise>
      <a class="navbar-link" href="${pageContext.request.contextPath}/logout"><span class="glyphicon glyphicon-log-in"></span> Log Out</a>
        <br />
    </c:otherwise>
</c:choose>
</p>

</nav>

<div class="container">
 
  <h2><spring:message code="label.header.title1"/></h2>

</div>

</div>
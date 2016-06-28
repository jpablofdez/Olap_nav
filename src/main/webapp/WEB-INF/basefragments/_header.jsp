<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-default">
	<div class="navbar-header">
	Quickly
    </div>
	 <form class="navbar-form navbar-left" role="search">
       <div class="form-group">
         <input type="text" class="form-control" placeholder="Search">
       </div>
       <button type="submit" class="btn btn-default">Submit</button>
     </form>
    <p class="navbar-text pull-right">
  <c:if  test="${!empty login}"> LogIn as: 	</c:if><a href="#" class="navbar-link"> ${login.user}</a>
  
 <c:choose>
    <c:when test="${login==null}">
      <a class="navbar-link" href="${pageContext.request.contextPath}/login">Log In</a>
        <br />
    </c:when>    
    <c:otherwise>
      <a class="navbar-link" href="${pageContext.request.contextPath}/logout">Log Out</a>
        <br />
    </c:otherwise>
</c:choose>
</p>
</nav>
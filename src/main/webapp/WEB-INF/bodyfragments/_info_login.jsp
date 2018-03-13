<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class= "row">

<h2><spring:message code="label.infologin.title"/></h2>

<h3><spring:message code="label.infologin.message"/></h3>

<div>
 <a class="navbar-link" href="${pageContext.request.contextPath}/createUser">Create a new User</a>
 
</div>

</div>
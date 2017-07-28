<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form:form class="form-signin" method="post" action="login" commandName="user">

   <h2 class="form-signin-heading">Sign In</h2>
        <input type="text" class="input-block-level" name="user" placeholder="User">
        <input type="password" class="input-block-level" name="password" placeholder="Password">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
   <button class="btn btn-large btn-primary" type="submit">Sign in</button>
   
   
  
   
</form:form>

<div>
 <a class="navbar-link" href="${pageContext.request.contextPath}/createUser">Create a new User</a>
 
</div>
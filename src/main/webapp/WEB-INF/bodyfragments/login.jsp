<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class = "container">

<div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
         
<form:form class="form-signin" method="post" action="login" commandName="user">
<input type="text" class="input-block-level" name="user" placeholder="User">
<input type="password" class="input-block-level" name="password" placeholder="Password">
<div id="remember" class="checkbox">
   <label>
       <input type="checkbox" value="remember-me"> Remember me
   </label>
</div>
<button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
</form:form><!-- /form -->
            <a href="#" class="forgot-password">
                Forgot the password?
            </a>
</div><!-- /card-container -->

</div>
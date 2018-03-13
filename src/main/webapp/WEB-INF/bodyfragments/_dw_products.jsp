<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-md-10">
<div class="container-fluid">
  <div class="text-center">
    <h2>Pricing</h2>
    <h4>Choose a payment plan that works for you</h4>
  </div>
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Tryal</h1>
        </div>
        <div class="panel-body">
          <p><b>Desktop APP</b></p>
          <p>Analytics Web</p>
          <p>Email Support</p>
          <p>Help Center</p>
          <p></p>
        </div>
        <div class="panel-footer">
          <h3>$0</h3>
          <h4>per month</h4>
          <a class="btn btn-lg" href="${pageContext.request.contextPath}/user">Sign Up</a>
         
        </div>
      </div> 
    </div> 
    <div class="col-sm-4">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Pro</h1>
        </div>
        <div class="panel-body">
          <p><b>Desktop APP</b></p>
          <p>Analytics Web</p>
          <p>Email Support</p>
          <p>Help Center</p>
          <p></p>
        </div>
        <div class="panel-footer">
          <h3>$29</h3>
          <h4>per month</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div> 
    </div> 
   <div class="col-sm-4">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Premium</h1>
        </div>
        <div class="panel-body">
          <p><b>Desktop APP</b></p>
          <p>Analytics Web</p>
		  <p>DWH Data</p>
          <p>Email and phone Support</p>
          <p>Help Center</p>
          <p></p>
        </div>
        <div class="panel-footer">
          <h3>$59</h3>
          <h4>per month</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div> 
    </div> 
  </div>
</div>
</div>
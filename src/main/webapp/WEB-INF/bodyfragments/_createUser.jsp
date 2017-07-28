<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2>User Manager</h2>

<form:form method="post" action="addUser.html" commandName="user">

	<div class="row">
    	<div class="form-group col-md-12">
			<form:label path="user" class="col-md-3 control-lable"><spring:message code="label.usr"/></form:label>
			<div class="col-md-7">
				<form:input type="text" path="user" class="form-control input-sm" />
				<div class="has-error">
                    <form:errors path="user" class="help-inline"/>
                </div>
            </div>
		</div>	 
	</div>
	<div class="row">
    	<div class="form-group col-md-12">
			<form:label path="password" class="col-md-3 control-lable"><spring:message code="label.pass"/></form:label>
			<div class="col-md-7">
				<form:input type="password" path="password" class="form-control input-sm" />
				<div class="has-error">
                    <form:errors path="password" class="help-inline"/>
                </div>
            </div>
		</div>	 
	</div>
	<div class="row">
    	<div class="form-group col-md-12">
			<form:label path="firstname" class="col-md-3 control-lable"><spring:message code="label.firstname"/></form:label>
			<div class="col-md-7">
				<form:input type="text" path="firstname" class="form-control input-sm" />
				<div class="has-error">
                    <form:errors path="firstname" class="help-inline"/>
                </div>
            </div>
		</div>	 
	</div>
	<div class="row">
    	<div class="form-group col-md-12">
			<form:label path="lastname" class="col-md-3 control-lable"><spring:message code="label.lastname"/></form:label>
			<div class="col-md-7">
				<form:input type="text" path="lastname" class="form-control input-sm" />
				<div class="has-error">
                    <form:errors path="lastname" class="help-inline"/>
                </div>
            </div>
		</div>	 
	</div>
	<div class="row">
    	<div class="form-group col-md-12">
			<form:label path="email" class="col-md-3 control-lable"><spring:message code="label.email"/></form:label>
			<div class="col-md-7">
				<form:input type="text" path="email" class="form-control input-sm" />
				<div class="has-error">
                    <form:errors path="email" class="help-inline"/>
                </div>
            </div>
		</div>	 
	</div>
	<div class="row">
    	<div class="form-group col-md-12">
			<form:label path="telephone" class="col-md-3 control-lable"><spring:message code="label.telephone"/></form:label>
			<div class="col-md-7">
				<form:input type="text" path="telephone" class="form-control input-sm" />
				<div class="has-error">
                    <form:errors path="telephone" class="help-inline"/>
                </div>
            </div>
		</div>	 
	</div>
	<div class="row">
        <div class="form-actions">
            <input type="submit" value="<spring:message code="label.adduser"/>" class="btn btn-primary btn-sm"/>
        </div>
    </div>	
</form:form>




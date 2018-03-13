<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-md-10">
<h2>User Manager</h2>

<form:form method="post" action="addUser.html" id="myform" commandName="user">
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

	
<h3>Users</h3>
<c:if  test="${!empty userList}">
<div class="generic-container">
	<div class="panel panel-default">
		<table class="table table-hover data">
			<tr>
				<th>Name</th>
				<th>User</th>
				<th>Email</th>
				<th>Telephone</th>
				<th>&nbsp;</th>
			</tr>
			<c:forEach items="${userList}" var="user">
				<tr>
					<td>${user.lastname}, ${user.firstname} </td>
					<td>${user.user}</td>
					<td>${user.email}</td>
					<td>${user.telephone}</td>
					<td><a href="deleteUser/${user.id_user}">delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>		
</c:if>
</div>


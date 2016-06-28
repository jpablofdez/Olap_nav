<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
Home Page
<br>
contruction Restaurants



<h2>User Manager</h2>

<form:form method="post" action="addRestaurant.html" commandName="restaurant">
	<div class="row">
    	<div class="form-group col-md-12">
			<form:label path="name" class="col-md-3 control-lable"><spring:message code="label.rest.name"/></form:label>
			<div class="col-md-7">
				<form:input type="text" path="name" class="form-control input-sm" />
				<div class="has-error">
                    <form:errors path="name" class="help-inline"/>
                </div>
            </div>
		</div>	 
	</div>
	<div class="row">
    	<div class="form-group col-md-12">
			<form:label path="description" class="col-md-3 control-lable"><spring:message code="label.rest.description"/></form:label>
			<div class="col-md-7">
				<form:input type="text" path="description" class="form-control input-sm" />
				<div class="has-error">
                    <form:errors path="description" class="help-inline"/>
                </div>
            </div>
		</div>	 
	</div>
	<div class="row">
    	<div class="form-group col-md-12">
			<form:label path="address" class="col-md-3 control-lable"><spring:message code="label.rest.address"/></form:label>
			<div class="col-md-7">
				<form:input type="text" path="address" class="form-control input-sm" />
				<div class="has-error">
                    <form:errors path="address" class="help-inline"/>
                </div>
            </div>
		</div>	 
	</div>
	<div class="row">
    	<div class="form-group col-md-12">
			<form:label path="location" class="col-md-3 control-lable"><spring:message code="label.rest.location"/></form:label>
			<div class="col-md-7">
				<form:input type="text" path="location" class="form-control input-sm" />
				<div class="has-error">
                    <form:errors path="location" class="help-inline"/>
                </div>
            </div>
		</div>	 
	</div>
	<div class="row">
    	<div class="form-group col-md-12">
			<form:label path="telephone" class="col-md-3 control-lable"><spring:message code="label.rest.telephone"/></form:label>
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
            <input type="submit" value="<spring:message code="label.rest.addrest"/>" class="btn btn-primary btn-sm"/>
        </div>
    </div>	
</form:form>

	
<h3>Restaurants</h3>
<c:if  test="${!empty restaurantList}">
<div class="generic-container">
	<div class="panel panel-default">
		<table class="table table-hover data">
			<tr>
				<th>Name</th>
				<th>Address</th>
				<th>Location</th>
				<th>Telephone</th>
				<th>&nbsp;</th>
			</tr>
			<c:forEach items="${restaurantList}" var="restaurant">
				<tr>
					<td>${restaurant.name}</td>
					<td>${restaurant.address}</td>
					<td>${restaurant.location}</td>
					<td>${restaurant.telephone}</td>
					<td><a href="deleteRestaurant/${restaurant.id_restaurant}">delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>		
</c:if>

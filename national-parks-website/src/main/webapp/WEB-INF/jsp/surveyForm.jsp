<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<h2>Daily Survey</h2>

<p>Today's survey asks you to vote for your favorite National Park. Please choose one 
from the dropdown menu and tell us a little bit about yourself in the boxes below.</p>
	
	<c:url var = "submitURL" value = "/surveyForm" />
	
	<form:form action = "${submitURL}" method = "POST" modelAttribute="survey">
	
		<div class="row">
			<label class="col-xs-3" for="parkCode">Favorite National Park</label>
			<form:select path="parkCode">
				<c:forEach var = "park" items = "${allParks}" >
					<form:option class="col-xs-4" value="${park.parkCode}" label= "${park.parkName}" />
				</c:forEach>
			</form:select>
			<form:errors path="parkCode" cssClass="error"/>
		</div>	
		<br>
		<div class = "row">	
			<label class="col-xs-3" for="email">Your email</label>
			<form:input class="col-xs-4" path="email" />
			<form:errors path="email" cssClass="error"/>
		</div>
		<br>
		<div class = "row">	
			<label class="col-xs-3" for="state">State of residence</label>
			<form:select path = "state">
				<c:forEach var = "state" items="${states }">
					<form:option class="col-xs-4" value="${state}" label="${state}"/>
				</c:forEach>
			</form:select>
			<form:errors path="state" cssClass="error"/>
			
		</div>
		<br>
		<div class = "row">
			<label class="col-xs-3" for="activityLevel">Activity level</label>
			<div class= "col-xs-8 no-padding">
				<span class = "span-left"><form:radiobutton path="activityLevel" value="inactive"/> Inactive</span>
				<span class = "span-space-between"><form:radiobutton path="activityLevel" value="sedentary"/> Sedentary</span>
				<span class = "span-space-between"><form:radiobutton path="activityLevel" value="active"/> Active</span>
				<span class = "span-space-between"><form:radiobutton path="activityLevel" value="extremely active"/> Extremely Active</span>
				<br>
				<form:errors path="activityLevel" cssClass="error"/>
			</div>
		</div>
		
			<br>
		<div class= "col-xs-10 text-center">
			<input class = "btn btn-info btn-sm" type="submit" value="Submit" />
			<!-- <button type="submit">Submit</button> -->
		</div>	
	</form:form>

<c:import url="/WEB-INF/jsp/footer.jsp" />
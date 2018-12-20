<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url var = "pageCssURL" value="/css/question-form.css" />
<c:import url="/WEB-INF/jsp/header.jsp">
	<c:param name="style" value="${pageCssURL}" />
</c:import>

<c:url var = "questionFormURL" value = "/questionSubmit" />
<c:choose>
<c:when test="${empty currentUser.userName}">
	<h1>Your not supposed to be here!</h1>
	</c:when>
<c:otherwise>
<c:if test="${currentUser.role.equals('admin')}">
	<h1>Welcome back Administrator</h1>
	</c:if>
<div class="container">

	<form action = "${questionFormURL}" method = "POST">
		<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
	  	<input type= "hidden" name = "userId" value = "${currentUser.userId}" /> 
	 	<input type= "hidden" name = "repId" value = "${rep.id}" />
	
		<div class = "row" >
			<label for="message">Enter your question here:</label>
		</div>
		<div class = "row" >
			<div class="col-xs-9">
			<textarea class="form-control" rows="4" name = "message"></textarea>
			</div>
		</div>
	
<!-- 		<input class = "message-box" name = "message" /> -->
		<br/>
		<div class="row">
			<button class = "btn btn-primary" type = "submit">Submit</button>
		</div>
	
	
	</form>
</div>
</c:otherwise>
</c:choose>

<c:import url="/WEB-INF/jsp/footer.jsp"/>
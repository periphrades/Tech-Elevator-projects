<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<script type="text/javascript">
	$(document).ready(function () {
	
		$("form").validate({
			
			rules : {
				currentPswd : {
					required : true
				},
				password : {
					required : true,
					minlength: 15,
					capitals: true
				},
				confirmPassword : {
					required : true,		
					equalTo : "#password"  
				}
			},
			messages : {			
				confirmPassword : {
					equalTo : "Passwords do not match"
				}
			},
			errorClass : "error"
		});
	});
</script>

<div class="row">
	<div class="col-sm-4">
		<c:if test="${not empty message}">
			<p>${message}</p>
		</c:if>
	</div>
	<div class="col-sm-4">
		<c:url var="formAction" value="/changePassword" />
		<form method="POST" action="${formAction}">
		<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
		<input type="hidden" name="userName" value="${currentUser.userName}" />
		<input type="hidden" name="userId" value="${currentUser.userId}" />
			<div class="form-group">
				<label for=currentPswd>Current Password: </label>
				<input type="password" id="currentPswd" name="currentPswd" placeHolder="Current Password" class="form-control" />
			</div>
			<div class="form-group">
				<label for="password">New Password: </label>
				<input type="password" id="password" name="password" placeHolder="New Password" class="form-control" />
			</div>
			<div class="form-group">
				<label for="confirmPassword">Confirm New Password: </label>
				<input type="password" id="confirmPassword" name="confirmPassword" placeHolder="Re-Type New Password" class="form-control" />	
			</div>
			<button type="submit" class="btn btn-primary">Change Password</button>
		</form>
	</div>
	<div class="col-sm-4"></div>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />
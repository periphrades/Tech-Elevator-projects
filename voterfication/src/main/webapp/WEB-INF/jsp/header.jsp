<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Voter Involvement</title>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	    <script src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
	    <script src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.js "></script>
	    <script src="https://cdn.jsdelivr.net/jquery.timeago/1.4.1/jquery.timeago.min.js"></script>
	    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">
	    <c:url var="cssHref" value="/css/site.css" />
		<link rel="stylesheet" type="text/css" href="${cssHref}">
		<link rel="stylesheet" href="${param.style}">
		
		<c:url var="statesJsUrl" value = "/js/states/states.js" />
		<script src = "${statesJsUrl}"></script>
		
		<c:url var="apiJsUrl" value ="/js/states/donorAPI.js" />
		<script src = "${apiJsUrl}"></script>
		
		<script type="text/javascript">
			$(document).ready(function() {
				$("time.timeago").timeago();
				
				$("#logoutLink").click(function(event){
					$("#logoutForm").submit();
				});
				
				var pathname = window.location.pathname;
				$("nav a[href='"+pathname+"']").parent().addClass("active");
				
			});
			
		</script>
		
		
		
	</head>
	<body>
		<header>
			<c:url var="homePageHref" value="/" />
			<c:url var="imgSrc" value="/img/Voterfication.png" />
			<a href="${homePageHref}" id="logo-anchor"><img src="${imgSrc}" class="img-responsive center-block" /></a>
		</header>
		<nav class="navbar navbar-default" id="navig">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<c:url var="homePageHref" value="/" />
					<li><a href="${homePageHref}">Home</a></li>
					<c:if test="${not empty currentUser}">
					<c:url var="sentQuestionsHref" value="/users/${currentUser.userName}/questions" />
						<li><a href="${sentQuestionsHref}">Sent Questions</a></li>
						<c:url var="allQuestionsHref" value="/allQuestions" />
						<li><a href="${allQuestionsHref}">All Posted Questions</a></li>
					</c:if>
					
					<c:if test="${not empty currentUser && currentUser.role == 'admin'}">
						<c:url var="adminUrl" value="/adminPage" />
						<li><a href="${adminUrl}">Admin Page</a></li>
					</c:if>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<c:choose>
						<c:when test="${empty currentUser}">
							<c:url var="newUserHref" value="/users/new" />
							<li><a href="${newUserHref}">Sign Up</a></li>
							<c:url var="loginHref" value="/login" />
							<li><a href="${loginHref}">Log In</a></li>
						</c:when>
						<c:otherwise>
<%-- 							<c:url var="changePswdHref" value="/changePassword"/>
							<li><a href="${changePswdHref}">Change Password</a></li> --%>
							<c:url var="logoutAction" value="/logout" />
							<form id="logoutForm" action="${logoutAction}" method="POST">
								<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
							</form>
							<li><a id="logoutLink" href="#">Log Out</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</nav>
		<div class = "row">
			<div class="col-xs-9">
			</div>
			<div class="col-xs-3 text-right padding-right">
				<c:if test="${not empty currentUser}">
					<p id="currentUser">Current User: ${currentUser.userName}
						<c:if test="${currentUser.role == 'admin' }">
							&nbsp(Admin)
						</c:if>
					</p>
				</c:if>	
			</div>
		</div>
	

		
		
		
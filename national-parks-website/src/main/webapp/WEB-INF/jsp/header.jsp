<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
	<head>
	    <meta charset="UTF-8">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	    <title>National Park Geek</title>
	    <c:url value="/css/np.css" var="cssHref" />
	    <link rel="stylesheet" href="${cssHref}">
	</head>

<c:url value="/" var="homeURL" />
<c:url value="/surveyForm" var="surveyURL" />

	<body>
	
		<header>
		 	<c:url value="/img/logo.png" var="logoURL" />
		 	<a href="${homeURL}" ><img src= "${logoURL}"/></a>
		</header>
		
		<div class="navBar">
			<nav class="navbar navbar-default">
				<ul class="navButtons">
					<div class = "row">
						
						<div class="col-sm-1 text-right">
							<li><a href="${homeURL}" >Home</a></li>
						</div>
						<div class="col-sm-1 text-right">
							<li><a href= "${surveyURL}">Survey</a></li>
						</div>
					</div>
				</ul>
			</nav>
		</div>
		
		<div class="mainBody container">
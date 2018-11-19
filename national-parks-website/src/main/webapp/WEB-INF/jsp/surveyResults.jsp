<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<h2>Favorite Parks</h2>
<h6>Here are the favorite parks of park visitors just like you. Which one will you go experience next?</h6>

<c:forEach var = "park" items = "${rankings}"> 
	<div class="row row-mt">
		<div class="col-xs-3"> 
			<c:url var="imgURL" value="/img/parks/${park.imageFileName }"/>
			<img class= "resultsParkImage" src="${imgURL}"/>
		</div>
		<div class="col-xs-5">
			<h4><c:out value = "${park.parkName}"/></h4>
		</div>
		<div class="col-xs-2">
			<h4><c:out value = "${park.surveyRank}"/> votes</h4>
		</div>
	</div>
		
</c:forEach>


<c:import url="/WEB-INF/jsp/footer.jsp" />
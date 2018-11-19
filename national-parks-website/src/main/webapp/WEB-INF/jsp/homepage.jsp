<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

	<c:forEach var="park" items="${allParks}">
		<c:url var="detailURL" value="/detail">
			<c:param name="parkCode" value="${park.parkCode }"/>
		</c:url>
		<div class="row">
			<div class="col-sm-6">
			   <div class= "homeParkImage">
				<c:url var="imgURL" value="/img/parks/${park.imageFileName }"/>
				<a href = "${detailURL}"><img class= "parkPic" src="${imgURL}"/></a>
			   </div>
			</div>
			<div class= "col-sm-6">
			   <div class= "parkInfo">
				<a href = "${detailURL}"><h3><c:out value= "${park.parkName }"/></h3></a>
				<h4><c:out value= "${park.state}"/></h4>
				<p><c:out value= "${park.description }"/></p>
			   </div>
			</div>
		
		</div>
	</c:forEach>


<c:import url="/WEB-INF/jsp/footer.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div class = "detailImageDiv">
	<c:url var="imgURL" value="/img/parks/${park.imageFileName }"/>
	<img class= "parkPic" src="${imgURL}"/>
</div>
<br><br>
<div class= "homeParkInfo">
	<div>
		<h3><c:out value= "${park.parkName }"/></h3>
		<h4><c:out value= "${park.state}"/></h4>
	</div>
	<div class = "row">
		<div class = "col-xs-1"></div>
		<div class = "col-xs-8">
			<p><i><c:out value= "${park.quote }"/></i></p>
			<p>&nbsp&nbsp<c:out value= "- ${park.quoteSource }"/></p>
		</div>
	</div>
	<div>
		<p><c:out value= "${park.description }"/></p>
	</div>
	<div class= "row">
		<div class= "col-xs-4">
			<p>Acreage: <fmt:formatNumber type="number" value= "${park.acreage }" /> </p>
		</div>
		<div class= "col-xs-4">
			<p>Elevation: <fmt:formatNumber type="number" value= "${park.elevationInFeet }" /> ft.</p>
		</div>
		<div class= "col-xs-4">
			<p>Miles of Trail: <fmt:formatNumber type="number" value= "${park.milesOfTrail }" /></p>
		</div>
	</div>
	<div class= "row">
		<div class= "col-xs-4">
			<p>Number of Campsites: <fmt:formatNumber type="number" value= "${park.numberOfCampsites }" /></p>
		</div>
		<div class= "col-xs-4">
			<p>Climate: <c:out value= "${park.climate }"/></p>
		</div>
		<div class= "col-xs-4">
			<p>Year founded: <c:out value= "${park.yearFounded }"/></p>
		</div>
	</div>	
	<div class = "row">
		<div class= "col-xs-4">
			<p>Annual visitors: <fmt:formatNumber type="number" value= "${park.annualVisitorCount }" /></p>
		</div>
		<div class= "col-xs-4">
			<p>Entry fee: $<c:out value= "${park.entryFee }"/></p>
		</div>
		<div class= "col-xs-4">
			<p>Animal species: <c:out value= "${park.numberOfAnimalSpecies }"/></p>
		</div>
	</div>
</div>

<br>
<div class = "row text-center">

	<div class="col-xs-4">
	   <h4>Today</h4>
		<c:url var="dayOneIcon" value="/img/weather/${fiveDayWeather[0].imageFile }"/>
		<img id="todayIcon" src="${dayOneIcon}"/>
		<br><br>
		<p> <span class = "span-space-between">High: <c:out value = "${fiveDayWeather[0].high}" />° <c:out value="${tempScale}" /></span>  
		    <span class = "span-space-between">Low: <c:out value = "${fiveDayWeather[0].low}" />° <c:out value="${tempScale}" /></span>
		</p>
		
	</div>
	
	<c:forEach var="day" begin = "1" end="4">
	
		<div class="col-xs-2">
	
			<c:url var="dayIcon" value="/img/weather/${fiveDayWeather[day].imageFile }"/>
			<img class="smallDayIcon" src="${dayIcon}"/>
			<br><br>
			<p>High: <c:out value = "${fiveDayWeather[day].high}" />° <c:out value="${tempScale}" /> </p> 
			<p>Low: <c:out value = "${fiveDayWeather[day].low}" />° <c:out value="${tempScale}" /></p>
		</div>
		
	</c:forEach>
	
</div>

<div class = "row text-center row-m2">

	<div class="col-xs-4">
	
		<c:forEach var="message" items = "${fiveDayWeather[0].warnings}" >
			<p class= "warning"><c:out value = "${message}" /></p>
		</c:forEach>
	
	</div>
	<div class="col-xs-8">
		<c:url var="changeScaleURL" value="/detail"/>
		<form action="${changeScaleURL}" method="GET">
			<input type = "hidden" name="parkCode" value="${park.parkCode}" />
			<input type = "hidden" name="scale" value="${otherScale}" />
			<input class = "btn btn-info btn-sm" type="submit" value="Change to ${otherScaleName}" />
		</form>
	</div>
</div>


<c:import url="/WEB-INF/jsp/footer.jsp" />
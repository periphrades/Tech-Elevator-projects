<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="master" >
	<div class="container">
		<div class="row" id="map-info">
			<div class="col-xs-1"></div>
			<div class="col-xs-10 text-center">
	
				<p>Click on the map below to get information about members of
					Congress and town halls for your state.</p>
				<p>Register and sign-in as a user to be able to submit questions.</p>
			</div>
			<div class="col-xs-1"></div>
		</div>
</div>


<div class="container" id="main">

	<div class="embed-responsive embed-responsive-16by9">

		<iframe
			src="https://createaclickablemap.com/map.php?&id=77078&maplocation=false&online=true"
			width="900" height="525" style="border: none;"></iframe>
		<script>
			if (window.addEventListener) {
				window
						.addEventListener(
								"message",
								function(event) {
									if (event.data.length >= 22) {
										if (event.data.substr(0, 22) == "__MM-LOCATION.REDIRECT")
											location = event.data.substr(22);
									}
								}, false); 
			} else if (window.attachEvent) {
				window
						.attachEvent(
								"message",
								function(event) {
									if (event.data.length >= 22) {
										if (event.data.substr(0, 22) == "__MM-LOCATION.REDIRECT")
											location = event.data.substr(22);
									}
								}, false);
			}
		</script>

	</div>
</div>
</div>

<div class = "sub">
	<p id = "mobile-heading">Please click on a state to view more information about your local representatives and townhalls.</p>
	
	<c:forEach var = "state" items = "${states}">
	<div>
	<div class="homeFlagBox"><a href="states/${state.stateId}"><img class="homeFlag" src = "img/${state.stateId}.png"></a></div>
	<div class="homeState"><a href="states/${state.stateId}"> ${state.stateName}</a></div>
	</div>
	<hr class="breakline">
	</c:forEach>

</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />
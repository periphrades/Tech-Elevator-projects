<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="pageCssURL" value = "/css/admin.css" />

<c:import url="/WEB-INF/jsp/header.jsp">
	<c:param name="style" value="${pageCssURL}" />
</c:import>


<c:url var = "loadRepsURL" value = "/loadReps" />
<%-- <c:url var = "loadTownhallURL" value = "/loadTownhalls" /> --%>

<div class="container">

	<div class = "white">
	
		<c:if test="${not empty message}">
			<p class = "message">${message}</p>
		</c:if>
	
	
		<form action = "${loadRepsURL}" method="POST" id="db-loader-button">
		
 			<input type="hidden" name="user" value="${currentUser.userName}"/>
			<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
			<label>Press button to load Members of the current (${congressNum}) Congress (from ProPublica API) and Townhalls to the database</label>
			<br/>
		 	<button type = "submit" id="randomButton" class="btn btn-primary">Get Data</button>
		 	
		</form>
		
<%-- 		<form action = "${loadTownhallURL}" method="POST" id="db-loader-button">
		
 			<input type="hidden" name="user" value="${currentUser.userName}"/>
			<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
			<label>Press button to load Townhalls</label>
			<br/>
		 	<button type = "submit" id="randomButton" class="btn btn-primary">Get Data</button>
		 	
		</form> --%>
	
	</div>

</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />
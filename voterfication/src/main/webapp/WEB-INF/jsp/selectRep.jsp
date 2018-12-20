<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp"/>


<c:forEach var = "state" items = "${states}">

	<p><strong>${state}</strong></p>

	<c:forEach var = "rep" items = "${allReps}">
	
 	<c:if test = "${rep.state == state}"> 
	
		<c:url var="questionURL"  value = "/question" >
			<c:param name = "repId" value = "${rep.id}"/>
		</c:url>
	
		<p><a href = "${questionURL}">${rep.firstName} ${rep.lastName}</a> - ${rep.chamber}</p>
	
 	</c:if> 
	
	</c:forEach>

</c:forEach>


<c:import url="/WEB-INF/jsp/footer.jsp"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="pageCssURL" value="/css/about.css" />


<c:import url="/WEB-INF/jsp/header.jsp">
	<c:param name="style" value="${pageCssURL}" />
</c:import>


<div class="container">

	<div class="white">

		<div class="more-padding">
			<h1>About Voterfication</h1>
			<br>
			<p>This site provides information for voters, allowing them to
				find out about their current elected Members of Congress, upcoming
				townhall events, and political donations to recent congressional
				elections.</p>
			<p>Registered users can also submit questions to Members of
				Congress and townhall events by state.</p>
			<br> <br>
			<p>Voterfication was created as the final capstone project at
				Tech Elevator (Columbus, OH) in December 2018 by <a href="https://www.linkedin.com/in/aaronpietryga/" target = "blank">Aaron Pietryga</a>,
				<a href="https://www.linkedin.com/in/benjamin-leder/" target = "blank">Benjamin Leder</a>, 
				<a href="https://www.linkedin.com/in/douglaskonst/" target = "blank">Doug Konst</a>, 
				and <a href="https://www.linkedin.com/in/kghawthorne/" target = "blank">Kevin Hawthorne.</a></p>
		</div>

	</div>

</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<c:url var="aboutHref" value = "/about" />
		
		<footer>
			<div class = "about-and-social">
				<div class = "about">
					<p><a href = "${aboutHref}" >About</a></p>
				</div>
	
				<div class="socialLinks">
					<a class = "link" href = "#"><i class="fab fa-facebook-square fa-2x"></i></a>
					<a class = "link" href = "#"><i class="fab fa-twitter-square fa-2x"></i></a>
					<a class = "link" href = "#"><i class="fab fa-instagram fa-2x"></i></a>
					<a class = "link" href = "#"><i class="fab fa-google-plus-square fa-2x"></i></a>
				</div>
			</div>

			<div class = "text-center copyright">© 2018 Team ECHO Echo echo</div>
			
		</footer>
	</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp">
<c:param name="style" value="../../css/sentQuestions.css"/>
</c:import>
<c:url value="/js" var="jsHref" />
    <script src="${jsHref}/questions/allQuestions.js"></script>
    
<c:url var="modifyQuestion" value="/modifyQuestion" />
<div class="pageContent">
<div class="title">
<h2>Sent Questions</h2>
</div>
<ul class="question-list">
<c:set var="number" value= "${questions.size()}" />
	<c:forEach var ="count" begin = "0" end ="${number - 1}" step= "1">	
			<c:if test="${(questions[count].repId == reps[count].id || questions[count].townhallId == townhalls[count].id) && questions[count].userId == users[count].userId}">
				<li class="message">
					<form action="${modifyQuestion}" method="POST" id="deleteModifyForm">
					<div class="questionItem">
		<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
		<div class="to-fromBlock">
			<span class="username">From: <p><c:out value="${users[count].userName}"></c:out></p></span>
			<c:if test="${questions[count].repId != null}">
			<span class="repName">To: <a class="to" href="../../states/${reps[count].state}">${reps[count].firstName} ${reps[count].lastName}</a></span>
			</c:if>
			<c:if test="${questions[count].townhallId != 0}">
			<span class="hallName">To: <a class="to" href="../../states/${townhall[count].state}">${townhall[count].townhallName}</a></span>
			</c:if>
		</div>
		<div class="timeAndMessageBlock">
			<time class="timeago" datetime="${questions[count].date}">${questions[count].date}</time>
			<span class="message-text"><c:out value="${questions[count].message}"></c:out></span>
		</div>
		<c:if test="${users[count].userName.equals(currentUser.userName) || currentUser.role.equals('admin')}">
			<input type="hidden" name="id" value="${questions[count].questionId}">
			<input type="hidden" name="questionAuthor" value="${questions[count].userId}">
			<input type="hidden" name="userName" value="${currentUser.userName}">
			<input type="hidden" name="currentMessage" value="${questions[count].message}">
			<div class="allowMod">
			<div class="buttons">
			<button id="modEnable" type="button" class="btn btn-default">Modify</button>
			<div class="questionDelete">
				<button id="delete" type="submit" class="delete btn"> Delete</button>
			</div>
			</div>
			<div class="modifyMessage">
		<!-- <input type="hidden" id="modifiedQuestion" name="modifiedQuestion" placeholder="New question" value=""/> -->
		<textarea  id="modifiedQuestion" name="modifiedQuestion" placeholder="New question"></textarea>
		<div class="submitCancelButtons">
		<button id="Modify" type="submit" class="btn btn-success" style="display: none;">Submit</button>
		<button id="disableMessage" type="button" class="btn btn-Default" style="display: none;">Cancel</button>
		</div>
		</div>
		</div>
		</c:if>
		</div>
	</form>
<hr>
		</li>
		</c:if>
	</c:forEach>
</ul>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp"/>
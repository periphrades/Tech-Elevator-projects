<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="pageCssURL" value = "/css/admin.css" />

<c:import url="/WEB-INF/jsp/header.jsp">
	<c:param name="style" value="${pageCssURL}" />
</c:import>

<c:url var = "updateRepURL" value="/updateMoC?user=${currentUser.userName}" />

<div class="container">
	<div class = "white">
		
		<div class="admin-content">
		
			<c:if test="${not empty message}">
				<p class = "message">${message}</p>
			</c:if>
		
			<h1><c:out value="${stateName}"></c:out></h1>
			
			<div class = "senators-edit">
				<h2>Senators</h2>
				
				<c:forEach items = "${senators}" var="senator">
					
					<div class= "member">
						<h4>Sen. ${senator.fullName}</h4>
		
						<form class = "form-horizontal edit-form" action="${updateRepURL}" method="POST">
							<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
							<input type="hidden" name = "id" value="${senator.id}" />
							<input type="hidden" name="state" value="${senator.state}"/>
							
							<div class="form-group">
								<label for="contact" class="col-sm-2 control-label">Contact email/form</label>
								<div class="col-sm-10">
									<input type="text" class = "form-control" name = "contact" value="${senator.contact}" />
								</div>
							</div>
							<div class="form-group">
								<label for="url" class="col-sm-2 control-label">URL</label>
								<div class="col-sm-10">
									<input type="text" class = "form-control" name = "url" value="${senator.url}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="localStreet1" class="col-sm-2 control-label">Local Street 1</label>
								<div class="col-sm-10">
									<input type="text" class = "form-control" name = "localStreet1" value="${senator.localStreet1}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="localStreet2" class="col-sm-2 control-label">Local Street 2</label>
								<div class="col-sm-10">
									<input type="text" class = "form-control" name = "localStreet2" value="${senator.localStreet2}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="localCity" class="col-sm-2 control-label">Local City</label>
								<div class="col-sm-6">
									<input type="text" class = "form-control" name = "localCity" value="${senator.localCity}"/>
								</div>
								<label for="localZip" class="col-sm-2 control-label">Local Zip Code</label>
								<div class="col-sm-2">
									<input type="text" class = "form-control" name = "localZip" value="${senator.localZip}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="localPhone" class="col-sm-2 control-label">Local Phone</label>
								<div class="col-sm-2">
									<input type="text" class = "form-control" name = "localPhone" value="${senator.localPhone}"/>
								</div>
								<label for="DCPhone" class="col-sm-2 control-label">DC Phone</label>
								<div class="col-sm-2">
									<input type="text" class = "form-control" name = "DCPhone" value="${senator.DCPhone}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="DCStreet1" class="col-sm-2 control-label">DC Street 1</label>
								<div class="col-sm-10">
									<input type="text" class = "form-control" name = "DCStreet1" value="${senator.DCStreet1}" />
								</div>
							</div>
							<div class="form-group">
								<label for="DCStreet2" class="col-sm-2 control-label">DC Street 2</label>
								<div class="col-sm-10">
									<input type="text" class = "form-control" name = "DCStreet2" value="${senator.DCStreet2}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="DCZip" class="col-sm-2 control-label">DC Zip Code</label>
								<div class="col-sm-2">
									<input type="text" name = "DCZip" value="${senator.DCZip}" size="10"/>
								</div>
								<button type="submit" class="btn btn-danger" >Submit changes</button>
							</div>
						</form>
					</div>
					<hr>
				
				</c:forEach>
				
			
			</div>
			
			<div class = "reps-edit">
				<h2>Representatives</h2>
				
				<c:forEach items = "${reps}" var="rep">
					
					<div class= "member">
						<h4>Rep. ${rep.fullName}: District ${rep.district}</h4>
		
						<form class = "form-horizontal edit-form" action="${updateRepURL}" method="POST">
							<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
							<input type="hidden" name = "id" value="${rep.id}" />
							<input type="hidden" name="state" value="${rep.state}"/>
							
							<div class="form-group">
								<label for="contact" class="col-sm-2 control-label">Contact email/form</label>
								<div class="col-sm-10">
									<input type="text" class = "form-control" name = "contact" value="${rep.contact}" />
								</div>
							</div>
							<div class="form-group">
								<label for="url" class="col-sm-2 control-label">URL</label>
								<div class="col-sm-10">
									<input type="text" class = "form-control" name = "url" value="${rep.url}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="localStreet1" class="col-sm-2 control-label">Local Street 1</label>
								<div class="col-sm-10">
									<input type="text" class = "form-control" name = "localStreet1" value="${rep.localStreet1}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="localStreet2" class="col-sm-2 control-label">Local Street 2</label>
								<div class="col-sm-10">
									<input type="text" class = "form-control" name = "localStreet2" value="${rep.localStreet2}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="localCity" class="col-sm-2 control-label">Local City</label>
								<div class="col-sm-6">
									<input type="text" class = "form-control" name = "localCity" value="${rep.localCity}"/>
								</div>
								<label for="localZip" class="col-sm-2 control-label">Local Zip Code</label>
								<div class="col-sm-2">
									<input type="text" class = "form-control" name = "localZip" value="${rep.localZip}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="localPhone" class="col-sm-2 control-label">Local Phone</label>
								<div class="col-sm-2">
									<input type="text" class = "form-control" name = "localPhone" value="${rep.localPhone}"/>
								</div>
								<label for="DCPhone" class="col-sm-2 control-label">DC Phone</label>
								<div class="col-sm-2">
									<input type="text" class = "form-control" name = "DCPhone" value="${rep.DCPhone}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="DCStreet1" class="col-sm-2 control-label">DC Street 1</label>
								<div class="col-sm-10">
									<input type="text" class = "form-control" name = "DCStreet1" value="${rep.DCStreet1}" />
								</div>
							</div>
							<div class="form-group">
								<label for="DCStreet2" class="col-sm-2 control-label">DC Street 2</label>
								<div class="col-sm-10">
									<input type="text" class = "form-control" name = "DCStreet2" value="${rep.DCStreet2}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="DCZip" class="col-sm-2 control-label">DC Zip Code</label>
								<div class="col-sm-2">
									<input type="text" name = "DCZip" value="${rep.DCZip}" size="10"/>
								</div>
								<button type="submit" class="btn btn-danger" >Submit changes</button>
							</div>
						</form>
					</div>
					<hr>
				
				</c:forEach>
				
				
			
			</div>
		
		</div>
		
	</div>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />
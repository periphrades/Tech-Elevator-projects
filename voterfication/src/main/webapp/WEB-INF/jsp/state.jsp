<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var = "stateCssURL" value="/css/state.css" />
<c:import url="/WEB-INF/jsp/header.jsp">
	<c:param name="style" value="${stateCssURL}"/>
</c:import>
<c:url var = "questionFormURL" value = "/questionSubmit" />

<!-- hidden stateCode for API query -->
<div id = "stateCode" style="display:none;">${state}</div>

<c:url var="imgSrc" value="/img/${state}.png" />

<c:if test="${currentUser.role == 'admin' }">

	<c:url var="editURL" value="/adminEdit" />
	<div class = "row">
		<div class="col-xs-4 text-right">
			<c:if test="${not empty message}">
				<p>${message}</p>
			</c:if>
		</div>
		<div class = "col-xs-4"></div>
		<div class="col-xs-4 text-right padding-right">
			<form action = "${editURL}" method = "GET">
				<input type = "hidden" name = "stateId" value = "${state}" />
				<button type = "submit" id ="edit-button" class = "btn btn-info">Edit Congressional data for this page</button>
			</form>
		</div>
	</div>

</c:if>

<h1><c:out value="${stateName}"></c:out></h1>
	<div class="flagBox">
		<img class="flag" src="${imgSrc}" alt="${state}'s flag">
	</div>
	<div class="senators">
		<div class = "senateHeader">
		<c:url var="senate" value="/img/senate.png" />
		<img src = "${senate}"><h2>Senators</h2>
		</div>
		<table id="senators-table" class="table table-hover">

		    <tbody>
		    
		    	<c:forEach items="${senators}" var="rep">
						<tr>
							<td class = "spacer"></td>
		            		<td class = "text-left sen-name">${rep.fullName} (${rep.party})</td>
		            		<td>
			            		<c:if test="${not empty currentUser}">
				        			<button id ="repQuestion"  class = "btn btn-primary" type = "submit">Submit Question</button>
				        			<%-- <form action = "${questionFormURL}" method = "POST">
				        			<div class="sendQuestion">
				        				<input type= "hidden" name = "userId" value = "${currentUser.userId}"/> 
				        				<input type="hidden" name="repId" value="${rep.id}">
				        				<input type="hidden" name="townhallId" value="0">
				        				<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
				        				<input type="hidden" id="questionText" name="message" placeholder="New question" value=""/>
										<button id="submitQuestion" type="submit" class="btn btn-success choose" style="display: none;">Submit</button>
										</div>
										</form> --%>
								</c:if>
							</td>	
		        		</tr>
		        		<tr class = "child-row hidden">
		        			<td colspan= "3">
			        			<table class="table no-top-line">
			        				<tbody>
				        				<tr>
				        					<th class="text-right">DC Contact:</th>
				        					<td class="text-left">
				        						<p>${rep.DCStreet1}</p>
				        						<c:if test = "${not empty rep.DCStreet2}">
				        							<p>${rep.DCStreet2}</p>
				        						</c:if>
				        						<p>${rep.DCCityStateZip}</p>
				        						<p>${rep.DCPhone}</p>
				        					</td>
					        			</tr>
					        			<c:if test="${(not empty rep.localStreet1 && not empty rep.localCity && not empty rep.localZip) ||
					        			 not empty rep.localPhone}">
						        			<tr>
						        				<th class="text-right">Local Contact:</th>
						        				<td class="text-left">
						        					<c:if test="${not empty rep.localStreet1 && not empty rep.localCity && not empty rep.localZip}">
					        							<p>${rep.localStreet1}</p>
					        							<c:if test = "${not empty rep.localStreet2}">
					        								<p>${rep.localStreet2}</p>
					        							</c:if>
					        							<p>${rep.localCityStateZip}</p>
					        						</c:if>
					        						<c:if test="${not empty rep.localPhone}">
					        							<p>${rep.localPhone}</p>
					        						</c:if>
					        					</td>
						        			</tr>
					        			</c:if>
					        			<tr>
					        				<th class="text-right">Online:</th>
					        				<td class="text-left">
					        					<p><a href = "${rep.url}" target = "blank">${rep.url}</a></p>
					        					<c:if test = "${not empty rep.contact}">
					        						<p><a href = "${rep.contact}" target = "blank">${rep.contact}</a></p>
					        					</c:if>
					        				</td>	
					        			</tr>
				        			</tbody>
			        			</table>
			        		</td>
		        		</tr>
		        		<tr class = "hidden question-form" >
		        			<td colspan="3">
								<form action = "${questionFormURL}" method = "POST">
		        					<div class="sendQuestion">
			        				<input type= "hidden" name = "userId" value = "${currentUser.userId}"/> 
			        				<input type="hidden" name="repId" value="${rep.id}">
			        				<input type="hidden" name="townhallId" value="0">
			        				<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
			        				<input id="questionText" name="message" placeholder="New question" size="60" />
									<button id="submitQuestion" type="submit" class="btn btn-success choose">Submit</button>
									</div>
								</form>
							</td>
		        		</tr>

				</c:forEach>
		   
		    </tbody>
		</table>
	</div>
	
<div class="houseReps">
	<div class="house2">
		<div class = "house2Header">
		<c:url var="house2" value="/img/house.png" />
		<img src = "${house2}"><h2> Representatives</h2>
		</div>

	
		<table id="reps-table" class="table table-hover">

		    <tbody id="townhallBody">
		    
		    	<c:forEach items="${reps}" var="rep">
						<tr>
							<td class = "spacer"></td>
							<td class="text-left district">District ${rep.district}: </td>
		            		<td class="text-left rep-name">${rep.fullName} (${rep.party})</td>
		            		<td>
		            			<c:if test="${not empty currentUser}">
			        				<button id ="repQuestion"  class = "btn btn-primary" type = "submit">Submit Question</button>
	<%-- 		        			<form action = "${questionFormURL}" method = "POST">
			        				<div class="sendQuestion">
			        				<input type= "hidden" name = "userId" value = "${currentUser.userId}"/> 
			        				<input type="hidden" name="repId" value="${rep.id}">
			        				<input type="hidden" name="townhallId" value="0">
			        				<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
			        				<!-- <input type="hidden" id="questionText" name="message" placeholder="New question" value=""/> -->
									<button id="submitQuestion" type="submit" class="btn btn-success" style="display: none;">Submit</button>
									</div>
									</form> --%>
								
								</c:if>
							</td>
		        		</tr>
		        		<tr class = "child-row hidden">
		        			<td colspan="4">
			        			<table class="table no-top-line">
			        				<tbody>
				        				<tr>
				        					<th class="text-right">DC Contact:</th>
				        					<td class="text-left">
				        						<p>${rep.DCStreet1}</p>
				        						<c:if test = "${not empty rep.DCStreet2}">
				        							<p>${rep.DCStreet2}</p>
				        						</c:if>
				        						<p>${rep.DCCityStateZip}</p>
				        						<p>${rep.DCPhone}</p>
				        					</td>
					        			</tr>
					        			<c:if test="${(not empty rep.localStreet1 && not empty rep.localCity && not empty rep.localZip) ||
					        			 not empty rep.localPhone}">
						        			<tr>
						        				<th class="text-right">Local Contact:</th>
						        				<td class="text-left">
						        					<c:if test="${not empty rep.localStreet1 && not empty rep.localCity && not empty rep.localZip}">
					        							<p>${rep.localStreet1}</p>
					        							<c:if test = "${not empty rep.localStreet2}">
					        								<p>${rep.localStreet2}</p>
					        							</c:if>
					        							<p>${rep.localCityStateZip}</p>
					        						</c:if>
					        						<c:if test="${not empty rep.localPhone}">
					        							<p>${rep.localPhone}</p>
					        						</c:if>
					        					</td>
						        			</tr>
					        			</c:if>
					        			<tr>
					        				<th class="text-right">Online:</th>
					        				<td class="text-left">
					        					<p><a href = "${rep.url}" target = "blank">${rep.url}</a></p>
					        					<c:if test = "${not empty rep.contact}">
					        						<p><a href = "${rep.contact}" target = "blank">${rep.contact}</a></p>
					        					</c:if>
					        				</td>	
					        			</tr>
				        			</tbody>
			        			</table>
			        		</td>
		        		</tr>
		        		
		        		<tr class = "hidden question-form" >
		        			<td colspan="4">
								<form action = "${questionFormURL}" method = "POST">
		        					<div class="sendQuestion">
			        				<input type= "hidden" name = "userId" value = "${currentUser.userId}"/> 
			        				<input type="hidden" name="repId" value="${rep.id}">
			        				<input type="hidden" name="townhallId" value="0">
			        				<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
			        				<input id="questionText" name="message" placeholder="New question" size="70" />
									<button id="submitQuestion" type="submit" class="btn btn-success choose">Submit</button>
									</div>
								</form>
							</td>
		        		</tr>
		        		
				</c:forEach>
		   
		    </tbody>
		</table>	
	<br/>
	<h6>Congressional data provided by <a href="https://www.propublica.org/datastore/" target="_blank">ProPublica.org</a> API</h6>
</div>
</div>

<div class ="donorsAndTownhalls">
<div class="donors">
	<h4>Top Donors in Last Two Congressional Elections</h4>
	<table class = "table donors-list">
		
		<tr>
			<td>Michael E Gibbons</td><td>$4,762,277.86</td>
		</tr>
		<tr>
			<td>Jim Renacci</td><td>$4,000,000.00</td>
		</tr>
		<tr>
			<td>Ohio Grassroots Victory Fund</td><td>$2,060,603.64</td>
		</tr>
		<tr>
			<td>Portman Victory Cmte</td><td>$1,237,013.39</td>
		</tr>
		<tr>
			<td>Jim Renacci Campaign Cmte</td><td>$952,743.78</td>
		</tr>
		<tr>
			<td>Strickland Ohio Victory Fund 2016</td><td>$359,082.92</td>
		</tr>
		<tr>
			<td>Steve Stivers Campaign Cmte</td><td>$345,499.89</td>
		</tr>
		<tr>
			<td>Rob Portman Campaign Cmte</td><td>$324,918.54</td>
		</tr>
		<tr>
			<td id = "api-message" colspan = "2">*API not responding (Sample data from Ohio 2016/2018)*</td>
		</tr>
		
	</table>
	<h6>Political contribution data provided by <a href="https://www.followthemoney.org/" target="_blank">followthemoney.org</a> API</h6>
</div>

<div class="townhallTable">
	<h2>Townhalls</h2>
	<h6>(Most Recent and Next Upcoming)</h6>
	
		<table class = "townhallTable2">

		    <tbody>
		    		
		    	<c:forEach items="${townhalls}" var="townhall">
						
						<tr>	
		        		<td id = "townhallDate">${townhall.date}</td>
		        		</tr>
						<td id = "townhallName">${townhall.townhallName}</td>
						</tr>
						<tr>
		            	<td>${townhall.townhallAddress}</td>
		            	</tr>
						<tr>
		            	<td>${townhall.townhallCity}, ${townhall.state} ${townhall.townhallZip}</td>
		            	</tr>
		            	<c:if test="${not empty currentUser}">
			            	<tr>
			        			<td colspan ="2"><button id ="repQuestion"  class = "btn btn-primary" type = "submit">Submit Question</button>
	<%-- 		        			<form action = "${questionFormURL}" method = "POST">
			        			<div class="sendQuestion">
			        				<input type= "hidden" name = "userId" value = "${currentUser.userId}"/> 
			        				<input type="hidden" name="townhallId" value="${townhall.id}">
			        				<input type="hidden" name="repId" value="">
			        				<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
			        				<input type="hidden" id="questionText" name="message" placeholder="New question" value=""/>
									<button id="submitQuestion" type="submit" class="btn btn-success" style="display: none;">Submit</button>
									</div>
									</form> --%>
									</td>
							</tr>
							<tr class = "hidden"></tr>
							<tr class = "hidden question-form" >
		        			<td colspan="2">
								<form action = "${questionFormURL}" method = "POST">
		        					<div class="sendQuestion">
			        				<input type= "hidden" name = "userId" value = "${currentUser.userId}"/> 
			        				<input type="hidden" name="repId" value="">
			        				<input type="hidden" name="townhallId" value="${townhall.id}">
			        				<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
			        				<input id="questionText" name="message" placeholder="New question" size="40vw" />
									<button id="submitQuestion" type="submit" class="btn btn-success choose">Submit</button>
									</div>
								</form>
							</td>
		        		</tr>
						</c:if>
		            	<tr>
		            	<td>_________________________________</td>
		            	</tr>
		        		
					
				</c:forEach>
		   
		    </tbody>
		</table>	
</div>	
</div>


<c:import url="/WEB-INF/jsp/footer.jsp"/>
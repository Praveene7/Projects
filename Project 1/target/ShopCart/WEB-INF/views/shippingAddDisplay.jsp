<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/Navbar.jsp"%>


				<form:form commandName="order" class="form-horizaontal">
				 <div class="span9 margin-top">
                   <div class="span9 center margin-bottom"> 
					<legend>Billing Address </legend>
					 
					  <div class="control-group">
						<label class="control-label">House Number</label>
						<div class="controls docs-input-sizes">
						 <form:input path="cart.usersDetail.billingAddress.houseNumber" id="houseNumber" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Address Line 1</label>
						<div class="controls docs-input-sizes">
						 <form:input path="cart.usersDetail.billingAddress.addressLine1" id="addressLine1" class="form-Control"/>
						</div>
					  </div>	
					  <div class="control-group">
						<label class="control-label">Address Line 2</label>
						<div class="controls docs-input-sizes">
						 <form:input path="cart.usersDetail.billingAddress.addressLine2" id="addressLine2" class="form-Control"/>
						</div>
					  </div>	
					   <div class="control-group">
						<label class="control-label">City</label>
						<div class="controls docs-input-sizes">
						  <form:input path="cart.usersDetail.billingAddress.city" id="city" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">State</label>
						<div class="controls docs-input-sizes">
						  <form:input path="cart.usersDetail.billingAddress.state" id="state" class="form-Control"/>
						</div>
					  </div>					  
					  <div class="control-group">
						<label class="control-label">Country</label>
						<div class="controls docs-input-sizes">
							<form:input path="cart.usersDetail.billingAddress.country" id="country" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Zipcode</label>
						<div class="controls docs-input-sizes">
							<form:input path="cart.usersDetail.billingAddress.zipCode" id="zipCode" class="form-Control"/>
						</div>
					  </div>
					  <div class="span1 no_margin_left">
					 	 <button class="btn btn-primary" name="_eventId_backTouserInfoProcess">Back</button>
					    </div>
					  <div class="span1 ">
					  <input type="hidden" name="_flowExecutionKey" />
						<input type="submit" value="Next" class="btn btn-primary" name="_eventId_shippingAddProcessCompleted" />
						 </div>
						 <div class="span1 margin-left10">
					 	<button class="btn btn-danger" name="_eventId_cancel">Cancel</button>
					    </div>
					  </div>
					    </form:form>
		
<%@include file="/WEB-INF/views/footer.jsp" %>
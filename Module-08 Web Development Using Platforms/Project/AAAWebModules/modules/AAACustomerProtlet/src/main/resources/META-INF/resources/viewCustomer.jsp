<%@ include file="init.jsp" %>

<%
	String redirect = PortalUtil.getCurrentURL(renderRequest);
%>

<aui:button-row>
	<portlet:renderURL var="addCustomerURL">
		<portlet:param name="mvcPath" value="/updateCustomer.jsp" />
		<portlet:param name="redirect" value="<%= redirect %>" />
	</portlet:renderURL>

	<aui:button onClick="<%= addCustomerURL.toString() %>" value="New Customer" />
</aui:button-row>

<liferay-ui:search-container emptyResultsMessage="customer-empty-results-message" total="<%= CustomerLocalServiceUtil.getCustomersCountByGroupId(scopeGroupId) %>">
	<liferay-ui:search-container-results
		results="<%= CustomerLocalServiceUtil.getCustomersByGroupId(scopeGroupId, searchContainer.getStart(), searchContainer.getEnd()) %>"
		
	/>

	<liferay-ui:search-container-row
		className="AAACustomerServices.model.Customer"
		keyProperty="customerId"
		modelVar="customer" escapedModel="<%= true %>"
	>
		<liferay-ui:search-container-column-text
			name="Name"
			value="<%= customer.getName() %>"
		/>

		<liferay-ui:search-container-column-text
			name="Email"
			property="email"
		/>
		
		<liferay-ui:search-container-column-text
			name="Address"
			property="address"
		/>
		
		<liferay-ui:search-container-column-text
			name="National_Id"
			property="national_Id"
		/>
		
		<liferay-ui:search-container-column-text
			name="Contact"
			property="contact"
		/>

		<%
			String serviceName = "";
			try {
				serviceName = ServicesLocalServiceUtil.getServices
						(customer.getServiceId()).getServiceName();
			} catch (Exception e) {
			}
		%>

		<liferay-ui:search-container-column-text
			name="Service Name"
			value="<%= serviceName %>"
		/>

		<%
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy hh:mm a");
		%>

		<liferay-ui:search-container-column-text
			name="Date"
			value="<%= sdf.format(customer.getStart_date()) %>"
		/>

		<liferay-ui:search-container-column-jsp
			align="right"
			path="/CustomerActions.jsp"
		/>
	</liferay-ui:search-container-row>

	<liferay-ui:search-iterator />
</liferay-ui:search-container>

/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

package AAACustomerServices.service;

import com.liferay.portal.kernel.service.ServiceWrapper;

/**
 * Provides a wrapper for {@link CustomerLocalService}.
 *
 * @author Brian Wing Shun Chan
 * @see CustomerLocalService
 * @generated
 */
public class CustomerLocalServiceWrapper
	implements CustomerLocalService, ServiceWrapper<CustomerLocalService> {

	public CustomerLocalServiceWrapper() {
		this(null);
	}

	public CustomerLocalServiceWrapper(
		CustomerLocalService customerLocalService) {

		_customerLocalService = customerLocalService;
	}

	/**
	 * Adds the customer to the database. Also notifies the appropriate model listeners.
	 *
	 * <p>
	 * <strong>Important:</strong> Inspect CustomerLocalServiceImpl for overloaded versions of the method. If provided, use these entry points to the API, as the implementation logic may require the additional parameters defined there.
	 * </p>
	 *
	 * @param customer the customer
	 * @return the customer that was added
	 */
	@Override
	public AAACustomerServices.model.Customer addCustomer(
		AAACustomerServices.model.Customer customer) {

		return _customerLocalService.addCustomer(customer);
	}

	@Override
	public AAACustomerServices.model.Customer addCustomer(
			long userId, long groupId, String name, String email,
			String address, String national_Id, String contact, int month,
			int day, int year, int hour, int minute, long serviceId,
			com.liferay.portal.kernel.service.ServiceContext serviceContext)
		throws com.liferay.portal.kernel.exception.PortalException,
			   com.liferay.portal.kernel.exception.SystemException {

		return _customerLocalService.addCustomer(
			userId, groupId, name, email, address, national_Id, contact, month,
			day, year, hour, minute, serviceId, serviceContext);
	}

	/**
	 * Creates a new customer with the primary key. Does not add the customer to the database.
	 *
	 * @param customerId the primary key for the new customer
	 * @return the new customer
	 */
	@Override
	public AAACustomerServices.model.Customer createCustomer(long customerId) {
		return _customerLocalService.createCustomer(customerId);
	}

	/**
	 * @throws PortalException
	 */
	@Override
	public com.liferay.portal.kernel.model.PersistedModel createPersistedModel(
			java.io.Serializable primaryKeyObj)
		throws com.liferay.portal.kernel.exception.PortalException {

		return _customerLocalService.createPersistedModel(primaryKeyObj);
	}

	/**
	 * Deletes the customer from the database. Also notifies the appropriate model listeners.
	 *
	 * <p>
	 * <strong>Important:</strong> Inspect CustomerLocalServiceImpl for overloaded versions of the method. If provided, use these entry points to the API, as the implementation logic may require the additional parameters defined there.
	 * </p>
	 *
	 * @param customer the customer
	 * @return the customer that was removed
	 * @throws SystemException
	 */
	@Override
	public AAACustomerServices.model.Customer deleteCustomer(
			AAACustomerServices.model.Customer customer)
		throws com.liferay.portal.kernel.exception.SystemException {

		return _customerLocalService.deleteCustomer(customer);
	}

	/**
	 * Deletes the customer with the primary key from the database. Also notifies the appropriate model listeners.
	 *
	 * <p>
	 * <strong>Important:</strong> Inspect CustomerLocalServiceImpl for overloaded versions of the method. If provided, use these entry points to the API, as the implementation logic may require the additional parameters defined there.
	 * </p>
	 *
	 * @param customerId the primary key of the customer
	 * @return the customer that was removed
	 * @throws PortalException if a customer with the primary key could not be found
	 * @throws SystemException
	 */
	@Override
	public AAACustomerServices.model.Customer deleteCustomer(long customerId)
		throws com.liferay.portal.kernel.exception.PortalException,
			   com.liferay.portal.kernel.exception.SystemException {

		return _customerLocalService.deleteCustomer(customerId);
	}

	/**
	 * @throws PortalException
	 */
	@Override
	public com.liferay.portal.kernel.model.PersistedModel deletePersistedModel(
			com.liferay.portal.kernel.model.PersistedModel persistedModel)
		throws com.liferay.portal.kernel.exception.PortalException {

		return _customerLocalService.deletePersistedModel(persistedModel);
	}

	@Override
	public <T> T dslQuery(com.liferay.petra.sql.dsl.query.DSLQuery dslQuery) {
		return _customerLocalService.dslQuery(dslQuery);
	}

	@Override
	public int dslQueryCount(
		com.liferay.petra.sql.dsl.query.DSLQuery dslQuery) {

		return _customerLocalService.dslQueryCount(dslQuery);
	}

	@Override
	public com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery() {
		return _customerLocalService.dynamicQuery();
	}

	/**
	 * Performs a dynamic query on the database and returns the matching rows.
	 *
	 * @param dynamicQuery the dynamic query
	 * @return the matching rows
	 */
	@Override
	public <T> java.util.List<T> dynamicQuery(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery) {

		return _customerLocalService.dynamicQuery(dynamicQuery);
	}

	/**
	 * Performs a dynamic query on the database and returns a range of the matching rows.
	 *
	 * <p>
	 * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to <code>com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS</code> will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent, then the query will include the default ORDER BY logic from <code>AAACustomerServices.model.impl.CustomerModelImpl</code>.
	 * </p>
	 *
	 * @param dynamicQuery the dynamic query
	 * @param start the lower bound of the range of model instances
	 * @param end the upper bound of the range of model instances (not inclusive)
	 * @return the range of matching rows
	 */
	@Override
	public <T> java.util.List<T> dynamicQuery(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
		int end) {

		return _customerLocalService.dynamicQuery(dynamicQuery, start, end);
	}

	/**
	 * Performs a dynamic query on the database and returns an ordered range of the matching rows.
	 *
	 * <p>
	 * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to <code>com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS</code> will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent, then the query will include the default ORDER BY logic from <code>AAACustomerServices.model.impl.CustomerModelImpl</code>.
	 * </p>
	 *
	 * @param dynamicQuery the dynamic query
	 * @param start the lower bound of the range of model instances
	 * @param end the upper bound of the range of model instances (not inclusive)
	 * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	 * @return the ordered range of matching rows
	 */
	@Override
	public <T> java.util.List<T> dynamicQuery(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
		int end,
		com.liferay.portal.kernel.util.OrderByComparator<T> orderByComparator) {

		return _customerLocalService.dynamicQuery(
			dynamicQuery, start, end, orderByComparator);
	}

	/**
	 * Returns the number of rows matching the dynamic query.
	 *
	 * @param dynamicQuery the dynamic query
	 * @return the number of rows matching the dynamic query
	 */
	@Override
	public long dynamicQueryCount(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery) {

		return _customerLocalService.dynamicQueryCount(dynamicQuery);
	}

	/**
	 * Returns the number of rows matching the dynamic query.
	 *
	 * @param dynamicQuery the dynamic query
	 * @param projection the projection to apply to the query
	 * @return the number of rows matching the dynamic query
	 */
	@Override
	public long dynamicQueryCount(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery,
		com.liferay.portal.kernel.dao.orm.Projection projection) {

		return _customerLocalService.dynamicQueryCount(
			dynamicQuery, projection);
	}

	@Override
	public AAACustomerServices.model.Customer fetchCustomer(long customerId) {
		return _customerLocalService.fetchCustomer(customerId);
	}

	/**
	 * Returns the customer matching the UUID and group.
	 *
	 * @param uuid the customer's UUID
	 * @param groupId the primary key of the group
	 * @return the matching customer, or <code>null</code> if a matching customer could not be found
	 */
	@Override
	public AAACustomerServices.model.Customer fetchCustomerByUuidAndGroupId(
		String uuid, long groupId) {

		return _customerLocalService.fetchCustomerByUuidAndGroupId(
			uuid, groupId);
	}

	@Override
	public com.liferay.portal.kernel.dao.orm.ActionableDynamicQuery
		getActionableDynamicQuery() {

		return _customerLocalService.getActionableDynamicQuery();
	}

	/**
	 * Returns the customer with the primary key.
	 *
	 * @param customerId the primary key of the customer
	 * @return the customer
	 * @throws PortalException if a customer with the primary key could not be found
	 * @throws SystemException
	 */
	@Override
	public AAACustomerServices.model.Customer getCustomer(long customerId)
		throws com.liferay.portal.kernel.exception.PortalException,
			   com.liferay.portal.kernel.exception.SystemException {

		return _customerLocalService.getCustomer(customerId);
	}

	/**
	 * Returns the customer matching the UUID and group.
	 *
	 * @param uuid the customer's UUID
	 * @param groupId the primary key of the group
	 * @return the matching customer
	 * @throws PortalException if a matching customer could not be found
	 * @throws SystemException
	 */
	@Override
	public AAACustomerServices.model.Customer getCustomerByUuidAndGroupId(
			String uuid, long groupId)
		throws com.liferay.portal.kernel.exception.PortalException,
			   com.liferay.portal.kernel.exception.SystemException {

		return _customerLocalService.getCustomerByUuidAndGroupId(uuid, groupId);
	}

	/**
	 * Returns a range of all the customers.
	 *
	 * <p>
	 * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to <code>com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS</code> will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent, then the query will include the default ORDER BY logic from <code>AAACustomerServices.model.impl.CustomerModelImpl</code>.
	 * </p>
	 *
	 * @param start the lower bound of the range of customers
	 * @param end the upper bound of the range of customers (not inclusive)
	 * @return the range of customers
	 */
	@Override
	public java.util.List<AAACustomerServices.model.Customer> getCustomers(
		int start, int end) {

		return _customerLocalService.getCustomers(start, end);
	}

	@Override
	public java.util.List<AAACustomerServices.model.Customer>
			getCustomersByGroupId(long groupId)
		throws com.liferay.portal.kernel.exception.SystemException {

		return _customerLocalService.getCustomersByGroupId(groupId);
	}

	@Override
	public java.util.List<AAACustomerServices.model.Customer>
			getCustomersByGroupId(long groupId, int start, int end)
		throws com.liferay.portal.kernel.exception.SystemException {

		return _customerLocalService.getCustomersByGroupId(groupId, start, end);
	}

	/**
	 * Returns all the customers matching the UUID and company.
	 *
	 * @param uuid the UUID of the customers
	 * @param companyId the primary key of the company
	 * @return the matching customers, or an empty list if no matches were found
	 */
	@Override
	public java.util.List<AAACustomerServices.model.Customer>
		getCustomersByUuidAndCompanyId(String uuid, long companyId) {

		return _customerLocalService.getCustomersByUuidAndCompanyId(
			uuid, companyId);
	}

	/**
	 * Returns a range of customers matching the UUID and company.
	 *
	 * @param uuid the UUID of the customers
	 * @param companyId the primary key of the company
	 * @param start the lower bound of the range of customers
	 * @param end the upper bound of the range of customers (not inclusive)
	 * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	 * @return the range of matching customers, or an empty list if no matches were found
	 */
	@Override
	public java.util.List<AAACustomerServices.model.Customer>
		getCustomersByUuidAndCompanyId(
			String uuid, long companyId, int start, int end,
			com.liferay.portal.kernel.util.OrderByComparator
				<AAACustomerServices.model.Customer> orderByComparator) {

		return _customerLocalService.getCustomersByUuidAndCompanyId(
			uuid, companyId, start, end, orderByComparator);
	}

	/**
	 * Returns the number of customers.
	 *
	 * @return the number of customers
	 */
	@Override
	public int getCustomersCount() {
		return _customerLocalService.getCustomersCount();
	}

	@Override
	public int getCustomersCountByGroupId(long groupId)
		throws com.liferay.portal.kernel.exception.SystemException {

		return _customerLocalService.getCustomersCountByGroupId(groupId);
	}

	@Override
	public com.liferay.portal.kernel.dao.orm.ExportActionableDynamicQuery
		getExportActionableDynamicQuery(
			com.liferay.exportimport.kernel.lar.PortletDataContext
				portletDataContext) {

		return _customerLocalService.getExportActionableDynamicQuery(
			portletDataContext);
	}

	@Override
	public com.liferay.portal.kernel.dao.orm.IndexableActionableDynamicQuery
		getIndexableActionableDynamicQuery() {

		return _customerLocalService.getIndexableActionableDynamicQuery();
	}

	/**
	 * Returns the OSGi service identifier.
	 *
	 * @return the OSGi service identifier
	 */
	@Override
	public String getOSGiServiceIdentifier() {
		return _customerLocalService.getOSGiServiceIdentifier();
	}

	/**
	 * @throws PortalException
	 */
	@Override
	public com.liferay.portal.kernel.model.PersistedModel getPersistedModel(
			java.io.Serializable primaryKeyObj)
		throws com.liferay.portal.kernel.exception.PortalException {

		return _customerLocalService.getPersistedModel(primaryKeyObj);
	}

	/**
	 * Updates the customer in the database or adds it if it does not yet exist. Also notifies the appropriate model listeners.
	 *
	 * <p>
	 * <strong>Important:</strong> Inspect CustomerLocalServiceImpl for overloaded versions of the method. If provided, use these entry points to the API, as the implementation logic may require the additional parameters defined there.
	 * </p>
	 *
	 * @param customer the customer
	 * @return the customer that was updated
	 */
	@Override
	public AAACustomerServices.model.Customer updateCustomer(
		AAACustomerServices.model.Customer customer) {

		return _customerLocalService.updateCustomer(customer);
	}

	@Override
	public AAACustomerServices.model.Customer updateCustomer(
			long userId, long customerId, String name, String email,
			String address, String national_Id, String contact, int month,
			int day, int year, int hour, int minute, long serviceId,
			com.liferay.portal.kernel.service.ServiceContext serviceContext)
		throws com.liferay.portal.kernel.exception.PortalException,
			   com.liferay.portal.kernel.exception.SystemException {

		return _customerLocalService.updateCustomer(
			userId, customerId, name, email, address, national_Id, contact,
			month, day, year, hour, minute, serviceId, serviceContext);
	}

	@Override
	public CustomerLocalService getWrappedService() {
		return _customerLocalService;
	}

	@Override
	public void setWrappedService(CustomerLocalService customerLocalService) {
		_customerLocalService = customerLocalService;
	}

	private CustomerLocalService _customerLocalService;

}
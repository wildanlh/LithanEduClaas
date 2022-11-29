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

import AAACustomerServices.model.Services;

import com.liferay.petra.sql.dsl.query.DSLQuery;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.model.PersistedModel;
import com.liferay.portal.kernel.util.OrderByComparator;

import java.io.Serializable;

import java.util.List;

/**
 * Provides the local service utility for Services. This utility wraps
 * <code>AAACustomerServices.service.impl.ServicesLocalServiceImpl</code> and
 * is an access point for service operations in application layer code running
 * on the local server. Methods of this service will not have security checks
 * based on the propagated JAAS credentials because this service can only be
 * accessed from within the same VM.
 *
 * @author Brian Wing Shun Chan
 * @see ServicesLocalService
 * @generated
 */
public class ServicesLocalServiceUtil {

	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify this class directly. Add custom service methods to <code>AAACustomerServices.service.impl.ServicesLocalServiceImpl</code> and rerun ServiceBuilder to regenerate this class.
	 */
	public static Services addServices(
			long userId, long groupId, String serviceName,
			String serviceDescription, String servicePrice,
			com.liferay.portal.kernel.service.ServiceContext serviceContext)
		throws PortalException, SystemException {

		return getService().addServices(
			userId, groupId, serviceName, serviceDescription, servicePrice,
			serviceContext);
	}

	/**
	 * Adds the services to the database. Also notifies the appropriate model listeners.
	 *
	 * <p>
	 * <strong>Important:</strong> Inspect ServicesLocalServiceImpl for overloaded versions of the method. If provided, use these entry points to the API, as the implementation logic may require the additional parameters defined there.
	 * </p>
	 *
	 * @param services the services
	 * @return the services that was added
	 */
	public static Services addServices(Services services) {
		return getService().addServices(services);
	}

	/**
	 * @throws PortalException
	 */
	public static PersistedModel createPersistedModel(
			Serializable primaryKeyObj)
		throws PortalException {

		return getService().createPersistedModel(primaryKeyObj);
	}

	/**
	 * Creates a new services with the primary key. Does not add the services to the database.
	 *
	 * @param serviceId the primary key for the new services
	 * @return the new services
	 */
	public static Services createServices(long serviceId) {
		return getService().createServices(serviceId);
	}

	/**
	 * @throws PortalException
	 */
	public static PersistedModel deletePersistedModel(
			PersistedModel persistedModel)
		throws PortalException {

		return getService().deletePersistedModel(persistedModel);
	}

	/**
	 * Deletes the services with the primary key from the database. Also notifies the appropriate model listeners.
	 *
	 * <p>
	 * <strong>Important:</strong> Inspect ServicesLocalServiceImpl for overloaded versions of the method. If provided, use these entry points to the API, as the implementation logic may require the additional parameters defined there.
	 * </p>
	 *
	 * @param serviceId the primary key of the services
	 * @return the services that was removed
	 * @throws PortalException if a services with the primary key could not be found
	 * @throws SystemException
	 */
	public static Services deleteServices(long serviceId)
		throws PortalException, SystemException {

		return getService().deleteServices(serviceId);
	}

	/**
	 * Deletes the services from the database. Also notifies the appropriate model listeners.
	 *
	 * <p>
	 * <strong>Important:</strong> Inspect ServicesLocalServiceImpl for overloaded versions of the method. If provided, use these entry points to the API, as the implementation logic may require the additional parameters defined there.
	 * </p>
	 *
	 * @param services the services
	 * @return the services that was removed
	 * @throws SystemException
	 */
	public static Services deleteServices(Services services)
		throws SystemException {

		return getService().deleteServices(services);
	}

	public static <T> T dslQuery(DSLQuery dslQuery) {
		return getService().dslQuery(dslQuery);
	}

	public static int dslQueryCount(DSLQuery dslQuery) {
		return getService().dslQueryCount(dslQuery);
	}

	public static DynamicQuery dynamicQuery() {
		return getService().dynamicQuery();
	}

	/**
	 * Performs a dynamic query on the database and returns the matching rows.
	 *
	 * @param dynamicQuery the dynamic query
	 * @return the matching rows
	 */
	public static <T> List<T> dynamicQuery(DynamicQuery dynamicQuery) {
		return getService().dynamicQuery(dynamicQuery);
	}

	/**
	 * Performs a dynamic query on the database and returns a range of the matching rows.
	 *
	 * <p>
	 * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to <code>com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS</code> will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent, then the query will include the default ORDER BY logic from <code>AAACustomerServices.model.impl.ServicesModelImpl</code>.
	 * </p>
	 *
	 * @param dynamicQuery the dynamic query
	 * @param start the lower bound of the range of model instances
	 * @param end the upper bound of the range of model instances (not inclusive)
	 * @return the range of matching rows
	 */
	public static <T> List<T> dynamicQuery(
		DynamicQuery dynamicQuery, int start, int end) {

		return getService().dynamicQuery(dynamicQuery, start, end);
	}

	/**
	 * Performs a dynamic query on the database and returns an ordered range of the matching rows.
	 *
	 * <p>
	 * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to <code>com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS</code> will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent, then the query will include the default ORDER BY logic from <code>AAACustomerServices.model.impl.ServicesModelImpl</code>.
	 * </p>
	 *
	 * @param dynamicQuery the dynamic query
	 * @param start the lower bound of the range of model instances
	 * @param end the upper bound of the range of model instances (not inclusive)
	 * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	 * @return the ordered range of matching rows
	 */
	public static <T> List<T> dynamicQuery(
		DynamicQuery dynamicQuery, int start, int end,
		OrderByComparator<T> orderByComparator) {

		return getService().dynamicQuery(
			dynamicQuery, start, end, orderByComparator);
	}

	/**
	 * Returns the number of rows matching the dynamic query.
	 *
	 * @param dynamicQuery the dynamic query
	 * @return the number of rows matching the dynamic query
	 */
	public static long dynamicQueryCount(DynamicQuery dynamicQuery) {
		return getService().dynamicQueryCount(dynamicQuery);
	}

	/**
	 * Returns the number of rows matching the dynamic query.
	 *
	 * @param dynamicQuery the dynamic query
	 * @param projection the projection to apply to the query
	 * @return the number of rows matching the dynamic query
	 */
	public static long dynamicQueryCount(
		DynamicQuery dynamicQuery,
		com.liferay.portal.kernel.dao.orm.Projection projection) {

		return getService().dynamicQueryCount(dynamicQuery, projection);
	}

	public static Services fetchServices(long serviceId) {
		return getService().fetchServices(serviceId);
	}

	/**
	 * Returns the services matching the UUID and group.
	 *
	 * @param uuid the services's UUID
	 * @param groupId the primary key of the group
	 * @return the matching services, or <code>null</code> if a matching services could not be found
	 */
	public static Services fetchServicesByUuidAndGroupId(
		String uuid, long groupId) {

		return getService().fetchServicesByUuidAndGroupId(uuid, groupId);
	}

	public static com.liferay.portal.kernel.dao.orm.ActionableDynamicQuery
		getActionableDynamicQuery() {

		return getService().getActionableDynamicQuery();
	}

	public static com.liferay.portal.kernel.dao.orm.ExportActionableDynamicQuery
		getExportActionableDynamicQuery(
			com.liferay.exportimport.kernel.lar.PortletDataContext
				portletDataContext) {

		return getService().getExportActionableDynamicQuery(portletDataContext);
	}

	public static
		com.liferay.portal.kernel.dao.orm.IndexableActionableDynamicQuery
			getIndexableActionableDynamicQuery() {

		return getService().getIndexableActionableDynamicQuery();
	}

	/**
	 * Returns the OSGi service identifier.
	 *
	 * @return the OSGi service identifier
	 */
	public static String getOSGiServiceIdentifier() {
		return getService().getOSGiServiceIdentifier();
	}

	/**
	 * @throws PortalException
	 */
	public static PersistedModel getPersistedModel(Serializable primaryKeyObj)
		throws PortalException {

		return getService().getPersistedModel(primaryKeyObj);
	}

	/**
	 * Returns the services with the primary key.
	 *
	 * @param serviceId the primary key of the services
	 * @return the services
	 * @throws PortalException if a services with the primary key could not be found
	 */
	public static Services getServices(long serviceId) throws PortalException {
		return getService().getServices(serviceId);
	}

	public static List<Services> getServicesByGroupId(long groupId)
		throws SystemException {

		return getService().getServicesByGroupId(groupId);
	}

	public static List<Services> getServicesByGroupId(
			long groupId, int start, int end)
		throws SystemException {

		return getService().getServicesByGroupId(groupId, start, end);
	}

	/**
	 * Returns the services matching the UUID and group.
	 *
	 * @param uuid the services's UUID
	 * @param groupId the primary key of the group
	 * @return the matching services
	 * @throws PortalException if a matching services could not be found
	 */
	public static Services getServicesByUuidAndGroupId(
			String uuid, long groupId)
		throws PortalException {

		return getService().getServicesByUuidAndGroupId(uuid, groupId);
	}

	public static int getServicesCountByGroupId(long groupId)
		throws SystemException {

		return getService().getServicesCountByGroupId(groupId);
	}

	/**
	 * Returns a range of all the serviceses.
	 *
	 * <p>
	 * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to <code>com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS</code> will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent, then the query will include the default ORDER BY logic from <code>AAACustomerServices.model.impl.ServicesModelImpl</code>.
	 * </p>
	 *
	 * @param start the lower bound of the range of serviceses
	 * @param end the upper bound of the range of serviceses (not inclusive)
	 * @return the range of serviceses
	 */
	public static List<Services> getServiceses(int start, int end) {
		return getService().getServiceses(start, end);
	}

	/**
	 * Returns all the serviceses matching the UUID and company.
	 *
	 * @param uuid the UUID of the serviceses
	 * @param companyId the primary key of the company
	 * @return the matching serviceses, or an empty list if no matches were found
	 */
	public static List<Services> getServicesesByUuidAndCompanyId(
		String uuid, long companyId) {

		return getService().getServicesesByUuidAndCompanyId(uuid, companyId);
	}

	/**
	 * Returns a range of serviceses matching the UUID and company.
	 *
	 * @param uuid the UUID of the serviceses
	 * @param companyId the primary key of the company
	 * @param start the lower bound of the range of serviceses
	 * @param end the upper bound of the range of serviceses (not inclusive)
	 * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	 * @return the range of matching serviceses, or an empty list if no matches were found
	 */
	public static List<Services> getServicesesByUuidAndCompanyId(
		String uuid, long companyId, int start, int end,
		OrderByComparator<Services> orderByComparator) {

		return getService().getServicesesByUuidAndCompanyId(
			uuid, companyId, start, end, orderByComparator);
	}

	/**
	 * Returns the number of serviceses.
	 *
	 * @return the number of serviceses
	 */
	public static int getServicesesCount() {
		return getService().getServicesesCount();
	}

	public static Services updateServices(
			long userId, long serviceId, String serviceName,
			String serviceDescription, String servicePrice,
			com.liferay.portal.kernel.service.ServiceContext serviceContext)
		throws PortalException, SystemException {

		return getService().updateServices(
			userId, serviceId, serviceName, serviceDescription, servicePrice,
			serviceContext);
	}

	/**
	 * Updates the services in the database or adds it if it does not yet exist. Also notifies the appropriate model listeners.
	 *
	 * <p>
	 * <strong>Important:</strong> Inspect ServicesLocalServiceImpl for overloaded versions of the method. If provided, use these entry points to the API, as the implementation logic may require the additional parameters defined there.
	 * </p>
	 *
	 * @param services the services
	 * @return the services that was updated
	 */
	public static Services updateServices(Services services) {
		return getService().updateServices(services);
	}

	public static ServicesLocalService getService() {
		return _service;
	}

	private static volatile ServicesLocalService _service;

}
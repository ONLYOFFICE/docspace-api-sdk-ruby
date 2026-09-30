# (c) Copyright Ascensio System SIA 2026
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require 'cgi'

module DocspaceApiSdk
  module Security
    class AuditTrailDataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Start audit trail report
    # Queues a report of the portal's audit trail and returns the state of the background job that builds it. The  report covers the period reaching from now back by the audit trail lifetime that  `GET api/2.0/security/audit/settings/lifetime` reports and is never filtered: the query parameters of  `GET api/2.0/security/audit/events/filter` do not apply here. The caller needs the portal-settings right of a  DocSpace administrator plus the audit option of the portal's pricing plan, otherwise the call is answered with  402. The file is not ready when the response arrives - poll `GET api/2.0/security/audit/events/report` until  `isCompleted` is true, then take `resultFileUrl`, and treat a non-empty `error` as a failed build. The  finished file is saved to the caller's My documents section, as an XLSX workbook by default or as CSV when  `format=Csv`, in which case `resultFileId` stays empty and only the name and the URL identify it. One job runs  per caller and kind: calling again while the previous one is still building returns that job instead of  starting a second, and `DELETE api/2.0/security/audit/events/report` cancels it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-audit-trail-report/
    # @param [Hash] opts the optional parameters
    # @option opts [AuditReportFormat] :format The format the report file is written in. The workbook format is the default and is the only one that leaves  the finished file addressable by ID: a report asked for as CSV comes back with an empty `resultFileId`, so it  can only be reached through `resultFileName` and `resultFileUrl`.
    # @return [DocumentBuilderTaskWrapper]
    def create_audit_trail_report(opts = {})
      data, _status_code, _headers = create_audit_trail_report_with_http_info(opts)
      data
    end

    # Start audit trail report
    # Queues a report of the portal's audit trail and returns the state of the background job that builds it. The  report covers the period reaching from now back by the audit trail lifetime that  `GET api/2.0/security/audit/settings/lifetime` reports and is never filtered: the query parameters of  `GET api/2.0/security/audit/events/filter` do not apply here. The caller needs the portal-settings right of a  DocSpace administrator plus the audit option of the portal's pricing plan, otherwise the call is answered with  402. The file is not ready when the response arrives - poll `GET api/2.0/security/audit/events/report` until  `isCompleted` is true, then take `resultFileUrl`, and treat a non-empty `error` as a failed build. The  finished file is saved to the caller's My documents section, as an XLSX workbook by default or as CSV when  `format=Csv`, in which case `resultFileId` stays empty and only the name and the URL identify it. One job runs  per caller and kind: calling again while the previous one is still building returns that job instead of  starting a second, and `DELETE api/2.0/security/audit/events/report` cancels it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-audit-trail-report/
    # @param [Hash] opts the optional parameters
    # @option opts [AuditReportFormat] :format The format the report file is written in. The workbook format is the default and is the only one that leaves  the finished file addressable by ID: a report asked for as CSV comes back with an empty `resultFileId`, so it  can only be reached through `resultFileName` and `resultFileUrl`.
    # @return [Array<(DocumentBuilderTaskWrapper, Integer, Hash)>] DocumentBuilderTaskWrapper data, response status code and response headers
    def create_audit_trail_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::AuditTrailDataApi.create_audit_trail_report ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/audit/events/report'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DocumentBuilderTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::AuditTrailDataApi.create_audit_trail_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::AuditTrailDataApi#create_audit_trail_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get filtered audit events
    # Returns the portal's audit events that match the filters in the query - by the user who acted, the module the  action belongs to, the action and its type, the entity type and target, and the period - and is the operation  behind the audit trail page. The caller needs the portal-settings right of a DocSpace administrator plus the  audit option of the portal's pricing plan; when that option is missing the filters are silently ignored and  the answer is the same twenty most recent events that `GET api/2.0/security/audit/events/last` returns, and  when the login history and audit trail section is disabled altogether the call is answered with 402. Take the  values accepted by `action`, `actionType`, `moduleType` and `entryType` from  `GET api/2.0/security/audit/types`, and the tree they belong to from `GET api/2.0/security/audit/mappers`. A  non-default `action` matches only that action and, combined with `target`, only its exact value; it also  stops `moduleType` and `actionType` from narrowing the result, so combine `target` with `entryType` instead of  `action` when filtering by target without pinning a single action. `from` and `to` are read as UTC instants  while `date` comes back in the portal time zone, `count` defaults to 100 and cannot exceed it, and the filters  are applied before the page window, so a full page means there may be more matching events beyond it. The  operation is read-only.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-events-by-filter/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id The user who performed the action, given by portal user ID. Leave it at the empty GUID to keep the events of  every user.
    # @option opts [LocationType] :module_type The module the recorded action belongs to, spelled as `GET api/2.0/security/audit/types` lists it under  `moduleTypes`. `GET api/2.0/security/audit/mappers` shows which module records which action. The default  value keeps every module.
    # @option opts [ActionType] :action_type The kind of change the action made, spelled as `GET api/2.0/security/audit/types` lists it under  `actionTypes`. The default value keeps every kind.
    # @option opts [MessageAction] :action The exact action recorded, spelled as the `messageAction` of `GET api/2.0/security/audit/mappers`. Naming  one narrows the answer to that single action and overrides `moduleType` and `actionType`, which stop  narrowing anything once it is set.
    # @option opts [EntryType] :entry_type The kind of object the action was performed on, spelled as `GET api/2.0/security/audit/types` lists it under  `entryTypes`. Pair it with `target` to filter by object without pinning a single action.
    # @option opts [String] :target The object the action was performed on, as the audit trail recorded it - a file name, a user account, a room  title. It is matched in full and exactly as stored, so it narrows the answer only when `action` or  `entryType` is set as well.
    # @option opts [Time] :from The earliest moment an event may have been recorded at, read as a UTC instant. The `date` of the events that  come back is in the portal time zone instead, so the two do not line up on a portal that is not on UTC.
    # @option opts [Time] :to The latest moment an event may have been recorded at, read as a UTC instant in the same way as `from`.
    # @option opts [Integer] :count How many events one page may hold. The maximum is also the default, so a client that wants shorter pages has  to ask for them; a full page means there may be further matches beyond it.
    # @option opts [Integer] :start_index How many matching events to skip before the page begins, counting from the newest. Advance it by `count` to  walk backwards through the trail.
    # @return [AuditEventArrayWrapper]
    def get_audit_events_by_filter(opts = {})
      data, _status_code, _headers = get_audit_events_by_filter_with_http_info(opts)
      data
    end

    # Get filtered audit events
    # Returns the portal's audit events that match the filters in the query - by the user who acted, the module the  action belongs to, the action and its type, the entity type and target, and the period - and is the operation  behind the audit trail page. The caller needs the portal-settings right of a DocSpace administrator plus the  audit option of the portal's pricing plan; when that option is missing the filters are silently ignored and  the answer is the same twenty most recent events that `GET api/2.0/security/audit/events/last` returns, and  when the login history and audit trail section is disabled altogether the call is answered with 402. Take the  values accepted by `action`, `actionType`, `moduleType` and `entryType` from  `GET api/2.0/security/audit/types`, and the tree they belong to from `GET api/2.0/security/audit/mappers`. A  non-default `action` matches only that action and, combined with `target`, only its exact value; it also  stops `moduleType` and `actionType` from narrowing the result, so combine `target` with `entryType` instead of  `action` when filtering by target without pinning a single action. `from` and `to` are read as UTC instants  while `date` comes back in the portal time zone, `count` defaults to 100 and cannot exceed it, and the filters  are applied before the page window, so a full page means there may be more matching events beyond it. The  operation is read-only.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-events-by-filter/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id The user who performed the action, given by portal user ID. Leave it at the empty GUID to keep the events of  every user.
    # @option opts [LocationType] :module_type The module the recorded action belongs to, spelled as `GET api/2.0/security/audit/types` lists it under  `moduleTypes`. `GET api/2.0/security/audit/mappers` shows which module records which action. The default  value keeps every module.
    # @option opts [ActionType] :action_type The kind of change the action made, spelled as `GET api/2.0/security/audit/types` lists it under  `actionTypes`. The default value keeps every kind.
    # @option opts [MessageAction] :action The exact action recorded, spelled as the `messageAction` of `GET api/2.0/security/audit/mappers`. Naming  one narrows the answer to that single action and overrides `moduleType` and `actionType`, which stop  narrowing anything once it is set.
    # @option opts [EntryType] :entry_type The kind of object the action was performed on, spelled as `GET api/2.0/security/audit/types` lists it under  `entryTypes`. Pair it with `target` to filter by object without pinning a single action.
    # @option opts [String] :target The object the action was performed on, as the audit trail recorded it - a file name, a user account, a room  title. It is matched in full and exactly as stored, so it narrows the answer only when `action` or  `entryType` is set as well.
    # @option opts [Time] :from The earliest moment an event may have been recorded at, read as a UTC instant. The `date` of the events that  come back is in the portal time zone instead, so the two do not line up on a portal that is not on UTC.
    # @option opts [Time] :to The latest moment an event may have been recorded at, read as a UTC instant in the same way as `from`.
    # @option opts [Integer] :count How many events one page may hold. The maximum is also the default, so a client that wants shorter pages has  to ask for them; a full page means there may be further matches beyond it.
    # @option opts [Integer] :start_index How many matching events to skip before the page begins, counting from the newest. Advance it by `count` to  walk backwards through the trail.
    # @return [Array<(AuditEventArrayWrapper, Integer, Hash)>] AuditEventArrayWrapper data, response status code and response headers
    def get_audit_events_by_filter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::AuditTrailDataApi.get_audit_events_by_filter ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Security::AuditTrailDataApi.get_audit_events_by_filter, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Security::AuditTrailDataApi.get_audit_events_by_filter, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/security/audit/events/filter'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'moduleType'] = opts[:'module_type'] if !opts[:'module_type'].nil?
      query_params[:'actionType'] = opts[:'action_type'] if !opts[:'action_type'].nil?
      query_params[:'action'] = opts[:'action'] if !opts[:'action'].nil?
      query_params[:'entryType'] = opts[:'entry_type'] if !opts[:'entry_type'].nil?
      query_params[:'target'] = opts[:'target'] if !opts[:'target'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AuditEventArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::AuditTrailDataApi.get_audit_events_by_filter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::AuditTrailDataApi#get_audit_events_by_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get audit lifetime settings
    # Returns how long this portal keeps its two security logs: `loginHistoryLifeTime` for login events and  `auditTrailLifeTime` for audit events, both counted in days, together with `lastModified`, the moment the pair  was last saved. The caller needs the portal-settings right of a DocSpace administrator, and in a cloud  installation the login history and audit trail section must be enabled for the portal, otherwise the call is  answered with 402; the audit option of the pricing plan is not required to read the values. Both numbers lie  between 1 and 180 days, and a portal that never changed them reports the default of 180. They define the  window the rest of the audit operations work in: `GET api/2.0/security/audit/events/last` looks exactly this  far back, and the reports started by `POST api/2.0/security/audit/login/report` and  `POST api/2.0/security/audit/events/report` cover exactly this period. The operation is read-only; change the  values with `POST api/2.0/security/audit/settings/lifetime`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-settings/
    # @param [Hash] opts the optional parameters
    # @return [TenantAuditSettingsResponseWrapper]
    def get_audit_settings(opts = {})
      data, _status_code, _headers = get_audit_settings_with_http_info(opts)
      data
    end

    # Get audit lifetime settings
    # Returns how long this portal keeps its two security logs: `loginHistoryLifeTime` for login events and  `auditTrailLifeTime` for audit events, both counted in days, together with `lastModified`, the moment the pair  was last saved. The caller needs the portal-settings right of a DocSpace administrator, and in a cloud  installation the login history and audit trail section must be enabled for the portal, otherwise the call is  answered with 402; the audit option of the pricing plan is not required to read the values. Both numbers lie  between 1 and 180 days, and a portal that never changed them reports the default of 180. They define the  window the rest of the audit operations work in: `GET api/2.0/security/audit/events/last` looks exactly this  far back, and the reports started by `POST api/2.0/security/audit/login/report` and  `POST api/2.0/security/audit/events/report` cover exactly this period. The operation is read-only; change the  values with `POST api/2.0/security/audit/settings/lifetime`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantAuditSettingsResponseWrapper, Integer, Hash)>] TenantAuditSettingsResponseWrapper data, response status code and response headers
    def get_audit_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::AuditTrailDataApi.get_audit_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/audit/settings/lifetime'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TenantAuditSettingsResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::AuditTrailDataApi.get_audit_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::AuditTrailDataApi#get_audit_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get audit trail mappers
    # Returns the audit vocabulary as the tree it really is: every product, the modules inside it, and for each  module the actions it can record together with the type of change and the entity each of them applies to. Pass  `productType` to keep a single product and `moduleType` to keep a single module inside the products that  remain; omit both to get the whole tree. The caller needs the portal-settings right of a DocSpace  administrator; the audit option of the pricing plan is not required, and the call is read-only and safe to  repeat. Each action carries `messageAction`, the name to send as the `action` filter of  `GET api/2.0/security/audit/events/filter`, next to `actionType` and `entity`, the values its `actionType` and  `entryType` filters accept - this is where a caller learns which action belongs to which module instead of  guessing. A filter that matches nothing yields an empty list rather than an error. Use  `GET api/2.0/security/audit/types` for the flat lists of the same names.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-mappers/
    # @param [Hash] opts the optional parameters
    # @option opts [ProductType] :product_type The product to keep, spelled as `GET api/2.0/security/audit/types` lists it under `productTypes`. Omitting  it keeps every product; a value no product matches yields an empty list rather than an error.
    # @option opts [LocationType] :module_type The module to keep inside the products that survive `productType`, spelled as  `GET api/2.0/security/audit/types` lists it under `moduleTypes`. Omitting it keeps every module of those  products.
    # @return [AuditTrailProductMapperArrayWrapper]
    def get_audit_trail_mappers(opts = {})
      data, _status_code, _headers = get_audit_trail_mappers_with_http_info(opts)
      data
    end

    # Get audit trail mappers
    # Returns the audit vocabulary as the tree it really is: every product, the modules inside it, and for each  module the actions it can record together with the type of change and the entity each of them applies to. Pass  `productType` to keep a single product and `moduleType` to keep a single module inside the products that  remain; omit both to get the whole tree. The caller needs the portal-settings right of a DocSpace  administrator; the audit option of the pricing plan is not required, and the call is read-only and safe to  repeat. Each action carries `messageAction`, the name to send as the `action` filter of  `GET api/2.0/security/audit/events/filter`, next to `actionType` and `entity`, the values its `actionType` and  `entryType` filters accept - this is where a caller learns which action belongs to which module instead of  guessing. A filter that matches nothing yields an empty list rather than an error. Use  `GET api/2.0/security/audit/types` for the flat lists of the same names.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-mappers/
    # @param [Hash] opts the optional parameters
    # @option opts [ProductType] :product_type The product to keep, spelled as `GET api/2.0/security/audit/types` lists it under `productTypes`. Omitting  it keeps every product; a value no product matches yields an empty list rather than an error.
    # @option opts [LocationType] :module_type The module to keep inside the products that survive `productType`, spelled as  `GET api/2.0/security/audit/types` lists it under `moduleTypes`. Omitting it keeps every module of those  products.
    # @return [Array<(AuditTrailProductMapperArrayWrapper, Integer, Hash)>] AuditTrailProductMapperArrayWrapper data, response status code and response headers
    def get_audit_trail_mappers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::AuditTrailDataApi.get_audit_trail_mappers ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/audit/mappers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'productType'] = opts[:'product_type'] if !opts[:'product_type'].nil?
      query_params[:'moduleType'] = opts[:'module_type'] if !opts[:'module_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AuditTrailProductMapperArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::AuditTrailDataApi.get_audit_trail_mappers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::AuditTrailDataApi#get_audit_trail_mappers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get audit trail report status
    # Returns the state of the audit trail report the calling user has started, and is the operation to poll after  `POST api/2.0/security/audit/events/report`. The caller needs the portal-settings right of a DocSpace  administrator plus the audit option of the portal's pricing plan, otherwise the call is answered with 402.  Jobs are kept per user and per report kind: this operation never shows another administrator's report, nor the  login history report, which has its own status at `GET api/2.0/security/audit/login/report`. The answer is  empty when no report of this kind is known for the caller; otherwise `percentage` grows towards 100,  `isCompleted` turns true when the build has ended, `error` carries the failure message when it ended badly,  and `resultFileName` and `resultFileUrl` point at the file saved to the caller's My documents section, while  `resultFileId` is filled for an XLSX report only. The operation is read-only and safe to poll every few  seconds; a finished job is dropped as soon as the next report of this kind is started.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-report/
    # @param [Hash] opts the optional parameters
    # @return [DocumentBuilderTaskWrapper]
    def get_audit_trail_report(opts = {})
      data, _status_code, _headers = get_audit_trail_report_with_http_info(opts)
      data
    end

    # Get audit trail report status
    # Returns the state of the audit trail report the calling user has started, and is the operation to poll after  `POST api/2.0/security/audit/events/report`. The caller needs the portal-settings right of a DocSpace  administrator plus the audit option of the portal's pricing plan, otherwise the call is answered with 402.  Jobs are kept per user and per report kind: this operation never shows another administrator's report, nor the  login history report, which has its own status at `GET api/2.0/security/audit/login/report`. The answer is  empty when no report of this kind is known for the caller; otherwise `percentage` grows towards 100,  `isCompleted` turns true when the build has ended, `error` carries the failure message when it ended badly,  and `resultFileName` and `resultFileUrl` point at the file saved to the caller's My documents section, while  `resultFileId` is filled for an XLSX report only. The operation is read-only and safe to poll every few  seconds; a finished job is dropped as soon as the next report of this kind is started.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-report/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentBuilderTaskWrapper, Integer, Hash)>] DocumentBuilderTaskWrapper data, response status code and response headers
    def get_audit_trail_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::AuditTrailDataApi.get_audit_trail_report ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/audit/events/report'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DocumentBuilderTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::AuditTrailDataApi.get_audit_trail_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::AuditTrailDataApi#get_audit_trail_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get audit trail types
    # Returns the vocabularies the audit filters are built from: `actions` lists every action the portal can record,  `actionTypes` the kinds of change they stand for, `productTypes` the products they belong to, `moduleTypes`  the locations inside those products, and `entryTypes` the kinds of entity an action can be applied to. The  caller needs the portal-settings right of a DocSpace administrator; the audit option of the pricing plan is  not required, so the lists can be read on any portal. The operation is read-only, takes no parameters and  depends on nothing else. Every value is the name to send in the matching query parameter of  `GET api/2.0/security/audit/events/filter` or `GET api/2.0/security/audit/login/filter`, so read this  operation once and reuse the answer instead of guessing spellings. The response is an untyped object holding  those five arrays of names, and it changes only with the portal version. Use  `GET api/2.0/security/audit/mappers` when the relations between products, modules and actions are needed  rather than the flat lists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-types/
    # @param [Hash] opts the optional parameters
    # @return [AuditTrailTypesWrapper]
    def get_audit_trail_types(opts = {})
      data, _status_code, _headers = get_audit_trail_types_with_http_info(opts)
      data
    end

    # Get audit trail types
    # Returns the vocabularies the audit filters are built from: `actions` lists every action the portal can record,  `actionTypes` the kinds of change they stand for, `productTypes` the products they belong to, `moduleTypes`  the locations inside those products, and `entryTypes` the kinds of entity an action can be applied to. The  caller needs the portal-settings right of a DocSpace administrator; the audit option of the pricing plan is  not required, so the lists can be read on any portal. The operation is read-only, takes no parameters and  depends on nothing else. Every value is the name to send in the matching query parameter of  `GET api/2.0/security/audit/events/filter` or `GET api/2.0/security/audit/login/filter`, so read this  operation once and reuse the answer instead of guessing spellings. The response is an untyped object holding  those five arrays of names, and it changes only with the portal version. Use  `GET api/2.0/security/audit/mappers` when the relations between products, modules and actions are needed  rather than the flat lists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-types/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuditTrailTypesWrapper, Integer, Hash)>] AuditTrailTypesWrapper data, response status code and response headers
    def get_audit_trail_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::AuditTrailDataApi.get_audit_trail_types ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/audit/types'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AuditTrailTypesWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::AuditTrailDataApi.get_audit_trail_types",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::AuditTrailDataApi#get_audit_trail_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get recent audit events
    # Returns the twenty most recent audit events of the portal - the creations, changes, deletions, sharing and  settings updates its members made - as the short summary a settings page shows before anyone asks for the full  trail. The caller needs the portal-settings right of a DocSpace administrator, and in a cloud installation the  login history and audit trail section must be enabled for the portal, otherwise the call is answered with 402.  The operation is read-only and takes no parameters: it looks back exactly as far as the audit trail lifetime  that `GET api/2.0/security/audit/settings/lifetime` reports, returns at most twenty events ordered newest  first, and cannot be filtered. `date` is given in the portal time zone, `actionText` is the readable sentence  describing the event with every substituted value shortened to fifty characters here, and `target` names the  entity the action was applied to. An empty list means nothing was recorded inside that period. Use  `GET api/2.0/security/audit/events/filter` to filter by user, module, action or period.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-audit-events/
    # @param [Hash] opts the optional parameters
    # @return [AuditEventArrayWrapper]
    def get_last_audit_events(opts = {})
      data, _status_code, _headers = get_last_audit_events_with_http_info(opts)
      data
    end

    # Get recent audit events
    # Returns the twenty most recent audit events of the portal - the creations, changes, deletions, sharing and  settings updates its members made - as the short summary a settings page shows before anyone asks for the full  trail. The caller needs the portal-settings right of a DocSpace administrator, and in a cloud installation the  login history and audit trail section must be enabled for the portal, otherwise the call is answered with 402.  The operation is read-only and takes no parameters: it looks back exactly as far as the audit trail lifetime  that `GET api/2.0/security/audit/settings/lifetime` reports, returns at most twenty events ordered newest  first, and cannot be filtered. `date` is given in the portal time zone, `actionText` is the readable sentence  describing the event with every substituted value shortened to fifty characters here, and `target` names the  entity the action was applied to. An empty list means nothing was recorded inside that period. Use  `GET api/2.0/security/audit/events/filter` to filter by user, module, action or period.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-audit-events/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuditEventArrayWrapper, Integer, Hash)>] AuditEventArrayWrapper data, response status code and response headers
    def get_last_audit_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::AuditTrailDataApi.get_last_audit_events ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/audit/events/last'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AuditEventArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::AuditTrailDataApi.get_last_audit_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::AuditTrailDataApi#get_last_audit_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set audit lifetime settings
    # Sets how long this portal keeps its login history and its audit trail, in days, and returns the pair as it was  stored. The caller needs the portal-settings right of a DocSpace administrator plus the audit option of the  portal's pricing plan, otherwise the call is answered with 402. Send both numbers inside `settings`: each has  to be between 1 and 180 days, and a value outside that range is refused with 400 without either number being  saved, so read the current pair from `GET api/2.0/security/audit/settings/lifetime` and resend the one that  should stay as it is. The call replaces the stored settings rather than merging them, is idempotent, and takes  effect at once: the period covered by `GET api/2.0/security/audit/events/last` and by both audit reports  shrinks or grows with it, and events older than the new lifetime stop being reported. The change is itself  recorded in the audit trail.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-audit-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantAuditSettingsWrapper] :tenant_audit_settings_wrapper 
    # @return [TenantAuditSettingsResponseWrapper]
    def set_audit_settings(opts = {})
      data, _status_code, _headers = set_audit_settings_with_http_info(opts)
      data
    end

    # Set audit lifetime settings
    # Sets how long this portal keeps its login history and its audit trail, in days, and returns the pair as it was  stored. The caller needs the portal-settings right of a DocSpace administrator plus the audit option of the  portal's pricing plan, otherwise the call is answered with 402. Send both numbers inside `settings`: each has  to be between 1 and 180 days, and a value outside that range is refused with 400 without either number being  saved, so read the current pair from `GET api/2.0/security/audit/settings/lifetime` and resend the one that  should stay as it is. The call replaces the stored settings rather than merging them, is idempotent, and takes  effect at once: the period covered by `GET api/2.0/security/audit/events/last` and by both audit reports  shrinks or grows with it, and events older than the new lifetime stop being reported. The change is itself  recorded in the audit trail.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-audit-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantAuditSettingsWrapper] :tenant_audit_settings_wrapper 
    # @return [Array<(TenantAuditSettingsResponseWrapper, Integer, Hash)>] TenantAuditSettingsResponseWrapper data, response status code and response headers
    def set_audit_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::AuditTrailDataApi.set_audit_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/audit/settings/lifetime'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tenant_audit_settings_wrapper'])

      # return_type
      return_type = opts[:debug_return_type] || 'TenantAuditSettingsResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::AuditTrailDataApi.set_audit_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::AuditTrailDataApi#set_audit_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terminate audit trail report
    # Cancels the audit trail report the calling user has running and drops it from the build queue. The caller  needs the portal-settings right of a DocSpace administrator plus the audit option of the portal's pricing  plan, otherwise the call is answered with 402. Cancellation is handed to the same background service that  builds the report, so a successful answer means the request was accepted rather than that the job has already  stopped: poll `GET api/2.0/security/audit/events/report` to watch it disappear. The operation returns no  content and touches only the caller's own audit trail report - the login history report is cancelled by  `DELETE api/2.0/security/audit/login/report`, and no report of another user can be reached from here. It is  idempotent: cancelling when nothing is running is not an error. A job stopped before it finished writing  leaves nothing in My documents, and a report cancelled by mistake has to be built again with  `POST api/2.0/security/audit/events/report`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-audit-trail-report/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def terminate_audit_trail_report(opts = {})
      terminate_audit_trail_report_with_http_info(opts)
      nil
    end

    # Terminate audit trail report
    # Cancels the audit trail report the calling user has running and drops it from the build queue. The caller  needs the portal-settings right of a DocSpace administrator plus the audit option of the portal's pricing  plan, otherwise the call is answered with 402. Cancellation is handed to the same background service that  builds the report, so a successful answer means the request was accepted rather than that the job has already  stopped: poll `GET api/2.0/security/audit/events/report` to watch it disappear. The operation returns no  content and touches only the caller's own audit trail report - the login history report is cancelled by  `DELETE api/2.0/security/audit/login/report`, and no report of another user can be reached from here. It is  idempotent: cancelling when nothing is running is not an error. A job stopped before it finished writing  leaves nothing in My documents, and a report cancelled by mistake has to be built again with  `POST api/2.0/security/audit/events/report`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-audit-trail-report/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def terminate_audit_trail_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::AuditTrailDataApi.terminate_audit_trail_report ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/audit/events/report'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::AuditTrailDataApi.terminate_audit_trail_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::AuditTrailDataApi#terminate_audit_trail_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

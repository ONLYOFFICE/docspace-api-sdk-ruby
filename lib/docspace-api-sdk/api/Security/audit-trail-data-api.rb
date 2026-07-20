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
    # Generate the audit trail report
    # Generates the audit trail report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-audit-trail-report/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def create_audit_trail_report(opts = {})
      data, _status_code, _headers = create_audit_trail_report_with_http_info(opts)
      data
    end

    # Generate the audit trail report
    # Generates the audit trail report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-audit-trail-report/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def create_audit_trail_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::AuditTrailDataApi.create_audit_trail_report ...'
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
      return_type = opts[:debug_return_type] || 'StringWrapper'

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

    # Get filtered audit trail data
    # Returns a list of the audit events by the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-events-by-filter/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id The ID of the user who triggered the audit event.
    # @option opts [LocationType] :module_type The location where the audit event occurred.
    # @option opts [ActionType] :action_type The type of action performed in the audit event (e.g., Create, Update, Delete).
    # @option opts [MessageAction] :action The specific action that occurred within the audit event.
    # @option opts [EntryType] :entry_type The type of audit entry (e.g., Folder, User, File).
    # @option opts [String] :target The target object affected by the audit event (e.g., document ID, user account).
    # @option opts [ApiDateTime] :from The starting date and time for filtering audit events.
    # @option opts [ApiDateTime] :to The ending date and time for filtering audit events.
    # @option opts [Integer] :count The maximum number of audit event records to retrieve.
    # @option opts [Integer] :start_index The index of the first audit event record to retrieve in a paged query.
    # @return [AuditEventArrayWrapper]
    def get_audit_events_by_filter(opts = {})
      data, _status_code, _headers = get_audit_events_by_filter_with_http_info(opts)
      data
    end

    # Get filtered audit trail data
    # Returns a list of the audit events by the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-events-by-filter/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id The ID of the user who triggered the audit event.
    # @option opts [LocationType] :module_type The location where the audit event occurred.
    # @option opts [ActionType] :action_type The type of action performed in the audit event (e.g., Create, Update, Delete).
    # @option opts [MessageAction] :action The specific action that occurred within the audit event.
    # @option opts [EntryType] :entry_type The type of audit entry (e.g., Folder, User, File).
    # @option opts [String] :target The target object affected by the audit event (e.g., document ID, user account).
    # @option opts [ApiDateTime] :from The starting date and time for filtering audit events.
    # @option opts [ApiDateTime] :to The ending date and time for filtering audit events.
    # @option opts [Integer] :count The maximum number of audit event records to retrieve.
    # @option opts [Integer] :start_index The index of the first audit event record to retrieve in a paged query.
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

    # Get the audit trail settings
    # Returns the audit trail settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-settings/
    # @param [Hash] opts the optional parameters
    # @return [TenantAuditSettingsWrapper]
    def get_audit_settings(opts = {})
      data, _status_code, _headers = get_audit_settings_with_http_info(opts)
      data
    end

    # Get the audit trail settings
    # Returns the audit trail settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantAuditSettingsWrapper, Integer, Hash)>] TenantAuditSettingsWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'TenantAuditSettingsWrapper'

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
    # Returns the mappers for the audit trail types.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-mappers/
    # @param [Hash] opts the optional parameters
    # @option opts [ProductType] :product_type The type of product related to the audit trail.
    # @option opts [LocationType] :module_type The location associated with the audit trail.
    # @return [ObjectWrapper]
    def get_audit_trail_mappers(opts = {})
      data, _status_code, _headers = get_audit_trail_mappers_with_http_info(opts)
      data
    end

    # Get audit trail mappers
    # Returns the mappers for the audit trail types.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-mappers/
    # @param [Hash] opts the optional parameters
    # @option opts [ProductType] :product_type The type of product related to the audit trail.
    # @option opts [LocationType] :module_type The location associated with the audit trail.
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'ObjectWrapper'

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

    # Get audit trail types
    # Returns all the available audit trail types.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-types/
    # @param [Hash] opts the optional parameters
    # @return [ObjectWrapper]
    def get_audit_trail_types(opts = {})
      data, _status_code, _headers = get_audit_trail_types_with_http_info(opts)
      data
    end

    # Get audit trail types
    # Returns all the available audit trail types.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-types/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'ObjectWrapper'

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

    # Get audit trail data
    # Returns a list of the latest changes (creation, modification, deletion, etc.) made by users to the entities on the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-audit-events/
    # @param [Hash] opts the optional parameters
    # @return [AuditEventArrayWrapper]
    def get_last_audit_events(opts = {})
      data, _status_code, _headers = get_last_audit_events_with_http_info(opts)
      data
    end

    # Get audit trail data
    # Returns a list of the latest changes (creation, modification, deletion, etc.) made by users to the entities on the portal.
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

    # Set the audit trail settings
    # Sets the audit trail settings for the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-audit-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantAuditSettingsWrapper] :tenant_audit_settings_wrapper 
    # @return [TenantAuditSettingsWrapper]
    def set_audit_settings(opts = {})
      data, _status_code, _headers = set_audit_settings_with_http_info(opts)
      data
    end

    # Set the audit trail settings
    # Sets the audit trail settings for the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-audit-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantAuditSettingsWrapper] :tenant_audit_settings_wrapper 
    # @return [Array<(TenantAuditSettingsWrapper, Integer, Hash)>] TenantAuditSettingsWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'TenantAuditSettingsWrapper'

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
    end
  end
end

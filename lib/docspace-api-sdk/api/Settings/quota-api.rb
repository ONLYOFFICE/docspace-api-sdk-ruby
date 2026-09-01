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
  module Settings
    class QuotaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the user quota settings
    # Returns the user quota settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-quota-settings/
    # @param [Hash] opts the optional parameters
    # @return [TenantUserQuotaSettingsWrapper]
    def get_user_quota_settings(opts = {})
      data, _status_code, _headers = get_user_quota_settings_with_http_info(opts)
      data
    end

    # Get the user quota settings
    # Returns the user quota settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-quota-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantUserQuotaSettingsWrapper, Integer, Hash)>] TenantUserQuotaSettingsWrapper data, response status code and response headers
    def get_user_quota_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::QuotaApi.get_user_quota_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/userquotasettings'

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
      return_type = opts[:debug_return_type] || 'TenantUserQuotaSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::QuotaApi.get_user_quota_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::QuotaApi#get_user_quota_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the AI Agent quota settings
    # Saves the AI Agent quota settings specified in the request to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ai-agent-quota-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [QuotaSettingsRequestsDto] :quota_settings_requests_dto 
    # @return [TenantAiAgentQuotaSettingsWrapper]
    def save_ai_agent_quota_settings(opts = {})
      data, _status_code, _headers = save_ai_agent_quota_settings_with_http_info(opts)
      data
    end

    # Save the AI Agent quota settings
    # Saves the AI Agent quota settings specified in the request to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ai-agent-quota-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [QuotaSettingsRequestsDto] :quota_settings_requests_dto 
    # @return [Array<(TenantAiAgentQuotaSettingsWrapper, Integer, Hash)>] TenantAiAgentQuotaSettingsWrapper data, response status code and response headers
    def save_ai_agent_quota_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::QuotaApi.save_ai_agent_quota_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/aiagentquotasettings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'quota_settings_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TenantAiAgentQuotaSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::QuotaApi.save_ai_agent_quota_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::QuotaApi#save_ai_agent_quota_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the room quota settings
    # Saves the room quota settings specified in the request to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-room-quota-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [QuotaSettingsRequestsDto] :quota_settings_requests_dto 
    # @return [TenantRoomQuotaSettingsWrapper]
    def save_room_quota_settings(opts = {})
      data, _status_code, _headers = save_room_quota_settings_with_http_info(opts)
      data
    end

    # Save the room quota settings
    # Saves the room quota settings specified in the request to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-room-quota-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [QuotaSettingsRequestsDto] :quota_settings_requests_dto 
    # @return [Array<(TenantRoomQuotaSettingsWrapper, Integer, Hash)>] TenantRoomQuotaSettingsWrapper data, response status code and response headers
    def save_room_quota_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::QuotaApi.save_room_quota_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/roomquotasettings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'quota_settings_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TenantRoomQuotaSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::QuotaApi.save_room_quota_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::QuotaApi#save_room_quota_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the tenant quota settings
    # Saves the tenant quota settings specified in the request to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-quota-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantQuotaSettingsRequestsDto] :tenant_quota_settings_requests_dto 
    # @return [TenantQuotaSettingsWrapper]
    def set_tenant_quota_settings(opts = {})
      data, _status_code, _headers = set_tenant_quota_settings_with_http_info(opts)
      data
    end

    # Save the tenant quota settings
    # Saves the tenant quota settings specified in the request to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-quota-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantQuotaSettingsRequestsDto] :tenant_quota_settings_requests_dto 
    # @return [Array<(TenantQuotaSettingsWrapper, Integer, Hash)>] TenantQuotaSettingsWrapper data, response status code and response headers
    def set_tenant_quota_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::QuotaApi.set_tenant_quota_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/tenantquotasettings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tenant_quota_settings_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TenantQuotaSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::QuotaApi.set_tenant_quota_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::QuotaApi#set_tenant_quota_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

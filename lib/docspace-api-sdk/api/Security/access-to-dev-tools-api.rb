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
    class AccessToDevToolsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Set the Developer Tools access settings
    # Sets the Developer Tools access settings for the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-dev-tools-access-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantDevToolsAccessSettingsDto] :tenant_dev_tools_access_settings_dto 
    # @return [TenantDevToolsAccessSettingsWrapper]
    def set_tenant_dev_tools_access_settings(opts = {})
      data, _status_code, _headers = set_tenant_dev_tools_access_settings_with_http_info(opts)
      data
    end

    # Set the Developer Tools access settings
    # Sets the Developer Tools access settings for the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-dev-tools-access-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantDevToolsAccessSettingsDto] :tenant_dev_tools_access_settings_dto 
    # @return [Array<(TenantDevToolsAccessSettingsWrapper, Integer, Hash)>] TenantDevToolsAccessSettingsWrapper data, response status code and response headers
    def set_tenant_dev_tools_access_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::AccessToDevToolsApi.set_tenant_dev_tools_access_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/devtoolsaccess'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tenant_dev_tools_access_settings_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TenantDevToolsAccessSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::AccessToDevToolsApi.set_tenant_dev_tools_access_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::AccessToDevToolsApi#set_tenant_dev_tools_access_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

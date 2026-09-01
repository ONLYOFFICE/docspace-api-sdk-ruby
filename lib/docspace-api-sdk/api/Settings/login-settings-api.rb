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
    class LoginSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the login settings
    # Returns the portal login settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-settings/
    # @param [Hash] opts the optional parameters
    # @return [LoginSettingsWrapper]
    def get_login_settings(opts = {})
      data, _status_code, _headers = get_login_settings_with_http_info(opts)
      data
    end

    # Get the login settings
    # Returns the portal login settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(LoginSettingsWrapper, Integer, Hash)>] LoginSettingsWrapper data, response status code and response headers
    def get_login_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::LoginSettingsApi.get_login_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/loginsettings'

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
      return_type = opts[:debug_return_type] || 'LoginSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::LoginSettingsApi.get_login_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::LoginSettingsApi#get_login_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset the login settings
    # Resets the portal login settings to default.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-login-settings/
    # @param [Hash] opts the optional parameters
    # @return [LoginSettingsWrapper]
    def set_default_login_settings(opts = {})
      data, _status_code, _headers = set_default_login_settings_with_http_info(opts)
      data
    end

    # Reset the login settings
    # Resets the portal login settings to default.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-login-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(LoginSettingsWrapper, Integer, Hash)>] LoginSettingsWrapper data, response status code and response headers
    def set_default_login_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::LoginSettingsApi.set_default_login_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/loginsettings'

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
      return_type = opts[:debug_return_type] || 'LoginSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::LoginSettingsApi.set_default_login_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::LoginSettingsApi#set_default_login_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the login settings
    # Updates the login settings with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-login-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [LoginSettingsRequestDto] :login_settings_request_dto 
    # @return [LoginSettingsWrapper]
    def update_login_settings(opts = {})
      data, _status_code, _headers = update_login_settings_with_http_info(opts)
      data
    end

    # Update the login settings
    # Updates the login settings with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-login-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [LoginSettingsRequestDto] :login_settings_request_dto 
    # @return [Array<(LoginSettingsWrapper, Integer, Hash)>] LoginSettingsWrapper data, response status code and response headers
    def update_login_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::LoginSettingsApi.update_login_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/loginsettings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'login_settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'LoginSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::LoginSettingsApi.update_login_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::LoginSettingsApi#update_login_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

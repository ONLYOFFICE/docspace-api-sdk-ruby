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
  module Apps
    class AppsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a single app
    # Returns a single application by id with the per-tenant enabled state and settings JSON.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get/
    # @param id [String] The application identifier.
    # @param [Hash] opts the optional parameters
    # @return [AppWrapper]
    def get(id, opts = {})
      data, _status_code, _headers = get_with_http_info(id, opts)
      data
    end

    # Get a single app
    # Returns a single application by id with the per-tenant enabled state and settings JSON.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get/
    # @param id [String] The application identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppWrapper, Integer, Hash)>] AppWrapper data, response status code and response headers
    def get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Apps::AppsApi.get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Apps::AppsApi.get"
      end
      # resource path
      local_var_path = '/api/2.0/apps/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'AppWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Apps::AppsApi.get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Apps::AppsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all apps
    # Returns the full list of portal applications declared in configuration, merged with per-tenant overrides  (enabled state and JSON settings).
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all/
    # @param [Hash] opts the optional parameters
    # @return [AppArrayWrapper]
    def get_all(opts = {})
      data, _status_code, _headers = get_all_with_http_info(opts)
      data
    end

    # Get all apps
    # Returns the full list of portal applications declared in configuration, merged with per-tenant overrides  (enabled state and JSON settings).
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppArrayWrapper, Integer, Hash)>] AppArrayWrapper data, response status code and response headers
    def get_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Apps::AppsApi.get_all ...'
      end
      # resource path
      local_var_path = '/api/2.0/apps'

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
      return_type = opts[:debug_return_type] || 'AppArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Apps::AppsApi.get_all",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Apps::AppsApi#get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get app settings
    # Returns the JSON settings document saved for the specified application, or null if no overrides exist.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-settings/
    # @param id [String] The application identifier.
    # @param [Hash] opts the optional parameters
    # @return [ObjectWrapper]
    def get_settings(id, opts = {})
      data, _status_code, _headers = get_settings_with_http_info(id, opts)
      data
    end

    # Get app settings
    # Returns the JSON settings document saved for the specified application, or null if no overrides exist.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-settings/
    # @param id [String] The application identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
    def get_settings_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Apps::AppsApi.get_settings ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Apps::AppsApi.get_settings"
      end
      # resource path
      local_var_path = '/api/2.0/apps/{id}/settings'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"Apps::AppsApi.get_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Apps::AppsApi#get_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable or disable an app
    # Toggles the enabled state of the application for the current tenant. Requires portal administrator permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-enabled/
    # @param id [String] The application identifier.
    # @param set_app_enabled_body [SetAppEnabledBody] New enabled state.
    # @param [Hash] opts the optional parameters
    # @return [AppWrapper]
    def set_enabled(id, set_app_enabled_body, opts = {})
      data, _status_code, _headers = set_enabled_with_http_info(id, set_app_enabled_body, opts)
      data
    end

    # Enable or disable an app
    # Toggles the enabled state of the application for the current tenant. Requires portal administrator permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-enabled/
    # @param id [String] The application identifier.
    # @param set_app_enabled_body [SetAppEnabledBody] New enabled state.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppWrapper, Integer, Hash)>] AppWrapper data, response status code and response headers
    def set_enabled_with_http_info(id, set_app_enabled_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Apps::AppsApi.set_enabled ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Apps::AppsApi.set_enabled"
      end
      # verify the required parameter 'set_app_enabled_body' is set
      if @api_client.config.client_side_validation && set_app_enabled_body.nil?
        fail ArgumentError, "Missing the required parameter 'set_app_enabled_body' when calling Apps::AppsApi.set_enabled"
      end
      # resource path
      local_var_path = '/api/2.0/apps/{id}/enabled'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_app_enabled_body)

      # return_type
      return_type = opts[:debug_return_type] || 'AppWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Apps::AppsApi.set_enabled",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Apps::AppsApi#set_enabled\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save app settings
    # Saves an arbitrary JSON settings document for the specified application for the current tenant.  Requires portal administrator permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-settings/
    # @param id [String] The application identifier.
    # @param set_app_settings_body [SetAppSettingsBody] New settings document.
    # @param [Hash] opts the optional parameters
    # @return [AppWrapper]
    def set_settings(id, set_app_settings_body, opts = {})
      data, _status_code, _headers = set_settings_with_http_info(id, set_app_settings_body, opts)
      data
    end

    # Save app settings
    # Saves an arbitrary JSON settings document for the specified application for the current tenant.  Requires portal administrator permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-settings/
    # @param id [String] The application identifier.
    # @param set_app_settings_body [SetAppSettingsBody] New settings document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppWrapper, Integer, Hash)>] AppWrapper data, response status code and response headers
    def set_settings_with_http_info(id, set_app_settings_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Apps::AppsApi.set_settings ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Apps::AppsApi.set_settings"
      end
      # verify the required parameter 'set_app_settings_body' is set
      if @api_client.config.client_side_validation && set_app_settings_body.nil?
        fail ArgumentError, "Missing the required parameter 'set_app_settings_body' when calling Apps::AppsApi.set_settings"
      end
      # resource path
      local_var_path = '/api/2.0/apps/{id}/settings'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_app_settings_body)

      # return_type
      return_type = opts[:debug_return_type] || 'AppWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Apps::AppsApi.set_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Apps::AppsApi#set_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

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
    class WebpluginsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a web plugin
    # Adds a web plugin from a file to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-web-plugin-from-file/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :system Specifies whether to load the system plugins or not.
    # @return [WebPluginWrapper]
    def add_web_plugin_from_file(opts = {})
      data, _status_code, _headers = add_web_plugin_from_file_with_http_info(opts)
      data
    end

    # Add a web plugin
    # Adds a web plugin from a file to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-web-plugin-from-file/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :system Specifies whether to load the system plugins or not.
    # @return [Array<(WebPluginWrapper, Integer, Hash)>] WebPluginWrapper data, response status code and response headers
    def add_web_plugin_from_file_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebpluginsApi.add_web_plugin_from_file ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webplugins'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'system'] = opts[:'system'] if !opts[:'system'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebPluginWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebpluginsApi.add_web_plugin_from_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebpluginsApi#add_web_plugin_from_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a web plugin
    # Deletes a web plugin by the name specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-web-plugin/
    # @param name [String] The web plugin name.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_web_plugin(name, opts = {})
      delete_web_plugin_with_http_info(name, opts)
      nil
    end

    # Delete a web plugin
    # Deletes a web plugin by the name specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-web-plugin/
    # @param name [String] The web plugin name.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_web_plugin_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebpluginsApi.delete_web_plugin ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling Settings::WebpluginsApi.delete_web_plugin"
      end
      # resource path
      local_var_path = '/api/2.0/settings/webplugins/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
        :operation => :"Settings::WebpluginsApi.delete_web_plugin",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebpluginsApi#delete_web_plugin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a web plugin by name
    # Returns a web plugin by the name specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugin/
    # @param name [String] The web plugin name.
    # @param [Hash] opts the optional parameters
    # @return [WebPluginWrapper]
    def get_web_plugin(name, opts = {})
      data, _status_code, _headers = get_web_plugin_with_http_info(name, opts)
      data
    end

    # Get a web plugin by name
    # Returns a web plugin by the name specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugin/
    # @param name [String] The web plugin name.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebPluginWrapper, Integer, Hash)>] WebPluginWrapper data, response status code and response headers
    def get_web_plugin_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebpluginsApi.get_web_plugin ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling Settings::WebpluginsApi.get_web_plugin"
      end
      # resource path
      local_var_path = '/api/2.0/settings/webplugins/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      return_type = opts[:debug_return_type] || 'WebPluginWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebpluginsApi.get_web_plugin",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebpluginsApi#get_web_plugin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get web plugins
    # Returns the portal web plugins.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugins/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :enabled The optional filter for the plugin enabled state.
    # @return [WebPluginArrayWrapper]
    def get_web_plugins(opts = {})
      data, _status_code, _headers = get_web_plugins_with_http_info(opts)
      data
    end

    # Get web plugins
    # Returns the portal web plugins.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugins/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :enabled The optional filter for the plugin enabled state.
    # @return [Array<(WebPluginArrayWrapper, Integer, Hash)>] WebPluginArrayWrapper data, response status code and response headers
    def get_web_plugins_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebpluginsApi.get_web_plugins ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webplugins'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'enabled'] = opts[:'enabled'] if !opts[:'enabled'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebPluginArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebpluginsApi.get_web_plugins",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebpluginsApi#get_web_plugins\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a web plugin
    # Updates a web plugin with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-web-plugin/
    # @param name [String] The web plugin name.
    # @param web_plugin_requests [WebPluginRequests] The configuration settings for the web plugin instance.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_web_plugin(name, web_plugin_requests, opts = {})
      update_web_plugin_with_http_info(name, web_plugin_requests, opts)
      nil
    end

    # Update a web plugin
    # Updates a web plugin with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-web-plugin/
    # @param name [String] The web plugin name.
    # @param web_plugin_requests [WebPluginRequests] The configuration settings for the web plugin instance.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_web_plugin_with_http_info(name, web_plugin_requests, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebpluginsApi.update_web_plugin ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling Settings::WebpluginsApi.update_web_plugin"
      end
      # verify the required parameter 'web_plugin_requests' is set
      if @api_client.config.client_side_validation && web_plugin_requests.nil?
        fail ArgumentError, "Missing the required parameter 'web_plugin_requests' when calling Settings::WebpluginsApi.update_web_plugin"
      end
      # resource path
      local_var_path = '/api/2.0/settings/webplugins/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(web_plugin_requests)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebpluginsApi.update_web_plugin",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebpluginsApi#update_web_plugin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

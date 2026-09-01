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
  module AI
    class ToolsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add custom server
    # Registers a custom MCP server in the scope under the given name.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-add-custom-server/
    # @param ai_tools_add_custom_server_request [AiToolsAddCustomServerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiToolsMutationResult]
    def ai_tools_add_custom_server(ai_tools_add_custom_server_request, opts = {})
      data, _status_code, _headers = ai_tools_add_custom_server_with_http_info(ai_tools_add_custom_server_request, opts)
      data
    end

    # Add custom server
    # Registers a custom MCP server in the scope under the given name.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-add-custom-server/
    # @param ai_tools_add_custom_server_request [AiToolsAddCustomServerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiToolsMutationResult, Integer, Hash)>] AiToolsMutationResult data, response status code and response headers
    def ai_tools_add_custom_server_with_http_info(ai_tools_add_custom_server_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_add_custom_server ...'
      end
      # verify the required parameter 'ai_tools_add_custom_server_request' is set
      if @api_client.config.client_side_validation && ai_tools_add_custom_server_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_tools_add_custom_server_request' when calling AI::ToolsApi.ai_tools_add_custom_server"
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/add-custom-server'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_tools_add_custom_server_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiToolsMutationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_add_custom_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_add_custom_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get allow always
    # Lists the tools on the always-allow list of the scope.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-allow-always/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<String>]
    def ai_tools_get_allow_always(opts = {})
      data, _status_code, _headers = ai_tools_get_allow_always_with_http_info(opts)
      data
    end

    # Get allow always
    # Lists the tools on the always-allow list of the scope.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-allow-always/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def ai_tools_get_allow_always_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_get_allow_always ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/get-allow-always'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_get_allow_always",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_get_allow_always\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get custom server
    # Returns the configuration of one custom MCP server, or an empty result when it is not registered.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-custom-server/
    # @param name [String] The custom MCP server name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Object]
    def ai_tools_get_custom_server(name, opts = {})
      data, _status_code, _headers = ai_tools_get_custom_server_with_http_info(name, opts)
      data
    end

    # Get custom server
    # Returns the configuration of one custom MCP server, or an empty result when it is not registered.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-custom-server/
    # @param name [String] The custom MCP server name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def ai_tools_get_custom_server_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_get_custom_server ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling AI::ToolsApi.ai_tools_get_custom_server"
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/get-custom-server'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = name
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_get_custom_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_get_custom_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get disabled
    # Returns the switched-off tools of the scope, grouped by server type.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-disabled/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Hash<String, Array<String>>]
    def ai_tools_get_disabled(opts = {})
      data, _status_code, _headers = ai_tools_get_disabled_with_http_info(opts)
      data
    end

    # Get disabled
    # Returns the switched-off tools of the scope, grouped by server type.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-disabled/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(Hash<String, Array<String>>, Integer, Hash)>] Hash<String, Array<String>> data, response status code and response headers
    def ai_tools_get_disabled_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_get_disabled ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/get-disabled'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, Array<String>>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_get_disabled",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_get_disabled\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Is allow always
    # Tells whether one tool is on the always-allow list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-allow-always/
    # @param server_type [String] The MCP server type the tool belongs to.
    # @param tool_name [String] The tool name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Boolean]
    def ai_tools_is_allow_always(server_type, tool_name, opts = {})
      data, _status_code, _headers = ai_tools_is_allow_always_with_http_info(server_type, tool_name, opts)
      data
    end

    # Is allow always
    # Tells whether one tool is on the always-allow list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-allow-always/
    # @param server_type [String] The MCP server type the tool belongs to.
    # @param tool_name [String] The tool name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(Boolean, Integer, Hash)>] Boolean data, response status code and response headers
    def ai_tools_is_allow_always_with_http_info(server_type, tool_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_is_allow_always ...'
      end
      # verify the required parameter 'server_type' is set
      if @api_client.config.client_side_validation && server_type.nil?
        fail ArgumentError, "Missing the required parameter 'server_type' when calling AI::ToolsApi.ai_tools_is_allow_always"
      end
      # verify the required parameter 'tool_name' is set
      if @api_client.config.client_side_validation && tool_name.nil?
        fail ArgumentError, "Missing the required parameter 'tool_name' when calling AI::ToolsApi.ai_tools_is_allow_always"
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/is-allow-always'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'serverType'] = server_type
      query_params[:'toolName'] = tool_name
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Boolean'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_is_allow_always",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_is_allow_always\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Is tool disabled
    # Tells whether one tool of a server type is switched off.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-tool-disabled/
    # @param server_type [String] The MCP server type the tool belongs to.
    # @param tool_name [String] The tool name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Boolean]
    def ai_tools_is_tool_disabled(server_type, tool_name, opts = {})
      data, _status_code, _headers = ai_tools_is_tool_disabled_with_http_info(server_type, tool_name, opts)
      data
    end

    # Is tool disabled
    # Tells whether one tool of a server type is switched off.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-tool-disabled/
    # @param server_type [String] The MCP server type the tool belongs to.
    # @param tool_name [String] The tool name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(Boolean, Integer, Hash)>] Boolean data, response status code and response headers
    def ai_tools_is_tool_disabled_with_http_info(server_type, tool_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_is_tool_disabled ...'
      end
      # verify the required parameter 'server_type' is set
      if @api_client.config.client_side_validation && server_type.nil?
        fail ArgumentError, "Missing the required parameter 'server_type' when calling AI::ToolsApi.ai_tools_is_tool_disabled"
      end
      # verify the required parameter 'tool_name' is set
      if @api_client.config.client_side_validation && tool_name.nil?
        fail ArgumentError, "Missing the required parameter 'tool_name' when calling AI::ToolsApi.ai_tools_is_tool_disabled"
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/is-tool-disabled'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'serverType'] = server_type
      query_params[:'toolName'] = tool_name
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Boolean'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_is_tool_disabled",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_is_tool_disabled\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List custom servers
    # Lists the custom MCP servers registered in the scope, keyed by name.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-custom-servers/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Hash<String, Object>]
    def ai_tools_list_custom_servers(opts = {})
      data, _status_code, _headers = ai_tools_list_custom_servers_with_http_info(opts)
      data
    end

    # List custom servers
    # Lists the custom MCP servers registered in the scope, keyed by name.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-custom-servers/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(Hash<String, Object>, Integer, Hash)>] Hash<String, Object> data, response status code and response headers
    def ai_tools_list_custom_servers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_list_custom_servers ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/list-custom-servers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, Object>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_list_custom_servers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_list_custom_servers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List system tools
    # Lists the tools of the host-configured system MCP servers, grouped by server type. The servers are connected and listed server-side, so the client renders its permission cards from one request and never opens an MCP connection of its own.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-system-tools/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Hash<String, Array<AiTMCPItem>>]
    def ai_tools_list_system_tools(opts = {})
      data, _status_code, _headers = ai_tools_list_system_tools_with_http_info(opts)
      data
    end

    # List system tools
    # Lists the tools of the host-configured system MCP servers, grouped by server type. The servers are connected and listed server-side, so the client renders its permission cards from one request and never opens an MCP connection of its own.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-system-tools/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(Hash<String, Array<AiTMCPItem>>, Integer, Hash)>] Hash<String, Array<AiTMCPItem>> data, response status code and response headers
    def ai_tools_list_system_tools_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_list_system_tools ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/list-system-tools'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, Array<AiTMCPItem>>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_list_system_tools",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_list_system_tools\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove custom server
    # Removes a custom MCP server from the registry.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-remove-custom-server/
    # @param ai_tools_remove_custom_server_request [AiToolsRemoveCustomServerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_tools_remove_custom_server(ai_tools_remove_custom_server_request, opts = {})
      data, _status_code, _headers = ai_tools_remove_custom_server_with_http_info(ai_tools_remove_custom_server_request, opts)
      data
    end

    # Remove custom server
    # Removes a custom MCP server from the registry.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-remove-custom-server/
    # @param ai_tools_remove_custom_server_request [AiToolsRemoveCustomServerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_tools_remove_custom_server_with_http_info(ai_tools_remove_custom_server_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_remove_custom_server ...'
      end
      # verify the required parameter 'ai_tools_remove_custom_server_request' is set
      if @api_client.config.client_side_validation && ai_tools_remove_custom_server_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_tools_remove_custom_server_request' when calling AI::ToolsApi.ai_tools_remove_custom_server"
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/remove-custom-server'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_tools_remove_custom_server_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_remove_custom_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_remove_custom_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replace all custom servers
    # Replaces the whole custom MCP server registry of the scope with the supplied map.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-replace-all-custom-servers/
    # @param ai_tools_replace_all_custom_servers_request [AiToolsReplaceAllCustomServersRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiToolsBulkResult]
    def ai_tools_replace_all_custom_servers(ai_tools_replace_all_custom_servers_request, opts = {})
      data, _status_code, _headers = ai_tools_replace_all_custom_servers_with_http_info(ai_tools_replace_all_custom_servers_request, opts)
      data
    end

    # Replace all custom servers
    # Replaces the whole custom MCP server registry of the scope with the supplied map.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-replace-all-custom-servers/
    # @param ai_tools_replace_all_custom_servers_request [AiToolsReplaceAllCustomServersRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiToolsBulkResult, Integer, Hash)>] AiToolsBulkResult data, response status code and response headers
    def ai_tools_replace_all_custom_servers_with_http_info(ai_tools_replace_all_custom_servers_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_replace_all_custom_servers ...'
      end
      # verify the required parameter 'ai_tools_replace_all_custom_servers_request' is set
      if @api_client.config.client_side_validation && ai_tools_replace_all_custom_servers_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_tools_replace_all_custom_servers_request' when calling AI::ToolsApi.ai_tools_replace_all_custom_servers"
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/replace-all-custom-servers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_tools_replace_all_custom_servers_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiToolsBulkResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_replace_all_custom_servers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_replace_all_custom_servers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set allow always
    # Adds a tool to the always-allow list, or removes it - the tools on that list run without an approval dialog.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-allow-always/
    # @param ai_tools_set_allow_always_request [AiToolsSetAllowAlwaysRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_tools_set_allow_always(ai_tools_set_allow_always_request, opts = {})
      data, _status_code, _headers = ai_tools_set_allow_always_with_http_info(ai_tools_set_allow_always_request, opts)
      data
    end

    # Set allow always
    # Adds a tool to the always-allow list, or removes it - the tools on that list run without an approval dialog.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-allow-always/
    # @param ai_tools_set_allow_always_request [AiToolsSetAllowAlwaysRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_tools_set_allow_always_with_http_info(ai_tools_set_allow_always_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_set_allow_always ...'
      end
      # verify the required parameter 'ai_tools_set_allow_always_request' is set
      if @api_client.config.client_side_validation && ai_tools_set_allow_always_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_tools_set_allow_always_request' when calling AI::ToolsApi.ai_tools_set_allow_always"
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/set-allow-always'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_tools_set_allow_always_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_set_allow_always",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_set_allow_always\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set disabled
    # Marks the listed tools of one server type as switched off, so the model is no longer offered them.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-disabled/
    # @param ai_tools_set_disabled_request [AiToolsSetDisabledRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_tools_set_disabled(ai_tools_set_disabled_request, opts = {})
      data, _status_code, _headers = ai_tools_set_disabled_with_http_info(ai_tools_set_disabled_request, opts)
      data
    end

    # Set disabled
    # Marks the listed tools of one server type as switched off, so the model is no longer offered them.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-disabled/
    # @param ai_tools_set_disabled_request [AiToolsSetDisabledRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_tools_set_disabled_with_http_info(ai_tools_set_disabled_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_set_disabled ...'
      end
      # verify the required parameter 'ai_tools_set_disabled_request' is set
      if @api_client.config.client_side_validation && ai_tools_set_disabled_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_tools_set_disabled_request' when calling AI::ToolsApi.ai_tools_set_disabled"
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/set-disabled'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_tools_set_disabled_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_set_disabled",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_set_disabled\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update custom server
    # Updates the configuration of a registered custom MCP server.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-update-custom-server/
    # @param ai_tools_update_custom_server_request [AiToolsUpdateCustomServerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiToolsMutationResult]
    def ai_tools_update_custom_server(ai_tools_update_custom_server_request, opts = {})
      data, _status_code, _headers = ai_tools_update_custom_server_with_http_info(ai_tools_update_custom_server_request, opts)
      data
    end

    # Update custom server
    # Updates the configuration of a registered custom MCP server.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-update-custom-server/
    # @param ai_tools_update_custom_server_request [AiToolsUpdateCustomServerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiToolsMutationResult, Integer, Hash)>] AiToolsMutationResult data, response status code and response headers
    def ai_tools_update_custom_server_with_http_info(ai_tools_update_custom_server_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ToolsApi.ai_tools_update_custom_server ...'
      end
      # verify the required parameter 'ai_tools_update_custom_server_request' is set
      if @api_client.config.client_side_validation && ai_tools_update_custom_server_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_tools_update_custom_server_request' when calling AI::ToolsApi.ai_tools_update_custom_server"
      end
      # resource path
      local_var_path = '/api/2.0/ai/tools/update-custom-server'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_tools_update_custom_server_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiToolsMutationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ToolsApi.ai_tools_update_custom_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ToolsApi#ai_tools_update_custom_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

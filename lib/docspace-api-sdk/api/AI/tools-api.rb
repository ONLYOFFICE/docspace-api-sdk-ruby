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
    # Registers a custom MCP server under the given name so the model may call its tools. The name becomes a URL path segment, so it may not be `.`, `..`, or contain a path separator or a control character. `config` may be omitted in two cases: a name matching a host-configured system server pins the entry to that server's canonical settings as a whitelist marker, and a name already registered portal-wide copies the portal-level configuration into this scope; anything else without a config is rejected. `entityId` scopes the registration and has to name a room the caller can open - a room that is not an agent room folds to the portal-wide scope, while an unreachable one is refused so it cannot silently rewrite the portal's own registry.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-add-custom-server/
    # @param ai_tools_add_custom_server_request [AiToolsAddCustomServerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiToolsMutationResult]
    def ai_tools_add_custom_server(ai_tools_add_custom_server_request, opts = {})
      data, _status_code, _headers = ai_tools_add_custom_server_with_http_info(ai_tools_add_custom_server_request, opts)
      data
    end

    # Add custom server
    # Registers a custom MCP server under the given name so the model may call its tools. The name becomes a URL path segment, so it may not be `.`, `..`, or contain a path separator or a control character. `config` may be omitted in two cases: a name matching a host-configured system server pins the entry to that server's canonical settings as a whitelist marker, and a name already registered portal-wide copies the portal-level configuration into this scope; anything else without a config is rejected. `entityId` scopes the registration and has to name a room the caller can open - a room that is not an agent room folds to the portal-wide scope, while an unreachable one is refused so it cannot silently rewrite the portal's own registry.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Returns the always-allow list of the scope - the tools whose calls run without pausing the round for approval. `entityId` picks the scope and omitting it reads the portal-wide setting. An empty answer means every tool call has to be approved through `POST api/2.0/ai/ai/approve-tool-call`. Use `GET api/2.0/ai/tools/is-allow-always` to ask about a single tool.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-allow-always/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<String>]
    def ai_tools_get_allow_always(opts = {})
      data, _status_code, _headers = ai_tools_get_allow_always_with_http_info(opts)
      data
    end

    # Get allow always
    # Returns the always-allow list of the scope - the tools whose calls run without pausing the round for approval. `entityId` picks the scope and omitting it reads the portal-wide setting. An empty answer means every tool call has to be approved through `POST api/2.0/ai/ai/approve-tool-call`. Use `GET api/2.0/ai/tools/is-allow-always` to ask about a single tool.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Returns the stored configuration of one registered custom MCP server. The name is required and is read from the query; `entityId` picks the scope, and omitting it reads the portal-wide registry. A name that is not registered answers a null body with status 200 rather than 404. The configuration of a system server is returned empty on purpose: those run server-side only, so neither their endpoint nor their credentials are handed to a browser.
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
    # Returns the stored configuration of one registered custom MCP server. The name is required and is read from the query; `entityId` picks the scope, and omitting it reads the portal-wide registry. A name that is not registered answers a null body with status 200 rather than 404. The configuration of a system server is returned empty on purpose: those run server-side only, so neither their endpoint nor their credentials are handed to a browser.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Returns the tools switched off in the scope, as a map of server type to tool names. `entityId` picks the scope and omitting it reads the portal-wide setting. An absent server type means nothing is switched off for it, so an empty answer means every tool is on offer. Use `GET api/2.0/ai/tools/is-tool-disabled` to ask about one tool instead of reading the whole map.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-disabled/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Hash<String, Array<String>>]
    def ai_tools_get_disabled(opts = {})
      data, _status_code, _headers = ai_tools_get_disabled_with_http_info(opts)
      data
    end

    # Get disabled
    # Returns the tools switched off in the scope, as a map of server type to tool names. `entityId` picks the scope and omitting it reads the portal-wide setting. An absent server type means nothing is switched off for it, so an empty answer means every tool is on offer. Use `GET api/2.0/ai/tools/is-tool-disabled` to ask about one tool instead of reading the whole map.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Tells whether one named tool runs without an approval pause in the scope. Both `serverType` and `toolName` are required and are read from the query; `entityId` picks the scope. The answer is a bare boolean. A false answer means a call to that tool pauses the round, and the caller resumes it with the approve or deny operation.
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
    # Tells whether one named tool runs without an approval pause in the scope. Both `serverType` and `toolName` are required and are read from the query; `entityId` picks the scope. The answer is a bare boolean. A false answer means a call to that tool pauses the round, and the caller resumes it with the approve or deny operation.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Tells whether one named tool of one server type is switched off in the scope. Both `serverType` and `toolName` are required and are read from the query; `entityId` picks the scope. The answer is a bare boolean. It reflects only the disable list - a tool that is on offer may still require approval, which `GET api/2.0/ai/tools/is-allow-always` reports.
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
    # Tells whether one named tool of one server type is switched off in the scope. Both `serverType` and `toolName` are required and are read from the query; `entityId` picks the scope. The answer is a bare boolean. It reflects only the disable list - a tool that is on offer may still require approval, which `GET api/2.0/ai/tools/is-allow-always` reports.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Lists the custom MCP servers registered in the scope as a map of name to configuration. `entityId` picks the scope and omitting it lists the portal-wide registry. The configuration of any entry that names a host-configured system server comes back empty, for the same reason as in the single-server read, and the portal's own built-in MCP server is left out of the list entirely because it is always enabled and cannot be configured. The names in the answer are what the disable and always-allow operations accept as `serverType`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-custom-servers/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Hash<String, Object>]
    def ai_tools_list_custom_servers(opts = {})
      data, _status_code, _headers = ai_tools_list_custom_servers_with_http_info(opts)
      data
    end

    # List custom servers
    # Lists the custom MCP servers registered in the scope as a map of name to configuration. `entityId` picks the scope and omitting it lists the portal-wide registry. The configuration of any entry that names a host-configured system server comes back empty, for the same reason as in the single-server read, and the portal's own built-in MCP server is left out of the list entirely because it is always enabled and cannot be configured. The names in the answer are what the disable and always-allow operations accept as `serverType`.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Lists every tool the scope can offer the model, as a map of server type to tool group. The answer merges two sources - the host-configured system servers and the live tools of the scope's registered custom MCP servers - and names the system ones separately in `system`, so a client can tell the two apart. `errors` carries the reason a registered server delivered no tools, which is the text to show on a permission card, because the browser cannot reach a server-executed MCP server to find out for itself. The connections are opened server-side, so one request is enough and the client never speaks MCP itself; the portal's own built-in server is left out because it is always enabled.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-system-tools/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [AiToolsListSystemTools200Response]
    def ai_tools_list_system_tools(opts = {})
      data, _status_code, _headers = ai_tools_list_system_tools_with_http_info(opts)
      data
    end

    # List system tools
    # Lists every tool the scope can offer the model, as a map of server type to tool group. The answer merges two sources - the host-configured system servers and the live tools of the scope's registered custom MCP servers - and names the system ones separately in `system`, so a client can tell the two apart. `errors` carries the reason a registered server delivered no tools, which is the text to show on a permission card, because the browser cannot reach a server-executed MCP server to find out for itself. The connections are opened server-side, so one request is enough and the client never speaks MCP itself; the portal's own built-in server is left out because it is always enabled.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-system-tools/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(AiToolsListSystemTools200Response, Integer, Hash)>] AiToolsListSystemTools200Response data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'AiToolsListSystemTools200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Unregisters a custom MCP server from the scope, so the model is no longer offered its tools. The name is required and may be sent in the body or as a query parameter, and `entityId` has to name a room the caller can open. A name that is not registered is not reported: the call answers success without removing anything. The server itself is untouched - only this portal's registration is dropped.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-remove-custom-server/
    # @param ai_tools_remove_custom_server_request [AiToolsRemoveCustomServerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_tools_remove_custom_server(ai_tools_remove_custom_server_request, opts = {})
      data, _status_code, _headers = ai_tools_remove_custom_server_with_http_info(ai_tools_remove_custom_server_request, opts)
      data
    end

    # Remove custom server
    # Unregisters a custom MCP server from the scope, so the model is no longer offered its tools. The name is required and may be sent in the body or as a query parameter, and `entityId` has to name a room the caller can open. A name that is not registered is not reported: the call answers success without removing anything. The server itself is untouched - only this portal's registration is dropped.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Replaces the whole custom MCP server registry of the scope with the supplied map in one write, which makes it the operation a settings screen saves with. `map` is required: without it the registry would be emptied, so a missing or non-object value is rejected rather than treated as none. Every name in the map is validated as a routable path segment and every configuration is resolved before anything is written, so a map with one bad entry changes nothing. `entityId` has to name a room the caller can open - this is the operation where an unreachable one would otherwise have wiped the portal-wide registry.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-replace-all-custom-servers/
    # @param ai_tools_replace_all_custom_servers_request [AiToolsReplaceAllCustomServersRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiToolsBulkResult]
    def ai_tools_replace_all_custom_servers(ai_tools_replace_all_custom_servers_request, opts = {})
      data, _status_code, _headers = ai_tools_replace_all_custom_servers_with_http_info(ai_tools_replace_all_custom_servers_request, opts)
      data
    end

    # Replace all custom servers
    # Replaces the whole custom MCP server registry of the scope with the supplied map in one write, which makes it the operation a settings screen saves with. `map` is required: without it the registry would be emptied, so a missing or non-object value is rejected rather than treated as none. Every name in the map is validated as a routable path segment and every configuration is resolved before anything is written, so a map with one bad entry changes nothing. `entityId` has to name a room the caller can open - this is the operation where an unreachable one would otherwise have wiped the portal-wide registry.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Adds one tool to the scope's always-allow list, or takes it off, which decides whether a call to it pauses the round for approval. `value` is coerced to a boolean, so any truthy value adds and any falsy one removes. Unlike the disable operation, `serverType` is not validated here: an unknown one is stored and then simply never matches, so a wrong value fails silently. `entityId` has to name a room the caller can open.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-allow-always/
    # @param ai_tools_set_allow_always_request [AiToolsSetAllowAlwaysRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_tools_set_allow_always(ai_tools_set_allow_always_request, opts = {})
      data, _status_code, _headers = ai_tools_set_allow_always_with_http_info(ai_tools_set_allow_always_request, opts)
      data
    end

    # Set allow always
    # Adds one tool to the scope's always-allow list, or takes it off, which decides whether a call to it pauses the round for approval. `value` is coerced to a boolean, so any truthy value adds and any falsy one removes. Unlike the disable operation, `serverType` is not validated here: an unknown one is stored and then simply never matches, so a wrong value fails silently. `entityId` has to name a room the caller can open.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Switches off the listed tools of one server type in the scope, so the model is no longer offered them. `serverType` has to be a key the round's tool filter actually matches - a host-configured system server, one of the two DocSpace integration groups, web search, image generation, or one of the scope's registered custom servers - and an unknown value is rejected with the list of valid ones in the message, rather than stored and silently ignored. `toolNames` replaces the previous selection for that server type, so send the full list and pass an empty one to switch everything back on. `entityId` has to name a room the caller can open.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-disabled/
    # @param ai_tools_set_disabled_request [AiToolsSetDisabledRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_tools_set_disabled(ai_tools_set_disabled_request, opts = {})
      data, _status_code, _headers = ai_tools_set_disabled_with_http_info(ai_tools_set_disabled_request, opts)
      data
    end

    # Set disabled
    # Switches off the listed tools of one server type in the scope, so the model is no longer offered them. `serverType` has to be a key the round's tool filter actually matches - a host-configured system server, one of the two DocSpace integration groups, web search, image generation, or one of the scope's registered custom servers - and an unknown value is rejected with the list of valid ones in the message, rather than stored and silently ignored. `toolNames` replaces the previous selection for that server type, so send the full list and pass an empty one to switch everything back on. `entityId` has to name a room the caller can open.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Replaces the stored configuration of a registered custom MCP server, under the same name and scope rules as the add operation. The name is re-validated as a routable path segment, and an omitted `config` resolves the same way - to a system server's canonical settings, or to the portal-level entry of that name. `entityId` has to name a room the caller can open. The answer carries the stored registry entry.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-update-custom-server/
    # @param ai_tools_update_custom_server_request [AiToolsUpdateCustomServerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiToolsMutationResult]
    def ai_tools_update_custom_server(ai_tools_update_custom_server_request, opts = {})
      data, _status_code, _headers = ai_tools_update_custom_server_with_http_info(ai_tools_update_custom_server_request, opts)
      data
    end

    # Update custom server
    # Replaces the stored configuration of a registered custom MCP server, under the same name and scope rules as the add operation. The name is re-validated as a routable path segment, and an omitted `config` resolves the same way - to a system server's canonical settings, or to the portal-level entry of that name. `entityId` has to name a room the caller can open. The answer carries the stored registry entry.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

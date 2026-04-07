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
    class MCPApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Assign MCP servers to a room
    # Associates one or more MCP servers with a specific room, making them available for AI chat sessions  within that room. A maximum of 5 MCP servers can be assigned to a single room. If OAuth-based servers  are included, each room member will need to individually authorize their connection.  Requires room edit permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-servers/
    # @param room_id [Integer] Identifier of the room to which MCP servers will be assigned.
    # @param add_room_servers_request_body [AddRoomServersRequestBody] Server identifiers to assign.
    # @param [Hash] opts the optional parameters
    # @return [McpServerStatusArrayWrapper]
    def add_room_servers(room_id, add_room_servers_request_body, opts = {})
      data, _status_code, _headers = add_room_servers_with_http_info(room_id, add_room_servers_request_body, opts)
      data
    end

    # Assign MCP servers to a room
    # Associates one or more MCP servers with a specific room, making them available for AI chat sessions  within that room. A maximum of 5 MCP servers can be assigned to a single room. If OAuth-based servers  are included, each room member will need to individually authorize their connection.  Requires room edit permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-servers/
    # @param room_id [Integer] Identifier of the room to which MCP servers will be assigned.
    # @param add_room_servers_request_body [AddRoomServersRequestBody] Server identifiers to assign.
    # @param [Hash] opts the optional parameters
    # @return [Array<(McpServerStatusArrayWrapper, Integer, Hash)>] McpServerStatusArrayWrapper data, response status code and response headers
    def add_room_servers_with_http_info(room_id, add_room_servers_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.add_room_servers ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::MCPApi.add_room_servers"
      end
      # verify the required parameter 'add_room_servers_request_body' is set
      if @api_client.config.client_side_validation && add_room_servers_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'add_room_servers_request_body' when calling AI::MCPApi.add_room_servers"
      end
      # resource path
      local_var_path = '/api/2.0/ai/rooms/{roomId}/servers'.sub('{' + 'roomId' + '}', CGI.escape(room_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(add_room_servers_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'McpServerStatusArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.add_room_servers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#add_room_servers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register a custom MCP server
    # Registers a new custom MCP (Model Context Protocol) server for the current tenant.  The system validates the server name (only letters, numbers, underscores, and hyphens are allowed),  checks that it is not reserved or already taken, and then attempts to connect to the provided endpoint  to verify reachability and credentials before persisting the configuration.  Requires DocSpace administrator privileges.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-server/
    # @param add_mcp_server_request_body [AddMcpServerRequestBody] MCP server registration parameters.
    # @param [Hash] opts the optional parameters
    # @return [McpServerWrapper]
    def add_server(add_mcp_server_request_body, opts = {})
      data, _status_code, _headers = add_server_with_http_info(add_mcp_server_request_body, opts)
      data
    end

    # Register a custom MCP server
    # Registers a new custom MCP (Model Context Protocol) server for the current tenant.  The system validates the server name (only letters, numbers, underscores, and hyphens are allowed),  checks that it is not reserved or already taken, and then attempts to connect to the provided endpoint  to verify reachability and credentials before persisting the configuration.  Requires DocSpace administrator privileges.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-server/
    # @param add_mcp_server_request_body [AddMcpServerRequestBody] MCP server registration parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(McpServerWrapper, Integer, Hash)>] McpServerWrapper data, response status code and response headers
    def add_server_with_http_info(add_mcp_server_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.add_server ...'
      end
      # verify the required parameter 'add_mcp_server_request_body' is set
      if @api_client.config.client_side_validation && add_mcp_server_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'add_mcp_server_request_body' when calling AI::MCPApi.add_server"
      end
      # resource path
      local_var_path = '/api/2.0/ai/servers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(add_mcp_server_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'McpServerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.add_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#add_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Connect an OAuth-based MCP server in a room
    # Completes the OAuth authorization flow for an MCP server within a specific room on behalf of the  current user. The authorization code obtained from the OAuth provider must be passed in the request body.  Upon successful token exchange, the system verifies connectivity to the server and stores  the credentials for the current user. Requires room edit permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/connect-server/
    # @param room_id [Integer] Identifier of the room containing the MCP server.
    # @param server_id [String] Unique identifier of the MCP server to connect.
    # @param connect_server_request_body [ConnectServerRequestBody] The request body containing additional data necessary for connecting to the server,  such as authentication or operation-specific information.
    # @param [Hash] opts the optional parameters
    # @return [McpServerStatusWrapper]
    def connect_server(room_id, server_id, connect_server_request_body, opts = {})
      data, _status_code, _headers = connect_server_with_http_info(room_id, server_id, connect_server_request_body, opts)
      data
    end

    # Connect an OAuth-based MCP server in a room
    # Completes the OAuth authorization flow for an MCP server within a specific room on behalf of the  current user. The authorization code obtained from the OAuth provider must be passed in the request body.  Upon successful token exchange, the system verifies connectivity to the server and stores  the credentials for the current user. Requires room edit permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/connect-server/
    # @param room_id [Integer] Identifier of the room containing the MCP server.
    # @param server_id [String] Unique identifier of the MCP server to connect.
    # @param connect_server_request_body [ConnectServerRequestBody] The request body containing additional data necessary for connecting to the server,  such as authentication or operation-specific information.
    # @param [Hash] opts the optional parameters
    # @return [Array<(McpServerStatusWrapper, Integer, Hash)>] McpServerStatusWrapper data, response status code and response headers
    def connect_server_with_http_info(room_id, server_id, connect_server_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.connect_server ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::MCPApi.connect_server"
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling AI::MCPApi.connect_server"
      end
      # verify the required parameter 'connect_server_request_body' is set
      if @api_client.config.client_side_validation && connect_server_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'connect_server_request_body' when calling AI::MCPApi.connect_server"
      end
      # resource path
      local_var_path = '/api/2.0/ai/rooms/{roomId}/servers/{serverId}/connect'.sub('{' + 'roomId' + '}', CGI.escape(room_id.to_s)).sub('{' + 'serverId' + '}', CGI.escape(server_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(connect_server_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'McpServerStatusWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.connect_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#connect_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove MCP servers from a room
    # Detaches one or more MCP servers from the specified room. After removal, the servers will no longer  be available in AI chat sessions within this room. Existing connections and tool configurations for  the removed servers are also cleaned up. Requires room edit permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-servers/
    # @param room_id [Integer] Identifier of the room from which MCP servers will be removed.
    # @param delete_room_servers_request_body [DeleteRoomServersRequestBody] Server identifiers to remove.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_room_servers(room_id, delete_room_servers_request_body, opts = {})
      delete_room_servers_with_http_info(room_id, delete_room_servers_request_body, opts)
      nil
    end

    # Remove MCP servers from a room
    # Detaches one or more MCP servers from the specified room. After removal, the servers will no longer  be available in AI chat sessions within this room. Existing connections and tool configurations for  the removed servers are also cleaned up. Requires room edit permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-servers/
    # @param room_id [Integer] Identifier of the room from which MCP servers will be removed.
    # @param delete_room_servers_request_body [DeleteRoomServersRequestBody] Server identifiers to remove.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_room_servers_with_http_info(room_id, delete_room_servers_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.delete_room_servers ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::MCPApi.delete_room_servers"
      end
      # verify the required parameter 'delete_room_servers_request_body' is set
      if @api_client.config.client_side_validation && delete_room_servers_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'delete_room_servers_request_body' when calling AI::MCPApi.delete_room_servers"
      end
      # resource path
      local_var_path = '/api/2.0/ai/rooms/{roomId}/servers'.sub('{' + 'roomId' + '}', CGI.escape(room_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_room_servers_request_body)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.delete_room_servers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#delete_room_servers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete MCP servers
    # Permanently removes one or more MCP servers from the current tenant by their IDs.  All room associations and connection data for the deleted servers are also cleaned up.  This action is irreversible. Requires DocSpace administrator privileges.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-server/
    # @param delete_servers_request_body [DeleteServersRequestBody] Server identifiers to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_server(delete_servers_request_body, opts = {})
      delete_server_with_http_info(delete_servers_request_body, opts)
      nil
    end

    # Delete MCP servers
    # Permanently removes one or more MCP servers from the current tenant by their IDs.  All room associations and connection data for the deleted servers are also cleaned up.  This action is irreversible. Requires DocSpace administrator privileges.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-server/
    # @param delete_servers_request_body [DeleteServersRequestBody] Server identifiers to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_server_with_http_info(delete_servers_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.delete_server ...'
      end
      # verify the required parameter 'delete_servers_request_body' is set
      if @api_client.config.client_side_validation && delete_servers_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'delete_servers_request_body' when calling AI::MCPApi.delete_server"
      end
      # resource path
      local_var_path = '/api/2.0/ai/servers'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_servers_request_body)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.delete_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#delete_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disconnect an MCP server in a room
    # Revokes the current user's OAuth connection to an MCP server within the specified room. After  disconnection, the server's tools will no longer be available to this user in AI chat sessions  until they re-authorize. Other room members' connections are not affected.  Requires room edit permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/disconnect-server/
    # @param room_id [Integer] Identifier of the room containing the MCP server.
    # @param server_id [String] Unique identifier of the MCP server to disconnect from.
    # @param [Hash] opts the optional parameters
    # @return [McpServerStatusWrapper]
    def disconnect_server(room_id, server_id, opts = {})
      data, _status_code, _headers = disconnect_server_with_http_info(room_id, server_id, opts)
      data
    end

    # Disconnect an MCP server in a room
    # Revokes the current user's OAuth connection to an MCP server within the specified room. After  disconnection, the server's tools will no longer be available to this user in AI chat sessions  until they re-authorize. Other room members' connections are not affected.  Requires room edit permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/disconnect-server/
    # @param room_id [Integer] Identifier of the room containing the MCP server.
    # @param server_id [String] Unique identifier of the MCP server to disconnect from.
    # @param [Hash] opts the optional parameters
    # @return [Array<(McpServerStatusWrapper, Integer, Hash)>] McpServerStatusWrapper data, response status code and response headers
    def disconnect_server_with_http_info(room_id, server_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.disconnect_server ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::MCPApi.disconnect_server"
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling AI::MCPApi.disconnect_server"
      end
      # resource path
      local_var_path = '/api/2.0/ai/rooms/{roomId}/servers/{serverId}/disconnect'.sub('{' + 'roomId' + '}', CGI.escape(room_id.to_s)).sub('{' + 'serverId' + '}', CGI.escape(server_id.to_s))

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
      return_type = opts[:debug_return_type] || 'McpServerStatusWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.disconnect_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#disconnect_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get available MCP servers
    # Returns a paginated list of MCP servers that are currently active (enabled) and available for  assignment to rooms. Only servers in the enabled state are included. Each entry contains a compact  summary with the server name, type, icon, and status. Supports pagination via startIndex and count.  The total count of available servers is included in the response metadata.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-available-servers/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_index The number of items to skip before returning results (zero-based offset). Defaults to 0.
    # @option opts [Integer] :count The maximum number of items to return per page. Defaults to 100.
    # @return [McpServerShortArrayWrapper]
    def get_available_servers(opts = {})
      data, _status_code, _headers = get_available_servers_with_http_info(opts)
      data
    end

    # Get available MCP servers
    # Returns a paginated list of MCP servers that are currently active (enabled) and available for  assignment to rooms. Only servers in the enabled state are included. Each entry contains a compact  summary with the server name, type, icon, and status. Supports pagination via startIndex and count.  The total count of available servers is included in the response metadata.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-available-servers/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_index The number of items to skip before returning results (zero-based offset). Defaults to 0.
    # @option opts [Integer] :count The maximum number of items to return per page. Defaults to 100.
    # @return [Array<(McpServerShortArrayWrapper, Integer, Hash)>] McpServerShortArrayWrapper data, response status code and response headers
    def get_available_servers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.get_available_servers ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/servers/available'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'McpServerShortArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.get_available_servers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#get_available_servers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MCP servers assigned to a room
    # Returns the list of MCP servers currently assigned to the specified room along with their connection  statuses for the current user. For OAuth-based servers, the connection status reflects whether the  current user has completed authorization. Requires access to the room's AI chat.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-servers/
    # @param room_id [Integer] Identifier of the room whose assigned MCP servers are being retrieved.
    # @param [Hash] opts the optional parameters
    # @return [McpServerStatusArrayWrapper]
    def get_room_servers(room_id, opts = {})
      data, _status_code, _headers = get_room_servers_with_http_info(room_id, opts)
      data
    end

    # Get MCP servers assigned to a room
    # Returns the list of MCP servers currently assigned to the specified room along with their connection  statuses for the current user. For OAuth-based servers, the connection status reflects whether the  current user has completed authorization. Requires access to the room's AI chat.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-servers/
    # @param room_id [Integer] Identifier of the room whose assigned MCP servers are being retrieved.
    # @param [Hash] opts the optional parameters
    # @return [Array<(McpServerStatusArrayWrapper, Integer, Hash)>] McpServerStatusArrayWrapper data, response status code and response headers
    def get_room_servers_with_http_info(room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.get_room_servers ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::MCPApi.get_room_servers"
      end
      # resource path
      local_var_path = '/api/2.0/ai/rooms/{roomId}/servers'.sub('{' + 'roomId' + '}', CGI.escape(room_id.to_s))

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
      return_type = opts[:debug_return_type] || 'McpServerStatusArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.get_room_servers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#get_room_servers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an MCP server by ID
    # Retrieves a summary view of a single MCP server by its unique identifier, including its name,  type, enabled state, and icon. This endpoint returns a compact representation without  sensitive details such as endpoint URL or authentication headers.  Requires DocSpace administrator privileges.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-server/
    # @param id [String] Unique identifier of the MCP server to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [McpServerShortWrapper]
    def get_server(id, opts = {})
      data, _status_code, _headers = get_server_with_http_info(id, opts)
      data
    end

    # Get an MCP server by ID
    # Retrieves a summary view of a single MCP server by its unique identifier, including its name,  type, enabled state, and icon. This endpoint returns a compact representation without  sensitive details such as endpoint URL or authentication headers.  Requires DocSpace administrator privileges.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-server/
    # @param id [String] Unique identifier of the MCP server to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(McpServerShortWrapper, Integer, Hash)>] McpServerShortWrapper data, response status code and response headers
    def get_server_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.get_server ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::MCPApi.get_server"
      end
      # resource path
      local_var_path = '/api/2.0/ai/servers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'McpServerShortWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.get_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#get_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all MCP servers
    # Returns a paginated list of all MCP servers registered for the current tenant, including both  enabled and disabled servers. Each entry contains the full configuration (endpoint, headers,  icon, type, and status). Supports pagination via the startIndex and count query parameters.  The total number of servers is included in the response metadata.  Requires DocSpace administrator privileges.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-servers/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_index The number of items to skip before returning results (zero-based offset). Defaults to 0.
    # @option opts [Integer] :count The maximum number of items to return per page. Defaults to 100.
    # @return [McpServerArrayWrapper]
    def get_servers(opts = {})
      data, _status_code, _headers = get_servers_with_http_info(opts)
      data
    end

    # Get all MCP servers
    # Returns a paginated list of all MCP servers registered for the current tenant, including both  enabled and disabled servers. Each entry contains the full configuration (endpoint, headers,  icon, type, and status). Supports pagination via the startIndex and count query parameters.  The total number of servers is included in the response metadata.  Requires DocSpace administrator privileges.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-servers/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_index The number of items to skip before returning results (zero-based offset). Defaults to 0.
    # @option opts [Integer] :count The maximum number of items to return per page. Defaults to 100.
    # @return [Array<(McpServerArrayWrapper, Integer, Hash)>] McpServerArrayWrapper data, response status code and response headers
    def get_servers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.get_servers ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/servers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'McpServerArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.get_servers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#get_servers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MCP server tools in a room
    # Retrieves the full list of tools exposed by an MCP server within the context of a specific room,  along with each tool's enabled or disabled state. Disabled tools will not be invoked during  AI chat sessions in this room. Requires access to the room's AI chat.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tools/
    # @param room_id [Integer] Identifier of the room containing the MCP server.
    # @param server_id [String] Unique identifier of the MCP server whose tools are being retrieved.
    # @param [Hash] opts the optional parameters
    # @return [McpToolArrayWrapper]
    def get_tools(room_id, server_id, opts = {})
      data, _status_code, _headers = get_tools_with_http_info(room_id, server_id, opts)
      data
    end

    # Get MCP server tools in a room
    # Retrieves the full list of tools exposed by an MCP server within the context of a specific room,  along with each tool's enabled or disabled state. Disabled tools will not be invoked during  AI chat sessions in this room. Requires access to the room's AI chat.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tools/
    # @param room_id [Integer] Identifier of the room containing the MCP server.
    # @param server_id [String] Unique identifier of the MCP server whose tools are being retrieved.
    # @param [Hash] opts the optional parameters
    # @return [Array<(McpToolArrayWrapper, Integer, Hash)>] McpToolArrayWrapper data, response status code and response headers
    def get_tools_with_http_info(room_id, server_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.get_tools ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::MCPApi.get_tools"
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling AI::MCPApi.get_tools"
      end
      # resource path
      local_var_path = '/api/2.0/ai/rooms/{roomId}/servers/{serverId}/tools'.sub('{' + 'roomId' + '}', CGI.escape(room_id.to_s)).sub('{' + 'serverId' + '}', CGI.escape(server_id.to_s))

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
      return_type = opts[:debug_return_type] || 'McpToolArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.get_tools",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#get_tools\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable or disable an MCP server
    # Toggles the enabled/disabled state of an MCP server. When a server is disabled, it becomes  unavailable for assignment to rooms and will not be used during AI chat sessions.  Enabling a previously disabled server restores its availability across the tenant.  Requires DocSpace administrator privileges.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-server-status/
    # @param id [String] Unique identifier of the MCP server whose status is being changed.
    # @param set_server_status_request_body [SetServerStatusRequestBody] New status value.
    # @param [Hash] opts the optional parameters
    # @return [McpServerWrapper]
    def set_server_status(id, set_server_status_request_body, opts = {})
      data, _status_code, _headers = set_server_status_with_http_info(id, set_server_status_request_body, opts)
      data
    end

    # Enable or disable an MCP server
    # Toggles the enabled/disabled state of an MCP server. When a server is disabled, it becomes  unavailable for assignment to rooms and will not be used during AI chat sessions.  Enabling a previously disabled server restores its availability across the tenant.  Requires DocSpace administrator privileges.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-server-status/
    # @param id [String] Unique identifier of the MCP server whose status is being changed.
    # @param set_server_status_request_body [SetServerStatusRequestBody] New status value.
    # @param [Hash] opts the optional parameters
    # @return [Array<(McpServerWrapper, Integer, Hash)>] McpServerWrapper data, response status code and response headers
    def set_server_status_with_http_info(id, set_server_status_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.set_server_status ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::MCPApi.set_server_status"
      end
      # verify the required parameter 'set_server_status_request_body' is set
      if @api_client.config.client_side_validation && set_server_status_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'set_server_status_request_body' when calling AI::MCPApi.set_server_status"
      end
      # resource path
      local_var_path = '/api/2.0/ai/servers/{id}/status'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_server_status_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'McpServerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.set_server_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#set_server_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Configure MCP server tools in a room
    # Updates the set of disabled tools for an MCP server within a specific room. Pass a list of tool names  that should be disabled — all other tools exposed by the server will remain enabled. This allows  room administrators to restrict which MCP capabilities are available during AI chat sessions.  Requires room edit permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tools/
    # @param room_id [Integer] Identifier of the room containing the MCP server.
    # @param server_id [String] Unique identifier of the MCP server whose tools are being configured.
    # @param set_mcp_tools_request_body [SetMcpToolsRequestBody] Tool configuration parameters.
    # @param [Hash] opts the optional parameters
    # @return [McpToolArrayWrapper]
    def set_tools(room_id, server_id, set_mcp_tools_request_body, opts = {})
      data, _status_code, _headers = set_tools_with_http_info(room_id, server_id, set_mcp_tools_request_body, opts)
      data
    end

    # Configure MCP server tools in a room
    # Updates the set of disabled tools for an MCP server within a specific room. Pass a list of tool names  that should be disabled — all other tools exposed by the server will remain enabled. This allows  room administrators to restrict which MCP capabilities are available during AI chat sessions.  Requires room edit permissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tools/
    # @param room_id [Integer] Identifier of the room containing the MCP server.
    # @param server_id [String] Unique identifier of the MCP server whose tools are being configured.
    # @param set_mcp_tools_request_body [SetMcpToolsRequestBody] Tool configuration parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(McpToolArrayWrapper, Integer, Hash)>] McpToolArrayWrapper data, response status code and response headers
    def set_tools_with_http_info(room_id, server_id, set_mcp_tools_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.set_tools ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::MCPApi.set_tools"
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling AI::MCPApi.set_tools"
      end
      # verify the required parameter 'set_mcp_tools_request_body' is set
      if @api_client.config.client_side_validation && set_mcp_tools_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'set_mcp_tools_request_body' when calling AI::MCPApi.set_tools"
      end
      # resource path
      local_var_path = '/api/2.0/ai/rooms/{roomId}/servers/{serverId}/tools'.sub('{' + 'roomId' + '}', CGI.escape(room_id.to_s)).sub('{' + 'serverId' + '}', CGI.escape(server_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_mcp_tools_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'McpToolArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.set_tools",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#set_tools\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a custom MCP server
    # Updates the configuration of an existing custom MCP server identified by its unique ID.  Any combination of fields (name, description, endpoint, headers, icon) can be updated in a single request.  If the endpoint or headers are changed, the system re-validates connectivity by attempting to reach  the new endpoint before saving. Name uniqueness and format rules are enforced on every update.  Requires DocSpace administrator privileges.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-server/
    # @param id [String] Unique identifier of the MCP server to update.
    # @param update_server_request_body [UpdateServerRequestBody] Updated server configuration fields.
    # @param [Hash] opts the optional parameters
    # @return [McpServerWrapper]
    def update_server(id, update_server_request_body, opts = {})
      data, _status_code, _headers = update_server_with_http_info(id, update_server_request_body, opts)
      data
    end

    # Update a custom MCP server
    # Updates the configuration of an existing custom MCP server identified by its unique ID.  Any combination of fields (name, description, endpoint, headers, icon) can be updated in a single request.  If the endpoint or headers are changed, the system re-validates connectivity by attempting to reach  the new endpoint before saving. Name uniqueness and format rules are enforced on every update.  Requires DocSpace administrator privileges.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-server/
    # @param id [String] Unique identifier of the MCP server to update.
    # @param update_server_request_body [UpdateServerRequestBody] Updated server configuration fields.
    # @param [Hash] opts the optional parameters
    # @return [Array<(McpServerWrapper, Integer, Hash)>] McpServerWrapper data, response status code and response headers
    def update_server_with_http_info(id, update_server_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MCPApi.update_server ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::MCPApi.update_server"
      end
      # verify the required parameter 'update_server_request_body' is set
      if @api_client.config.client_side_validation && update_server_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'update_server_request_body' when calling AI::MCPApi.update_server"
      end
      # resource path
      local_var_path = '/api/2.0/ai/servers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_server_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'McpServerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MCPApi.update_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MCPApi#update_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

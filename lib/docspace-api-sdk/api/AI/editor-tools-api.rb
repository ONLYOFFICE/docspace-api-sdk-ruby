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
    class EditorToolsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Call an editor tool
    # Executes one DocSpace tool on behalf of the document editor's AI plugin, server-side and under the caller's own credentials, so the browser never holds the transport. `name` has to be one of the tools `GET api/2.0/ai/editor-tools/list` reports; anything else, including a tool the editor is not allowed to reach, is refused. The result is always returned as a string - a structured result is serialised - because the plugin relays it to the model verbatim. A tool that fails does so inside that string as an error payload rather than as an HTTP status, so check the content before trusting it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-editor-tools-call/
    # @param ai_editor_tools_call_request [AiEditorToolsCallRequest] The tool to run: `name` from `GET api/2.0/ai/editor-tools/list`, `arguments` matching that tool's input schema, and an optional `entityId` for the room to run it in.
    # @param [Hash] opts the optional parameters
    # @return [AiEditorToolsCall200Response]
    def ai_editor_tools_call(ai_editor_tools_call_request, opts = {})
      data, _status_code, _headers = ai_editor_tools_call_with_http_info(ai_editor_tools_call_request, opts)
      data
    end

    # Call an editor tool
    # Executes one DocSpace tool on behalf of the document editor's AI plugin, server-side and under the caller's own credentials, so the browser never holds the transport. `name` has to be one of the tools `GET api/2.0/ai/editor-tools/list` reports; anything else, including a tool the editor is not allowed to reach, is refused. The result is always returned as a string - a structured result is serialised - because the plugin relays it to the model verbatim. A tool that fails does so inside that string as an error payload rather than as an HTTP status, so check the content before trusting it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-editor-tools-call/
    # @param ai_editor_tools_call_request [AiEditorToolsCallRequest] The tool to run: `name` from `GET api/2.0/ai/editor-tools/list`, `arguments` matching that tool's input schema, and an optional `entityId` for the room to run it in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiEditorToolsCall200Response, Integer, Hash)>] AiEditorToolsCall200Response data, response status code and response headers
    def ai_editor_tools_call_with_http_info(ai_editor_tools_call_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::EditorToolsApi.ai_editor_tools_call ...'
      end
      # verify the required parameter 'ai_editor_tools_call_request' is set
      if @api_client.config.client_side_validation && ai_editor_tools_call_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_editor_tools_call_request' when calling AI::EditorToolsApi.ai_editor_tools_call"
      end
      # resource path
      local_var_path = '/api/2.0/ai/editor-tools/call'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_editor_tools_call_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiEditorToolsCall200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::EditorToolsApi.ai_editor_tools_call",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::EditorToolsApi#ai_editor_tools_call\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List editor tools
    # Returns the catalogue of DocSpace tools the document editor's AI plugin may offer the model - the same composed set the DocSpace chat sees, minus the two web-search tools the editor already reaches through its own passthrough. `entityId` scopes the catalogue to a room, which decides the room-specific tools it contains. Each entry carries exactly four fields: the tool name, its description, its input schema, and whether calling it requires an approval dialog; nothing else is exposed, because the raw listings of system servers carry transport details that must not reach a browser. The approval flag follows the same policy the chat engine applies, and a read-only tool comes back needing none - execute a tool with `POST api/2.0/ai/editor-tools/call`, which accepts only the names this catalogue reports.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-editor-tools-list/
    # @param [Hash] opts the optional parameters
    # @return [AiEditorToolsList200Response]
    def ai_editor_tools_list(opts = {})
      data, _status_code, _headers = ai_editor_tools_list_with_http_info(opts)
      data
    end

    # List editor tools
    # Returns the catalogue of DocSpace tools the document editor's AI plugin may offer the model - the same composed set the DocSpace chat sees, minus the two web-search tools the editor already reaches through its own passthrough. `entityId` scopes the catalogue to a room, which decides the room-specific tools it contains. Each entry carries exactly four fields: the tool name, its description, its input schema, and whether calling it requires an approval dialog; nothing else is exposed, because the raw listings of system servers carry transport details that must not reach a browser. The approval flag follows the same policy the chat engine applies, and a read-only tool comes back needing none - execute a tool with `POST api/2.0/ai/editor-tools/call`, which accepts only the names this catalogue reports.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-editor-tools-list/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiEditorToolsList200Response, Integer, Hash)>] AiEditorToolsList200Response data, response status code and response headers
    def ai_editor_tools_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::EditorToolsApi.ai_editor_tools_list ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/editor-tools/list'

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
      return_type = opts[:debug_return_type] || 'AiEditorToolsList200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::EditorToolsApi.ai_editor_tools_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::EditorToolsApi#ai_editor_tools_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

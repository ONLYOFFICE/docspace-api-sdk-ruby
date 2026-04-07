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
    class MessagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Export a single AI message to a document
    # Exports a specific AI chat message as a document into the specified folder. The system verifies that the message exists  and belongs to a chat accessible by the current user, then publishes an asynchronous export task to the event bus.  The exported document will be created in the target folder with the given title once the background task completes.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/export-message/
    # @param message_id [Integer] The unique identifier of the AI chat message to export.
    # @param export_message_request_body_integer [ExportMessageRequestBodyInteger] The export parameters including destination folder and file title.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def export_message(message_id, export_message_request_body_integer, opts = {})
      export_message_with_http_info(message_id, export_message_request_body_integer, opts)
      nil
    end

    # Export a single AI message to a document
    # Exports a specific AI chat message as a document into the specified folder. The system verifies that the message exists  and belongs to a chat accessible by the current user, then publishes an asynchronous export task to the event bus.  The exported document will be created in the target folder with the given title once the background task completes.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/export-message/
    # @param message_id [Integer] The unique identifier of the AI chat message to export.
    # @param export_message_request_body_integer [ExportMessageRequestBodyInteger] The export parameters including destination folder and file title.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def export_message_with_http_info(message_id, export_message_request_body_integer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MessagesApi.export_message ...'
      end
      # verify the required parameter 'message_id' is set
      if @api_client.config.client_side_validation && message_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_id' when calling AI::MessagesApi.export_message"
      end
      if @api_client.config.client_side_validation && message_id > 2147483647
        fail ArgumentError, 'invalid value for "message_id" when calling AI::MessagesApi.export_message, must be smaller than or equal to 2147483647.'
      end

      if @api_client.config.client_side_validation && message_id < 1
        fail ArgumentError, 'invalid value for "message_id" when calling AI::MessagesApi.export_message, must be greater than or equal to 1.'
      end

      # verify the required parameter 'export_message_request_body_integer' is set
      if @api_client.config.client_side_validation && export_message_request_body_integer.nil?
        fail ArgumentError, "Missing the required parameter 'export_message_request_body_integer' when calling AI::MessagesApi.export_message"
      end
      # resource path
      local_var_path = '/api/2.0/ai/messages/{messageId}/export'.sub('{' + 'messageId' + '}', CGI.escape(message_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(export_message_request_body_integer)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::MessagesApi.export_message",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MessagesApi#export_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

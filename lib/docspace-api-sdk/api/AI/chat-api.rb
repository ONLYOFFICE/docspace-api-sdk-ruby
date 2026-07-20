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
    class ChatApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send a message to an existing AI chat
    # Appends a new user message to an existing chat session and streams the AI assistant's response.  The full conversation history of the chat is sent to the AI provider to maintain context.  The response is delivered as a Server-Sent Events (SSE) stream with periodic keep-alive pings.  File references can optionally be attached to provide additional context.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/continue-chat/
    # @param chat_id [String] The unique identifier of the existing AI chat session to continue.
    # @param continue_chat_body [ContinueChatBody] The message and optional file attachments.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def continue_chat(chat_id, continue_chat_body, opts = {})
      continue_chat_with_http_info(chat_id, continue_chat_body, opts)
      nil
    end

    # Send a message to an existing AI chat
    # Appends a new user message to an existing chat session and streams the AI assistant's response.  The full conversation history of the chat is sent to the AI provider to maintain context.  The response is delivered as a Server-Sent Events (SSE) stream with periodic keep-alive pings.  File references can optionally be attached to provide additional context.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/continue-chat/
    # @param chat_id [String] The unique identifier of the existing AI chat session to continue.
    # @param continue_chat_body [ContinueChatBody] The message and optional file attachments.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def continue_chat_with_http_info(chat_id, continue_chat_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.continue_chat ...'
      end
      # verify the required parameter 'chat_id' is set
      if @api_client.config.client_side_validation && chat_id.nil?
        fail ArgumentError, "Missing the required parameter 'chat_id' when calling AI::ChatApi.continue_chat"
      end
      # verify the required parameter 'continue_chat_body' is set
      if @api_client.config.client_side_validation && continue_chat_body.nil?
        fail ArgumentError, "Missing the required parameter 'continue_chat_body' when calling AI::ChatApi.continue_chat"
      end
      # resource path
      local_var_path = '/api/2.0/ai/chats/{chatId}/messages'.sub('{' + 'chatId' + '}', CGI.escape(chat_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(continue_chat_body)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.continue_chat",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#continue_chat\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an AI chat
    # Permanently deletes an AI chat session along with all of its messages.  Only the chat owner can delete their own chat sessions. This action cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-chat/
    # @param chat_id [String] The unique identifier of the AI chat session to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_chat(chat_id, opts = {})
      delete_chat_with_http_info(chat_id, opts)
      nil
    end

    # Delete an AI chat
    # Permanently deletes an AI chat session along with all of its messages.  Only the chat owner can delete their own chat sessions. This action cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-chat/
    # @param chat_id [String] The unique identifier of the AI chat session to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_chat_with_http_info(chat_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.delete_chat ...'
      end
      # verify the required parameter 'chat_id' is set
      if @api_client.config.client_side_validation && chat_id.nil?
        fail ArgumentError, "Missing the required parameter 'chat_id' when calling AI::ChatApi.delete_chat"
      end
      # resource path
      local_var_path = '/api/2.0/ai/chats/{chatId}'.sub('{' + 'chatId' + '}', CGI.escape(chat_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.delete_chat",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#delete_chat\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export AI chat messages to a file
    # Exports the entire message history of an AI chat session and saves it as a document in the specified folder.  The exported file is created with the provided title. Only the chat owner can export their own chat sessions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/export-chat/
    # @param chat_id [String] The unique identifier of the AI chat session to export.
    # @param export_chat_request_body [ExportChatRequestBody] The export parameters including destination folder and file title.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def export_chat(chat_id, export_chat_request_body, opts = {})
      export_chat_with_http_info(chat_id, export_chat_request_body, opts)
      nil
    end

    # Export AI chat messages to a file
    # Exports the entire message history of an AI chat session and saves it as a document in the specified folder.  The exported file is created with the provided title. Only the chat owner can export their own chat sessions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/export-chat/
    # @param chat_id [String] The unique identifier of the AI chat session to export.
    # @param export_chat_request_body [ExportChatRequestBody] The export parameters including destination folder and file title.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def export_chat_with_http_info(chat_id, export_chat_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.export_chat ...'
      end
      # verify the required parameter 'chat_id' is set
      if @api_client.config.client_side_validation && chat_id.nil?
        fail ArgumentError, "Missing the required parameter 'chat_id' when calling AI::ChatApi.export_chat"
      end
      # verify the required parameter 'export_chat_request_body' is set
      if @api_client.config.client_side_validation && export_chat_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'export_chat_request_body' when calling AI::ChatApi.export_chat"
      end
      # resource path
      local_var_path = '/api/2.0/ai/chats/{chatId}/messages/export'.sub('{' + 'chatId' + '}', CGI.escape(chat_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(export_chat_request_body)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.export_chat",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#export_chat\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an AI chat by ID
    # Retrieves the metadata of a single AI chat session, including its title, creation date, and the user who created it.  Only the chat owner can access their own chat sessions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chat/
    # @param chat_id [String] The unique identifier of the AI chat session to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [ChatWrapper]
    def get_chat(chat_id, opts = {})
      data, _status_code, _headers = get_chat_with_http_info(chat_id, opts)
      data
    end

    # Get an AI chat by ID
    # Retrieves the metadata of a single AI chat session, including its title, creation date, and the user who created it.  Only the chat owner can access their own chat sessions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chat/
    # @param chat_id [String] The unique identifier of the AI chat session to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChatWrapper, Integer, Hash)>] ChatWrapper data, response status code and response headers
    def get_chat_with_http_info(chat_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.get_chat ...'
      end
      # verify the required parameter 'chat_id' is set
      if @api_client.config.client_side_validation && chat_id.nil?
        fail ArgumentError, "Missing the required parameter 'chat_id' when calling AI::ChatApi.get_chat"
      end
      # resource path
      local_var_path = '/api/2.0/ai/chats/{chatId}'.sub('{' + 'chatId' + '}', CGI.escape(chat_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ChatWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.get_chat",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#get_chat\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get available AI models
    # Returns the list of AI models available for chat conversations.  Optionally filters the results to models from a specific provider when the provider query parameter is specified.  Each model entry includes the provider ID, provider display name, and the model identifier.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chat-models/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :provider The optional AI provider identifier to filter models by. When set to 0, models from all providers are returned.
    # @return [ModelArrayWrapper]
    def get_chat_models(opts = {})
      data, _status_code, _headers = get_chat_models_with_http_info(opts)
      data
    end

    # Get available AI models
    # Returns the list of AI models available for chat conversations.  Optionally filters the results to models from a specific provider when the provider query parameter is specified.  Each model entry includes the provider ID, provider display name, and the model identifier.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chat-models/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :provider The optional AI provider identifier to filter models by. When set to 0, models from all providers are returned.
    # @return [Array<(ModelArrayWrapper, Integer, Hash)>] ModelArrayWrapper data, response status code and response headers
    def get_chat_models_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.get_chat_models ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/chats/models'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'provider'] = opts[:'provider'] if !opts[:'provider'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ModelArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.get_chat_models",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#get_chat_models\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get AI chats in a room
    # Returns a paginated list of AI chat sessions that belong to the current user within the specified room.  Supports pagination via the startIndex and count query parameters. The total number of chats is included in the response metadata.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chats/
    # @param room_id [Integer] The identifier of the room whose AI chat sessions are to be listed.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_index The number of items to skip before returning results (zero-based offset). Defaults to 0.
    # @option opts [Integer] :count The maximum number of items to return per page. Defaults to 100.
    # @return [ChatArrayWrapper]
    def get_chats(room_id, opts = {})
      data, _status_code, _headers = get_chats_with_http_info(room_id, opts)
      data
    end

    # Get AI chats in a room
    # Returns a paginated list of AI chat sessions that belong to the current user within the specified room.  Supports pagination via the startIndex and count query parameters. The total number of chats is included in the response metadata.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chats/
    # @param room_id [Integer] The identifier of the room whose AI chat sessions are to be listed.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_index The number of items to skip before returning results (zero-based offset). Defaults to 0.
    # @option opts [Integer] :count The maximum number of items to return per page. Defaults to 100.
    # @return [Array<(ChatArrayWrapper, Integer, Hash)>] ChatArrayWrapper data, response status code and response headers
    def get_chats_with_http_info(room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.get_chats ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::ChatApi.get_chats"
      end
      # resource path
      local_var_path = '/api/2.0/ai/rooms/{roomId}/chats'.sub('{' + 'roomId' + '}', CGI.escape(room_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ChatArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.get_chats",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#get_chats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get messages of an AI chat
    # Returns a paginated list of messages from an AI chat session owned by the current user.  Each message includes its role (user or assistant), content blocks (text, tool calls, attachments), and timestamp.  Supports pagination via the startIndex and count query parameters. The total number of messages is included in the response metadata.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-messages/
    # @param chat_id [String] The unique identifier of the AI chat session whose messages are to be listed.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_index The number of items to skip before returning results (zero-based offset). Defaults to 0.
    # @option opts [Integer] :count The maximum number of items to return per page. Defaults to 100.
    # @return [MessageArrayWrapper]
    def get_messages(chat_id, opts = {})
      data, _status_code, _headers = get_messages_with_http_info(chat_id, opts)
      data
    end

    # Get messages of an AI chat
    # Returns a paginated list of messages from an AI chat session owned by the current user.  Each message includes its role (user or assistant), content blocks (text, tool calls, attachments), and timestamp.  Supports pagination via the startIndex and count query parameters. The total number of messages is included in the response metadata.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-messages/
    # @param chat_id [String] The unique identifier of the AI chat session whose messages are to be listed.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_index The number of items to skip before returning results (zero-based offset). Defaults to 0.
    # @option opts [Integer] :count The maximum number of items to return per page. Defaults to 100.
    # @return [Array<(MessageArrayWrapper, Integer, Hash)>] MessageArrayWrapper data, response status code and response headers
    def get_messages_with_http_info(chat_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.get_messages ...'
      end
      # verify the required parameter 'chat_id' is set
      if @api_client.config.client_side_validation && chat_id.nil?
        fail ArgumentError, "Missing the required parameter 'chat_id' when calling AI::ChatApi.get_messages"
      end
      # resource path
      local_var_path = '/api/2.0/ai/chats/{chatId}/messages'.sub('{' + 'chatId' + '}', CGI.escape(chat_id.to_s))

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
      return_type = opts[:debug_return_type] || 'MessageArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.get_messages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#get_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get user chat settings for a room
    # Retrieves the current user's personal AI chat preferences for the specified room,  including whether web search is enabled for AI-assisted responses.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-chats-settings/
    # @param room_id [Integer] The identifier of the room whose chat settings are to be retrieved.
    # @param [Hash] opts the optional parameters
    # @return [UserChatSettingsWrapper]
    def get_user_chats_settings(room_id, opts = {})
      data, _status_code, _headers = get_user_chats_settings_with_http_info(room_id, opts)
      data
    end

    # Get user chat settings for a room
    # Retrieves the current user's personal AI chat preferences for the specified room,  including whether web search is enabled for AI-assisted responses.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-chats-settings/
    # @param room_id [Integer] The identifier of the room whose chat settings are to be retrieved.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserChatSettingsWrapper, Integer, Hash)>] UserChatSettingsWrapper data, response status code and response headers
    def get_user_chats_settings_with_http_info(room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.get_user_chats_settings ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::ChatApi.get_user_chats_settings"
      end
      # resource path
      local_var_path = '/api/2.0/ai/rooms/{roomId}/chats/config'.sub('{' + 'roomId' + '}', CGI.escape(room_id.to_s))

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
      return_type = opts[:debug_return_type] || 'UserChatSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.get_user_chats_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#get_user_chats_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Submit a tool execution permission decision
    # Provides the user's approval or denial decision for a pending MCP (Model Context Protocol) tool execution request.  When an AI assistant attempts to invoke an external tool that requires explicit user consent,  the client receives a permission prompt via the SSE stream. This endpoint is used to submit the user's decision  so that the AI chat session can proceed accordingly.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/provide-permission/
    # @param call_id [String] The unique identifier of the pending tool execution call awaiting a permission decision.
    # @param tool_decision_request_body [ToolDecisionRequestBody] The permission decision parameters.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def provide_permission(call_id, tool_decision_request_body, opts = {})
      provide_permission_with_http_info(call_id, tool_decision_request_body, opts)
      nil
    end

    # Submit a tool execution permission decision
    # Provides the user's approval or denial decision for a pending MCP (Model Context Protocol) tool execution request.  When an AI assistant attempts to invoke an external tool that requires explicit user consent,  the client receives a permission prompt via the SSE stream. This endpoint is used to submit the user's decision  so that the AI chat session can proceed accordingly.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/provide-permission/
    # @param call_id [String] The unique identifier of the pending tool execution call awaiting a permission decision.
    # @param tool_decision_request_body [ToolDecisionRequestBody] The permission decision parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def provide_permission_with_http_info(call_id, tool_decision_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.provide_permission ...'
      end
      # verify the required parameter 'call_id' is set
      if @api_client.config.client_side_validation && call_id.nil?
        fail ArgumentError, "Missing the required parameter 'call_id' when calling AI::ChatApi.provide_permission"
      end
      # verify the required parameter 'tool_decision_request_body' is set
      if @api_client.config.client_side_validation && tool_decision_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'tool_decision_request_body' when calling AI::ChatApi.provide_permission"
      end
      # resource path
      local_var_path = '/api/2.0/ai/chats/tool-permissions/{callId}/decision'.sub('{' + 'callId' + '}', CGI.escape(call_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tool_decision_request_body)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.provide_permission",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#provide_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rename an AI chat
    # Updates the display title of an existing AI chat session owned by the current user.  The new name must not exceed 255 characters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-chat/
    # @param chat_id [String] The unique identifier of the AI chat session to rename.
    # @param rename_chat_body [RenameChatBody] The new chat name.
    # @param [Hash] opts the optional parameters
    # @return [ChatWrapper]
    def rename_chat(chat_id, rename_chat_body, opts = {})
      data, _status_code, _headers = rename_chat_with_http_info(chat_id, rename_chat_body, opts)
      data
    end

    # Rename an AI chat
    # Updates the display title of an existing AI chat session owned by the current user.  The new name must not exceed 255 characters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-chat/
    # @param chat_id [String] The unique identifier of the AI chat session to rename.
    # @param rename_chat_body [RenameChatBody] The new chat name.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChatWrapper, Integer, Hash)>] ChatWrapper data, response status code and response headers
    def rename_chat_with_http_info(chat_id, rename_chat_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.rename_chat ...'
      end
      # verify the required parameter 'chat_id' is set
      if @api_client.config.client_side_validation && chat_id.nil?
        fail ArgumentError, "Missing the required parameter 'chat_id' when calling AI::ChatApi.rename_chat"
      end
      # verify the required parameter 'rename_chat_body' is set
      if @api_client.config.client_side_validation && rename_chat_body.nil?
        fail ArgumentError, "Missing the required parameter 'rename_chat_body' when calling AI::ChatApi.rename_chat"
      end
      # resource path
      local_var_path = '/api/2.0/ai/chats/{chatId}'.sub('{' + 'chatId' + '}', CGI.escape(chat_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rename_chat_body)

      # return_type
      return_type = opts[:debug_return_type] || 'ChatWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.rename_chat",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#rename_chat\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resolve a pending editor file-generation tool
    # Submits the user's approval or denial for a pending editor generation tool call (docx, form, presentation).  On approval the file is created from the original tool arguments and information about it is returned,  while the suspended chat tool is resumed with the same result so the AI session can continue.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/resolve-editor-tool/
    # @param call_id [String] The unique identifier of the pending tool call awaiting the user's decision.
    # @param editor_tool_decision_request_body [EditorToolDecisionRequestBody] The decision parameters.
    # @param [Hash] opts the optional parameters
    # @return [GeneratedFileWrapper]
    def resolve_editor_tool(call_id, editor_tool_decision_request_body, opts = {})
      data, _status_code, _headers = resolve_editor_tool_with_http_info(call_id, editor_tool_decision_request_body, opts)
      data
    end

    # Resolve a pending editor file-generation tool
    # Submits the user's approval or denial for a pending editor generation tool call (docx, form, presentation).  On approval the file is created from the original tool arguments and information about it is returned,  while the suspended chat tool is resumed with the same result so the AI session can continue.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/resolve-editor-tool/
    # @param call_id [String] The unique identifier of the pending tool call awaiting the user's decision.
    # @param editor_tool_decision_request_body [EditorToolDecisionRequestBody] The decision parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GeneratedFileWrapper, Integer, Hash)>] GeneratedFileWrapper data, response status code and response headers
    def resolve_editor_tool_with_http_info(call_id, editor_tool_decision_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.resolve_editor_tool ...'
      end
      # verify the required parameter 'call_id' is set
      if @api_client.config.client_side_validation && call_id.nil?
        fail ArgumentError, "Missing the required parameter 'call_id' when calling AI::ChatApi.resolve_editor_tool"
      end
      # verify the required parameter 'editor_tool_decision_request_body' is set
      if @api_client.config.client_side_validation && editor_tool_decision_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'editor_tool_decision_request_body' when calling AI::ChatApi.resolve_editor_tool"
      end
      # resource path
      local_var_path = '/api/2.0/ai/chats/tool-files/{callId}/decision'.sub('{' + 'callId' + '}', CGI.escape(call_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(editor_tool_decision_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'GeneratedFileWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.resolve_editor_tool",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#resolve_editor_tool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update user chat settings for a room
    # Saves the current user's personal AI chat preferences for the specified room.  Currently supports toggling the web search capability, which allows the AI assistant to search the internet when generating responses.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-user-chats-settings/
    # @param room_id [Integer] The identifier of the room whose chat settings are to be updated.
    # @param set_user_chat_settings_request_body [SetUserChatSettingsRequestBody] The chat settings to apply.
    # @param [Hash] opts the optional parameters
    # @return [UserChatSettingsWrapper]
    def set_user_chats_settings(room_id, set_user_chat_settings_request_body, opts = {})
      data, _status_code, _headers = set_user_chats_settings_with_http_info(room_id, set_user_chat_settings_request_body, opts)
      data
    end

    # Update user chat settings for a room
    # Saves the current user's personal AI chat preferences for the specified room.  Currently supports toggling the web search capability, which allows the AI assistant to search the internet when generating responses.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-user-chats-settings/
    # @param room_id [Integer] The identifier of the room whose chat settings are to be updated.
    # @param set_user_chat_settings_request_body [SetUserChatSettingsRequestBody] The chat settings to apply.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserChatSettingsWrapper, Integer, Hash)>] UserChatSettingsWrapper data, response status code and response headers
    def set_user_chats_settings_with_http_info(room_id, set_user_chat_settings_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.set_user_chats_settings ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::ChatApi.set_user_chats_settings"
      end
      # verify the required parameter 'set_user_chat_settings_request_body' is set
      if @api_client.config.client_side_validation && set_user_chat_settings_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'set_user_chat_settings_request_body' when calling AI::ChatApi.set_user_chats_settings"
      end
      # resource path
      local_var_path = '/api/2.0/ai/rooms/{roomId}/chats/config'.sub('{' + 'roomId' + '}', CGI.escape(room_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_user_chat_settings_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'UserChatSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.set_user_chats_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#set_user_chats_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start a new AI chat
    # Creates a new AI chat session within the specified room and sends the initial message to the configured AI provider.  The response is delivered as a Server-Sent Events (SSE) stream containing completion chunks (text deltas, tool calls, tool results, and message lifecycle events)  with periodic keep-alive pings every 5 seconds. File references can be included as context for the AI model.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-new-chat/
    # @param room_id [Integer] The identifier of the room in which to create the new AI chat session.
    # @param start_new_chat_body [StartNewChatBody] The initial message and optional file attachments.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def start_new_chat(room_id, start_new_chat_body, opts = {})
      start_new_chat_with_http_info(room_id, start_new_chat_body, opts)
      nil
    end

    # Start a new AI chat
    # Creates a new AI chat session within the specified room and sends the initial message to the configured AI provider.  The response is delivered as a Server-Sent Events (SSE) stream containing completion chunks (text deltas, tool calls, tool results, and message lifecycle events)  with periodic keep-alive pings every 5 seconds. File references can be included as context for the AI model.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-new-chat/
    # @param room_id [Integer] The identifier of the room in which to create the new AI chat session.
    # @param start_new_chat_body [StartNewChatBody] The initial message and optional file attachments.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def start_new_chat_with_http_info(room_id, start_new_chat_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ChatApi.start_new_chat ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::ChatApi.start_new_chat"
      end
      # verify the required parameter 'start_new_chat_body' is set
      if @api_client.config.client_side_validation && start_new_chat_body.nil?
        fail ArgumentError, "Missing the required parameter 'start_new_chat_body' when calling AI::ChatApi.start_new_chat"
      end
      # resource path
      local_var_path = '/api/2.0/ai/rooms/{roomId}/chats'.sub('{' + 'roomId' + '}', CGI.escape(room_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(start_new_chat_body)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ChatApi.start_new_chat",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ChatApi#start_new_chat\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

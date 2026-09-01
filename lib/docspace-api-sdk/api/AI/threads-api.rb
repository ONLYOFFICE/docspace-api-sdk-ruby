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
    class ThreadsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Append user message
    # Persists a user message in a thread and bumps the thread's last-edit date so it resurfaces in the sidebar. Optionally rebinds the thread to another profile when the model changed mid-conversation.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-append-user-message/
    # @param ai_threads_append_user_message_request [AiThreadsAppendUserMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiThreadMessageLike]
    def ai_threads_append_user_message(ai_threads_append_user_message_request, opts = {})
      data, _status_code, _headers = ai_threads_append_user_message_with_http_info(ai_threads_append_user_message_request, opts)
      data
    end

    # Append user message
    # Persists a user message in a thread and bumps the thread's last-edit date so it resurfaces in the sidebar. Optionally rebinds the thread to another profile when the model changed mid-conversation.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-append-user-message/
    # @param ai_threads_append_user_message_request [AiThreadsAppendUserMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiThreadMessageLike, Integer, Hash)>] AiThreadMessageLike data, response status code and response headers
    def ai_threads_append_user_message_with_http_info(ai_threads_append_user_message_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_append_user_message ...'
      end
      # verify the required parameter 'ai_threads_append_user_message_request' is set
      if @api_client.config.client_side_validation && ai_threads_append_user_message_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_threads_append_user_message_request' when calling AI::ThreadsApi.ai_threads_append_user_message"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/append-user-message'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_threads_append_user_message_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiThreadMessageLike'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_append_user_message",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_append_user_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clear messages
    # Drops every message of a thread while keeping the thread itself, and bumps its last-edit date.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-clear-messages/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_threads_clear_messages(body, opts = {})
      data, _status_code, _headers = ai_threads_clear_messages_with_http_info(body, opts)
      data
    end

    # Clear messages
    # Drops every message of a thread while keeping the thread itself, and bumps its last-edit date.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-clear-messages/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_threads_clear_messages_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_clear_messages ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::ThreadsApi.ai_threads_clear_messages"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/clear-messages'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_clear_messages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_clear_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create
    # Creates a chat thread with a caller-supplied title. Use `open-or-create` instead when the title should be generated from the first user message.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-create/
    # @param ai_threads_create_request [AiThreadsCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiThread]
    def ai_threads_create(ai_threads_create_request, opts = {})
      data, _status_code, _headers = ai_threads_create_with_http_info(ai_threads_create_request, opts)
      data
    end

    # Create
    # Creates a chat thread with a caller-supplied title. Use `open-or-create` instead when the title should be generated from the first user message.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-create/
    # @param ai_threads_create_request [AiThreadsCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiThread, Integer, Hash)>] AiThread data, response status code and response headers
    def ai_threads_create_with_http_info(ai_threads_create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_create ...'
      end
      # verify the required parameter 'ai_threads_create_request' is set
      if @api_client.config.client_side_validation && ai_threads_create_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_threads_create_request' when calling AI::ThreadsApi.ai_threads_create"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/create'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_threads_create_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiThread'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete
    # Deletes a chat thread together with its messages.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_threads_delete(body, opts = {})
      data, _status_code, _headers = ai_threads_delete_with_http_info(body, opts)
      data
    end

    # Delete
    # Deletes a chat thread together with its messages.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_threads_delete_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_delete ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::ThreadsApi.ai_threads_delete"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/delete'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete message
    # Deletes one chat message, leaving the rest of the thread untouched.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete-message/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_threads_delete_message(body, opts = {})
      data, _status_code, _headers = ai_threads_delete_message_with_http_info(body, opts)
      data
    end

    # Delete message
    # Deletes one chat message, leaving the rest of the thread untouched.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete-message/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_threads_delete_message_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_delete_message ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::ThreadsApi.ai_threads_delete_message"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/delete-message'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_delete_message",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_delete_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get by id
    # Returns one chat thread, or an empty result when the identifier is unknown.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-by-id/
    # @param thread_id [String] The chat thread identifier.
    # @param [Hash] opts the optional parameters
    # @return [AiThread]
    def ai_threads_get_by_id(thread_id, opts = {})
      data, _status_code, _headers = ai_threads_get_by_id_with_http_info(thread_id, opts)
      data
    end

    # Get by id
    # Returns one chat thread, or an empty result when the identifier is unknown.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-by-id/
    # @param thread_id [String] The chat thread identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiThread, Integer, Hash)>] AiThread data, response status code and response headers
    def ai_threads_get_by_id_with_http_info(thread_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_get_by_id ...'
      end
      # verify the required parameter 'thread_id' is set
      if @api_client.config.client_side_validation && thread_id.nil?
        fail ArgumentError, "Missing the required parameter 'thread_id' when calling AI::ThreadsApi.ai_threads_get_by_id"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/get-by-id'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'threadId'] = thread_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiThread'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_get_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get message by id
    # Returns one chat message by its globally unique identifier.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-message-by-id/
    # @param message_id [String] The globally unique chat message identifier.
    # @param [Hash] opts the optional parameters
    # @return [AiThreadMessageLike]
    def ai_threads_get_message_by_id(message_id, opts = {})
      data, _status_code, _headers = ai_threads_get_message_by_id_with_http_info(message_id, opts)
      data
    end

    # Get message by id
    # Returns one chat message by its globally unique identifier.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-message-by-id/
    # @param message_id [String] The globally unique chat message identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiThreadMessageLike, Integer, Hash)>] AiThreadMessageLike data, response status code and response headers
    def ai_threads_get_message_by_id_with_http_info(message_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_get_message_by_id ...'
      end
      # verify the required parameter 'message_id' is set
      if @api_client.config.client_side_validation && message_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_id' when calling AI::ThreadsApi.ai_threads_get_message_by_id"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/get-message-by-id'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'messageId'] = message_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiThreadMessageLike'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_get_message_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_get_message_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List
    # Lists the chat threads of the scope, most recently edited first. Supports cursor pagination and a server-side case-insensitive title search.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-list/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @option opts [String] :count The maximum number of items to return in one page.
    # @option opts [String] :cursor The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page.
    # @option opts [String] :query The full-text query the thread list is filtered by.
    # @return [Array<AiThread>]
    def ai_threads_list(opts = {})
      data, _status_code, _headers = ai_threads_list_with_http_info(opts)
      data
    end

    # List
    # Lists the chat threads of the scope, most recently edited first. Supports cursor pagination and a server-side case-insensitive title search.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-list/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @option opts [String] :count The maximum number of items to return in one page.
    # @option opts [String] :cursor The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page.
    # @option opts [String] :query The full-text query the thread list is filtered by.
    # @return [Array<(Array<AiThread>, Integer, Hash)>] Array<AiThread> data, response status code and response headers
    def ai_threads_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_list ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/list'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AiThread>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Open or create
    # Opens a chat thread and returns its history, or creates one with a title generated from the supplied first message. That first message is not persisted - the caller decides whether to follow up with `append-user-message`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-open-or-create/
    # @param ai_threads_open_or_create_request [AiThreadsOpenOrCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiOpenOrCreateResult]
    def ai_threads_open_or_create(ai_threads_open_or_create_request, opts = {})
      data, _status_code, _headers = ai_threads_open_or_create_with_http_info(ai_threads_open_or_create_request, opts)
      data
    end

    # Open or create
    # Opens a chat thread and returns its history, or creates one with a title generated from the supplied first message. That first message is not persisted - the caller decides whether to follow up with `append-user-message`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-open-or-create/
    # @param ai_threads_open_or_create_request [AiThreadsOpenOrCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiOpenOrCreateResult, Integer, Hash)>] AiOpenOrCreateResult data, response status code and response headers
    def ai_threads_open_or_create_with_http_info(ai_threads_open_or_create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_open_or_create ...'
      end
      # verify the required parameter 'ai_threads_open_or_create_request' is set
      if @api_client.config.client_side_validation && ai_threads_open_or_create_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_threads_open_or_create_request' when calling AI::ThreadsApi.ai_threads_open_or_create"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/open-or-create'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_threads_open_or_create_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiOpenOrCreateResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_open_or_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_open_or_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read messages
    # Reads the messages of a thread, with the same cursor pagination as the thread list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-read-messages/
    # @param thread_id [String] The chat thread identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :count The maximum number of items to return in one page.
    # @option opts [String] :cursor The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page.
    # @option opts [String] :direction The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read.
    # @return [Array<AiThreadMessageLike>]
    def ai_threads_read_messages(thread_id, opts = {})
      data, _status_code, _headers = ai_threads_read_messages_with_http_info(thread_id, opts)
      data
    end

    # Read messages
    # Reads the messages of a thread, with the same cursor pagination as the thread list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-read-messages/
    # @param thread_id [String] The chat thread identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :count The maximum number of items to return in one page.
    # @option opts [String] :cursor The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page.
    # @option opts [String] :direction The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read.
    # @return [Array<(Array<AiThreadMessageLike>, Integer, Hash)>] Array<AiThreadMessageLike> data, response status code and response headers
    def ai_threads_read_messages_with_http_info(thread_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_read_messages ...'
      end
      # verify the required parameter 'thread_id' is set
      if @api_client.config.client_side_validation && thread_id.nil?
        fail ArgumentError, "Missing the required parameter 'thread_id' when calling AI::ThreadsApi.ai_threads_read_messages"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/read-messages'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'threadId'] = thread_id
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'direction'] = opts[:'direction'] if !opts[:'direction'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AiThreadMessageLike>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_read_messages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_read_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Regenerate title
    # Generates a fresh title from the thread's first user message and persists it. Fails when the thread has no user message yet.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-regenerate-title/
    # @param ai_threads_regenerate_title_request [AiThreadsRegenerateTitleRequest] 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def ai_threads_regenerate_title(ai_threads_regenerate_title_request, opts = {})
      data, _status_code, _headers = ai_threads_regenerate_title_with_http_info(ai_threads_regenerate_title_request, opts)
      data
    end

    # Regenerate title
    # Generates a fresh title from the thread's first user message and persists it. Fails when the thread has no user message yet.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-regenerate-title/
    # @param ai_threads_regenerate_title_request [AiThreadsRegenerateTitleRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def ai_threads_regenerate_title_with_http_info(ai_threads_regenerate_title_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_regenerate_title ...'
      end
      # verify the required parameter 'ai_threads_regenerate_title_request' is set
      if @api_client.config.client_side_validation && ai_threads_regenerate_title_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_threads_regenerate_title_request' when calling AI::ThreadsApi.ai_threads_regenerate_title"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/regenerate-title'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_threads_regenerate_title_request)

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_regenerate_title",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_regenerate_title\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rename
    # Renames a chat thread and bumps its last-edit date so the new title shows up in the sidebar.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-rename/
    # @param ai_threads_rename_request [AiThreadsRenameRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_threads_rename(ai_threads_rename_request, opts = {})
      data, _status_code, _headers = ai_threads_rename_with_http_info(ai_threads_rename_request, opts)
      data
    end

    # Rename
    # Renames a chat thread and bumps its last-edit date so the new title shows up in the sidebar.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-rename/
    # @param ai_threads_rename_request [AiThreadsRenameRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_threads_rename_with_http_info(ai_threads_rename_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_rename ...'
      end
      # verify the required parameter 'ai_threads_rename_request' is set
      if @api_client.config.client_side_validation && ai_threads_rename_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_threads_rename_request' when calling AI::ThreadsApi.ai_threads_rename"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/rename'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_threads_rename_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_rename",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_rename\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Touch
    # Bumps a thread's last-edit date, and optionally rebinds it to another profile, when something other than a new message - a model switch, say - should resurface it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-touch/
    # @param ai_threads_touch_request [AiThreadsTouchRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_threads_touch(ai_threads_touch_request, opts = {})
      data, _status_code, _headers = ai_threads_touch_with_http_info(ai_threads_touch_request, opts)
      data
    end

    # Touch
    # Bumps a thread's last-edit date, and optionally rebinds it to another profile, when something other than a new message - a model switch, say - should resurface it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-touch/
    # @param ai_threads_touch_request [AiThreadsTouchRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_threads_touch_with_http_info(ai_threads_touch_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_touch ...'
      end
      # verify the required parameter 'ai_threads_touch_request' is set
      if @api_client.config.client_side_validation && ai_threads_touch_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_threads_touch_request' when calling AI::ThreadsApi.ai_threads_touch"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/touch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_threads_touch_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_touch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_touch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update message
    # Replaces the content of a chat message - used by the edit and regenerate flows that change a message outside the streaming lifecycle.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-update-message/
    # @param ai_threads_update_message_request [AiThreadsUpdateMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_threads_update_message(ai_threads_update_message_request, opts = {})
      data, _status_code, _headers = ai_threads_update_message_with_http_info(ai_threads_update_message_request, opts)
      data
    end

    # Update message
    # Replaces the content of a chat message - used by the edit and regenerate flows that change a message outside the streaming lifecycle.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-update-message/
    # @param ai_threads_update_message_request [AiThreadsUpdateMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_threads_update_message_with_http_info(ai_threads_update_message_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ThreadsApi.ai_threads_update_message ...'
      end
      # verify the required parameter 'ai_threads_update_message_request' is set
      if @api_client.config.client_side_validation && ai_threads_update_message_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_threads_update_message_request' when calling AI::ThreadsApi.ai_threads_update_message"
      end
      # resource path
      local_var_path = '/api/2.0/ai/threads/update-message'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_threads_update_message_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ThreadsApi.ai_threads_update_message",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ThreadsApi#ai_threads_update_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

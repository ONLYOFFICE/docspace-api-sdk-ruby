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
    # Stores a user message in a thread and bumps its last-edit date so the thread resurfaces at the top of the list. The per-kind attachment cap of the composer is enforced here as well, so a direct API call cannot exceed what the UI allows. Passing `profileId` rebinds the thread to another model, which is how a mid-conversation model switch is recorded. The answer carries the new message's ID; the message is stored as sent and no reply is generated - run a round with `POST api/2.0/ai/ai/send-with-stream` for that.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-append-user-message/
    # @param ai_threads_append_user_message_request [AiThreadsAppendUserMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiThreadsAppendUserMessage200Response]
    def ai_threads_append_user_message(ai_threads_append_user_message_request, opts = {})
      data, _status_code, _headers = ai_threads_append_user_message_with_http_info(ai_threads_append_user_message_request, opts)
      data
    end

    # Append user message
    # Stores a user message in a thread and bumps its last-edit date so the thread resurfaces at the top of the list. The per-kind attachment cap of the composer is enforced here as well, so a direct API call cannot exceed what the UI allows. Passing `profileId` rebinds the thread to another model, which is how a mid-conversation model switch is recorded. The answer carries the new message's ID; the message is stored as sent and no reply is generated - run a round with `POST api/2.0/ai/ai/send-with-stream` for that.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-append-user-message/
    # @param ai_threads_append_user_message_request [AiThreadsAppendUserMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiThreadsAppendUserMessage200Response, Integer, Hash)>] AiThreadsAppendUserMessage200Response data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'AiThreadsAppendUserMessage200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Removes every message of a thread while keeping the thread, its title and its model binding, and bumps its last-edit date. The messages are gone for good. Unlike `delete` this does not verify that the thread exists, so clearing an unknown `threadId` reports success rather than 404. The answer only confirms the write.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-clear-messages/
    # @param body [String] The ID of the thread to empty, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_threads_clear_messages(body, opts = {})
      data, _status_code, _headers = ai_threads_clear_messages_with_http_info(body, opts)
      data
    end

    # Clear messages
    # Removes every message of a thread while keeping the thread, its title and its model binding, and bumps its last-edit date. The messages are gone for good. Unlike `delete` this does not verify that the thread exists, so clearing an unknown `threadId` reports success rather than 404. The answer only confirms the write.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-clear-messages/
    # @param body [String] The ID of the thread to empty, as a bare JSON string.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Create a chat thread
    # Creates a chat thread with a title supplied by the caller and returns it. A scoped thread requires that `entityId` names a room the caller can open, and a model has to resolve for the scope - an explicit `profileId`, or the room's `Chat` assignment - otherwise there is nothing to run the thread against and the call answers 404. In an agent room the agent's own assignment overrides any `profileId` sent with the request, so a thread there always starts on the agent's model. Use `POST api/2.0/ai/threads/open-or-create` instead when the title should be generated from the first user message.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-create/
    # @param ai_threads_create_request [AiThreadsCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiThread]
    def ai_threads_create(ai_threads_create_request, opts = {})
      data, _status_code, _headers = ai_threads_create_with_http_info(ai_threads_create_request, opts)
      data
    end

    # Create a chat thread
    # Creates a chat thread with a title supplied by the caller and returns it. A scoped thread requires that `entityId` names a room the caller can open, and a model has to resolve for the scope - an explicit `profileId`, or the room's `Chat` assignment - otherwise there is nothing to run the thread against and the call answers 404. In an agent room the agent's own assignment overrides any `profileId` sent with the request, so a thread there always starts on the agent's model. Use `POST api/2.0/ai/threads/open-or-create` instead when the title should be generated from the first user message.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Delete a chat thread
    # Deletes a thread together with every message in it. The thread has to exist: unlike the other operations that take a `threadId`, this one checks first and answers 404 for an unknown or already-deleted thread rather than reporting success. The deletion is permanent and the messages cannot be recovered. To empty a thread but keep it, use `DELETE api/2.0/ai/threads/clear-messages`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete/
    # @param body [String] The ID of the thread to delete, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_threads_delete(body, opts = {})
      data, _status_code, _headers = ai_threads_delete_with_http_info(body, opts)
      data
    end

    # Delete a chat thread
    # Deletes a thread together with every message in it. The thread has to exist: unlike the other operations that take a `threadId`, this one checks first and answers 404 for an unknown or already-deleted thread rather than reporting success. The deletion is permanent and the messages cannot be recovered. To empty a thread but keep it, use `DELETE api/2.0/ai/threads/clear-messages`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete/
    # @param body [String] The ID of the thread to delete, as a bare JSON string.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Deletes one message and leaves the rest of the thread untouched. `messageId` is required and may be sent either in the body or as a query parameter. An unknown ID is not reported: the call answers success without having deleted anything, so verify with `GET api/2.0/ai/threads/read-messages` when it matters. The deletion is permanent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete-message/
    # @param body [String] The ID of the message to delete, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_threads_delete_message(body, opts = {})
      data, _status_code, _headers = ai_threads_delete_message_with_http_info(body, opts)
      data
    end

    # Delete message
    # Deletes one message and leaves the rest of the thread untouched. `messageId` is required and may be sent either in the body or as a query parameter. An unknown ID is not reported: the call answers success without having deleted anything, so verify with `GET api/2.0/ai/threads/read-messages` when it matters. The deletion is permanent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete-message/
    # @param body [String] The ID of the message to delete, as a bare JSON string.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Get a chat thread
    # Returns one thread by its ID, without its messages - read those with `GET api/2.0/ai/threads/read-messages`. `threadId` is required and an unknown one answers 404, so the result is never an empty body. The answer carries the thread's title, its model binding and its last-edit date. This is a read-only operation and does not bump that date.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-by-id/
    # @param thread_id [String] The chat thread identifier.
    # @param [Hash] opts the optional parameters
    # @return [AiThread]
    def ai_threads_get_by_id(thread_id, opts = {})
      data, _status_code, _headers = ai_threads_get_by_id_with_http_info(thread_id, opts)
      data
    end

    # Get a chat thread
    # Returns one thread by its ID, without its messages - read those with `GET api/2.0/ai/threads/read-messages`. `threadId` is required and an unknown one answers 404, so the result is never an empty body. The answer carries the thread's title, its model binding and its last-edit date. This is a read-only operation and does not bump that date.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Get one chat message
    # Returns one message by its ID, wherever it sits, without needing the thread it belongs to. `messageId` is required. Unlike `GET api/2.0/ai/threads/get-by-id` an unknown ID is not reported as 404: the answer is an empty body with status 200, so a client has to treat a missing payload as no such message. Message IDs come from the thread history or from the answer of `POST api/2.0/ai/threads/append-user-message`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-message-by-id/
    # @param message_id [String] The globally unique chat message identifier.
    # @param [Hash] opts the optional parameters
    # @return [AiThreadMessageLike]
    def ai_threads_get_message_by_id(message_id, opts = {})
      data, _status_code, _headers = ai_threads_get_message_by_id_with_http_info(message_id, opts)
      data
    end

    # Get one chat message
    # Returns one message by its ID, wherever it sits, without needing the thread it belongs to. `messageId` is required. Unlike `GET api/2.0/ai/threads/get-by-id` an unknown ID is not reported as 404: the answer is an empty body with status 200, so a client has to treat a missing payload as no such message. Message IDs come from the thread history or from the answer of `POST api/2.0/ai/threads/append-user-message`.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # List chat threads
    # Lists the threads of a scope, most recently edited first, and searches their titles case-insensitively when `query` is given. Every parameter is optional: omitting `entityId` lists the global scope, and omitting `count` lets the engine apply its own page size. Pagination is by cursor, and the cursor is a JSON object passed as a string in the query - `{id: <last thread id>, lastEditDate: <its date>}` - taken from the last entry of the previous page. A cursor that is not valid JSON, or that lacks an `id`, is ignored rather than rejected, and the read silently starts from the first page again.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-list/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @option opts [Integer] :count The maximum number of items to return in one page.
    # @option opts [String] :cursor The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page.
    # @option opts [String] :query The full-text query the thread list is filtered by.
    # @return [Array<AiThread>]
    def ai_threads_list(opts = {})
      data, _status_code, _headers = ai_threads_list_with_http_info(opts)
      data
    end

    # List chat threads
    # Lists the threads of a scope, most recently edited first, and searches their titles case-insensitively when `query` is given. Every parameter is optional: omitting `entityId` lists the global scope, and omitting `count` lets the engine apply its own page size. Pagination is by cursor, and the cursor is a JSON object passed as a string in the query - `{id: <last thread id>, lastEditDate: <its date>}` - taken from the last entry of the previous page. A cursor that is not valid JSON, or that lacks an `id`, is ignored rather than rejected, and the read silently starts from the first page again.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-list/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @option opts [Integer] :count The maximum number of items to return in one page.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Opens a chat thread and returns it with its history, or creates one whose title is generated from the first message supplied in the request. That first message is not persisted: follow up with `POST api/2.0/ai/threads/append-user-message` to store it, or start the round directly with `POST api/2.0/ai/ai/send-with-stream`. Unlike `create` this takes a whole resolved `profile` object rather than an ID, and a request without one answers 404 because no model could be bound. A supplied `entityId` has to be a room the caller can open; anything that is not an agent room folds to the global scope instead of being rejected.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-open-or-create/
    # @param ai_threads_open_or_create_request [AiThreadsOpenOrCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiOpenOrCreateResult]
    def ai_threads_open_or_create(ai_threads_open_or_create_request, opts = {})
      data, _status_code, _headers = ai_threads_open_or_create_with_http_info(ai_threads_open_or_create_request, opts)
      data
    end

    # Open or create
    # Opens a chat thread and returns it with its history, or creates one whose title is generated from the first message supplied in the request. That first message is not persisted: follow up with `POST api/2.0/ai/threads/append-user-message` to store it, or start the round directly with `POST api/2.0/ai/ai/send-with-stream`. Unlike `create` this takes a whole resolved `profile` object rather than an ID, and a request without one answers 404 because no model could be bound. A supplied `entityId` has to be a room the caller can open; anything that is not an agent room folds to the global scope instead of being rejected.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Reads the messages of one thread, oldest first, with the same string-encoded JSON cursor as the thread list. `direction` turns the read around, and only the exact value `desc` does so - anything else, including a misspelling, reads forward. Omitting `threadId` is not an error: the call answers 200 with an empty list, so an empty result does not distinguish a thread with no messages from a request that forgot the ID. A malformed cursor is ignored and the read starts from the beginning.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-read-messages/
    # @param thread_id [String] The chat thread identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The maximum number of items to return in one page.
    # @option opts [String] :cursor The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page.
    # @option opts [String] :direction The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read.
    # @return [Array<AiThreadMessageLike>]
    def ai_threads_read_messages(thread_id, opts = {})
      data, _status_code, _headers = ai_threads_read_messages_with_http_info(thread_id, opts)
      data
    end

    # Read messages
    # Reads the messages of one thread, oldest first, with the same string-encoded JSON cursor as the thread list. `direction` turns the read around, and only the exact value `desc` does so - anything else, including a misspelling, reads forward. Omitting `threadId` is not an error: the call answers 200 with an empty list, so an empty result does not distinguish a thread with no messages from a request that forgot the ID. A malformed cursor is ignored and the read starts from the beginning.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-read-messages/
    # @param thread_id [String] The chat thread identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The maximum number of items to return in one page.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Asks the model to produce a title from the thread's first user message, stores it, and returns the new title. Both `threadId` and a resolved `profile` object are required; a thread with no user message yet has nothing to title and fails. This costs a model call, unlike `POST api/2.0/ai/threads/rename`, which just stores the string it is given. An `entityMeta` sent with the request is only read for its `entityId` hint - the source itself is resolved server-side under the caller's credentials, so a client cannot attribute the call to somebody else's room.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-regenerate-title/
    # @param ai_threads_regenerate_title_request [AiThreadsRegenerateTitleRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiThreadsRegenerateTitle200Response]
    def ai_threads_regenerate_title(ai_threads_regenerate_title_request, opts = {})
      data, _status_code, _headers = ai_threads_regenerate_title_with_http_info(ai_threads_regenerate_title_request, opts)
      data
    end

    # Regenerate title
    # Asks the model to produce a title from the thread's first user message, stores it, and returns the new title. Both `threadId` and a resolved `profile` object are required; a thread with no user message yet has nothing to title and fails. This costs a model call, unlike `POST api/2.0/ai/threads/rename`, which just stores the string it is given. An `entityMeta` sent with the request is only read for its `entityId` hint - the source itself is resolved server-side under the caller's credentials, so a client cannot attribute the call to somebody else's room.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-regenerate-title/
    # @param ai_threads_regenerate_title_request [AiThreadsRegenerateTitleRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiThreadsRegenerateTitle200Response, Integer, Hash)>] AiThreadsRegenerateTitle200Response data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'AiThreadsRegenerateTitle200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Rename a chat thread
    # Replaces a thread's title with the one supplied and bumps its last-edit date. Both `threadId` and a title with at least one non-whitespace character are required - a blank title is rejected rather than silently stored, so a thread cannot end up nameless. The answer only confirms the write. To have the model produce a title instead of supplying one, use `POST api/2.0/ai/threads/regenerate-title`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-rename/
    # @param ai_threads_rename_request [AiThreadsRenameRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_threads_rename(ai_threads_rename_request, opts = {})
      data, _status_code, _headers = ai_threads_rename_with_http_info(ai_threads_rename_request, opts)
      data
    end

    # Rename a chat thread
    # Replaces a thread's title with the one supplied and bumps its last-edit date. Both `threadId` and a title with at least one non-whitespace character are required - a blank title is rejected rather than silently stored, so a thread cannot end up nameless. The answer only confirms the write. To have the model produce a title instead of supplying one, use `POST api/2.0/ai/threads/regenerate-title`.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Bump a thread's activity
    # Bumps a thread's last-edit date without adding a message, which resurfaces it in the list. Passing `profileId` also rebinds the thread to another model, so this is the operation to call when a model switch alone should count as activity. Nothing else about the thread changes and the answer only confirms the write. It is idempotent: repeating it simply moves the date forward again.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-touch/
    # @param ai_threads_touch_request [AiThreadsTouchRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_threads_touch(ai_threads_touch_request, opts = {})
      data, _status_code, _headers = ai_threads_touch_with_http_info(ai_threads_touch_request, opts)
      data
    end

    # Bump a thread's activity
    # Bumps a thread's last-edit date without adding a message, which resurfaces it in the list. Passing `profileId` also rebinds the thread to another model, so this is the operation to call when a model switch alone should count as activity. Nothing else about the thread changes and the answer only confirms the write. It is idempotent: repeating it simply moves the date forward again.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Replaces the content of one stored message, which is how the edit and regenerate flows change a message outside the streaming lifecycle. The whole message is overwritten by the one supplied rather than merged, so send a complete object. Neither the ID nor the payload is validated here, so a malformed request surfaces as an error relayed from storage rather than as a 400. The answer only confirms the write.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-update-message/
    # @param ai_threads_update_message_request [AiThreadsUpdateMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_threads_update_message(ai_threads_update_message_request, opts = {})
      data, _status_code, _headers = ai_threads_update_message_with_http_info(ai_threads_update_message_request, opts)
      data
    end

    # Update message
    # Replaces the content of one stored message, which is how the edit and regenerate flows change a message outside the streaming lifecycle. The whole message is overwritten by the one supplied rather than merged, so send a complete object. Neither the ID nor the payload is validated here, so a malformed request surfaces as an error relayed from storage rather than as a 400. The answer only confirms the write.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

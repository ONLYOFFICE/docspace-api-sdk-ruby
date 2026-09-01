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
    class AIApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Approve tool call
    # Resumes a chat round paused on a tool call. The supplied result is persisted onto the assistant message that issued the call and the stream continues with the augmented history.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-approve-tool-call/
    # @param ai_ai_approve_tool_call_request [AiAiApproveToolCallRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiChatEvent]
    def ai_ai_approve_tool_call(ai_ai_approve_tool_call_request, opts = {})
      data, _status_code, _headers = ai_ai_approve_tool_call_with_http_info(ai_ai_approve_tool_call_request, opts)
      data
    end

    # Approve tool call
    # Resumes a chat round paused on a tool call. The supplied result is persisted onto the assistant message that issued the call and the stream continues with the augmented history.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-approve-tool-call/
    # @param ai_ai_approve_tool_call_request [AiAiApproveToolCallRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiChatEvent, Integer, Hash)>] AiChatEvent data, response status code and response headers
    def ai_ai_approve_tool_call_with_http_info(ai_ai_approve_tool_call_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AIApi.ai_ai_approve_tool_call ...'
      end
      # verify the required parameter 'ai_ai_approve_tool_call_request' is set
      if @api_client.config.client_side_validation && ai_ai_approve_tool_call_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_ai_approve_tool_call_request' when calling AI::AIApi.ai_ai_approve_tool_call"
      end
      # resource path
      local_var_path = '/api/2.0/ai/ai/approve-tool-call'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/x-ndjson', 'application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_ai_approve_tool_call_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiChatEvent'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::AIApi.ai_ai_approve_tool_call",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AIApi#ai_ai_approve_tool_call\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deny tool call
    # Denies the pending tool call and resumes the chat immediately, with `User deny tool call` standing in for the tool result.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-deny-tool-call/
    # @param ai_ai_tool_call_data [AiAiToolCallData] 
    # @param [Hash] opts the optional parameters
    # @return [AiChatEvent]
    def ai_ai_deny_tool_call(ai_ai_tool_call_data, opts = {})
      data, _status_code, _headers = ai_ai_deny_tool_call_with_http_info(ai_ai_tool_call_data, opts)
      data
    end

    # Deny tool call
    # Denies the pending tool call and resumes the chat immediately, with `User deny tool call` standing in for the tool result.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-deny-tool-call/
    # @param ai_ai_tool_call_data [AiAiToolCallData] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiChatEvent, Integer, Hash)>] AiChatEvent data, response status code and response headers
    def ai_ai_deny_tool_call_with_http_info(ai_ai_tool_call_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AIApi.ai_ai_deny_tool_call ...'
      end
      # verify the required parameter 'ai_ai_tool_call_data' is set
      if @api_client.config.client_side_validation && ai_ai_tool_call_data.nil?
        fail ArgumentError, "Missing the required parameter 'ai_ai_tool_call_data' when calling AI::AIApi.ai_ai_deny_tool_call"
      end
      # resource path
      local_var_path = '/api/2.0/ai/ai/deny-tool-call'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/x-ndjson', 'application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_ai_tool_call_data)

      # return_type
      return_type = opts[:debug_return_type] || 'AiChatEvent'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::AIApi.ai_ai_deny_tool_call",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AIApi#ai_ai_deny_tool_call\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Regenerate stream
    # Re-rolls the last assistant reply in an existing thread: every message after the last user message (the previous reply plus any tool-call hops) is dropped and a fresh reply is streamed against the unchanged prompt. The thread must already exist and no title is generated.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-regenerate-stream/
    # @param ai_ai_regenerate_stream_request [AiAiRegenerateStreamRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiChatEvent]
    def ai_ai_regenerate_stream(ai_ai_regenerate_stream_request, opts = {})
      data, _status_code, _headers = ai_ai_regenerate_stream_with_http_info(ai_ai_regenerate_stream_request, opts)
      data
    end

    # Regenerate stream
    # Re-rolls the last assistant reply in an existing thread: every message after the last user message (the previous reply plus any tool-call hops) is dropped and a fresh reply is streamed against the unchanged prompt. The thread must already exist and no title is generated.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-regenerate-stream/
    # @param ai_ai_regenerate_stream_request [AiAiRegenerateStreamRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiChatEvent, Integer, Hash)>] AiChatEvent data, response status code and response headers
    def ai_ai_regenerate_stream_with_http_info(ai_ai_regenerate_stream_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AIApi.ai_ai_regenerate_stream ...'
      end
      # verify the required parameter 'ai_ai_regenerate_stream_request' is set
      if @api_client.config.client_side_validation && ai_ai_regenerate_stream_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_ai_regenerate_stream_request' when calling AI::AIApi.ai_ai_regenerate_stream"
      end
      # resource path
      local_var_path = '/api/2.0/ai/ai/regenerate-stream'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/x-ndjson', 'application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_ai_regenerate_stream_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiChatEvent'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::AIApi.ai_ai_regenerate_stream",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AIApi#ai_ai_regenerate_stream\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send
    # Runs one AI action: the profile bound to `actionType` (falling back to the `Default` slot) is dispatched against a single-message history. Nothing is persisted - no thread, no title generation, no storage writes.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send/
    # @param ai_ai_send_request [AiAiSendRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiThreadMessageLike]
    def ai_ai_send(ai_ai_send_request, opts = {})
      data, _status_code, _headers = ai_ai_send_with_http_info(ai_ai_send_request, opts)
      data
    end

    # Send
    # Runs one AI action: the profile bound to `actionType` (falling back to the `Default` slot) is dispatched against a single-message history. Nothing is persisted - no thread, no title generation, no storage writes.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send/
    # @param ai_ai_send_request [AiAiSendRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiThreadMessageLike, Integer, Hash)>] AiThreadMessageLike data, response status code and response headers
    def ai_ai_send_with_http_info(ai_ai_send_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AIApi.ai_ai_send ...'
      end
      # verify the required parameter 'ai_ai_send_request' is set
      if @api_client.config.client_side_validation && ai_ai_send_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_ai_send_request' when calling AI::AIApi.ai_ai_send"
      end
      # resource path
      local_var_path = '/api/2.0/ai/ai/send'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_ai_send_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiThreadMessageLike'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::AIApi.ai_ai_send",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AIApi#ai_ai_send\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send custom
    # Runs a free-form one-turn call against a caller-supplied system prompt. No thread, no history and no persistence. The profile is the explicit `profileId` when it resolves, otherwise the `Default` assignment slot.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-custom/
    # @param ai_ai_send_custom_request [AiAiSendCustomRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiThreadMessageLike]
    def ai_ai_send_custom(ai_ai_send_custom_request, opts = {})
      data, _status_code, _headers = ai_ai_send_custom_with_http_info(ai_ai_send_custom_request, opts)
      data
    end

    # Send custom
    # Runs a free-form one-turn call against a caller-supplied system prompt. No thread, no history and no persistence. The profile is the explicit `profileId` when it resolves, otherwise the `Default` assignment slot.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-custom/
    # @param ai_ai_send_custom_request [AiAiSendCustomRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiThreadMessageLike, Integer, Hash)>] AiThreadMessageLike data, response status code and response headers
    def ai_ai_send_custom_with_http_info(ai_ai_send_custom_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AIApi.ai_ai_send_custom ...'
      end
      # verify the required parameter 'ai_ai_send_custom_request' is set
      if @api_client.config.client_side_validation && ai_ai_send_custom_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_ai_send_custom_request' when calling AI::AIApi.ai_ai_send_custom"
      end
      # resource path
      local_var_path = '/api/2.0/ai/ai/send-custom'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_ai_send_custom_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiThreadMessageLike'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::AIApi.ai_ai_send_custom",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AIApi#ai_ai_send_custom\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send with stream
    # Starts a chat round and streams it back as newline-delimited `ChatEvent` objects. The thread is opened or created, the user message and the reply are persisted, a new thread gets a generated title, and a tool call pauses the round until it is approved or denied.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream/
    # @param ai_ai_send_stream_body [AiAiSendStreamBody] 
    # @param [Hash] opts the optional parameters
    # @return [AiChatEvent]
    def ai_ai_send_with_stream(ai_ai_send_stream_body, opts = {})
      data, _status_code, _headers = ai_ai_send_with_stream_with_http_info(ai_ai_send_stream_body, opts)
      data
    end

    # Send with stream
    # Starts a chat round and streams it back as newline-delimited `ChatEvent` objects. The thread is opened or created, the user message and the reply are persisted, a new thread gets a generated title, and a tool call pauses the round until it is approved or denied.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream/
    # @param ai_ai_send_stream_body [AiAiSendStreamBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiChatEvent, Integer, Hash)>] AiChatEvent data, response status code and response headers
    def ai_ai_send_with_stream_with_http_info(ai_ai_send_stream_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AIApi.ai_ai_send_with_stream ...'
      end
      # verify the required parameter 'ai_ai_send_stream_body' is set
      if @api_client.config.client_side_validation && ai_ai_send_stream_body.nil?
        fail ArgumentError, "Missing the required parameter 'ai_ai_send_stream_body' when calling AI::AIApi.ai_ai_send_with_stream"
      end
      # resource path
      local_var_path = '/api/2.0/ai/ai/send-with-stream'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/x-ndjson', 'application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_ai_send_stream_body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiChatEvent'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::AIApi.ai_ai_send_with_stream",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AIApi#ai_ai_send_with_stream\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send with stream open ai
    # The same chat round as `send-with-stream`, re-encoded as an OpenAI Chat Completions stream of `chat.completion.chunk` objects. Storage, title generation and tool-call pauses are identical - only the wire shape differs; a tool call ends the stream with `finish_reason: tool_calls`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream-open-ai/
    # @param ai_ai_send_stream_body [AiAiSendStreamBody] 
    # @param [Hash] opts the optional parameters
    # @return [AiOpenAIStreamChunk]
    def ai_ai_send_with_stream_open_ai(ai_ai_send_stream_body, opts = {})
      data, _status_code, _headers = ai_ai_send_with_stream_open_ai_with_http_info(ai_ai_send_stream_body, opts)
      data
    end

    # Send with stream open ai
    # The same chat round as `send-with-stream`, re-encoded as an OpenAI Chat Completions stream of `chat.completion.chunk` objects. Storage, title generation and tool-call pauses are identical - only the wire shape differs; a tool call ends the stream with `finish_reason: tool_calls`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream-open-ai/
    # @param ai_ai_send_stream_body [AiAiSendStreamBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiOpenAIStreamChunk, Integer, Hash)>] AiOpenAIStreamChunk data, response status code and response headers
    def ai_ai_send_with_stream_open_ai_with_http_info(ai_ai_send_stream_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AIApi.ai_ai_send_with_stream_open_ai ...'
      end
      # verify the required parameter 'ai_ai_send_stream_body' is set
      if @api_client.config.client_side_validation && ai_ai_send_stream_body.nil?
        fail ArgumentError, "Missing the required parameter 'ai_ai_send_stream_body' when calling AI::AIApi.ai_ai_send_with_stream_open_ai"
      end
      # resource path
      local_var_path = '/api/2.0/ai/ai/send-with-stream-openai'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/event-stream', 'application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_ai_send_stream_body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiOpenAIStreamChunk'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::AIApi.ai_ai_send_with_stream_open_ai",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AIApi#ai_ai_send_with_stream_open_ai\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

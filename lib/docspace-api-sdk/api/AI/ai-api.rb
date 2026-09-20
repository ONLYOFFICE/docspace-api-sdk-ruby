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
    # Resumes a chat round that a tool call has paused, and streams the continuation as newline-delimited `ChatEvent` objects. The result supplied in the request is persisted onto the assistant message that issued the call, so the tool is not executed here - the caller runs it and reports the outcome. The round continues against the augmented history and may pause again on a further tool call. Call `POST api/2.0/ai/ai/deny-tool-call` instead to refuse the call and let the model answer without it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-approve-tool-call/
    # @param ai_ai_approve_tool_call_request [AiAiApproveToolCallRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiChatEvent]
    def ai_ai_approve_tool_call(ai_ai_approve_tool_call_request, opts = {})
      data, _status_code, _headers = ai_ai_approve_tool_call_with_http_info(ai_ai_approve_tool_call_request, opts)
      data
    end

    # Approve tool call
    # Resumes a chat round that a tool call has paused, and streams the continuation as newline-delimited `ChatEvent` objects. The result supplied in the request is persisted onto the assistant message that issued the call, so the tool is not executed here - the caller runs it and reports the outcome. The round continues against the augmented history and may pause again on a further tool call. Call `POST api/2.0/ai/ai/deny-tool-call` instead to refuse the call and let the model answer without it.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Refuses the tool call a chat round is paused on and resumes it immediately, streaming the continuation as newline-delimited `ChatEvent` objects. The literal `User deny tool call` is persisted in place of the tool result, so the model sees an explicit refusal rather than a missing answer and may reply without the tool or ask for something else. Nothing is executed and no result is accepted from the caller. Use `POST api/2.0/ai/ai/approve-tool-call` to supply a result instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-deny-tool-call/
    # @param ai_ai_tool_call_data [AiAiToolCallData] 
    # @param [Hash] opts the optional parameters
    # @return [AiChatEvent]
    def ai_ai_deny_tool_call(ai_ai_tool_call_data, opts = {})
      data, _status_code, _headers = ai_ai_deny_tool_call_with_http_info(ai_ai_tool_call_data, opts)
      data
    end

    # Deny tool call
    # Refuses the tool call a chat round is paused on and resumes it immediately, streaming the continuation as newline-delimited `ChatEvent` objects. The literal `User deny tool call` is persisted in place of the tool result, so the model sees an explicit refusal rather than a missing answer and may reply without the tool or ask for something else. Nothing is executed and no result is accepted from the caller. Use `POST api/2.0/ai/ai/approve-tool-call` to supply a result instead.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Re-rolls the last assistant reply of an existing thread: every message after the last user message - the previous reply and any tool-call hops - is dropped, and a fresh reply is streamed as newline-delimited `ChatEvent` objects against the unchanged prompt. The thread has to exist already, `threadId` is required, and no title is generated. The dropped messages are gone for good, so this is a destructive operation on the thread's tail rather than a retry that keeps both answers. Unlike `send-with-stream` the profile is not verified before the stream opens, so an unusable model surfaces as an error frame inside the 200 rather than as a 4xx.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-regenerate-stream/
    # @param ai_ai_regenerate_stream_request [AiAiRegenerateStreamRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiChatEvent]
    def ai_ai_regenerate_stream(ai_ai_regenerate_stream_request, opts = {})
      data, _status_code, _headers = ai_ai_regenerate_stream_with_http_info(ai_ai_regenerate_stream_request, opts)
      data
    end

    # Regenerate stream
    # Re-rolls the last assistant reply of an existing thread: every message after the last user message - the previous reply and any tool-call hops - is dropped, and a fresh reply is streamed as newline-delimited `ChatEvent` objects against the unchanged prompt. The thread has to exist already, `threadId` is required, and no title is generated. The dropped messages are gone for good, so this is a destructive operation on the thread's tail rather than a retry that keeps both answers. Unlike `send-with-stream` the profile is not verified before the stream opens, so an unusable model surfaces as an error frame inside the 200 rather than as a 4xx.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Run an AI action
    # Runs one AI action and returns the whole answer as a single JSON document. The model is the profile bound to `actionType`, falling back to the `Default` assignment slot, so this operation accepts no `profileId` of its own. Nothing is persisted - no thread is opened, no message is stored and no title is generated - which makes it the one to use for a stand-alone completion rather than for a conversation. `entityId` and `contextEntityId` set the scope of the round, which decides the workspace context and the custom MCP servers it may reach. For a conversation that keeps its history, use `POST api/2.0/ai/ai/send-with-stream` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send/
    # @param ai_ai_send_request [AiAiSendRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiThreadMessageLike]
    def ai_ai_send(ai_ai_send_request, opts = {})
      data, _status_code, _headers = ai_ai_send_with_http_info(ai_ai_send_request, opts)
      data
    end

    # Run an AI action
    # Runs one AI action and returns the whole answer as a single JSON document. The model is the profile bound to `actionType`, falling back to the `Default` assignment slot, so this operation accepts no `profileId` of its own. Nothing is persisted - no thread is opened, no message is stored and no title is generated - which makes it the one to use for a stand-alone completion rather than for a conversation. `entityId` and `contextEntityId` set the scope of the round, which decides the workspace context and the custom MCP servers it may reach. For a conversation that keeps its history, use `POST api/2.0/ai/ai/send-with-stream` instead.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Runs a free-form one-turn call against a system prompt supplied in the request, with no thread, no history and nothing persisted. The model is the explicit `profileId` when it resolves, otherwise the `Default` assignment slot. The shape of the answer depends on the body rather than on the route: with `isStream` set it arrives as a newline-delimited stream of chat events, and without it as a single JSON document, so a client has to handle both. Use `POST api/2.0/ai/ai/send` when the prompt should come from the portal's own action configuration instead of from the caller.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-custom/
    # @param ai_ai_send_custom_request [AiAiSendCustomRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiThreadMessageLike]
    def ai_ai_send_custom(ai_ai_send_custom_request, opts = {})
      data, _status_code, _headers = ai_ai_send_custom_with_http_info(ai_ai_send_custom_request, opts)
      data
    end

    # Send custom
    # Runs a free-form one-turn call against a system prompt supplied in the request, with no thread, no history and nothing persisted. The model is the explicit `profileId` when it resolves, otherwise the `Default` assignment slot. The shape of the answer depends on the body rather than on the route: with `isStream` set it arrives as a newline-delimited stream of chat events, and without it as a single JSON document, so a client has to handle both. Use `POST api/2.0/ai/ai/send` when the prompt should come from the portal's own action configuration instead of from the caller.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Runs one chat round and streams it back as newline-delimited `ChatEvent` objects. Omitting `threadId` opens a new thread, which requires that `entityId` names a room the caller can open and that a profile resolves for it; the user message and the reply are persisted either way, and a new thread also gets a generated title. The model is settled in a fixed order - an agent's assignment in scope overrides everything, then the explicit `profileId`, then the one stored on the thread, then the `Chat` assignment - and the effective profile is checked before the stream opens, so an unknown one fails with 400 rather than as an error buried in a 200. A tool call pauses the round and ends the stream; resume it with `POST api/2.0/ai/ai/approve-tool-call` or `POST api/2.0/ai/ai/deny-tool-call`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream/
    # @param ai_ai_send_stream_body [AiAiSendStreamBody] 
    # @param [Hash] opts the optional parameters
    # @return [AiChatEvent]
    def ai_ai_send_with_stream(ai_ai_send_stream_body, opts = {})
      data, _status_code, _headers = ai_ai_send_with_stream_with_http_info(ai_ai_send_stream_body, opts)
      data
    end

    # Send with stream
    # Runs one chat round and streams it back as newline-delimited `ChatEvent` objects. Omitting `threadId` opens a new thread, which requires that `entityId` names a room the caller can open and that a profile resolves for it; the user message and the reply are persisted either way, and a new thread also gets a generated title. The model is settled in a fixed order - an agent's assignment in scope overrides everything, then the explicit `profileId`, then the one stored on the thread, then the `Chat` assignment - and the effective profile is checked before the stream opens, so an unknown one fails with 400 rather than as an error buried in a 200. A tool call pauses the round and ends the stream; resume it with `POST api/2.0/ai/ai/approve-tool-call` or `POST api/2.0/ai/ai/deny-tool-call`.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Stream a chat in OpenAI format
    # The same chat round as `send-with-stream`, re-encoded as a server-sent-events stream of OpenAI `chat.completion.chunk` objects terminated by a `[DONE]` sentinel. Thread handling, persistence, title generation and the profile pre-flight are identical, and a tool call ends the stream with `finish_reason: tool_calls` instead of a pause event - resume it through the same approve and deny operations. Unlike `send-with-stream` it does not reject an empty user message and does not enforce the per-kind attachment cap, so validate both before calling. Choose this route only for a client that already speaks the OpenAI wire format; `POST api/2.0/ai/ai/send-with-stream` is the native one.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream-open-ai/
    # @param ai_ai_send_stream_body [AiAiSendStreamBody] 
    # @param [Hash] opts the optional parameters
    # @return [AiOpenAIStreamChunk]
    def ai_ai_send_with_stream_open_ai(ai_ai_send_stream_body, opts = {})
      data, _status_code, _headers = ai_ai_send_with_stream_open_ai_with_http_info(ai_ai_send_stream_body, opts)
      data
    end

    # Stream a chat in OpenAI format
    # The same chat round as `send-with-stream`, re-encoded as a server-sent-events stream of OpenAI `chat.completion.chunk` objects terminated by a `[DONE]` sentinel. Thread handling, persistence, title generation and the profile pre-flight are identical, and a tool call ends the stream with `finish_reason: tool_calls` instead of a pause event - resume it through the same approve and deny operations. Unlike `send-with-stream` it does not reject an empty user message and does not enforce the per-kind attachment cap, so validate both before calling. Choose this route only for a client that already speaks the OpenAI wire format; `POST api/2.0/ai/ai/send-with-stream` is the native one.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

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
    class OpenAIPassthroughApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # OpenAI-compatible chat completions proxied to the profile's provider
    # OpenAI-compatible chat completions for the document editor's AI plugin. The profile is resolved server-side, its credentials are attached, and the body is forwarded to the provider verbatim - the payload is owned by the plugin's SDK on one end and the provider on the other. A client disconnect cancels the provider call.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-chat-completions/
    # @param profile_id [String] The AI provider profile identifier.
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_openai_chat_completions(profile_id, request_body, opts = {})
      data, _status_code, _headers = ai_openai_chat_completions_with_http_info(profile_id, request_body, opts)
      data
    end

    # OpenAI-compatible chat completions proxied to the profile's provider
    # OpenAI-compatible chat completions for the document editor's AI plugin. The profile is resolved server-side, its credentials are attached, and the body is forwarded to the provider verbatim - the payload is owned by the plugin's SDK on one end and the provider on the other. A client disconnect cancels the provider call.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-chat-completions/
    # @param profile_id [String] The AI provider profile identifier.
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_openai_chat_completions_with_http_info(profile_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::OpenAIPassthroughApi.ai_openai_chat_completions ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling AI::OpenAIPassthroughApi.ai_openai_chat_completions"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling AI::OpenAIPassthroughApi.ai_openai_chat_completions"
      end
      # resource path
      local_var_path = '/api/2.0/ai/openai/{profileId}/v1/chat/completions'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::OpenAIPassthroughApi.ai_openai_chat_completions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::OpenAIPassthroughApi#ai_openai_chat_completions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # OpenAI-compatible image generation proxied to the profile's provider
    # OpenAI-compatible image generation for the document editor's AI plugin. As with the chat-completions passthrough, the profile's credentials are attached server-side and the body reaches the provider unchanged.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-images-generations/
    # @param profile_id [String] The AI provider profile identifier.
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_openai_images_generations(profile_id, request_body, opts = {})
      data, _status_code, _headers = ai_openai_images_generations_with_http_info(profile_id, request_body, opts)
      data
    end

    # OpenAI-compatible image generation proxied to the profile's provider
    # OpenAI-compatible image generation for the document editor's AI plugin. As with the chat-completions passthrough, the profile's credentials are attached server-side and the body reaches the provider unchanged.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-images-generations/
    # @param profile_id [String] The AI provider profile identifier.
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_openai_images_generations_with_http_info(profile_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::OpenAIPassthroughApi.ai_openai_images_generations ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling AI::OpenAIPassthroughApi.ai_openai_images_generations"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling AI::OpenAIPassthroughApi.ai_openai_images_generations"
      end
      # resource path
      local_var_path = '/api/2.0/ai/openai/{profileId}/v1/images/generations'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::OpenAIPassthroughApi.ai_openai_images_generations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::OpenAIPassthroughApi#ai_openai_images_generations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

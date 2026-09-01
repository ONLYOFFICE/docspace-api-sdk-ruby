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
    class VectorizationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Start a vectorization task
    # Starts a vectorization task over the supplied portal files. The indexing itself runs asynchronously on the .NET side.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-vectorization-start-task/
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_vectorization_start_task(request_body, opts = {})
      data, _status_code, _headers = ai_vectorization_start_task_with_http_info(request_body, opts)
      data
    end

    # Start a vectorization task
    # Starts a vectorization task over the supplied portal files. The indexing itself runs asynchronously on the .NET side.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-vectorization-start-task/
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_vectorization_start_task_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::VectorizationApi.ai_vectorization_start_task ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling AI::VectorizationApi.ai_vectorization_start_task"
      end
      # resource path
      local_var_path = '/api/2.0/ai/vectorization/tasks'

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
        :operation => :"AI::VectorizationApi.ai_vectorization_start_task",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::VectorizationApi#ai_vectorization_start_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

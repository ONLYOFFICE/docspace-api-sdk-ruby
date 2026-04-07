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
    # Submits the specified files for vectorization. Each file is processed asynchronously by the configured embedding provider  and indexed for semantic search in AI chat sessions. Only files accessible to the current user can be vectorized.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-task/
    # @param vectorization_start_request_body [VectorizationStartRequestBody] The vectorization parameters including file identifiers.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def start_task(vectorization_start_request_body, opts = {})
      start_task_with_http_info(vectorization_start_request_body, opts)
      nil
    end

    # Start a vectorization task
    # Submits the specified files for vectorization. Each file is processed asynchronously by the configured embedding provider  and indexed for semantic search in AI chat sessions. Only files accessible to the current user can be vectorized.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-task/
    # @param vectorization_start_request_body [VectorizationStartRequestBody] The vectorization parameters including file identifiers.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def start_task_with_http_info(vectorization_start_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::VectorizationApi.start_task ...'
      end
      # verify the required parameter 'vectorization_start_request_body' is set
      if @api_client.config.client_side_validation && vectorization_start_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'vectorization_start_request_body' when calling AI::VectorizationApi.start_task"
      end
      # resource path
      local_var_path = '/api/2.0/ai/vectorization/tasks'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(vectorization_start_request_body)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::VectorizationApi.start_task",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::VectorizationApi#start_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

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
    # Queues the indexing of the portal files named in the body so their contents can be retrieved during a chat round. The body is proxied unchanged to the DocSpace AI service, which validates it and owns the job. Indexing is asynchronous and fire-and-forget: the answer acknowledges the request without carrying a job handle, so there is nothing to poll and progress is not reported here. The embedding provider used is the one in `GET api/2.0/ai/config/vectorization`, and changing that setting does not re-index anything already indexed - queue it again for that.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-vectorization-start-task/
    # @param ai_vectorization_start_task_request [AiVectorizationStartTaskRequest] The files to index, proxied unchanged to the DocSpace AI service, which owns and validates the shape.
    # @param [Hash] opts the optional parameters
    # @return [AiVectorizationStartTask200Response]
    def ai_vectorization_start_task(ai_vectorization_start_task_request, opts = {})
      data, _status_code, _headers = ai_vectorization_start_task_with_http_info(ai_vectorization_start_task_request, opts)
      data
    end

    # Start a vectorization task
    # Queues the indexing of the portal files named in the body so their contents can be retrieved during a chat round. The body is proxied unchanged to the DocSpace AI service, which validates it and owns the job. Indexing is asynchronous and fire-and-forget: the answer acknowledges the request without carrying a job handle, so there is nothing to poll and progress is not reported here. The embedding provider used is the one in `GET api/2.0/ai/config/vectorization`, and changing that setting does not re-index anything already indexed - queue it again for that.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-vectorization-start-task/
    # @param ai_vectorization_start_task_request [AiVectorizationStartTaskRequest] The files to index, proxied unchanged to the DocSpace AI service, which owns and validates the shape.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiVectorizationStartTask200Response, Integer, Hash)>] AiVectorizationStartTask200Response data, response status code and response headers
    def ai_vectorization_start_task_with_http_info(ai_vectorization_start_task_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::VectorizationApi.ai_vectorization_start_task ...'
      end
      # verify the required parameter 'ai_vectorization_start_task_request' is set
      if @api_client.config.client_side_validation && ai_vectorization_start_task_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_vectorization_start_task_request' when calling AI::VectorizationApi.ai_vectorization_start_task"
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_vectorization_start_task_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiVectorizationStartTask200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

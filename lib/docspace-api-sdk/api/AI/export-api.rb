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
    class ExportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Start markdown → docx export
    # Starts an asynchronous markdown-to-docx export. The response only acknowledges the task: the AI Worker converts the content and saves the .docx into the target folder (an agent room resolves to its result-storage subfolder), and completion reaches the client as the usual folder-modified socket event.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-export-text-to-docx/
    # @param ai_export_text_to_docx_request [AiExportTextToDocxRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiExportTextToDocx200Response]
    def ai_export_text_to_docx(ai_export_text_to_docx_request, opts = {})
      data, _status_code, _headers = ai_export_text_to_docx_with_http_info(ai_export_text_to_docx_request, opts)
      data
    end

    # Start markdown → docx export
    # Starts an asynchronous markdown-to-docx export. The response only acknowledges the task: the AI Worker converts the content and saves the .docx into the target folder (an agent room resolves to its result-storage subfolder), and completion reaches the client as the usual folder-modified socket event.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-export-text-to-docx/
    # @param ai_export_text_to_docx_request [AiExportTextToDocxRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiExportTextToDocx200Response, Integer, Hash)>] AiExportTextToDocx200Response data, response status code and response headers
    def ai_export_text_to_docx_with_http_info(ai_export_text_to_docx_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ExportApi.ai_export_text_to_docx ...'
      end
      # verify the required parameter 'ai_export_text_to_docx_request' is set
      if @api_client.config.client_side_validation && ai_export_text_to_docx_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_export_text_to_docx_request' when calling AI::ExportApi.ai_export_text_to_docx"
      end
      # resource path
      local_var_path = '/api/2.0/ai/text-to-docx'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_export_text_to_docx_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiExportTextToDocx200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ExportApi.ai_export_text_to_docx",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ExportApi#ai_export_text_to_docx\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

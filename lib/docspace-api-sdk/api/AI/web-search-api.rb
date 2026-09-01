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
    class WebSearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Clear
    # Removes the web-search configuration of the scope. Does nothing when web search was not configured there.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-clear/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_web_search_clear(body, opts = {})
      data, _status_code, _headers = ai_web_search_clear_with_http_info(body, opts)
      data
    end

    # Clear
    # Removes the web-search configuration of the scope. Does nothing when web search was not configured there.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-clear/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_web_search_clear_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::WebSearchApi.ai_web_search_clear ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::WebSearchApi.ai_web_search_clear"
      end
      # resource path
      local_var_path = '/api/2.0/ai/web-search/clear'

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
        :operation => :"AI::WebSearchApi.ai_web_search_clear",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::WebSearchApi#ai_web_search_clear\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Configure
    # Validates a web-search configuration against the live provider and stores it only when the provider answers, replacing the previous one in a single write.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-configure/
    # @param ai_web_search_configure_request [AiWebSearchConfigureRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiWebSearchMutationResult]
    def ai_web_search_configure(ai_web_search_configure_request, opts = {})
      data, _status_code, _headers = ai_web_search_configure_with_http_info(ai_web_search_configure_request, opts)
      data
    end

    # Configure
    # Validates a web-search configuration against the live provider and stores it only when the provider answers, replacing the previous one in a single write.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-configure/
    # @param ai_web_search_configure_request [AiWebSearchConfigureRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiWebSearchMutationResult, Integer, Hash)>] AiWebSearchMutationResult data, response status code and response headers
    def ai_web_search_configure_with_http_info(ai_web_search_configure_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::WebSearchApi.ai_web_search_configure ...'
      end
      # verify the required parameter 'ai_web_search_configure_request' is set
      if @api_client.config.client_side_validation && ai_web_search_configure_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_web_search_configure_request' when calling AI::WebSearchApi.ai_web_search_configure"
      end
      # resource path
      local_var_path = '/api/2.0/ai/web-search/configure'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_web_search_configure_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiWebSearchMutationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::WebSearchApi.ai_web_search_configure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::WebSearchApi#ai_web_search_configure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get active config
    # Returns the web-search configuration active in the scope, or an empty result when web search is not configured.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-get-active-config/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [AiWebSearchConfig]
    def ai_web_search_get_active_config(opts = {})
      data, _status_code, _headers = ai_web_search_get_active_config_with_http_info(opts)
      data
    end

    # Get active config
    # Returns the web-search configuration active in the scope, or an empty result when web search is not configured.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-get-active-config/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(AiWebSearchConfig, Integer, Hash)>] AiWebSearchConfig data, response status code and response headers
    def ai_web_search_get_active_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::WebSearchApi.ai_web_search_get_active_config ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/web-search/get-active-config'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiWebSearchConfig'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::WebSearchApi.ai_web_search_get_active_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::WebSearchApi#ai_web_search_get_active_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Is configured
    # Tells whether web search is configured in the scope.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-is-configured/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Boolean]
    def ai_web_search_is_configured(opts = {})
      data, _status_code, _headers = ai_web_search_is_configured_with_http_info(opts)
      data
    end

    # Is configured
    # Tells whether web search is configured in the scope.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-is-configured/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(Boolean, Integer, Hash)>] Boolean data, response status code and response headers
    def ai_web_search_is_configured_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::WebSearchApi.ai_web_search_is_configured ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/web-search/is-configured'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Boolean'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::WebSearchApi.ai_web_search_is_configured",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::WebSearchApi#ai_web_search_is_configured\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Web page contents proxied to the portal's active web-search provider
    # Fetches web page contents on behalf of the document editor's AI plugin, against the portal's active web-search provider, the same way as the search passthrough.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-contents/
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_web_search_passthrough_contents(request_body, opts = {})
      data, _status_code, _headers = ai_web_search_passthrough_contents_with_http_info(request_body, opts)
      data
    end

    # Web page contents proxied to the portal's active web-search provider
    # Fetches web page contents on behalf of the document editor's AI plugin, against the portal's active web-search provider, the same way as the search passthrough.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-contents/
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_web_search_passthrough_contents_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::WebSearchApi.ai_web_search_passthrough_contents ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling AI::WebSearchApi.ai_web_search_passthrough_contents"
      end
      # resource path
      local_var_path = '/api/2.0/ai/websearch/v1/contents'

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
        :operation => :"AI::WebSearchApi.ai_web_search_passthrough_contents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::WebSearchApi#ai_web_search_passthrough_contents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Web search proxied to the portal's active web-search provider
    # Runs a web search on behalf of the document editor's AI plugin. The plugin only holds a placeholder configuration; the portal's active provider and its key are resolved here and never reach the browser.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-search/
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_web_search_passthrough_search(request_body, opts = {})
      data, _status_code, _headers = ai_web_search_passthrough_search_with_http_info(request_body, opts)
      data
    end

    # Web search proxied to the portal's active web-search provider
    # Runs a web search on behalf of the document editor's AI plugin. The plugin only holds a placeholder configuration; the portal's active provider and its key are resolved here and never reach the browser.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-search/
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_web_search_passthrough_search_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::WebSearchApi.ai_web_search_passthrough_search ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling AI::WebSearchApi.ai_web_search_passthrough_search"
      end
      # resource path
      local_var_path = '/api/2.0/ai/websearch/v1/search'

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
        :operation => :"AI::WebSearchApi.ai_web_search_passthrough_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::WebSearchApi#ai_web_search_passthrough_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set active config
    # Stores a web-search configuration without contacting the provider first, for forms that validate locally.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-set-active-config/
    # @param ai_web_search_configure_request [AiWebSearchConfigureRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_web_search_set_active_config(ai_web_search_configure_request, opts = {})
      data, _status_code, _headers = ai_web_search_set_active_config_with_http_info(ai_web_search_configure_request, opts)
      data
    end

    # Set active config
    # Stores a web-search configuration without contacting the provider first, for forms that validate locally.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-set-active-config/
    # @param ai_web_search_configure_request [AiWebSearchConfigureRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_web_search_set_active_config_with_http_info(ai_web_search_configure_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::WebSearchApi.ai_web_search_set_active_config ...'
      end
      # verify the required parameter 'ai_web_search_configure_request' is set
      if @api_client.config.client_side_validation && ai_web_search_configure_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_web_search_configure_request' when calling AI::WebSearchApi.ai_web_search_set_active_config"
      end
      # resource path
      local_var_path = '/api/2.0/ai/web-search/set-active-config'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_web_search_configure_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::WebSearchApi.ai_web_search_set_active_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::WebSearchApi#ai_web_search_set_active_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test connection
    # Checks a web-search configuration against the live provider without storing it - for a Test button that must not commit on success.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-test-connection/
    # @param ai_web_search_config [AiWebSearchConfig] 
    # @param [Hash] opts the optional parameters
    # @return [AiProfilesTestConnection200Response]
    def ai_web_search_test_connection(ai_web_search_config, opts = {})
      data, _status_code, _headers = ai_web_search_test_connection_with_http_info(ai_web_search_config, opts)
      data
    end

    # Test connection
    # Checks a web-search configuration against the live provider without storing it - for a Test button that must not commit on success.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-test-connection/
    # @param ai_web_search_config [AiWebSearchConfig] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiProfilesTestConnection200Response, Integer, Hash)>] AiProfilesTestConnection200Response data, response status code and response headers
    def ai_web_search_test_connection_with_http_info(ai_web_search_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::WebSearchApi.ai_web_search_test_connection ...'
      end
      # verify the required parameter 'ai_web_search_config' is set
      if @api_client.config.client_side_validation && ai_web_search_config.nil?
        fail ArgumentError, "Missing the required parameter 'ai_web_search_config' when calling AI::WebSearchApi.ai_web_search_test_connection"
      end
      # resource path
      local_var_path = '/api/2.0/ai/web-search/test-connection'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_web_search_config)

      # return_type
      return_type = opts[:debug_return_type] || 'AiProfilesTestConnection200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::WebSearchApi.ai_web_search_test_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::WebSearchApi#ai_web_search_test_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

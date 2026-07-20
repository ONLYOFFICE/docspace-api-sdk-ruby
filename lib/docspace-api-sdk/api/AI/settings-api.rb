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
    class SettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get AI settings
    # Retrieves the combined AI configuration for the current portal, including the status of web search,  vectorization, and AI readiness, along with tool names and the portal MCP server identifier.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-settings/
    # @param [Hash] opts the optional parameters
    # @return [AiSettingsWrapper]
    def get_ai_settings(opts = {})
      data, _status_code, _headers = get_ai_settings_with_http_info(opts)
      data
    end

    # Get AI settings
    # Retrieves the combined AI configuration for the current portal, including the status of web search,  vectorization, and AI readiness, along with tool names and the portal MCP server identifier.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSettingsWrapper, Integer, Hash)>] AiSettingsWrapper data, response status code and response headers
    def get_ai_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::SettingsApi.get_ai_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/config'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::SettingsApi.get_ai_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::SettingsApi#get_ai_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get per-user AI settings
    # Retrieves the current user's AI settings, including the recommended model banner visibility preference.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-user-settings/
    # @param [Hash] opts the optional parameters
    # @return [AiUserSettingsWrapper]
    def get_ai_user_settings(opts = {})
      data, _status_code, _headers = get_ai_user_settings_with_http_info(opts)
      data
    end

    # Get per-user AI settings
    # Retrieves the current user's AI settings, including the recommended model banner visibility preference.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-user-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiUserSettingsWrapper, Integer, Hash)>] AiUserSettingsWrapper data, response status code and response headers
    def get_ai_user_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::SettingsApi.get_ai_user_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/config/user'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiUserSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::SettingsApi.get_ai_user_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::SettingsApi#get_ai_user_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get vectorization settings
    # Retrieves the current embedding provider settings used for document vectorization,  including the configured provider type and whether the API key needs to be reset.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-vectorization-settings/
    # @param [Hash] opts the optional parameters
    # @return [VectorizationSettingsWrapper]
    def get_vectorization_settings(opts = {})
      data, _status_code, _headers = get_vectorization_settings_with_http_info(opts)
      data
    end

    # Get vectorization settings
    # Retrieves the current embedding provider settings used for document vectorization,  including the configured provider type and whether the API key needs to be reset.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-vectorization-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(VectorizationSettingsWrapper, Integer, Hash)>] VectorizationSettingsWrapper data, response status code and response headers
    def get_vectorization_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::SettingsApi.get_vectorization_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/config/vectorization'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VectorizationSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::SettingsApi.get_vectorization_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::SettingsApi#get_vectorization_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get web search settings
    # Retrieves the current web search integration settings for AI chat sessions,  including whether web search is enabled, the configured search engine type, and whether the API key needs to be reset.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-search-settings/
    # @param [Hash] opts the optional parameters
    # @return [WebSearchSettingsWrapper]
    def get_web_search_settings(opts = {})
      data, _status_code, _headers = get_web_search_settings_with_http_info(opts)
      data
    end

    # Get web search settings
    # Retrieves the current web search integration settings for AI chat sessions,  including whether web search is enabled, the configured search engine type, and whether the API key needs to be reset.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-search-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebSearchSettingsWrapper, Integer, Hash)>] WebSearchSettingsWrapper data, response status code and response headers
    def get_web_search_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::SettingsApi.get_web_search_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/config/web-search'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebSearchSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::SettingsApi.get_web_search_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::SettingsApi#get_web_search_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update per-user AI settings
    # Updates the current user's AI recommended model banner visibility preferences.  Each user's settings are stored independently.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-ai-user-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [SetAiUserSettingsRequestDto] :set_ai_user_settings_request_dto 
    # @return [AiUserSettingsWrapper]
    def set_ai_user_settings(opts = {})
      data, _status_code, _headers = set_ai_user_settings_with_http_info(opts)
      data
    end

    # Update per-user AI settings
    # Updates the current user's AI recommended model banner visibility preferences.  Each user's settings are stored independently.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-ai-user-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [SetAiUserSettingsRequestDto] :set_ai_user_settings_request_dto 
    # @return [Array<(AiUserSettingsWrapper, Integer, Hash)>] AiUserSettingsWrapper data, response status code and response headers
    def set_ai_user_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::SettingsApi.set_ai_user_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/config/user'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_ai_user_settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'AiUserSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::SettingsApi.set_ai_user_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::SettingsApi#set_ai_user_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update vectorization settings
    # Configures the embedding provider used for document vectorization at the portal level.  Vectorization enables semantic search and knowledge retrieval capabilities in AI chat sessions.  Allows selecting the embedding provider type and providing the API key for the chosen provider.  Only portal administrators can modify these settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-vectorization-settings/
    # @param set_embedding_config_request_body [SetEmbeddingConfigRequestBody] The embedding provider configuration parameters.
    # @param [Hash] opts the optional parameters
    # @return [VectorizationSettingsWrapper]
    def set_vectorization_settings(set_embedding_config_request_body, opts = {})
      data, _status_code, _headers = set_vectorization_settings_with_http_info(set_embedding_config_request_body, opts)
      data
    end

    # Update vectorization settings
    # Configures the embedding provider used for document vectorization at the portal level.  Vectorization enables semantic search and knowledge retrieval capabilities in AI chat sessions.  Allows selecting the embedding provider type and providing the API key for the chosen provider.  Only portal administrators can modify these settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-vectorization-settings/
    # @param set_embedding_config_request_body [SetEmbeddingConfigRequestBody] The embedding provider configuration parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VectorizationSettingsWrapper, Integer, Hash)>] VectorizationSettingsWrapper data, response status code and response headers
    def set_vectorization_settings_with_http_info(set_embedding_config_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::SettingsApi.set_vectorization_settings ...'
      end
      # verify the required parameter 'set_embedding_config_request_body' is set
      if @api_client.config.client_side_validation && set_embedding_config_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'set_embedding_config_request_body' when calling AI::SettingsApi.set_vectorization_settings"
      end
      # resource path
      local_var_path = '/api/2.0/ai/config/vectorization'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_embedding_config_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'VectorizationSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::SettingsApi.set_vectorization_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::SettingsApi#set_vectorization_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update web search settings
    # Configures the web search integration for AI chat sessions at the portal level.  Allows enabling or disabling web search, selecting the search engine type, and providing the API key for the chosen engine.  Only portal administrators can modify these settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-search-settings/
    # @param set_web_search_settings_request_body [SetWebSearchSettingsRequestBody] The web search configuration parameters.
    # @param [Hash] opts the optional parameters
    # @return [WebSearchSettingsWrapper]
    def set_web_search_settings(set_web_search_settings_request_body, opts = {})
      data, _status_code, _headers = set_web_search_settings_with_http_info(set_web_search_settings_request_body, opts)
      data
    end

    # Update web search settings
    # Configures the web search integration for AI chat sessions at the portal level.  Allows enabling or disabling web search, selecting the search engine type, and providing the API key for the chosen engine.  Only portal administrators can modify these settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-search-settings/
    # @param set_web_search_settings_request_body [SetWebSearchSettingsRequestBody] The web search configuration parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebSearchSettingsWrapper, Integer, Hash)>] WebSearchSettingsWrapper data, response status code and response headers
    def set_web_search_settings_with_http_info(set_web_search_settings_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::SettingsApi.set_web_search_settings ...'
      end
      # verify the required parameter 'set_web_search_settings_request_body' is set
      if @api_client.config.client_side_validation && set_web_search_settings_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'set_web_search_settings_request_body' when calling AI::SettingsApi.set_web_search_settings"
      end
      # resource path
      local_var_path = '/api/2.0/ai/config/web-search'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_web_search_settings_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'WebSearchSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::SettingsApi.set_web_search_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::SettingsApi#set_web_search_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

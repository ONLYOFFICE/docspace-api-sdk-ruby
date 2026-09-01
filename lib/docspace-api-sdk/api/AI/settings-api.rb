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
    # Reports the portal's combined AI configuration and readiness.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get/
    # @param [Hash] opts the optional parameters
    # @return [AiAiSettingsWrapper]
    def ai_settings_get(opts = {})
      data, _status_code, _headers = ai_settings_get_with_http_info(opts)
      data
    end

    # Get AI settings
    # Reports the portal's combined AI configuration and readiness.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiAiSettingsWrapper, Integer, Hash)>] AiAiSettingsWrapper data, response status code and response headers
    def ai_settings_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::SettingsApi.ai_settings_get ...'
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
      return_type = opts[:debug_return_type] || 'AiAiSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::SettingsApi.ai_settings_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::SettingsApi#ai_settings_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get user AI settings
    # Returns the current user's AI settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-user/
    # @param [Hash] opts the optional parameters
    # @return [AiAiUserSettingsWrapper]
    def ai_settings_get_user(opts = {})
      data, _status_code, _headers = ai_settings_get_user_with_http_info(opts)
      data
    end

    # Get user AI settings
    # Returns the current user's AI settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-user/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiAiUserSettingsWrapper, Integer, Hash)>] AiAiUserSettingsWrapper data, response status code and response headers
    def ai_settings_get_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::SettingsApi.ai_settings_get_user ...'
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
      return_type = opts[:debug_return_type] || 'AiAiUserSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::SettingsApi.ai_settings_get_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::SettingsApi#ai_settings_get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get vectorization settings
    # Returns the portal's vectorization settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-vectorization/
    # @param [Hash] opts the optional parameters
    # @return [AiVectorizationSettingsWrapper]
    def ai_settings_get_vectorization(opts = {})
      data, _status_code, _headers = ai_settings_get_vectorization_with_http_info(opts)
      data
    end

    # Get vectorization settings
    # Returns the portal's vectorization settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-vectorization/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiVectorizationSettingsWrapper, Integer, Hash)>] AiVectorizationSettingsWrapper data, response status code and response headers
    def ai_settings_get_vectorization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::SettingsApi.ai_settings_get_vectorization ...'
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
      return_type = opts[:debug_return_type] || 'AiVectorizationSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::SettingsApi.ai_settings_get_vectorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::SettingsApi#ai_settings_get_vectorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update user AI settings
    # Updates the current user's AI settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-user/
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [AiAiUserSettingsWrapper]
    def ai_settings_set_user(request_body, opts = {})
      data, _status_code, _headers = ai_settings_set_user_with_http_info(request_body, opts)
      data
    end

    # Update user AI settings
    # Updates the current user's AI settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-user/
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiAiUserSettingsWrapper, Integer, Hash)>] AiAiUserSettingsWrapper data, response status code and response headers
    def ai_settings_set_user_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::SettingsApi.ai_settings_set_user ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling AI::SettingsApi.ai_settings_set_user"
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiAiUserSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::SettingsApi.ai_settings_set_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::SettingsApi#ai_settings_set_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update vectorization settings
    # Updates the portal's vectorization settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-vectorization/
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [AiVectorizationSettingsWrapper]
    def ai_settings_set_vectorization(request_body, opts = {})
      data, _status_code, _headers = ai_settings_set_vectorization_with_http_info(request_body, opts)
      data
    end

    # Update vectorization settings
    # Updates the portal's vectorization settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-vectorization/
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiVectorizationSettingsWrapper, Integer, Hash)>] AiVectorizationSettingsWrapper data, response status code and response headers
    def ai_settings_set_vectorization_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::SettingsApi.ai_settings_set_vectorization ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling AI::SettingsApi.ai_settings_set_vectorization"
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiVectorizationSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::SettingsApi.ai_settings_set_vectorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::SettingsApi#ai_settings_set_vectorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

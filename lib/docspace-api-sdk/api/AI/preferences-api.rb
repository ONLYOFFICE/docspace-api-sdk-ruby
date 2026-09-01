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
    class PreferencesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Clear deep mode
    # Drops the persisted deep-mode toggle of the scope, so later reads fall back to the configured default.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-clear-deep-mode/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_preferences_clear_deep_mode(body, opts = {})
      data, _status_code, _headers = ai_preferences_clear_deep_mode_with_http_info(body, opts)
      data
    end

    # Clear deep mode
    # Drops the persisted deep-mode toggle of the scope, so later reads fall back to the configured default.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-clear-deep-mode/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_preferences_clear_deep_mode_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PreferencesApi.ai_preferences_clear_deep_mode ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::PreferencesApi.ai_preferences_clear_deep_mode"
      end
      # resource path
      local_var_path = '/api/2.0/ai/preferences/clear-deep-mode'

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
        :operation => :"AI::PreferencesApi.ai_preferences_clear_deep_mode",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PreferencesApi#ai_preferences_clear_deep_mode\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get deep mode
    # Returns the deep-mode toggle of the scope, falling back to the configured default when nothing has been persisted.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-get-deep-mode/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Boolean]
    def ai_preferences_get_deep_mode(opts = {})
      data, _status_code, _headers = ai_preferences_get_deep_mode_with_http_info(opts)
      data
    end

    # Get deep mode
    # Returns the deep-mode toggle of the scope, falling back to the configured default when nothing has been persisted.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-get-deep-mode/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(Boolean, Integer, Hash)>] Boolean data, response status code and response headers
    def ai_preferences_get_deep_mode_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PreferencesApi.ai_preferences_get_deep_mode ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/preferences/get-deep-mode'

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
        :operation => :"AI::PreferencesApi.ai_preferences_get_deep_mode",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PreferencesApi#ai_preferences_get_deep_mode\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Is deep mode set
    # Tells whether the scope has an explicitly persisted deep-mode value, whichever way that value is set.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-is-deep-mode-set/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Boolean]
    def ai_preferences_is_deep_mode_set(opts = {})
      data, _status_code, _headers = ai_preferences_is_deep_mode_set_with_http_info(opts)
      data
    end

    # Is deep mode set
    # Tells whether the scope has an explicitly persisted deep-mode value, whichever way that value is set.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-is-deep-mode-set/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(Boolean, Integer, Hash)>] Boolean data, response status code and response headers
    def ai_preferences_is_deep_mode_set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PreferencesApi.ai_preferences_is_deep_mode_set ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/preferences/is-deep-mode-set'

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
        :operation => :"AI::PreferencesApi.ai_preferences_is_deep_mode_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PreferencesApi#ai_preferences_is_deep_mode_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set deep mode
    # Persists the deep-mode toggle of the scope. Idempotent - there is no need to check whether a value already exists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-set-deep-mode/
    # @param ai_preferences_set_deep_mode_request [AiPreferencesSetDeepModeRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_preferences_set_deep_mode(ai_preferences_set_deep_mode_request, opts = {})
      data, _status_code, _headers = ai_preferences_set_deep_mode_with_http_info(ai_preferences_set_deep_mode_request, opts)
      data
    end

    # Set deep mode
    # Persists the deep-mode toggle of the scope. Idempotent - there is no need to check whether a value already exists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-set-deep-mode/
    # @param ai_preferences_set_deep_mode_request [AiPreferencesSetDeepModeRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_preferences_set_deep_mode_with_http_info(ai_preferences_set_deep_mode_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PreferencesApi.ai_preferences_set_deep_mode ...'
      end
      # verify the required parameter 'ai_preferences_set_deep_mode_request' is set
      if @api_client.config.client_side_validation && ai_preferences_set_deep_mode_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_preferences_set_deep_mode_request' when calling AI::PreferencesApi.ai_preferences_set_deep_mode"
      end
      # resource path
      local_var_path = '/api/2.0/ai/preferences/set-deep-mode'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_preferences_set_deep_mode_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::PreferencesApi.ai_preferences_set_deep_mode",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PreferencesApi#ai_preferences_set_deep_mode\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

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
  module OAuth20
    class AuthorizationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # OAuth2 Authorization Endpoint
    # Initiates the OAuth2 authorization flow.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/authorize-o-auth/
    # @param response_type [String] The OAuth 2.0 response type, must be 'code' for authorization code flow.
    # @param client_id [String] The client identifier issued to the client during registration.
    # @param redirect_uri [String] The URL to redirect to after authorization is complete.
    # @param scope [String] The space-separated list of requested scope permissions.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def authorize_o_auth(response_type, client_id, redirect_uri, scope, opts = {})
      authorize_o_auth_with_http_info(response_type, client_id, redirect_uri, scope, opts)
      nil
    end

    # OAuth2 Authorization Endpoint
    # Initiates the OAuth2 authorization flow.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/authorize-o-auth/
    # @param response_type [String] The OAuth 2.0 response type, must be 'code' for authorization code flow.
    # @param client_id [String] The client identifier issued to the client during registration.
    # @param redirect_uri [String] The URL to redirect to after authorization is complete.
    # @param scope [String] The space-separated list of requested scope permissions.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def authorize_o_auth_with_http_info(response_type, client_id, redirect_uri, scope, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::AuthorizationApi.authorize_o_auth ...'
      end
      # verify the required parameter 'response_type' is set
      if @api_client.config.client_side_validation && response_type.nil?
        fail ArgumentError, "Missing the required parameter 'response_type' when calling OAuth20::AuthorizationApi.authorize_o_auth"
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling OAuth20::AuthorizationApi.authorize_o_auth"
      end
      # verify the required parameter 'redirect_uri' is set
      if @api_client.config.client_side_validation && redirect_uri.nil?
        fail ArgumentError, "Missing the required parameter 'redirect_uri' when calling OAuth20::AuthorizationApi.authorize_o_auth"
      end
      # verify the required parameter 'scope' is set
      if @api_client.config.client_side_validation && scope.nil?
        fail ArgumentError, "Missing the required parameter 'scope' when calling OAuth20::AuthorizationApi.authorize_o_auth"
      end
      # resource path
      local_var_path = '/oauth2/authorize'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'response_type'] = response_type
      query_params[:'client_id'] = client_id
      query_params[:'redirect_uri'] = redirect_uri
      query_params[:'scope'] = scope

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::AuthorizationApi.authorize_o_auth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::AuthorizationApi#authorize_o_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # OAuth2 Token Endpoint
    # Exchange authorization code for access token
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/exchange-token/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :grant_type The OAuth2 grant type, must be 'authorization_code' for the authorization code flow.
    # @option opts [String] :code A temporary authorization code that is sent to the client to be exchanged for a token.
    # @option opts [String] :redirect_uri The URL where the user will be redirected after successful or unsuccessful authentication.
    # @option opts [String] :client_id The client identifier issued to the client during registration.
    # @option opts [String] :client_secret The client secret issued to the client during registration.
    # @return [ExchangeToken200Response]
    def exchange_token(opts = {})
      data, _status_code, _headers = exchange_token_with_http_info(opts)
      data
    end

    # OAuth2 Token Endpoint
    # Exchange authorization code for access token
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/exchange-token/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :grant_type The OAuth2 grant type, must be 'authorization_code' for the authorization code flow.
    # @option opts [String] :code A temporary authorization code that is sent to the client to be exchanged for a token.
    # @option opts [String] :redirect_uri The URL where the user will be redirected after successful or unsuccessful authentication.
    # @option opts [String] :client_id The client identifier issued to the client during registration.
    # @option opts [String] :client_secret The client secret issued to the client during registration.
    # @return [Array<(ExchangeToken200Response, Integer, Hash)>] ExchangeToken200Response data, response status code and response headers
    def exchange_token_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::AuthorizationApi.exchange_token ...'
      end
      # resource path
      local_var_path = '/oauth2/token'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = opts[:'grant_type'] if !opts[:'grant_type'].nil?
      form_params['code'] = opts[:'code'] if !opts[:'code'].nil?
      form_params['redirect_uri'] = opts[:'redirect_uri'] if !opts[:'redirect_uri'].nil?
      form_params['client_id'] = opts[:'client_id'] if !opts[:'client_id'].nil?
      form_params['client_secret'] = opts[:'client_secret'] if !opts[:'client_secret'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ExchangeToken200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OAuth20::AuthorizationApi.exchange_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::AuthorizationApi#exchange_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # OAuth2 consent endpoint
    # Sends consent approval
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/submit-consent/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_id The client identifier issued to the client during registration.
    # @option opts [String] :state The random string used to solve the CSRF vulnerability problem.
    # @option opts [String] :scope The space-separated list of requested scope permissions.
    # @return [nil]
    def submit_consent(opts = {})
      submit_consent_with_http_info(opts)
      nil
    end

    # OAuth2 consent endpoint
    # Sends consent approval
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/submit-consent/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_id The client identifier issued to the client during registration.
    # @option opts [String] :state The random string used to solve the CSRF vulnerability problem.
    # @option opts [String] :scope The space-separated list of requested scope permissions.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def submit_consent_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::AuthorizationApi.submit_consent ...'
      end
      # resource path
      local_var_path = '/oauth2/authorize'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['client_id'] = opts[:'client_id'] if !opts[:'client_id'].nil?
      form_params['state'] = opts[:'state'] if !opts[:'state'].nil?
      form_params['scope'] = opts[:'scope'] if !opts[:'scope'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::AuthorizationApi.submit_consent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::AuthorizationApi#submit_consent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

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
    # Start the authorization flow
    # Starts the OAuth2 authorization code flow for the client named by client_id. The caller has to present the portal signature cookie, and a request without a valid one is not refused with 401 or 403 but redirected to the portal login page, carrying the client ID so the flow can resume after signing in. When the user has not yet consented to the requested scopes the browser is redirected to the consent page; once the consent exists the browser is redirected to the client's redirect URI with the authorization code and, when one was sent, the original state. A caller that cannot follow redirects may send the X-Disable-Redirect header, and then the response is 200 with an empty body and the target URL in the X-Redirect-URI header. The code returned here is exchanged for tokens at the token endpoint.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/authorize-o-auth/
    # @param response_type [String] The OAuth 2.0 response type. Only code is supported: this server issues an authorization code, never a token, from this endpoint.
    # @param client_id [String] The identifier the client was given when it was registered. It selects both the client shown on the consent screen and the set of redirect URIs the request is checked against.
    # @param redirect_uri [String] Where to send the user once authorization is complete. It has to be one of the redirect URIs registered for the client, otherwise the request is refused.
    # @param scope [String] The permissions being asked for, as a space-separated list. Every scope has to be one the client is registered for, and the consent screen lists exactly these.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def authorize_o_auth(response_type, client_id, redirect_uri, scope, opts = {})
      authorize_o_auth_with_http_info(response_type, client_id, redirect_uri, scope, opts)
      nil
    end

    # Start the authorization flow
    # Starts the OAuth2 authorization code flow for the client named by client_id. The caller has to present the portal signature cookie, and a request without a valid one is not refused with 401 or 403 but redirected to the portal login page, carrying the client ID so the flow can resume after signing in. When the user has not yet consented to the requested scopes the browser is redirected to the consent page; once the consent exists the browser is redirected to the client's redirect URI with the authorization code and, when one was sent, the original state. A caller that cannot follow redirects may send the X-Disable-Redirect header, and then the response is 200 with an empty body and the target URL in the X-Redirect-URI header. The code returned here is exchanged for tokens at the token endpoint.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/authorize-o-auth/
    # @param response_type [String] The OAuth 2.0 response type. Only code is supported: this server issues an authorization code, never a token, from this endpoint.
    # @param client_id [String] The identifier the client was given when it was registered. It selects both the client shown on the consent screen and the set of redirect URIs the request is checked against.
    # @param redirect_uri [String] Where to send the user once authorization is complete. It has to be one of the redirect URIs registered for the client, otherwise the request is refused.
    # @param scope [String] The permissions being asked for, as a space-separated list. Every scope has to be one the client is registered for, and the consent screen lists exactly these.
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

    # Exchange the authorization code
    # Exchanges an authorization code for an access token. The request is form-encoded and has to carry the grant type, the code, the same redirect URI that was used to obtain the code, and the client credentials: the client authenticates itself here rather than through the portal signature cookie the authorization endpoint uses. The response carries the access token, its type and its lifetime in seconds, plus a refresh token when the client is configured for the refresh token grant. Client authentication that fails is answered with 401, while a malformed, unknown or expired code is answered with 400. The code is single use, so replaying it fails.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/exchange-token/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :grant_type Which exchange is being performed: authorization_code to redeem a code, refresh_token to renew an access token.
    # @option opts [String] :code The authorization code returned by the authorization endpoint. It may be redeemed once.
    # @option opts [String] :redirect_uri The same redirect URI that was used to obtain the code. The exchange fails when it differs.
    # @option opts [String] :client_id The identifier of the client redeeming the code.
    # @option opts [String] :client_secret The secret of the client redeeming the code. It is omitted by a public client, which proves itself with a PKCE code verifier instead.
    # @return [ExchangeToken200Response]
    def exchange_token(opts = {})
      data, _status_code, _headers = exchange_token_with_http_info(opts)
      data
    end

    # Exchange the authorization code
    # Exchanges an authorization code for an access token. The request is form-encoded and has to carry the grant type, the code, the same redirect URI that was used to obtain the code, and the client credentials: the client authenticates itself here rather than through the portal signature cookie the authorization endpoint uses. The response carries the access token, its type and its lifetime in seconds, plus a refresh token when the client is configured for the refresh token grant. Client authentication that fails is answered with 401, while a malformed, unknown or expired code is answered with 400. The code is single use, so replaying it fails.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/exchange-token/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :grant_type Which exchange is being performed: authorization_code to redeem a code, refresh_token to renew an access token.
    # @option opts [String] :code The authorization code returned by the authorization endpoint. It may be redeemed once.
    # @option opts [String] :redirect_uri The same redirect URI that was used to obtain the code. The exchange fails when it differs.
    # @option opts [String] :client_id The identifier of the client redeeming the code.
    # @option opts [String] :client_secret The secret of the client redeeming the code. It is omitted by a public client, which proves itself with a PKCE code verifier instead.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Submit the consent decision
    # Submits the user's consent decision for the scopes an authorization request asked for. It is the form post the consent page makes, so it carries the client ID, the state and the agreed scopes as multipart form data, along with the same portal signature cookie the authorization request needed. On success the browser is redirected to the client's redirect URI with an authorization code, or, when the request carries the X-Disable-Redirect header, answered 200 with that URL in the X-Redirect-URI header. The consent is stored per user and client, so a later authorization request for the same scopes no longer stops at the consent page.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/submit-consent/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_id The client the consent is being given to. It has to be the same client the authorization request named.
    # @option opts [String] :state The opaque value carried through from the authorization request, returned unchanged on the redirect so the client can match the answer to its request.
    # @option opts [String] :scope The scopes the user agreed to, as a space-separated list. Anything the user declined is left out, so this may be narrower than what was requested.
    # @return [nil]
    def submit_consent(opts = {})
      submit_consent_with_http_info(opts)
      nil
    end

    # Submit the consent decision
    # Submits the user's consent decision for the scopes an authorization request asked for. It is the form post the consent page makes, so it carries the client ID, the state and the agreed scopes as multipart form data, along with the same portal signature cookie the authorization request needed. On success the browser is redirected to the client's redirect URI with an authorization code, or, when the request carries the X-Disable-Redirect header, answered 200 with that URL in the X-Redirect-URI header. The consent is stored per user and client, so a later authorization request for the same scopes no longer stops at the consent page.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/submit-consent/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_id The client the consent is being given to. It has to be the same client the authorization request named.
    # @option opts [String] :state The opaque value carried through from the authorization request, returned unchanged on the redirect so the client can match the answer to its request.
    # @option opts [String] :scope The scopes the user agreed to, as a space-separated list. Anything the user declined is left out, so this may be narrower than what was requested.
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

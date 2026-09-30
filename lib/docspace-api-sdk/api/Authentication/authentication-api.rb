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
  module Authentication
    class AuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Authenticate a user
    # Signs a user in to the current portal and either issues the authentication token or reports which second  factor is still missing. Credentials go in the body as `userName` with `password` or `passwordHash`, as the  key of a confirmation link in `confirmData`, or as a third-party account (`provider` with `accessToken`, or  `serializedProfile`), which only a standalone installation or a tariff with third-party sign-in allows. Open  to unauthenticated callers, mutating and not  idempotent: it writes a login event, sets the portal cookies and counts every failure against the brute-force  limit. When a second factor is required for this user the answer carries no `token` but `sms` with the masked  phone number - or a `confirmUrl` pointing at `POST api/2.0/authentication/setphone` while no number is  activated yet - or `tfa` with the setup key while the authenticator app is not connected; submit the code to  `POST api/2.0/authentication/{code}` to finish such a sign-in. Otherwise the answer carries `token` for the  `Authorization` header and `expires`, which is omitted when `session=true` ties the token to the browser  session. An unknown user fails with 404, rejected credentials with 401, a disabled or blocked user with 403.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me/
    # @param [Hash] opts the optional parameters
    # @option opts [AuthRequestsDto] :auth_requests_dto 
    # @return [AuthenticationTokenWrapper]
    def authenticate_me(opts = {})
      data, _status_code, _headers = authenticate_me_with_http_info(opts)
      data
    end

    # Authenticate a user
    # Signs a user in to the current portal and either issues the authentication token or reports which second  factor is still missing. Credentials go in the body as `userName` with `password` or `passwordHash`, as the  key of a confirmation link in `confirmData`, or as a third-party account (`provider` with `accessToken`, or  `serializedProfile`), which only a standalone installation or a tariff with third-party sign-in allows. Open  to unauthenticated callers, mutating and not  idempotent: it writes a login event, sets the portal cookies and counts every failure against the brute-force  limit. When a second factor is required for this user the answer carries no `token` but `sms` with the masked  phone number - or a `confirmUrl` pointing at `POST api/2.0/authentication/setphone` while no number is  activated yet - or `tfa` with the setup key while the authenticator app is not connected; submit the code to  `POST api/2.0/authentication/{code}` to finish such a sign-in. Otherwise the answer carries `token` for the  `Authorization` header and `expires`, which is omitted when `session=true` ties the token to the browser  session. An unknown user fails with 404, rejected credentials with 401, a disabled or blocked user with 403.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me/
    # @param [Hash] opts the optional parameters
    # @option opts [AuthRequestsDto] :auth_requests_dto 
    # @return [Array<(AuthenticationTokenWrapper, Integer, Hash)>] AuthenticationTokenWrapper data, response status code and response headers
    def authenticate_me_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Authentication::AuthenticationApi.authenticate_me ...'
      end
      # resource path
      local_var_path = '/api/2.0/authentication'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'auth_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'AuthenticationTokenWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Authentication::AuthenticationApi.authenticate_me",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Authentication::AuthenticationApi#authenticate_me\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Authenticate a user by code
    # Finishes a two-factor sign-in: checks the one-time code and, when it matches, issues the authentication token.  Call it only after `POST api/2.0/authentication` answered with `sms` or `tfa` set, and repeat the same  credentials in the body next to `code` - the code alone does not identify the user. The code comes from the  SMS the portal sent, which `POST api/2.0/authentication/sendsms` resends, or from the authenticator app;  whichever second factor the portal has enabled for this user is the one checked here. Open to unauthenticated  callers, mutating and not idempotent: a code is single-use, the sign-in is written to the login history, and  the first code accepted from an authenticator app also connects that app to the user. The answer carries  `token` for the `Authorization` header, `expires` unless `session=true` tied the token to the browser session,  and either `sms` with the masked phone number or `tfa`. A wrong, empty or expired code fails with 401 and  counts against the brute-force limit, which then refuses further attempts with 403.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me-from-body-with-code/
    # @param code [String] The two-factor authentication code. Send the same value as the `code` of the request body, which is the one the handler reads.
    # @param [Hash] opts the optional parameters
    # @option opts [AuthWithCodeRequestsDto] :auth_with_code_requests_dto 
    # @return [AuthenticationTokenWrapper]
    def authenticate_me_from_body_with_code(code, opts = {})
      data, _status_code, _headers = authenticate_me_from_body_with_code_with_http_info(code, opts)
      data
    end

    # Authenticate a user by code
    # Finishes a two-factor sign-in: checks the one-time code and, when it matches, issues the authentication token.  Call it only after `POST api/2.0/authentication` answered with `sms` or `tfa` set, and repeat the same  credentials in the body next to `code` - the code alone does not identify the user. The code comes from the  SMS the portal sent, which `POST api/2.0/authentication/sendsms` resends, or from the authenticator app;  whichever second factor the portal has enabled for this user is the one checked here. Open to unauthenticated  callers, mutating and not idempotent: a code is single-use, the sign-in is written to the login history, and  the first code accepted from an authenticator app also connects that app to the user. The answer carries  `token` for the `Authorization` header, `expires` unless `session=true` tied the token to the browser session,  and either `sms` with the masked phone number or `tfa`. A wrong, empty or expired code fails with 401 and  counts against the brute-force limit, which then refuses further attempts with 403.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me-from-body-with-code/
    # @param code [String] The two-factor authentication code. Send the same value as the `code` of the request body, which is the one the handler reads.
    # @param [Hash] opts the optional parameters
    # @option opts [AuthWithCodeRequestsDto] :auth_with_code_requests_dto 
    # @return [Array<(AuthenticationTokenWrapper, Integer, Hash)>] AuthenticationTokenWrapper data, response status code and response headers
    def authenticate_me_from_body_with_code_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Authentication::AuthenticationApi.authenticate_me_from_body_with_code ...'
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling Authentication::AuthenticationApi.authenticate_me_from_body_with_code"
      end
      # resource path
      local_var_path = '/api/2.0/authentication/{code}'.sub('{' + 'code' + '}', CGI.escape(code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'auth_with_code_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'AuthenticationTokenWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Authentication::AuthenticationApi.authenticate_me_from_body_with_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Authentication::AuthenticationApi#authenticate_me_from_body_with_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check a confirmation link
    # Checks the key of a confirmation link that the portal sent by email and reports whether the action behind that  link can still be carried out - an employee invitation, phone activation, a password change, portal removal  and so on. Take `key` and `type` from the query string of the link; when `key` is left empty, the key saved in  the confirmation cookie of the same `type` is used instead. Open to unauthenticated callers and read-only: it  neither accepts the invitation nor signs anyone in. `result` is `Ok` when the link may be used, `Invalid` when  the key does not match the type or the email, `Expired` when it is too old, and `TariffLimit`, `UserExisted`,  `UserExcluded` or `QuotaFailed` when the key is sound but the invitation behind it cannot be accepted. Only  `Ok` should be followed by the operation that performs the action - `POST api/2.0/people` with  `fromInviteLink` for an invitation, `POST api/2.0/authentication` with `confirmData` for a sign-in link - and  for an invitation to a room the answer also carries the identifier and the title of that room.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-confirm/
    # @param [Hash] opts the optional parameters
    # @option opts [EmailValidationKeyModel] :email_validation_key_model 
    # @return [ConfirmWrapper]
    def check_confirm(opts = {})
      data, _status_code, _headers = check_confirm_with_http_info(opts)
      data
    end

    # Check a confirmation link
    # Checks the key of a confirmation link that the portal sent by email and reports whether the action behind that  link can still be carried out - an employee invitation, phone activation, a password change, portal removal  and so on. Take `key` and `type` from the query string of the link; when `key` is left empty, the key saved in  the confirmation cookie of the same `type` is used instead. Open to unauthenticated callers and read-only: it  neither accepts the invitation nor signs anyone in. `result` is `Ok` when the link may be used, `Invalid` when  the key does not match the type or the email, `Expired` when it is too old, and `TariffLimit`, `UserExisted`,  `UserExcluded` or `QuotaFailed` when the key is sound but the invitation behind it cannot be accepted. Only  `Ok` should be followed by the operation that performs the action - `POST api/2.0/people` with  `fromInviteLink` for an invitation, `POST api/2.0/authentication` with `confirmData` for a sign-in link - and  for an invitation to a room the answer also carries the identifier and the title of that room.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-confirm/
    # @param [Hash] opts the optional parameters
    # @option opts [EmailValidationKeyModel] :email_validation_key_model 
    # @return [Array<(ConfirmWrapper, Integer, Hash)>] ConfirmWrapper data, response status code and response headers
    def check_confirm_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Authentication::AuthenticationApi.check_confirm ...'
      end
      # resource path
      local_var_path = '/api/2.0/authentication/confirm'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'email_validation_key_model'])

      # return_type
      return_type = opts[:debug_return_type] || 'ConfirmWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Authentication::AuthenticationApi.check_confirm",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Authentication::AuthenticationApi#check_confirm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check authentication
    # Reports whether the credentials that came with this very request identify a signed-in user of the current  portal - the authentication cookie, or the token in the `Authorization` header. Nothing has to be called  first: the operation is open to unauthenticated callers, who simply get `false`, it is read-only and  idempotent, and it answers even while the portal's payment has lapsed. The result is a bare boolean that  carries no reason, so `false` covers a missing, malformed, expired and revoked token alike; the way to recover  from it is to sign in again with `POST api/2.0/authentication`. It says nothing about who the caller is or how  long the session still lasts - read `GET api/2.0/people/@self` for the profile behind the token.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-authentificated/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def get_is_authentificated(opts = {})
      data, _status_code, _headers = get_is_authentificated_with_http_info(opts)
      data
    end

    # Check authentication
    # Reports whether the credentials that came with this very request identify a signed-in user of the current  portal - the authentication cookie, or the token in the `Authorization` header. Nothing has to be called  first: the operation is open to unauthenticated callers, who simply get `false`, it is read-only and  idempotent, and it answers even while the portal's payment has lapsed. The result is a bare boolean that  carries no reason, so `false` covers a missing, malformed, expired and revoked token alike; the way to recover  from it is to sign in again with `POST api/2.0/authentication`. It says nothing about who the caller is or how  long the session still lasts - read `GET api/2.0/people/@self` for the profile behind the token.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-authentificated/
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def get_is_authentificated_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Authentication::AuthenticationApi.get_is_authentificated ...'
      end
      # resource path
      local_var_path = '/api/2.0/authentication'

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
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Authentication::AuthenticationApi.get_is_authentificated",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Authentication::AuthenticationApi#get_is_authentificated\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Log out
    # Ends the session the request itself was made with: the login event behind the authentication cookie is closed,  the sockets opened for it are disconnected, the portal cookies are cleared and a logout event is written to  the login history. Send it with the cookie or token of the session that is to be closed; an anonymous call is  accepted and closes nothing. The operation is mutating and idempotent - the same session cannot be closed  twice - and it touches only that one session: the other sessions of the same user stay alive and are ended by  `PUT api/2.0/security/activeconnections/logoutallexceptthis` or  `PUT api/2.0/security/activeconnections/logout/{loginEventId}`. The answer is a single logout URL when the  user signed in through SSO and the portal has an SLO endpoint configured, and the client has to open that URL  to end the session on the identity provider as well; for everyone else it is empty and nothing more is needed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/logout/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def logout(opts = {})
      data, _status_code, _headers = logout_with_http_info(opts)
      data
    end

    # Log out
    # Ends the session the request itself was made with: the login event behind the authentication cookie is closed,  the sockets opened for it are disconnected, the portal cookies are cleared and a logout event is written to  the login history. Send it with the cookie or token of the session that is to be closed; an anonymous call is  accepted and closes nothing. The operation is mutating and idempotent - the same session cannot be closed  twice - and it touches only that one session: the other sessions of the same user stay alive and are ended by  `PUT api/2.0/security/activeconnections/logoutallexceptthis` or  `PUT api/2.0/security/activeconnections/logout/{loginEventId}`. The answer is a single logout URL when the  user signed in through SSO and the portal has an SLO endpoint configured, and the client has to open that URL  to end the session on the identity provider as well; for everyone else it is empty and nothing more is needed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/logout/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def logout_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Authentication::AuthenticationApi.logout ...'
      end
      # resource path
      local_var_path = '/api/2.0/authentication/logout'

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
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Authentication::AuthenticationApi.logout",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Authentication::AuthenticationApi#logout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set a mobile phone
    # Stores the mobile phone number of a user who is going through phone activation and sends the first SMS  authentication code to it. It is reachable only with the phone-activation confirmation link that  `POST api/2.0/authentication` returns in `confirmUrl` when SMS two-factor is required and the user has no  activated number yet: that link authorizes the call in place of an authentication token, and no token is  issued here. The operation is mutating and not idempotent - it saves the number as not activated, writes an  audit event and sends a message - and an already activated number is not replaced this way, the stored number  has to be erased first. The answer carries `sms`, the masked number and `expires`, the moment the code stops  being accepted. Submit that code to `POST api/2.0/authentication/{code}`, which signs the user in and marks  the number activated, or ask for another one with `POST api/2.0/authentication/sendsms`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-mobile-phone/
    # @param [Hash] opts the optional parameters
    # @option opts [MobileRequestsDto] :mobile_requests_dto 
    # @return [AuthenticationTokenWrapper]
    def save_mobile_phone(opts = {})
      data, _status_code, _headers = save_mobile_phone_with_http_info(opts)
      data
    end

    # Set a mobile phone
    # Stores the mobile phone number of a user who is going through phone activation and sends the first SMS  authentication code to it. It is reachable only with the phone-activation confirmation link that  `POST api/2.0/authentication` returns in `confirmUrl` when SMS two-factor is required and the user has no  activated number yet: that link authorizes the call in place of an authentication token, and no token is  issued here. The operation is mutating and not idempotent - it saves the number as not activated, writes an  audit event and sends a message - and an already activated number is not replaced this way, the stored number  has to be erased first. The answer carries `sms`, the masked number and `expires`, the moment the code stops  being accepted. Submit that code to `POST api/2.0/authentication/{code}`, which signs the user in and marks  the number activated, or ask for another one with `POST api/2.0/authentication/sendsms`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-mobile-phone/
    # @param [Hash] opts the optional parameters
    # @option opts [MobileRequestsDto] :mobile_requests_dto 
    # @return [Array<(AuthenticationTokenWrapper, Integer, Hash)>] AuthenticationTokenWrapper data, response status code and response headers
    def save_mobile_phone_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Authentication::AuthenticationApi.save_mobile_phone ...'
      end
      # resource path
      local_var_path = '/api/2.0/authentication/setphone'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'mobile_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'AuthenticationTokenWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Authentication::AuthenticationApi.save_mobile_phone",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Authentication::AuthenticationApi#save_mobile_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send SMS code
    # Sends a new SMS authentication code to the phone number stored for the user and reports when that code  expires. The credentials in the body are checked exactly as by `POST api/2.0/authentication`, so use this  operation to resend the code after that call answered with `sms`; the user needs SMS two-factor enabled and a  phone number already stored, which `POST api/2.0/authentication/setphone` registers. Open to unauthenticated  callers, mutating and not idempotent: every call sends a message, is counted in the portal's SMS usage and  spends one of the few codes a number is allowed within the code lifetime (ten minutes by default), after which  the call fails until those codes expire. Codes sent earlier stay valid, so a resent code does not invalidate  them, and the first one to be accepted invalidates all of them. The answer carries `sms`, the masked number  and `expires`, and no token - submit the code to `POST api/2.0/authentication/{code}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-sms-code/
    # @param [Hash] opts the optional parameters
    # @option opts [AuthRequestsDto] :auth_requests_dto 
    # @return [AuthenticationTokenWrapper]
    def send_sms_code(opts = {})
      data, _status_code, _headers = send_sms_code_with_http_info(opts)
      data
    end

    # Send SMS code
    # Sends a new SMS authentication code to the phone number stored for the user and reports when that code  expires. The credentials in the body are checked exactly as by `POST api/2.0/authentication`, so use this  operation to resend the code after that call answered with `sms`; the user needs SMS two-factor enabled and a  phone number already stored, which `POST api/2.0/authentication/setphone` registers. Open to unauthenticated  callers, mutating and not idempotent: every call sends a message, is counted in the portal's SMS usage and  spends one of the few codes a number is allowed within the code lifetime (ten minutes by default), after which  the call fails until those codes expire. Codes sent earlier stay valid, so a resent code does not invalidate  them, and the first one to be accepted invalidates all of them. The answer carries `sms`, the masked number  and `expires`, and no token - submit the code to `POST api/2.0/authentication/{code}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-sms-code/
    # @param [Hash] opts the optional parameters
    # @option opts [AuthRequestsDto] :auth_requests_dto 
    # @return [Array<(AuthenticationTokenWrapper, Integer, Hash)>] AuthenticationTokenWrapper data, response status code and response headers
    def send_sms_code_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Authentication::AuthenticationApi.send_sms_code ...'
      end
      # resource path
      local_var_path = '/api/2.0/authentication/sendsms'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'auth_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'AuthenticationTokenWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Authentication::AuthenticationApi.send_sms_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Authentication::AuthenticationApi#send_sms_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

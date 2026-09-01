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
    # Authenticates the current user by SMS, authenticator app, or without two-factor authentication.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me/
    # @param [Hash] opts the optional parameters
    # @option opts [AuthRequestsDto] :auth_requests_dto 
    # @return [AuthenticationTokenWrapper]
    def authenticate_me(opts = {})
      data, _status_code, _headers = authenticate_me_with_http_info(opts)
      data
    end

    # Authenticate a user
    # Authenticates the current user by SMS, authenticator app, or without two-factor authentication.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Authenticates the current user by SMS or two-factor authentication code.
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
    # Authenticates the current user by SMS or two-factor authentication code.
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
      auth_names = opts[:debug_auth_names] || []

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

    # Open confirmation email URL
    # Opens a confirmation email URL to validate a certain action (employee invitation, portal removal, phone activation, etc.).
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-confirm/
    # @param [Hash] opts the optional parameters
    # @option opts [EmailValidationKeyModel] :email_validation_key_model 
    # @return [ConfirmWrapper]
    def check_confirm(opts = {})
      data, _status_code, _headers = check_confirm_with_http_info(opts)
      data
    end

    # Open confirmation email URL
    # Opens a confirmation email URL to validate a certain action (employee invitation, portal removal, phone activation, etc.).
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
      auth_names = opts[:debug_auth_names] || []

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
    # Checks if the current user is authenticated or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-authentificated/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def get_is_authentificated(opts = {})
      data, _status_code, _headers = get_is_authentificated_with_http_info(opts)
      data
    end

    # Check authentication
    # Checks if the current user is authenticated or not.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Logs out of the current user account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/logout/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def logout(opts = {})
      data, _status_code, _headers = logout_with_http_info(opts)
      data
    end

    # Log out
    # Logs out of the current user account.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Sets a mobile phone for the current user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-mobile-phone/
    # @param [Hash] opts the optional parameters
    # @option opts [MobileRequestsDto] :mobile_requests_dto 
    # @return [AuthenticationTokenWrapper]
    def save_mobile_phone(opts = {})
      data, _status_code, _headers = save_mobile_phone_with_http_info(opts)
      data
    end

    # Set a mobile phone
    # Sets a mobile phone for the current user.
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
    # Sends SMS with an authentication code.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-sms-code/
    # @param [Hash] opts the optional parameters
    # @option opts [AuthRequestsDto] :auth_requests_dto 
    # @return [AuthenticationTokenWrapper]
    def send_sms_code(opts = {})
      data, _status_code, _headers = send_sms_code_with_http_info(opts)
      data
    end

    # Send SMS code
    # Sends SMS with an authentication code.
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
      auth_names = opts[:debug_auth_names] || []

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

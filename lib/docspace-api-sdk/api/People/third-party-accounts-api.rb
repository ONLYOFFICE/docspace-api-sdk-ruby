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
  module People
    class ThirdPartyAccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get third-party accounts
    # Returns a list of the available third-party accounts.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-auth-providers/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :invite_view Specifies whether to return providers that are available for invitation links, i.e. the user can login or register through these providers.
    # @option opts [Boolean] :settings_view Specifies whether to display the provider settings in a pop-up window (true) or redirect them to the desktop application (false).
    # @option opts [String] :client_callback The method that is called after authentication.
    # @option opts [String] :from_only The provider name if a response is required only from this provider.
    # @return [AccountInfoArrayWrapper]
    def get_third_party_auth_providers(opts = {})
      data, _status_code, _headers = get_third_party_auth_providers_with_http_info(opts)
      data
    end

    # Get third-party accounts
    # Returns a list of the available third-party accounts.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-auth-providers/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :invite_view Specifies whether to return providers that are available for invitation links, i.e. the user can login or register through these providers.
    # @option opts [Boolean] :settings_view Specifies whether to display the provider settings in a pop-up window (true) or redirect them to the desktop application (false).
    # @option opts [String] :client_callback The method that is called after authentication.
    # @option opts [String] :from_only The provider name if a response is required only from this provider.
    # @return [Array<(AccountInfoArrayWrapper, Integer, Hash)>] AccountInfoArrayWrapper data, response status code and response headers
    def get_third_party_auth_providers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ThirdPartyAccountsApi.get_third_party_auth_providers ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/thirdparty/providers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inviteView'] = opts[:'invite_view'] if !opts[:'invite_view'].nil?
      query_params[:'settingsView'] = opts[:'settings_view'] if !opts[:'settings_view'].nil?
      query_params[:'clientCallback'] = opts[:'client_callback'] if !opts[:'client_callback'].nil?
      query_params[:'fromOnly'] = opts[:'from_only'] if !opts[:'from_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AccountInfoArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"People::ThirdPartyAccountsApi.get_third_party_auth_providers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ThirdPartyAccountsApi#get_third_party_auth_providers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Link a third-pary account
    # Links a third-party account specified in the request to the user profile.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/link-third-party-account/
    # @param [Hash] opts the optional parameters
    # @option opts [LinkAccountRequestDto] :link_account_request_dto 
    # @return [nil]
    def link_third_party_account(opts = {})
      link_third_party_account_with_http_info(opts)
      nil
    end

    # Link a third-pary account
    # Links a third-party account specified in the request to the user profile.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/link-third-party-account/
    # @param [Hash] opts the optional parameters
    # @option opts [LinkAccountRequestDto] :link_account_request_dto 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def link_third_party_account_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ThirdPartyAccountsApi.link_third_party_account ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/thirdparty/linkaccount'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'link_account_request_dto'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ThirdPartyAccountsApi.link_third_party_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ThirdPartyAccountsApi#link_third_party_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a third-pary account
    # Creates a third-party account with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/signup-third-party-account/
    # @param [Hash] opts the optional parameters
    # @option opts [SignupAccountRequestDto] :signup_account_request_dto 
    # @return [EmployeeWrapper]
    def signup_third_party_account(opts = {})
      data, _status_code, _headers = signup_third_party_account_with_http_info(opts)
      data
    end

    # Create a third-pary account
    # Creates a third-party account with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/signup-third-party-account/
    # @param [Hash] opts the optional parameters
    # @option opts [SignupAccountRequestDto] :signup_account_request_dto 
    # @return [Array<(EmployeeWrapper, Integer, Hash)>] EmployeeWrapper data, response status code and response headers
    def signup_third_party_account_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ThirdPartyAccountsApi.signup_third_party_account ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/thirdparty/signup'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'signup_account_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"People::ThirdPartyAccountsApi.signup_third_party_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ThirdPartyAccountsApi#signup_third_party_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unlink a third-pary account
    # Unlinks a third-party account specified in the request from the user profile.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-third-party-account/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :provider The provider name.
    # @return [nil]
    def unlink_third_party_account(opts = {})
      unlink_third_party_account_with_http_info(opts)
      nil
    end

    # Unlink a third-pary account
    # Unlinks a third-party account specified in the request from the user profile.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-third-party-account/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :provider The provider name.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def unlink_third_party_account_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ThirdPartyAccountsApi.unlink_third_party_account ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/thirdparty/unlinkaccount'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'provider'] = opts[:'provider'] if !opts[:'provider'].nil?

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ThirdPartyAccountsApi.unlink_third_party_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ThirdPartyAccountsApi#unlink_third_party_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

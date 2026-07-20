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
  module Settings
    class TFASettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the TFA codes
    # Returns the two-factor authentication application codes.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-app-codes/
    # @param [Hash] opts the optional parameters
    # @return [TfaAppCodeArrayWrapper]
    def get_tfa_app_codes(opts = {})
      data, _status_code, _headers = get_tfa_app_codes_with_http_info(opts)
      data
    end

    # Get the TFA codes
    # Returns the two-factor authentication application codes.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-app-codes/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TfaAppCodeArrayWrapper, Integer, Hash)>] TfaAppCodeArrayWrapper data, response status code and response headers
    def get_tfa_app_codes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::TFASettingsApi.get_tfa_app_codes ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/tfaappcodes'

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
      return_type = opts[:debug_return_type] || 'TfaAppCodeArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::TFASettingsApi.get_tfa_app_codes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::TFASettingsApi#get_tfa_app_codes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get TFA confirmation data
    # Returns the confirmation data for authorization via SMS or TFA application.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-confirm-data/
    # @param [Hash] opts the optional parameters
    # @return [TfaConfirmDataWrapper]
    def get_tfa_confirm_data(opts = {})
      data, _status_code, _headers = get_tfa_confirm_data_with_http_info(opts)
      data
    end

    # Get TFA confirmation data
    # Returns the confirmation data for authorization via SMS or TFA application.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-confirm-data/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TfaConfirmDataWrapper, Integer, Hash)>] TfaConfirmDataWrapper data, response status code and response headers
    def get_tfa_confirm_data_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::TFASettingsApi.get_tfa_confirm_data ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/tfaapp/confirm'

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
      return_type = opts[:debug_return_type] || 'TfaConfirmDataWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::TFASettingsApi.get_tfa_confirm_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::TFASettingsApi#get_tfa_confirm_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the TFA settings
    # Returns the current two-factor authentication settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-settings/
    # @param [Hash] opts the optional parameters
    # @return [TfaSettingsArrayWrapper]
    def get_tfa_settings(opts = {})
      data, _status_code, _headers = get_tfa_settings_with_http_info(opts)
      data
    end

    # Get the TFA settings
    # Returns the current two-factor authentication settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TfaSettingsArrayWrapper, Integer, Hash)>] TfaSettingsArrayWrapper data, response status code and response headers
    def get_tfa_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::TFASettingsApi.get_tfa_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/tfaapp'

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
      return_type = opts[:debug_return_type] || 'TfaSettingsArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::TFASettingsApi.get_tfa_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::TFASettingsApi#get_tfa_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate setup code
    # Generates the setup TFA code for the current user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/tfa-app-generate-setup-code/
    # @param [Hash] opts the optional parameters
    # @return [SetupCodeWrapper]
    def tfa_app_generate_setup_code(opts = {})
      data, _status_code, _headers = tfa_app_generate_setup_code_with_http_info(opts)
      data
    end

    # Generate setup code
    # Generates the setup TFA code for the current user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/tfa-app-generate-setup-code/
    # @param [Hash] opts the optional parameters
    # @return [Array<(SetupCodeWrapper, Integer, Hash)>] SetupCodeWrapper data, response status code and response headers
    def tfa_app_generate_setup_code_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::TFASettingsApi.tfa_app_generate_setup_code ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/tfaapp/setup'

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
      return_type = opts[:debug_return_type] || 'SetupCodeWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::TFASettingsApi.tfa_app_generate_setup_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::TFASettingsApi#tfa_app_generate_setup_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Validate the TFA code
    # Validates the two-factor authentication code specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/tfa-validate-auth-code/
    # @param [Hash] opts the optional parameters
    # @option opts [TfaValidateRequestsDto] :tfa_validate_requests_dto 
    # @return [BooleanWrapper]
    def tfa_validate_auth_code(opts = {})
      data, _status_code, _headers = tfa_validate_auth_code_with_http_info(opts)
      data
    end

    # Validate the TFA code
    # Validates the two-factor authentication code specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/tfa-validate-auth-code/
    # @param [Hash] opts the optional parameters
    # @option opts [TfaValidateRequestsDto] :tfa_validate_requests_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def tfa_validate_auth_code_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::TFASettingsApi.tfa_validate_auth_code ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/tfaapp/validate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tfa_validate_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::TFASettingsApi.tfa_validate_auth_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::TFASettingsApi#tfa_validate_auth_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unlink the TFA application
    # Unlinks the current two-factor authentication application from the user account specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-tfa-app/
    # @param [Hash] opts the optional parameters
    # @option opts [TfaRequestsDto] :tfa_requests_dto 
    # @return [StringWrapper]
    def unlink_tfa_app(opts = {})
      data, _status_code, _headers = unlink_tfa_app_with_http_info(opts)
      data
    end

    # Unlink the TFA application
    # Unlinks the current two-factor authentication application from the user account specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-tfa-app/
    # @param [Hash] opts the optional parameters
    # @option opts [TfaRequestsDto] :tfa_requests_dto 
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def unlink_tfa_app_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::TFASettingsApi.unlink_tfa_app ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/tfaappnewapp'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tfa_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::TFASettingsApi.unlink_tfa_app",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::TFASettingsApi#unlink_tfa_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the TFA codes
    # Requests the new backup codes for the two-factor authentication application.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-app-codes/
    # @param [Hash] opts the optional parameters
    # @return [TfaAppCodeArrayWrapper]
    def update_tfa_app_codes(opts = {})
      data, _status_code, _headers = update_tfa_app_codes_with_http_info(opts)
      data
    end

    # Update the TFA codes
    # Requests the new backup codes for the two-factor authentication application.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-app-codes/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TfaAppCodeArrayWrapper, Integer, Hash)>] TfaAppCodeArrayWrapper data, response status code and response headers
    def update_tfa_app_codes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::TFASettingsApi.update_tfa_app_codes ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/tfaappnewcodes'

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
      return_type = opts[:debug_return_type] || 'TfaAppCodeArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::TFASettingsApi.update_tfa_app_codes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::TFASettingsApi#update_tfa_app_codes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the TFA settings
    # Updates the two-factor authentication settings with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TfaRequestsDto] :tfa_requests_dto 
    # @return [BooleanWrapper]
    def update_tfa_settings(opts = {})
      data, _status_code, _headers = update_tfa_settings_with_http_info(opts)
      data
    end

    # Update the TFA settings
    # Updates the two-factor authentication settings with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TfaRequestsDto] :tfa_requests_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def update_tfa_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::TFASettingsApi.update_tfa_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/tfaapp'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tfa_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::TFASettingsApi.update_tfa_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::TFASettingsApi#update_tfa_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates TFA settings
    # Updates TFA settings and returns the confirmation URL for authorization via SMS or TFA application.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-settings-link/
    # @param [Hash] opts the optional parameters
    # @option opts [TfaRequestsDto] :tfa_requests_dto 
    # @return [StringWrapper]
    def update_tfa_settings_link(opts = {})
      data, _status_code, _headers = update_tfa_settings_link_with_http_info(opts)
      data
    end

    # Updates TFA settings
    # Updates TFA settings and returns the confirmation URL for authorization via SMS or TFA application.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-settings-link/
    # @param [Hash] opts the optional parameters
    # @option opts [TfaRequestsDto] :tfa_requests_dto 
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def update_tfa_settings_link_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::TFASettingsApi.update_tfa_settings_link ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/tfaappwithlink'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tfa_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::TFASettingsApi.update_tfa_settings_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::TFASettingsApi#update_tfa_settings_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

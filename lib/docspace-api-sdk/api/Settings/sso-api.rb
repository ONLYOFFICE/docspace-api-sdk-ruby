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
    class SSOApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the default SSO settings
    # Returns the default portal SSO settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-sso-settings-v2/
    # @param [Hash] opts the optional parameters
    # @return [SsoSettingsV2Wrapper]
    def get_default_sso_settings_v2(opts = {})
      data, _status_code, _headers = get_default_sso_settings_v2_with_http_info(opts)
      data
    end

    # Get the default SSO settings
    # Returns the default portal SSO settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-sso-settings-v2/
    # @param [Hash] opts the optional parameters
    # @return [Array<(SsoSettingsV2Wrapper, Integer, Hash)>] SsoSettingsV2Wrapper data, response status code and response headers
    def get_default_sso_settings_v2_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SSOApi.get_default_sso_settings_v2 ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/ssov2/default'

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
      return_type = opts[:debug_return_type] || 'SsoSettingsV2Wrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SSOApi.get_default_sso_settings_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SSOApi#get_default_sso_settings_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the SSO settings
    # Returns the current portal SSO settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2/
    # @param [Hash] opts the optional parameters
    # @return [SsoSettingsV2Wrapper]
    def get_sso_settings_v2(opts = {})
      data, _status_code, _headers = get_sso_settings_v2_with_http_info(opts)
      data
    end

    # Get the SSO settings
    # Returns the current portal SSO settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2/
    # @param [Hash] opts the optional parameters
    # @return [Array<(SsoSettingsV2Wrapper, Integer, Hash)>] SsoSettingsV2Wrapper data, response status code and response headers
    def get_sso_settings_v2_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SSOApi.get_sso_settings_v2 ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/ssov2'

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
      return_type = opts[:debug_return_type] || 'SsoSettingsV2Wrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Settings::SSOApi.get_sso_settings_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SSOApi#get_sso_settings_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the SSO settings constants
    # Returns the SSO settings constants.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2-constants/
    # @param [Hash] opts the optional parameters
    # @return [ObjectWrapper]
    def get_sso_settings_v2_constants(opts = {})
      data, _status_code, _headers = get_sso_settings_v2_constants_with_http_info(opts)
      data
    end

    # Get the SSO settings constants
    # Returns the SSO settings constants.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2-constants/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
    def get_sso_settings_v2_constants_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SSOApi.get_sso_settings_v2_constants ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/ssov2/constants'

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
      return_type = opts[:debug_return_type] || 'ObjectWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SSOApi.get_sso_settings_v2_constants",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SSOApi#get_sso_settings_v2_constants\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset the SSO settings
    # Resets the SSO settings of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-sso-settings-v2/
    # @param [Hash] opts the optional parameters
    # @return [SsoSettingsV2Wrapper]
    def reset_sso_settings_v2(opts = {})
      data, _status_code, _headers = reset_sso_settings_v2_with_http_info(opts)
      data
    end

    # Reset the SSO settings
    # Resets the SSO settings of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-sso-settings-v2/
    # @param [Hash] opts the optional parameters
    # @return [Array<(SsoSettingsV2Wrapper, Integer, Hash)>] SsoSettingsV2Wrapper data, response status code and response headers
    def reset_sso_settings_v2_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SSOApi.reset_sso_settings_v2 ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/ssov2'

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
      return_type = opts[:debug_return_type] || 'SsoSettingsV2Wrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SSOApi.reset_sso_settings_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SSOApi#reset_sso_settings_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the SSO settings
    # Saves the SSO settings for the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-sso-settings-v2/
    # @param [Hash] opts the optional parameters
    # @option opts [SsoSettingsRequestsDto] :sso_settings_requests_dto 
    # @return [SsoSettingsV2Wrapper]
    def save_sso_settings_v2(opts = {})
      data, _status_code, _headers = save_sso_settings_v2_with_http_info(opts)
      data
    end

    # Save the SSO settings
    # Saves the SSO settings for the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-sso-settings-v2/
    # @param [Hash] opts the optional parameters
    # @option opts [SsoSettingsRequestsDto] :sso_settings_requests_dto 
    # @return [Array<(SsoSettingsV2Wrapper, Integer, Hash)>] SsoSettingsV2Wrapper data, response status code and response headers
    def save_sso_settings_v2_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SSOApi.save_sso_settings_v2 ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/ssov2'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'sso_settings_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'SsoSettingsV2Wrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SSOApi.save_sso_settings_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SSOApi#save_sso_settings_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

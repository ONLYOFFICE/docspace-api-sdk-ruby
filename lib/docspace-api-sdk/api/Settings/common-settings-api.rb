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
    class CommonSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Close the admin helper
    # Closes the administrator helper notification.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/close-admin-helper/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def close_admin_helper(opts = {})
      close_admin_helper_with_http_info(opts)
      nil
    end

    # Close the admin helper
    # Closes the administrator helper notification.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/close-admin-helper/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def close_admin_helper_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.close_admin_helper ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/closeadminhelper'

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.close_admin_helper",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#close_admin_helper\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Complete the Wizard settings
    # Completes the Wizard settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/complete-wizard/
    # @param [Hash] opts the optional parameters
    # @option opts [WizardRequestsDto] :wizard_requests_dto 
    # @return [WizardSettingsWrapper]
    def complete_wizard(opts = {})
      data, _status_code, _headers = complete_wizard_with_http_info(opts)
      data
    end

    # Complete the Wizard settings
    # Completes the Wizard settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/complete-wizard/
    # @param [Hash] opts the optional parameters
    # @option opts [WizardRequestsDto] :wizard_requests_dto 
    # @return [Array<(WizardSettingsWrapper, Integer, Hash)>] WizardSettingsWrapper data, response status code and response headers
    def complete_wizard_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.complete_wizard ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/wizard/complete'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'wizard_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'WizardSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.complete_wizard",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#complete_wizard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Configure the deep link settings
    # Saves the deep link configuration settings for the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/configure-deep-link/
    # @param [Hash] opts the optional parameters
    # @option opts [DeepLinkConfigurationRequestsDto] :deep_link_configuration_requests_dto 
    # @return [TenantDeepLinkSettingsWrapper]
    def configure_deep_link(opts = {})
      data, _status_code, _headers = configure_deep_link_with_http_info(opts)
      data
    end

    # Configure the deep link settings
    # Saves the deep link configuration settings for the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/configure-deep-link/
    # @param [Hash] opts the optional parameters
    # @option opts [DeepLinkConfigurationRequestsDto] :deep_link_configuration_requests_dto 
    # @return [Array<(TenantDeepLinkSettingsWrapper, Integer, Hash)>] TenantDeepLinkSettingsWrapper data, response status code and response headers
    def configure_deep_link_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.configure_deep_link ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/deeplink'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'deep_link_configuration_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TenantDeepLinkSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.configure_deep_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#configure_deep_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a color theme
    # Deletes the portal color theme with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-portal-color-theme/
    # @param id [Integer] The ID of the portal theme to delete.
    # @param [Hash] opts the optional parameters
    # @return [CustomColorThemesSettingsWrapper]
    def delete_portal_color_theme(id, opts = {})
      data, _status_code, _headers = delete_portal_color_theme_with_http_info(id, opts)
      data
    end

    # Delete a color theme
    # Deletes the portal color theme with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-portal-color-theme/
    # @param id [Integer] The ID of the portal theme to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomColorThemesSettingsWrapper, Integer, Hash)>] CustomColorThemesSettingsWrapper data, response status code and response headers
    def delete_portal_color_theme_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.delete_portal_color_theme ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Settings::CommonSettingsApi.delete_portal_color_theme"
      end
      # resource path
      local_var_path = '/api/2.0/settings/colortheme'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CustomColorThemesSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.delete_portal_color_theme",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#delete_portal_color_theme\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the deep link settings
    # Returns the deep link settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-deep-link-settings/
    # @param [Hash] opts the optional parameters
    # @return [TenantDeepLinkSettingsWrapper]
    def get_deep_link_settings(opts = {})
      data, _status_code, _headers = get_deep_link_settings_with_http_info(opts)
      data
    end

    # Get the deep link settings
    # Returns the deep link settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-deep-link-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantDeepLinkSettingsWrapper, Integer, Hash)>] TenantDeepLinkSettingsWrapper data, response status code and response headers
    def get_deep_link_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.get_deep_link_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/deeplink'

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
      return_type = opts[:debug_return_type] || 'TenantDeepLinkSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.get_deep_link_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#get_deep_link_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the payment settings
    # Returns the portal payment settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-settings/
    # @param [Hash] opts the optional parameters
    # @return [PaymentSettingsWrapper]
    def get_payment_settings(opts = {})
      data, _status_code, _headers = get_payment_settings_with_http_info(opts)
      data
    end

    # Get the payment settings
    # Returns the portal payment settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentSettingsWrapper, Integer, Hash)>] PaymentSettingsWrapper data, response status code and response headers
    def get_payment_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.get_payment_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/payment'

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
      return_type = opts[:debug_return_type] || 'PaymentSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.get_payment_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#get_payment_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a color theme
    # Returns the portal color theme.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-color-theme/
    # @param [Hash] opts the optional parameters
    # @return [CustomColorThemesSettingsWrapper]
    def get_portal_color_theme(opts = {})
      data, _status_code, _headers = get_portal_color_theme_with_http_info(opts)
      data
    end

    # Get a color theme
    # Returns the portal color theme.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-color-theme/
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomColorThemesSettingsWrapper, Integer, Hash)>] CustomColorThemesSettingsWrapper data, response status code and response headers
    def get_portal_color_theme_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.get_portal_color_theme ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/colortheme'

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
      return_type = opts[:debug_return_type] || 'CustomColorThemesSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.get_portal_color_theme",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#get_portal_color_theme\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get hostname
    # Returns the portal hostname.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-hostname/
    # @param [Hash] opts the optional parameters
    # @return [ObjectWrapper]
    def get_portal_hostname(opts = {})
      data, _status_code, _headers = get_portal_hostname_with_http_info(opts)
      data
    end

    # Get hostname
    # Returns the portal hostname.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-hostname/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
    def get_portal_hostname_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.get_portal_hostname ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/machine'

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
        :operation => :"Settings::CommonSettingsApi.get_portal_hostname",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#get_portal_hostname\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a portal logo
    # Returns the portal logo image URL.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-logo/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def get_portal_logo(opts = {})
      data, _status_code, _headers = get_portal_logo_with_http_info(opts)
      data
    end

    # Get a portal logo
    # Returns the portal logo image URL.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-logo/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def get_portal_logo_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.get_portal_logo ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/logo'

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
        :operation => :"Settings::CommonSettingsApi.get_portal_logo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#get_portal_logo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the portal settings
    # Returns a list of all the available portal settings with the current values for each parameter.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :withpassword Specifies whether to include the password hashing configuration in the response.
    # @return [SettingsWrapper]
    def get_portal_settings(opts = {})
      data, _status_code, _headers = get_portal_settings_with_http_info(opts)
      data
    end

    # Get the portal settings
    # Returns a list of all the available portal settings with the current values for each parameter.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :withpassword Specifies whether to include the password hashing configuration in the response.
    # @return [Array<(SettingsWrapper, Integer, Hash)>] SettingsWrapper data, response status code and response headers
    def get_portal_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.get_portal_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'withpassword'] = opts[:'withpassword'] if !opts[:'withpassword'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.get_portal_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#get_portal_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the socket settings
    # Returns the socket settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-socket-settings/
    # @param [Hash] opts the optional parameters
    # @return [ObjectWrapper]
    def get_socket_settings(opts = {})
      data, _status_code, _headers = get_socket_settings_with_http_info(opts)
      data
    end

    # Get the socket settings
    # Returns the socket settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-socket-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
    def get_socket_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.get_socket_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/socket'

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
        :operation => :"Settings::CommonSettingsApi.get_socket_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#get_socket_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get supported languages
    # Returns a list of all the available portal languages in the format of a two-letter or four-letter language code (e.g. de, en-US, etc.).
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-supported-cultures/
    # @param [Hash] opts the optional parameters
    # @return [STRINGArrayWrapper]
    def get_supported_cultures(opts = {})
      data, _status_code, _headers = get_supported_cultures_with_http_info(opts)
      data
    end

    # Get supported languages
    # Returns a list of all the available portal languages in the format of a two-letter or four-letter language code (e.g. de, en-US, etc.).
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-supported-cultures/
    # @param [Hash] opts the optional parameters
    # @return [Array<(STRINGArrayWrapper, Integer, Hash)>] STRINGArrayWrapper data, response status code and response headers
    def get_supported_cultures_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.get_supported_cultures ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/cultures'

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
      return_type = opts[:debug_return_type] || 'STRINGArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.get_supported_cultures",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#get_supported_cultures\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the AI access settings for the portal
    # Returns the current portal-level AI access settings that control whether all AI functionality  (chat, agents, vectorization) is available for the portal. AI is enabled by default.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-ai-access-settings/
    # @param [Hash] opts the optional parameters
    # @return [TenantAiAccessSettingsWrapper]
    def get_tenant_ai_access_settings(opts = {})
      data, _status_code, _headers = get_tenant_ai_access_settings_with_http_info(opts)
      data
    end

    # Get the AI access settings for the portal
    # Returns the current portal-level AI access settings that control whether all AI functionality  (chat, agents, vectorization) is available for the portal. AI is enabled by default.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-ai-access-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantAiAccessSettingsWrapper, Integer, Hash)>] TenantAiAccessSettingsWrapper data, response status code and response headers
    def get_tenant_ai_access_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.get_tenant_ai_access_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/ai-access'

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
      return_type = opts[:debug_return_type] || 'TenantAiAccessSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.get_tenant_ai_access_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#get_tenant_ai_access_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the user invitation settings
    # Returns the portal user invitation settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-user-invitation-settings/
    # @param [Hash] opts the optional parameters
    # @return [TenantUserInvitationSettingsWrapper]
    def get_tenant_user_invitation_settings(opts = {})
      data, _status_code, _headers = get_tenant_user_invitation_settings_with_http_info(opts)
      data
    end

    # Get the user invitation settings
    # Returns the portal user invitation settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-user-invitation-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantUserInvitationSettingsWrapper, Integer, Hash)>] TenantUserInvitationSettingsWrapper data, response status code and response headers
    def get_tenant_user_invitation_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.get_tenant_user_invitation_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/invitationsettings'

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
      return_type = opts[:debug_return_type] || 'TenantUserInvitationSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.get_tenant_user_invitation_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#get_tenant_user_invitation_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get time zones
    # Returns a list of all the available portal time zones.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-time-zones/
    # @param [Hash] opts the optional parameters
    # @return [TimezonesRequestsArrayWrapper]
    def get_time_zones(opts = {})
      data, _status_code, _headers = get_time_zones_with_http_info(opts)
      data
    end

    # Get time zones
    # Returns a list of all the available portal time zones.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-time-zones/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TimezonesRequestsArrayWrapper, Integer, Hash)>] TimezonesRequestsArrayWrapper data, response status code and response headers
    def get_time_zones_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.get_time_zones ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/timezones'

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
      return_type = opts[:debug_return_type] || 'TimezonesRequestsArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.get_time_zones",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#get_time_zones\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the default folder
    # Sets the default folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-default-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [DefaultProductRequestDto] :default_product_request_dto 
    # @return [StudioDefaultPageSettingsWrapper]
    def save_default_folder(opts = {})
      data, _status_code, _headers = save_default_folder_with_http_info(opts)
      data
    end

    # Set the default folder
    # Sets the default folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-default-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [DefaultProductRequestDto] :default_product_request_dto 
    # @return [Array<(StudioDefaultPageSettingsWrapper, Integer, Hash)>] StudioDefaultPageSettingsWrapper data, response status code and response headers
    def save_default_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.save_default_folder ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/defaultfolder'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'default_product_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StudioDefaultPageSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.save_default_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#save_default_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the DNS settings
    # Saves the DNS settings specified in the request to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-dns-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [DnsSettingsRequestsDto] :dns_settings_requests_dto 
    # @return [StringWrapper]
    def save_dns_settings(opts = {})
      data, _status_code, _headers = save_dns_settings_with_http_info(opts)
      data
    end

    # Save the DNS settings
    # Saves the DNS settings specified in the request to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-dns-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [DnsSettingsRequestsDto] :dns_settings_requests_dto 
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def save_dns_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.save_dns_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/dns'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'dns_settings_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.save_dns_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#save_dns_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the mail domain settings
    # Saves the mail domain settings specified in the request to the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-mail-domain-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [MailDomainSettingsRequestsDto] :mail_domain_settings_requests_dto 
    # @return [StringWrapper]
    def save_mail_domain_settings(opts = {})
      data, _status_code, _headers = save_mail_domain_settings_with_http_info(opts)
      data
    end

    # Save the mail domain settings
    # Saves the mail domain settings specified in the request to the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-mail-domain-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [MailDomainSettingsRequestsDto] :mail_domain_settings_requests_dto 
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def save_mail_domain_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.save_mail_domain_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/maildomainsettings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'mail_domain_settings_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.save_mail_domain_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#save_mail_domain_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save a color theme
    # Saves the portal color theme specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-portal-color-theme/
    # @param [Hash] opts the optional parameters
    # @option opts [CustomColorThemesSettingsRequestsDto] :custom_color_themes_settings_requests_dto 
    # @return [CustomColorThemesSettingsWrapper]
    def save_portal_color_theme(opts = {})
      data, _status_code, _headers = save_portal_color_theme_with_http_info(opts)
      data
    end

    # Save a color theme
    # Saves the portal color theme specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-portal-color-theme/
    # @param [Hash] opts the optional parameters
    # @option opts [CustomColorThemesSettingsRequestsDto] :custom_color_themes_settings_requests_dto 
    # @return [Array<(CustomColorThemesSettingsWrapper, Integer, Hash)>] CustomColorThemesSettingsWrapper data, response status code and response headers
    def save_portal_color_theme_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.save_portal_color_theme ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/colortheme'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'custom_color_themes_settings_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'CustomColorThemesSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.save_portal_color_theme",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#save_portal_color_theme\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the AI access for the portal
    # Updates the portal-level AI access settings. When AI is disabled, all AI features are turned off:  the AI Agents folder is hidden from root folder listings, AI status checks immediately return disabled,  and AI chat endpoints become inaccessible. Only users with the DocSpaceAdmin role  (EditPortalSettings permission) can change this setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-ai-access-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantAiAccessSettingsDto] :tenant_ai_access_settings_dto 
    # @return [TenantAiAccessSettingsWrapper]
    def set_tenant_ai_access_settings(opts = {})
      data, _status_code, _headers = set_tenant_ai_access_settings_with_http_info(opts)
      data
    end

    # Set the AI access for the portal
    # Updates the portal-level AI access settings. When AI is disabled, all AI features are turned off:  the AI Agents folder is hidden from root folder listings, AI status checks immediately return disabled,  and AI chat endpoints become inaccessible. Only users with the DocSpaceAdmin role  (EditPortalSettings permission) can change this setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-ai-access-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantAiAccessSettingsDto] :tenant_ai_access_settings_dto 
    # @return [Array<(TenantAiAccessSettingsWrapper, Integer, Hash)>] TenantAiAccessSettingsWrapper data, response status code and response headers
    def set_tenant_ai_access_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.set_tenant_ai_access_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/ai-access'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tenant_ai_access_settings_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TenantAiAccessSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.set_tenant_ai_access_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#set_tenant_ai_access_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the email activation settings
    # Updates the email activation settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-email-activation-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [EmailActivationSettings] :email_activation_settings 
    # @return [EmailActivationSettingsWrapper]
    def update_email_activation_settings(opts = {})
      data, _status_code, _headers = update_email_activation_settings_with_http_info(opts)
      data
    end

    # Update the email activation settings
    # Updates the email activation settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-email-activation-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [EmailActivationSettings] :email_activation_settings 
    # @return [Array<(EmailActivationSettingsWrapper, Integer, Hash)>] EmailActivationSettingsWrapper data, response status code and response headers
    def update_email_activation_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.update_email_activation_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/emailactivation'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'email_activation_settings'])

      # return_type
      return_type = opts[:debug_return_type] || 'EmailActivationSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.update_email_activation_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#update_email_activation_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update user invitation settings
    # Updates the portal user invitation settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-invitation-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantUserInvitationSettingsRequestDto] :tenant_user_invitation_settings_request_dto 
    # @return [TenantUserInvitationSettingsWrapper]
    def update_invitation_settings(opts = {})
      data, _status_code, _headers = update_invitation_settings_with_http_info(opts)
      data
    end

    # Update user invitation settings
    # Updates the portal user invitation settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-invitation-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantUserInvitationSettingsRequestDto] :tenant_user_invitation_settings_request_dto 
    # @return [Array<(TenantUserInvitationSettingsWrapper, Integer, Hash)>] TenantUserInvitationSettingsWrapper data, response status code and response headers
    def update_invitation_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::CommonSettingsApi.update_invitation_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/invitationsettings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tenant_user_invitation_settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TenantUserInvitationSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::CommonSettingsApi.update_invitation_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::CommonSettingsApi#update_invitation_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

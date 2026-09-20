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
    # Dismisses the administrator helper tip for the caller, so it is not shown again on this account. Available  only to a DocSpace administrator, which includes the portal Owner, on a Standalone (self-hosted) installation  running outside white-label custom mode; every other caller is refused. This is a mutating, idempotent call  scoped to the calling account only; it never affects other administrators. It returns no data on success.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/close-admin-helper/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def close_admin_helper(opts = {})
      close_admin_helper_with_http_info(opts)
      nil
    end

    # Close the admin helper
    # Dismisses the administrator helper tip for the caller, so it is not shown again on this account. Available  only to a DocSpace administrator, which includes the portal Owner, on a Standalone (self-hosted) installation  running outside white-label custom mode; every other caller is refused. This is a mutating, idempotent call  scoped to the calling account only; it never affects other administrators. It returns no data on success.
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
    # Finishes the initial portal setup wizard: sets the owner's password and locale, applies the supplied license  if one is required, and marks the wizard as completed so it is not shown again. This call is not for a normal  logged-in session: it requires a confirmation link bearing the Wizard claim, of the kind issued when a new  portal is created, and the link is consumed as part of authenticating the request; the caller must also hold  the EditPortalSettings permission. An empty password or a malformed email address is rejected without  completing the wizard, and so is a missing, invalid, or expired license, or a license whose user quota does  not cover the portal. This call is meant to run once per portal; running it again is accepted but has no  further effect once the wizard is already completed. It returns the resulting wizard settings, including the  completed flag.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/complete-wizard/
    # @param [Hash] opts the optional parameters
    # @option opts [WizardRequestsDto] :wizard_requests_dto 
    # @return [WizardSettingsWrapper]
    def complete_wizard(opts = {})
      data, _status_code, _headers = complete_wizard_with_http_info(opts)
      data
    end

    # Complete the Wizard settings
    # Finishes the initial portal setup wizard: sets the owner's password and locale, applies the supplied license  if one is required, and marks the wizard as completed so it is not shown again. This call is not for a normal  logged-in session: it requires a confirmation link bearing the Wizard claim, of the kind issued when a new  portal is created, and the link is consumed as part of authenticating the request; the caller must also hold  the EditPortalSettings permission. An empty password or a malformed email address is rejected without  completing the wizard, and so is a missing, invalid, or expired license, or a license whose user quota does  not cover the portal. This call is meant to run once per portal; running it again is accepted but has no  further effect once the wizard is already completed. It returns the resulting wizard settings, including the  completed flag.
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
    # Sets how the portal responds when a client opens a DocSpace link on a mobile device: always in the browser,  always in the native app, or asking the user to choose each time. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). The handling mode must be one of the documented enum values; anything else is  rejected without being saved. This is a mutating, idempotent call: sending the same mode again leaves the  setting unchanged. It returns the saved deep link settings, including the timestamp of the last change; read  the current value at any time, including anonymously, from `GET api/2.0/settings/deeplink`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/configure-deep-link/
    # @param [Hash] opts the optional parameters
    # @option opts [DeepLinkConfigurationRequestsDto] :deep_link_configuration_requests_dto 
    # @return [TenantDeepLinkSettingsWrapper]
    def configure_deep_link(opts = {})
      data, _status_code, _headers = configure_deep_link_with_http_info(opts)
      data
    end

    # Configure the deep link settings
    # Sets how the portal responds when a client opens a DocSpace link on a mobile device: always in the browser,  always in the native app, or asking the user to choose each time. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). The handling mode must be one of the documented enum values; anything else is  rejected without being saved. This is a mutating, idempotent call: sending the same mode again leaves the  setting unchanged. It returns the saved deep link settings, including the timestamp of the last change; read  the current value at any time, including anonymously, from `GET api/2.0/settings/deeplink`.
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
    # Removes a custom color theme from the portal by its ID. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). An ID belonging to one of the built-in default themes is not removable; the  call succeeds but leaves the theme list unchanged. If the deleted theme was the currently selected one, the  theme with the lowest remaining ID is selected automatically. This is a mutating, idempotent call: deleting an  ID that is already gone succeeds without error and again leaves nothing changed. It returns the full updated  theme configuration, including the (possibly new) selected theme.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-portal-color-theme/
    # @param id [Integer] The theme to remove, by theme ID. An ID belonging to a built-in theme leaves the list untouched, and so does  one that is already gone - neither is reported as an error. Removing the theme currently in use moves the  portal to the remaining theme with the lowest ID.
    # @param [Hash] opts the optional parameters
    # @return [CustomColorThemesSettingsWrapper]
    def delete_portal_color_theme(id, opts = {})
      data, _status_code, _headers = delete_portal_color_theme_with_http_info(id, opts)
      data
    end

    # Delete a color theme
    # Removes a custom color theme from the portal by its ID. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). An ID belonging to one of the built-in default themes is not removable; the  call succeeds but leaves the theme list unchanged. If the deleted theme was the currently selected one, the  theme with the lowest remaining ID is selected automatically. This is a mutating, idempotent call: deleting an  ID that is already gone succeeds without error and again leaves nothing changed. It returns the full updated  theme configuration, including the (possibly new) selected theme.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-portal-color-theme/
    # @param id [Integer] The theme to remove, by theme ID. An ID belonging to a built-in theme leaves the list untouched, and so does  one that is already gone - neither is reported as an error. Removing the theme currently in use moves the  portal to the remaining theme with the lowest ID.
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
    # Returns how the portal currently responds when a client opens a DocSpace link on a mobile device: always in  the browser, always in the native app, or asking the user to choose. No permission is required; anonymous  callers can read it too. This is a read-only, idempotent call. The response supports conditional requests:  send the standard If-Modified-Since header with the previous `lastModified` value, and an unchanged response  comes back empty instead of resending the settings. Change the mode with `POST api/2.0/settings/deeplink`,  which requires the EditPortalSettings permission.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-deep-link-settings/
    # @param [Hash] opts the optional parameters
    # @return [TenantDeepLinkSettingsWrapper]
    def get_deep_link_settings(opts = {})
      data, _status_code, _headers = get_deep_link_settings_with_http_info(opts)
      data
    end

    # Get the deep link settings
    # Returns how the portal currently responds when a client opens a DocSpace link on a mobile device: always in  the browser, always in the native app, or asking the user to choose. No permission is required; anonymous  callers can read it too. This is a read-only, idempotent call. The response supports conditional requests:  send the standard If-Modified-Since header with the previous `lastModified` value, and an unchanged response  comes back empty instead of resending the settings. Change the mode with `POST api/2.0/settings/deeplink`,  which requires the EditPortalSettings permission.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Returns the portal's payment-related configuration: the sales contact email, the URL to buy or extend a  subscription, whether the portal is Standalone, the current license's trial status and expiration date, and  the maximum quota quantity that can be purchased at once. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). This is a read-only, idempotent call. It remains reachable even while the  portal's own subscription payment is overdue, since this is how the caller finds the link to resolve it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-settings/
    # @param [Hash] opts the optional parameters
    # @return [PaymentSettingsWrapper]
    def get_payment_settings(opts = {})
      data, _status_code, _headers = get_payment_settings_with_http_info(opts)
      data
    end

    # Get the payment settings
    # Returns the portal's payment-related configuration: the sales contact email, the URL to buy or extend a  subscription, whether the portal is Standalone, the current license's trial status and expiration date, and  the maximum quota quantity that can be purchased at once. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). This is a read-only, idempotent call. It remains reachable even while the  portal's own subscription payment is overdue, since this is how the caller finds the link to resolve it.
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
    # Returns the portal's color theme configuration: every saved custom theme, which one is currently selected, and  how many custom themes the plan still allows. No permission is required; anonymous callers can read it too.  This is a read-only, idempotent call. The response supports conditional requests: send the standard  If-Modified-Since header with the previous `lastModified` value, and an unchanged response comes back empty  instead of resending the same settings. A `limit` of `0` means the plan does not cap the number of custom  themes.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-color-theme/
    # @param [Hash] opts the optional parameters
    # @return [CustomColorThemesSettingsWrapper]
    def get_portal_color_theme(opts = {})
      data, _status_code, _headers = get_portal_color_theme_with_http_info(opts)
      data
    end

    # Get a color theme
    # Returns the portal's color theme configuration: every saved custom theme, which one is currently selected, and  how many custom themes the plan still allows. No permission is required; anonymous callers can read it too.  This is a read-only, idempotent call. The response supports conditional requests: send the standard  If-Modified-Since header with the previous `lastModified` value, and an unchanged response comes back empty  instead of resending the same settings. A `limit` of `0` means the plan does not cap the number of custom  themes.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Get the portal hostname
    # Returns the hostname the current request arrived on, exactly as sent in the HTTP Host header, so a client  mid-setup can learn the address the portal is actually reachable at. This call is not for a normal logged-in  session: it requires a confirmation link bearing the Wizard claim, of the kind generated during initial portal  setup, and the link is consumed as part of authenticating the request. This is a read-only, idempotent call.  The value reflects whatever the caller connected through, including a reverse proxy's public name, and is not  necessarily the tenant's configured alias or mapped domain.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-hostname/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def get_portal_hostname(opts = {})
      data, _status_code, _headers = get_portal_hostname_with_http_info(opts)
      data
    end

    # Get the portal hostname
    # Returns the hostname the current request arrived on, exactly as sent in the HTTP Host header, so a client  mid-setup can learn the address the portal is actually reachable at. This call is not for a normal logged-in  session: it requires a confirmation link bearing the Wizard claim, of the kind generated during initial portal  setup, and the link is consumed as part of authenticating the request. This is a read-only, idempotent call.  The value reflects whatever the caller connected through, including a reverse proxy's public name, and is not  necessarily the tenant's configured alias or mapped domain.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-hostname/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'StringWrapper'

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
    # Returns the absolute URL of the portal's current logo image, already resolved against the active white-label  branding. Requires an authenticated session; every role, including Guest, can read it. This is a read-only,  idempotent call. The response supports conditional requests: send the standard If-Modified-Since header with  the previous `lastModified` value, and an unchanged response comes back empty instead of resending the same  URL. The URL points at whatever image is currently configured, including the default DocSpace logo when no  custom branding has been set.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-logo/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def get_portal_logo(opts = {})
      data, _status_code, _headers = get_portal_logo_with_http_info(opts)
      data
    end

    # Get a portal logo
    # Returns the absolute URL of the portal's current logo image, already resolved against the active white-label  branding. Requires an authenticated session; every role, including Guest, can read it. This is a read-only,  idempotent call. The response supports conditional requests: send the standard If-Modified-Since header with  the previous `lastModified` value, and an unchanged response comes back empty instead of resending the same  URL. The URL points at whatever image is currently configured, including the default DocSpace logo when no  custom branding has been set.
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
    # Returns the current portal's general configuration: branding, culture, feature flags, and DocSpace/Standalone  mode, everything the client needs to render its shell before or after login. No permission is required, but  the response shape depends on the caller's identity. An anonymous caller receives only the public subset  (culture, branding, DocSpace/Standalone flags, deep link data, setup-wizard and join-by-domain hints); once  authenticated, the response also includes tenant-specific fields such as the owner ID, time zone, invitation  limit, AI/banner/dev-tools flags, and, for a DocSpace administrator, the tenant wallet's low-balance flag.  This is a read-only, idempotent call. Pass `withPassword=true` to also receive the parameters (`salt`,  iteration count, hash size) used to hash the password client-side before it is sent to the authentication  endpoints; these are only added for an anonymous caller or when explicitly requested, never as part of the  default authenticated response.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :withpassword Whether the answer also carries the salt, iteration count and hash size a client needs to hash a password  before sending it to the authentication operations. They are included for an anonymous caller anyway; for a  signed-in one they are left out unless this is set.
    # @return [SettingsWrapper]
    def get_portal_settings(opts = {})
      data, _status_code, _headers = get_portal_settings_with_http_info(opts)
      data
    end

    # Get the portal settings
    # Returns the current portal's general configuration: branding, culture, feature flags, and DocSpace/Standalone  mode, everything the client needs to render its shell before or after login. No permission is required, but  the response shape depends on the caller's identity. An anonymous caller receives only the public subset  (culture, branding, DocSpace/Standalone flags, deep link data, setup-wizard and join-by-domain hints); once  authenticated, the response also includes tenant-specific fields such as the owner ID, time zone, invitation  limit, AI/banner/dev-tools flags, and, for a DocSpace administrator, the tenant wallet's low-balance flag.  This is a read-only, idempotent call. Pass `withPassword=true` to also receive the parameters (`salt`,  iteration count, hash size) used to hash the password client-side before it is sent to the authentication  endpoints; these are only added for an anonymous caller or when explicitly requested, never as part of the  default authenticated response.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :withpassword Whether the answer also carries the salt, iteration count and hash size a client needs to hash a password  before sending it to the authentication operations. They are included for an anonymous caller anyway; for a  signed-in one they are left out unless this is set.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Returns the base URL of the portal's real-time notification hub (Socket.IO), which the client connects to for  live updates such as file changes, presence, or quota alerts. Requires an authenticated session; every role  can read it. This is a read-only, idempotent call. The value comes from server-side configuration and cannot  be changed through this API; an empty `url` means the portal has no notification hub configured and the client  should not attempt to connect.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-socket-settings/
    # @param [Hash] opts the optional parameters
    # @return [SocketSettingsWrapper]
    def get_socket_settings(opts = {})
      data, _status_code, _headers = get_socket_settings_with_http_info(opts)
      data
    end

    # Get the socket settings
    # Returns the base URL of the portal's real-time notification hub (Socket.IO), which the client connects to for  live updates such as file changes, presence, or quota alerts. Requires an authenticated session; every role  can read it. This is a read-only, idempotent call. The value comes from server-side configuration and cannot  be changed through this API; an empty `url` means the portal has no notification hub configured and the client  should not attempt to connect.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-socket-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(SocketSettingsWrapper, Integer, Hash)>] SocketSettingsWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'SocketSettingsWrapper'

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
    # Returns the two- or four-letter language codes of every culture currently enabled on the portal (for example  `en-US`), used to populate a language picker before or after login. No permission is required; anonymous  callers can read it too. This is a read-only, idempotent call, and the list is not paginated. The response  supports conditional requests: an unchanged result is signaled instead of resending the same list. The set of  enabled cultures is a portal-wide configuration value, not a per-user preference.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-supported-cultures/
    # @param [Hash] opts the optional parameters
    # @return [STRINGArrayWrapper]
    def get_supported_cultures(opts = {})
      data, _status_code, _headers = get_supported_cultures_with_http_info(opts)
      data
    end

    # Get supported languages
    # Returns the two- or four-letter language codes of every culture currently enabled on the portal (for example  `en-US`), used to populate a language picker before or after login. No permission is required; anonymous  callers can read it too. This is a read-only, idempotent call, and the list is not paginated. The response  supports conditional requests: an unchanged result is signaled instead of resending the same list. The set of  enabled cultures is a portal-wide configuration value, not a per-user preference.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Get the AI access settings
    # Returns whether AI functionality (chat, agents, vectorization) is currently available on the portal at all; AI  is enabled by default. Requires an authenticated session; every role can read it. This is a read-only,  idempotent call. When the setting is disabled, every AI-specific endpoint and folder is unavailable regardless  of the caller's own permissions; this call only reports the portal-wide switch, not any per-user entitlement.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-ai-access-settings/
    # @param [Hash] opts the optional parameters
    # @return [TenantAiAccessSettingsWrapper]
    def get_tenant_ai_access_settings(opts = {})
      data, _status_code, _headers = get_tenant_ai_access_settings_with_http_info(opts)
      data
    end

    # Get the AI access settings
    # Returns whether AI functionality (chat, agents, vectorization) is currently available on the portal at all; AI  is enabled by default. Requires an authenticated session; every role can read it. This is a read-only,  idempotent call. When the setting is disabled, every AI-specific endpoint and folder is unavailable regardless  of the caller's own permissions; this call only reports the portal-wide switch, not any per-user entitlement.
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
    # Returns whether the portal currently allows inviting new members and new guests at all. No permission is  required; anonymous callers can read it too, since the invitation flow itself may run before the caller has  signed in. This is a read-only, idempotent call. The response supports conditional requests: send the standard  If-Modified-Since header with the previous `lastModified` value, and an unchanged response comes back empty  instead of resending the same settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-user-invitation-settings/
    # @param [Hash] opts the optional parameters
    # @return [TenantUserInvitationSettingsWrapper]
    def get_tenant_user_invitation_settings(opts = {})
      data, _status_code, _headers = get_tenant_user_invitation_settings_with_http_info(opts)
      data
    end

    # Get the user invitation settings
    # Returns whether the portal currently allows inviting new members and new guests at all. No permission is  required; anonymous callers can read it too, since the invitation flow itself may run before the caller has  signed in. This is a read-only, idempotent call. The response supports conditional requests: send the standard  If-Modified-Since header with the previous `lastModified` value, and an unchanged response comes back empty  instead of resending the same settings.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Returns every time zone known to the host machine, each with its IANA identifier and a human-readable display  name, ordered from the most negative to the most positive UTC offset. This call is not for a normal logged-in  session: it requires a confirmation link bearing the Wizard or Administrators claim, of the kind generated  during initial portal setup or issued by an administrator, and the link is consumed as part of authenticating  the request. This is a read-only, idempotent call, and the list is not paginated. Use the returned `id` values  wherever the portal expects a time zone identifier; an unrecognized value is rejected there, not here.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-time-zones/
    # @param [Hash] opts the optional parameters
    # @return [TimezonesRequestsArrayWrapper]
    def get_time_zones(opts = {})
      data, _status_code, _headers = get_time_zones_with_http_info(opts)
      data
    end

    # Get time zones
    # Returns every time zone known to the host machine, each with its IANA identifier and a human-readable display  name, ordered from the most negative to the most positive UTC offset. This call is not for a normal logged-in  session: it requires a confirmation link bearing the Wizard or Administrators claim, of the kind generated  during initial portal setup or issued by an administrator, and the link is consumed as part of authenticating  the request. This is a read-only, idempotent call, and the list is not paginated. Use the returned `id` values  wherever the portal expects a time zone identifier; an unrecognized value is rejected there, not here.
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
    # Sets which folder the current user's account opens into by default, such as My Documents, the rooms list, or  favorites. Requires an authenticated session; every role may set its own default, and the change never affects  any other user. Only folder types the client actually offers as a landing page are accepted; picking My  Documents (`USER`) as a Guest is rejected too, since guests have no personal storage. This is a mutating,  idempotent call. It returns the saved setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-default-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [DefaultProductRequestDto] :default_product_request_dto 
    # @return [StudioDefaultPageSettingsWrapper]
    def save_default_folder(opts = {})
      data, _status_code, _headers = save_default_folder_with_http_info(opts)
      data
    end

    # Set the default folder
    # Sets which folder the current user's account opens into by default, such as My Documents, the rooms list, or  favorites. Requires an authenticated session; every role may set its own default, and the change never affects  any other user. Only folder types the client actually offers as a landing page are accepted; picking My  Documents (`USER`) as a Guest is rejected too, since guests have no personal storage. This is a mutating,  idempotent call. It returns the saved setting.
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
    # Maps a custom domain name onto the current tenant, or clears the mapping, so the portal becomes reachable  under the caller's own DNS name instead of only its default alias. Available only on a Standalone  (self-hosted) installation; on SaaS the call is always refused. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). Disable the mapping by passing `enable=false`, in which case the domain name  in the request is ignored. A domain that collides with the portal's reserved base domain, or otherwise fails  validation, is rejected without changing the current mapping. This is a mutating, idempotent call. On success  the previous domain also stops answering, and any CSP configuration referencing it is updated to the new one.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-dns-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [DnsSettingsRequestsDto] :dns_settings_requests_dto 
    # @return [StringWrapper]
    def save_dns_settings(opts = {})
      data, _status_code, _headers = save_dns_settings_with_http_info(opts)
      data
    end

    # Save the DNS settings
    # Maps a custom domain name onto the current tenant, or clears the mapping, so the portal becomes reachable  under the caller's own DNS name instead of only its default alias. Available only on a Standalone  (self-hosted) installation; on SaaS the call is always refused. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). Disable the mapping by passing `enable=false`, in which case the domain name  in the request is ignored. A domain that collides with the portal's reserved base domain, or otherwise fails  validation, is rejected without changing the current mapping. This is a mutating, idempotent call. On success  the previous domain also stops answering, and any CSP configuration referencing it is updated to the new one.
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
    # Overwrites the portal's trusted mail domain configuration, which controls which email domains are treated as  already verified when a user is invited or self-registers. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). When the requested mode is a custom domain list, every domain is normalized to  lowercase and checked against the expected hostname format; a domain that fails the check, or an empty custom  list, causes the whole call to be rejected without saving anything. For the other modes the domain list in the  request is ignored. The `inviteUsersAsVisitors` flag controls whether users who join through a trusted domain  are added as full members or as visitors, and takes effect on the next join rather than retroactively. This is  a mutating, idempotent call: repeating it with the same body leaves the portal in the same state. On success  it returns a confirmation message, not the saved settings themselves; read them back from  `GET api/2.0/settings`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-mail-domain-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [MailDomainSettingsRequestsDto] :mail_domain_settings_requests_dto 
    # @return [StringWrapper]
    def save_mail_domain_settings(opts = {})
      data, _status_code, _headers = save_mail_domain_settings_with_http_info(opts)
      data
    end

    # Save the mail domain settings
    # Overwrites the portal's trusted mail domain configuration, which controls which email domains are treated as  already verified when a user is invited or self-registers. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). When the requested mode is a custom domain list, every domain is normalized to  lowercase and checked against the expected hostname format; a domain that fails the check, or an empty custom  list, causes the whole call to be rejected without saving anything. For the other modes the domain list in the  request is ignored. The `inviteUsersAsVisitors` flag controls whether users who join through a trusted domain  are added as full members or as visitors, and takes effect on the next join rather than retroactively. This is  a mutating, idempotent call: repeating it with the same body leaves the portal in the same state. On success  it returns a confirmation message, not the saved settings themselves; read them back from  `GET api/2.0/settings`.
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
    # Adds or updates a custom color theme, or changes which theme is selected, for the whole portal. Requires Owner  or DocSpaceAdmin (the EditPortalSettings permission). Pass `theme` to create or edit one: an existing theme is  matched and updated by its ID, a new one is appended, and an ID that collides with a built-in default theme is  treated as a request to create a new custom theme instead of overwriting the default. Once the plan's  custom-theme limit is reached, a new theme is silently not added rather than rejected with an error, so check  the returned `themes` count against `limit` before assuming it was saved. Pass `selected` to switch the active  theme; an ID that does not match any existing theme is ignored. This is a mutating call, not strictly  idempotent once the limit has been reached. It returns the full updated theme configuration.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-portal-color-theme/
    # @param [Hash] opts the optional parameters
    # @option opts [CustomColorThemesSettingsRequestsDto] :custom_color_themes_settings_requests_dto 
    # @return [CustomColorThemesSettingsWrapper]
    def save_portal_color_theme(opts = {})
      data, _status_code, _headers = save_portal_color_theme_with_http_info(opts)
      data
    end

    # Save a color theme
    # Adds or updates a custom color theme, or changes which theme is selected, for the whole portal. Requires Owner  or DocSpaceAdmin (the EditPortalSettings permission). Pass `theme` to create or edit one: an existing theme is  matched and updated by its ID, a new one is appended, and an ID that collides with a built-in default theme is  treated as a request to create a new custom theme instead of overwriting the default. Once the plan's  custom-theme limit is reached, a new theme is silently not added rather than rejected with an error, so check  the returned `themes` count against `limit` before assuming it was saved. Pass `selected` to switch the active  theme; an ID that does not match any existing theme is ignored. This is a mutating call, not strictly  idempotent once the limit has been reached. It returns the full updated theme configuration.
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

    # Set the AI access settings
    # Turns AI functionality (chat, agents, vectorization) on or off for the whole portal; AI is enabled by default.  Requires Owner or DocSpaceAdmin (the EditPortalSettings permission); every other caller is refused. Disabling  it immediately hides the AI Agents folder from root folder listings, makes AI status checks report disabled,  and makes AI chat endpoints unreachable for every user on the tenant, not only the caller. This is a mutating,  idempotent, portal-wide call, and the change is pushed to already-connected clients over the real-time  notification hub rather than waiting for their next request. It returns the saved setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-ai-access-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantAiAccessSettingsDto] :tenant_ai_access_settings_dto 
    # @return [TenantAiAccessSettingsWrapper]
    def set_tenant_ai_access_settings(opts = {})
      data, _status_code, _headers = set_tenant_ai_access_settings_with_http_info(opts)
      data
    end

    # Set the AI access settings
    # Turns AI functionality (chat, agents, vectorization) on or off for the whole portal; AI is enabled by default.  Requires Owner or DocSpaceAdmin (the EditPortalSettings permission); every other caller is refused. Disabling  it immediately hides the AI Agents folder from root folder listings, makes AI status checks report disabled,  and makes AI chat endpoints unreachable for every user on the tenant, not only the caller. This is a mutating,  idempotent, portal-wide call, and the change is pushed to already-connected clients over the real-time  notification hub rather than waiting for their next request. It returns the saved setting.
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
    # Updates the current user's own preference for whether the email confirmation prompt is displayed on their  account. Requires an authenticated session; every role may change its own setting, and the change never  affects any other user. This is a mutating, idempotent call. It returns the settings exactly as submitted,  without validating them against the account's actual email confirmation state, so `show` can be set to `true`  even after the address is already confirmed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-email-activation-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [EmailActivationSettings] :email_activation_settings 
    # @return [EmailActivationSettingsWrapper]
    def update_email_activation_settings(opts = {})
      data, _status_code, _headers = update_email_activation_settings_with_http_info(opts)
      data
    end

    # Update the email activation settings
    # Updates the current user's own preference for whether the email confirmation prompt is displayed on their  account. Requires an authenticated session; every role may change its own setting, and the change never  affects any other user. This is a mutating, idempotent call. It returns the settings exactly as submitted,  without validating them against the account's actual email confirmation state, so `show` can be set to `true`  even after the address is already confirmed.
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

    # Update the user invitation settings
    # Sets whether the portal allows inviting new members and new guests. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). Disabling member or guest invitations only blocks creating new invitations  going forward; it does not revoke links already issued or remove members already invited. This is a mutating,  idempotent, portal-wide call. It returns the saved setting; read the current value at any time, including  anonymously, from `GET api/2.0/settings/invitationsettings`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-invitation-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantUserInvitationSettingsRequestDto] :tenant_user_invitation_settings_request_dto 
    # @return [TenantUserInvitationSettingsWrapper]
    def update_invitation_settings(opts = {})
      data, _status_code, _headers = update_invitation_settings_with_http_info(opts)
      data
    end

    # Update the user invitation settings
    # Sets whether the portal allows inviting new members and new guests. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). Disabling member or guest invitations only blocks creating new invitations  going forward; it does not revoke links already issued or remove members already invited. This is a mutating,  idempotent, portal-wide call. It returns the saved setting; read the current value at any time, including  anonymously, from `GET api/2.0/settings/invitationsettings`.
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

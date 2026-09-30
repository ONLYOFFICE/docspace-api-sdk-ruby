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
    # Returns the built-in SSO configuration a portal starts from: empty identity provider and service provider  sections with the stock SAML settings already filled in (HTTP-POST binding, transient name ID format, RSA-SHA1  signing, AES-128 encryption), the default attribute mapping of `givenName`, `sn` and `mail`, the  `Single Sign-on` login label, new accounts typed as user, and SSO switched off. Use it as the template for a  new configuration: fill in the identity provider entity ID, sign-in URL and certificates, then send the result  to `POST api/2.0/settings/ssov2`. The values are the same for every portal and do not depend on what is  currently saved, nothing is written, and the call is safe to repeat. The caller needs the permission to edit  portal settings, which in practice means the portal owner or a DocSpace admin, and the portal plan has to  include Single Sign-On. This operation changes nothing by itself: to actually discard the configuration in  use, call `DELETE api/2.0/settings/ssov2`, and to read what is configured now, call  `GET api/2.0/settings/ssov2`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-sso-settings-v2/
    # @param [Hash] opts the optional parameters
    # @return [SsoSettingsV2Wrapper]
    def get_default_sso_settings_v2(opts = {})
      data, _status_code, _headers = get_default_sso_settings_v2_with_http_info(opts)
      data
    end

    # Get the default SSO settings
    # Returns the built-in SSO configuration a portal starts from: empty identity provider and service provider  sections with the stock SAML settings already filled in (HTTP-POST binding, transient name ID format, RSA-SHA1  signing, AES-128 encryption), the default attribute mapping of `givenName`, `sn` and `mail`, the  `Single Sign-on` login label, new accounts typed as user, and SSO switched off. Use it as the template for a  new configuration: fill in the identity provider entity ID, sign-in URL and certificates, then send the result  to `POST api/2.0/settings/ssov2`. The values are the same for every portal and do not depend on what is  currently saved, nothing is written, and the call is safe to repeat. The caller needs the permission to edit  portal settings, which in practice means the portal owner or a DocSpace admin, and the portal plan has to  include Single Sign-On. This operation changes nothing by itself: to actually discard the configuration in  use, call `DELETE api/2.0/settings/ssov2`, and to read what is configured now, call  `GET api/2.0/settings/ssov2`.
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
    # Returns the SAML Single Sign-On configuration of the current portal: the identity provider endpoints and  certificates, the service provider certificates, the attribute mapping, the login button label and the user  type new SSO accounts get. Anonymous callers are accepted, but an unauthenticated one receives only  `hideAuthPage`, which tells the sign-in page whether the built-in login form has to be hidden; every other  field stays empty, so read the full configuration with an authenticated request. An authenticated caller needs  the permission to edit portal settings, which in practice means the portal owner or a DocSpace admin, and the  portal plan has to include Single Sign-On, otherwise the call is refused. The operation only reads and is safe  to repeat. When the login label was never set, the response carries the built-in `Single Sign-on` instead of  an empty string, and `enableSso` is null until the settings are saved for the first time. Use  `GET api/2.0/settings/ssov2/default` for a blank configuration to start from, and  `GET api/2.0/settings/ssov2/constants` for the values the SAML fields accept.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2/
    # @param [Hash] opts the optional parameters
    # @return [SsoSettingsV2Wrapper]
    def get_sso_settings_v2(opts = {})
      data, _status_code, _headers = get_sso_settings_v2_with_http_info(opts)
      data
    end

    # Get the SSO settings
    # Returns the SAML Single Sign-On configuration of the current portal: the identity provider endpoints and  certificates, the service provider certificates, the attribute mapping, the login button label and the user  type new SSO accounts get. Anonymous callers are accepted, but an unauthenticated one receives only  `hideAuthPage`, which tells the sign-in page whether the built-in login form has to be hidden; every other  field stays empty, so read the full configuration with an authenticated request. An authenticated caller needs  the permission to edit portal settings, which in practice means the portal owner or a DocSpace admin, and the  portal plan has to include Single Sign-On, otherwise the call is refused. The operation only reads and is safe  to repeat. When the login label was never set, the response carries the built-in `Single Sign-on` instead of  an empty string, and `enableSso` is null until the settings are saved for the first time. Use  `GET api/2.0/settings/ssov2/default` for a blank configuration to start from, and  `GET api/2.0/settings/ssov2/constants` for the values the SAML fields accept.
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
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

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
    # Returns every literal value the SAML fields of the SSO configuration accept, grouped by the field it belongs  to: name ID formats, request bindings, signing and encryption algorithms, and what a service provider or  identity provider certificate can be used for. The values are the SAML URNs and algorithm URIs themselves, so  they can be written into the configuration exactly as they come back; picking one from the matching group is  the point, because `POST api/2.0/settings/ssov2` stores these fields as they are given and a misspelled value  therefore surfaces only later, as a failing sign-in. The list is a fixed part of the product: it is the same  for every portal, does not depend on the saved settings and does not change between calls within a release, so  it can be cached. The operation only reads, is safe to repeat and needs nothing beyond an authenticated  caller. Use it together with `GET api/2.0/settings/ssov2/default`, which already has the usual values set.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2-constants/
    # @param [Hash] opts the optional parameters
    # @return [SsoSettingsV2ConstantsWrapper]
    def get_sso_settings_v2_constants(opts = {})
      data, _status_code, _headers = get_sso_settings_v2_constants_with_http_info(opts)
      data
    end

    # Get the SSO settings constants
    # Returns every literal value the SAML fields of the SSO configuration accept, grouped by the field it belongs  to: name ID formats, request bindings, signing and encryption algorithms, and what a service provider or  identity provider certificate can be used for. The values are the SAML URNs and algorithm URIs themselves, so  they can be written into the configuration exactly as they come back; picking one from the matching group is  the point, because `POST api/2.0/settings/ssov2` stores these fields as they are given and a misspelled value  therefore surfaces only later, as a failing sign-in. The list is a fixed part of the product: it is the same  for every portal, does not depend on the saved settings and does not change between calls within a release, so  it can be cached. The operation only reads, is safe to repeat and needs nothing beyond an authenticated  caller. Use it together with `GET api/2.0/settings/ssov2/default`, which already has the usual values set.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2-constants/
    # @param [Hash] opts the optional parameters
    # @return [Array<(SsoSettingsV2ConstantsWrapper, Integer, Hash)>] SsoSettingsV2ConstantsWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'SsoSettingsV2ConstantsWrapper'

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
    # Discards the SAML Single Sign-On configuration of the current portal, stores the built-in default one in its  place and returns what was stored, which is the same content as `GET api/2.0/settings/ssov2/default`. This is  destructive and cannot be undone through the API: the identity provider addresses, both certificate sets, the  attribute mapping and the login label are gone and SSO is left switched off, so keep a copy of  `GET api/2.0/settings/ssov2` first if the configuration may be needed again. Every account that signed in  through SSO is unlinked and becomes an ordinary account that keeps its data but authenticates with portal  credentials from then on, and its external contacts are converted the same way. Repeating the call is  harmless, as the second one stores the same defaults again. The caller needs the permission to edit portal  settings, which in practice means the portal owner or a DocSpace admin, and the portal plan has to include  Single Sign-On, otherwise the call is refused. To switch SSO off while keeping the configuration, send it back  to `POST api/2.0/settings/ssov2` with SSO disabled instead. The reset is recorded in the audit trail.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-sso-settings-v2/
    # @param [Hash] opts the optional parameters
    # @return [SsoSettingsV2Wrapper]
    def reset_sso_settings_v2(opts = {})
      data, _status_code, _headers = reset_sso_settings_v2_with_http_info(opts)
      data
    end

    # Reset the SSO settings
    # Discards the SAML Single Sign-On configuration of the current portal, stores the built-in default one in its  place and returns what was stored, which is the same content as `GET api/2.0/settings/ssov2/default`. This is  destructive and cannot be undone through the API: the identity provider addresses, both certificate sets, the  attribute mapping and the login label are gone and SSO is left switched off, so keep a copy of  `GET api/2.0/settings/ssov2` first if the configuration may be needed again. Every account that signed in  through SSO is unlinked and becomes an ordinary account that keeps its data but authenticates with portal  credentials from then on, and its external contacts are converted the same way. Repeating the call is  harmless, as the second one stores the same defaults again. The caller needs the permission to edit portal  settings, which in practice means the portal owner or a DocSpace admin, and the portal plan has to include  Single Sign-On, otherwise the call is refused. To switch SSO off while keeping the configuration, send it back  to `POST api/2.0/settings/ssov2` with SSO disabled instead. The reset is recorded in the audit trail.
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
    # Replaces the whole SAML Single Sign-On configuration of the current portal with the one passed as a JSON  object in `serializeSettings`, and returns the configuration as it was stored. The payload is a complete  configuration rather than a patch: fields left out are stored empty, so send back a changed copy of  `GET api/2.0/settings/ssov2`, or start from `GET api/2.0/settings/ssov2/default`. The identity provider entity  ID and sign-in URL are required, the sign-in and sign-out URLs have to be absolute http or https addresses,  and the attribute mapping has to name the fields for first name, last name and email; otherwise nothing is  saved. The caller has to be allowed to edit portal settings (portal owner or DocSpace admin), and the portal  plan has to include Single Sign-On. Some values are normalised on the way in: a `usersType` other than 1 (room  admin), 3 (DocSpace admin) or 4 (user) becomes 4, an empty login label becomes `Single Sign-on`, and a longer  one is cut to 100 characters. Saving with SSO switched off unlinks every existing SSO account and turns it  into an ordinary one; switching SSO back on later does not restore those links. The change is recorded in the  audit trail.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-sso-settings-v2/
    # @param [Hash] opts the optional parameters
    # @option opts [SsoSettingsRequestsDto] :sso_settings_requests_dto 
    # @return [SsoSettingsV2Wrapper]
    def save_sso_settings_v2(opts = {})
      data, _status_code, _headers = save_sso_settings_v2_with_http_info(opts)
      data
    end

    # Save the SSO settings
    # Replaces the whole SAML Single Sign-On configuration of the current portal with the one passed as a JSON  object in `serializeSettings`, and returns the configuration as it was stored. The payload is a complete  configuration rather than a patch: fields left out are stored empty, so send back a changed copy of  `GET api/2.0/settings/ssov2`, or start from `GET api/2.0/settings/ssov2/default`. The identity provider entity  ID and sign-in URL are required, the sign-in and sign-out URLs have to be absolute http or https addresses,  and the attribute mapping has to name the fields for first name, last name and email; otherwise nothing is  saved. The caller has to be allowed to edit portal settings (portal owner or DocSpace admin), and the portal  plan has to include Single Sign-On. Some values are normalised on the way in: a `usersType` other than 1 (room  admin), 3 (DocSpace admin) or 4 (user) becomes 4, an empty login label becomes `Single Sign-on`, and a longer  one is cut to 100 characters. Saving with SSO switched off unlinks every existing SSO account and turns it  into an ordinary one; switching SSO back on later does not restore those links. The change is recorded in the  audit trail.
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

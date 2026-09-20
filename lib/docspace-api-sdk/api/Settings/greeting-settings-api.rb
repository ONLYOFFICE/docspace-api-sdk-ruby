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
    class GreetingSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get greeting settings
    # Returns the greeting title of the current portal - the caption shown as the welcome heading on the sign-in  page, kept as the portal name. Any authenticated user may call it and no administrative right is needed; the  call is read-only. The title comes back as a bare string and is never empty: when the portal has no title of  its own, the built-in default caption is returned instead, localized to the caller's language. Because of that  fallback this operation cannot tell a saved title from the default one - call  `GET api/2.0/settings/greetingsettings/isdefault` when that distinction matters. The same string is part of  the portal settings answer as the `greetingSettings` field of `GET api/2.0/settings`, so a client that already  reads the settings needs no separate call. The value is a caption only: it is neither the portal address nor  the white-label logo text of the header, which is returned by `GET api/2.0/settings/whitelabel/logotext`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def get_greeting_settings(opts = {})
      data, _status_code, _headers = get_greeting_settings_with_http_info(opts)
      data
    end

    # Get greeting settings
    # Returns the greeting title of the current portal - the caption shown as the welcome heading on the sign-in  page, kept as the portal name. Any authenticated user may call it and no administrative right is needed; the  call is read-only. The title comes back as a bare string and is never empty: when the portal has no title of  its own, the built-in default caption is returned instead, localized to the caller's language. Because of that  fallback this operation cannot tell a saved title from the default one - call  `GET api/2.0/settings/greetingsettings/isdefault` when that distinction matters. The same string is part of  the portal settings answer as the `greetingSettings` field of `GET api/2.0/settings`, so a client that already  reads the settings needs no separate call. The value is a caption only: it is neither the portal address nor  the white-label logo text of the header, which is returned by `GET api/2.0/settings/whitelabel/logotext`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def get_greeting_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::GreetingSettingsApi.get_greeting_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/greetingsettings'

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
        :operation => :"Settings::GreetingSettingsApi.get_greeting_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::GreetingSettingsApi#get_greeting_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the default greeting settings
    # Reports whether the current portal still shows the built-in greeting caption instead of a title of its own.  The check is read-only and open to any authenticated user, with no administrative right required. It answers  `true` while no title is stored for the portal - the state after  `POST api/2.0/settings/greetingsettings/restore` on an installation that configures no portal name, and also  after saving an empty `title` - and `false` as soon as a non-empty title has been saved. Use it together with  `GET api/2.0/settings/greetingsettings`: that operation substitutes the localized default caption for a  missing title, so only these two calls together separate a default greeting from a custom one that happens to  repeat the default wording. The answer covers the greeting title alone; whether the white-label logos and logo  text are still the default ones is reported by `GET api/2.0/settings/whitelabel/logos/isdefault` and  `GET api/2.0/settings/whitelabel/logotext/isdefault`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def get_is_default_greeting_settings(opts = {})
      data, _status_code, _headers = get_is_default_greeting_settings_with_http_info(opts)
      data
    end

    # Check the default greeting settings
    # Reports whether the current portal still shows the built-in greeting caption instead of a title of its own.  The check is read-only and open to any authenticated user, with no administrative right required. It answers  `true` while no title is stored for the portal - the state after  `POST api/2.0/settings/greetingsettings/restore` on an installation that configures no portal name, and also  after saving an empty `title` - and `false` as soon as a non-empty title has been saved. Use it together with  `GET api/2.0/settings/greetingsettings`: that operation substitutes the localized default caption for a  missing title, so only these two calls together separate a default greeting from a custom one that happens to  repeat the default wording. The answer covers the greeting title alone; whether the white-label logos and logo  text are still the default ones is reported by `GET api/2.0/settings/whitelabel/logos/isdefault` and  `GET api/2.0/settings/whitelabel/logotext/isdefault`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def get_is_default_greeting_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::GreetingSettingsApi.get_is_default_greeting_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/greetingsettings/isdefault'

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
        :operation => :"Settings::GreetingSettingsApi.get_is_default_greeting_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::GreetingSettingsApi#get_is_default_greeting_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Restore the greeting settings
    # Drops the custom greeting title of the current portal and puts back the title configured for the installation,  which is an empty value unless the installation defines a portal name of its own. The caller needs the  portal-settings right of a DocSpace administrator, otherwise the call is refused. The change is immediate for  every user of the portal and a second call changes nothing, so a retry after a failed attempt is safe. The  answer is the greeting in force afterwards: the configured title when there is one, and the localized default  caption when the stored title ends up empty - in that case `GET api/2.0/settings/greetingsettings/isdefault`  starts answering `true`. Only the caption is touched: the portal logos and the white-label logo text keep  their values and are reset separately by `PUT api/2.0/settings/whitelabel/logos/restore` and  `PUT api/2.0/settings/whitelabel/logotext/restore`. To set a title instead of the default one use  `POST api/2.0/settings/greetingsettings`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def restore_greeting_settings(opts = {})
      data, _status_code, _headers = restore_greeting_settings_with_http_info(opts)
      data
    end

    # Restore the greeting settings
    # Drops the custom greeting title of the current portal and puts back the title configured for the installation,  which is an empty value unless the installation defines a portal name of its own. The caller needs the  portal-settings right of a DocSpace administrator, otherwise the call is refused. The change is immediate for  every user of the portal and a second call changes nothing, so a retry after a failed attempt is safe. The  answer is the greeting in force afterwards: the configured title when there is one, and the localized default  caption when the stored title ends up empty - in that case `GET api/2.0/settings/greetingsettings/isdefault`  starts answering `true`. Only the caption is touched: the portal logos and the white-label logo text keep  their values and are reset separately by `PUT api/2.0/settings/whitelabel/logos/restore` and  `PUT api/2.0/settings/whitelabel/logotext/restore`. To set a title instead of the default one use  `POST api/2.0/settings/greetingsettings`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def restore_greeting_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::GreetingSettingsApi.restore_greeting_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/greetingsettings/restore'

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
        :operation => :"Settings::GreetingSettingsApi.restore_greeting_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::GreetingSettingsApi#restore_greeting_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the greeting settings
    # Replaces the greeting title of the current portal with the `title` from the request, storing it as the portal  name. The caller needs the portal-settings right of a DocSpace administrator, otherwise the call is refused.  The new caption takes effect at once for every user of the portal and the change is written to the audit  trail; repeating the call with the same title leaves the portal in the same state. A missing `title` or one  longer than 255 characters is rejected as an invalid request before the handler runs. On a cloud portal with a  free or trial plan the title is also matched against the character rule configured for the installation and a  title that breaks it is refused, while a paid cloud plan and a server installation apply no character check.  An empty `title` clears the greeting: the portal falls back to the built-in default caption and  `GET api/2.0/settings/greetingsettings/isdefault` starts answering `true`. What comes back is a localized  confirmation message, not the stored title - read the title with `GET api/2.0/settings/greetingsettings`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [GreetingSettingsRequestsDto] :greeting_settings_requests_dto 
    # @return [StringWrapper]
    def save_greeting_settings(opts = {})
      data, _status_code, _headers = save_greeting_settings_with_http_info(opts)
      data
    end

    # Save the greeting settings
    # Replaces the greeting title of the current portal with the `title` from the request, storing it as the portal  name. The caller needs the portal-settings right of a DocSpace administrator, otherwise the call is refused.  The new caption takes effect at once for every user of the portal and the change is written to the audit  trail; repeating the call with the same title leaves the portal in the same state. A missing `title` or one  longer than 255 characters is rejected as an invalid request before the handler runs. On a cloud portal with a  free or trial plan the title is also matched against the character rule configured for the installation and a  title that breaks it is refused, while a paid cloud plan and a server installation apply no character check.  An empty `title` clears the greeting: the portal falls back to the built-in default caption and  `GET api/2.0/settings/greetingsettings/isdefault` starts answering `true`. What comes back is a localized  confirmation message, not the stored title - read the title with `GET api/2.0/settings/greetingsettings`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [GreetingSettingsRequestsDto] :greeting_settings_requests_dto 
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def save_greeting_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::GreetingSettingsApi.save_greeting_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/greetingsettings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'greeting_settings_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::GreetingSettingsApi.save_greeting_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::GreetingSettingsApi#save_greeting_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

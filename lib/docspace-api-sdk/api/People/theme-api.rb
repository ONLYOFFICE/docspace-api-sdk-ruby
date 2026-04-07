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
    class ThemeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Change the portal theme
    # Changes the current portal theme.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-portal-theme/
    # @param [Hash] opts the optional parameters
    # @option opts [DarkThemeSettingsRequestDto] :dark_theme_settings_request_dto 
    # @return [DarkThemeSettingsWrapper]
    def change_portal_theme(opts = {})
      data, _status_code, _headers = change_portal_theme_with_http_info(opts)
      data
    end

    # Change the portal theme
    # Changes the current portal theme.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-portal-theme/
    # @param [Hash] opts the optional parameters
    # @option opts [DarkThemeSettingsRequestDto] :dark_theme_settings_request_dto 
    # @return [Array<(DarkThemeSettingsWrapper, Integer, Hash)>] DarkThemeSettingsWrapper data, response status code and response headers
    def change_portal_theme_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ThemeApi.change_portal_theme ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/theme'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'dark_theme_settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'DarkThemeSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ThemeApi.change_portal_theme",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ThemeApi#change_portal_theme\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the portal theme
    # Returns a theme which is set to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-theme/
    # @param [Hash] opts the optional parameters
    # @return [DarkThemeSettingsWrapper]
    def get_portal_theme(opts = {})
      data, _status_code, _headers = get_portal_theme_with_http_info(opts)
      data
    end

    # Get the portal theme
    # Returns a theme which is set to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-theme/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DarkThemeSettingsWrapper, Integer, Hash)>] DarkThemeSettingsWrapper data, response status code and response headers
    def get_portal_theme_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ThemeApi.get_portal_theme ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/theme'

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
      return_type = opts[:debug_return_type] || 'DarkThemeSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ThemeApi.get_portal_theme",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ThemeApi#get_portal_theme\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

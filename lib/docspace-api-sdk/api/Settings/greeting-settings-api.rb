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
    # Returns the greeting settings for the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @return [ObjectWrapper]
    def get_greeting_settings(opts = {})
      data, _status_code, _headers = get_greeting_settings_with_http_info(opts)
      data
    end

    # Get greeting settings
    # Returns the greeting settings for the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'ObjectWrapper'

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
    # Checks if the greeting settings of the current portal are set to default or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def get_is_default_greeting_settings(opts = {})
      data, _status_code, _headers = get_is_default_greeting_settings_with_http_info(opts)
      data
    end

    # Check the default greeting settings
    # Checks if the greeting settings of the current portal are set to default or not.
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
    # Restores the current portal greeting settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def restore_greeting_settings(opts = {})
      data, _status_code, _headers = restore_greeting_settings_with_http_info(opts)
      data
    end

    # Restore the greeting settings
    # Restores the current portal greeting settings.
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
    # Saves the greeting settings specified in the request to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-greeting-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [GreetingSettingsRequestsDto] :greeting_settings_requests_dto 
    # @return [StringWrapper]
    def save_greeting_settings(opts = {})
      data, _status_code, _headers = save_greeting_settings_with_http_info(opts)
      data
    end

    # Save the greeting settings
    # Saves the greeting settings specified in the request to the current portal.
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

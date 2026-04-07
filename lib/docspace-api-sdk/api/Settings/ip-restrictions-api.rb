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
    class IPRestrictionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the IP portal restrictions
    # Returns the IP portal restrictions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ip-restrictions/
    # @param [Hash] opts the optional parameters
    # @return [IPRestrictionArrayWrapper]
    def get_ip_restrictions(opts = {})
      data, _status_code, _headers = get_ip_restrictions_with_http_info(opts)
      data
    end

    # Get the IP portal restrictions
    # Returns the IP portal restrictions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ip-restrictions/
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPRestrictionArrayWrapper, Integer, Hash)>] IPRestrictionArrayWrapper data, response status code and response headers
    def get_ip_restrictions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::IPRestrictionsApi.get_ip_restrictions ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/iprestrictions'

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
      return_type = opts[:debug_return_type] || 'IPRestrictionArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::IPRestrictionsApi.get_ip_restrictions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::IPRestrictionsApi#get_ip_restrictions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the IP restriction settings
    # Returns the IP restriction settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/read-ip-restrictions-settings/
    # @param [Hash] opts the optional parameters
    # @return [IPRestrictionsSettingsWrapper]
    def read_ip_restrictions_settings(opts = {})
      data, _status_code, _headers = read_ip_restrictions_settings_with_http_info(opts)
      data
    end

    # Get the IP restriction settings
    # Returns the IP restriction settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/read-ip-restrictions-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPRestrictionsSettingsWrapper, Integer, Hash)>] IPRestrictionsSettingsWrapper data, response status code and response headers
    def read_ip_restrictions_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::IPRestrictionsApi.read_ip_restrictions_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/iprestrictions/settings'

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
      return_type = opts[:debug_return_type] || 'IPRestrictionsSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::IPRestrictionsApi.read_ip_restrictions_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::IPRestrictionsApi#read_ip_restrictions_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the IP restrictions
    # Updates the IP restrictions with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ip-restrictions/
    # @param [Hash] opts the optional parameters
    # @option opts [IpRestrictionsDto] :ip_restrictions_dto 
    # @return [IpRestrictionsWrapper]
    def save_ip_restrictions(opts = {})
      data, _status_code, _headers = save_ip_restrictions_with_http_info(opts)
      data
    end

    # Update the IP restrictions
    # Updates the IP restrictions with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ip-restrictions/
    # @param [Hash] opts the optional parameters
    # @option opts [IpRestrictionsDto] :ip_restrictions_dto 
    # @return [Array<(IpRestrictionsWrapper, Integer, Hash)>] IpRestrictionsWrapper data, response status code and response headers
    def save_ip_restrictions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::IPRestrictionsApi.save_ip_restrictions ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/iprestrictions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ip_restrictions_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'IpRestrictionsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::IPRestrictionsApi.save_ip_restrictions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::IPRestrictionsApi#save_ip_restrictions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the IP restriction settings
    # Updates the IP restriction settings with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-ip-restrictions-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [IpRestrictionsDto] :ip_restrictions_dto 
    # @return [IpRestrictionsWrapper]
    def update_ip_restrictions_settings(opts = {})
      data, _status_code, _headers = update_ip_restrictions_settings_with_http_info(opts)
      data
    end

    # Update the IP restriction settings
    # Updates the IP restriction settings with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-ip-restrictions-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [IpRestrictionsDto] :ip_restrictions_dto 
    # @return [Array<(IpRestrictionsWrapper, Integer, Hash)>] IpRestrictionsWrapper data, response status code and response headers
    def update_ip_restrictions_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::IPRestrictionsApi.update_ip_restrictions_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/iprestrictions/settings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ip_restrictions_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'IpRestrictionsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::IPRestrictionsApi.update_ip_restrictions_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::IPRestrictionsApi#update_ip_restrictions_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

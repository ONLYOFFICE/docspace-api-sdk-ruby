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
  module Portal
    class SettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Restore a portal
    # Restores the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/continue-portal/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def continue_portal(opts = {})
      continue_portal_with_http_info(opts)
      nil
    end

    # Restore a portal
    # Restores the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/continue-portal/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def continue_portal_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.continue_portal ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/continue'

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
        :operation => :"Portal::SettingsApi.continue_portal",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#continue_portal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a portal
    # Deletes the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-portal/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def delete_portal(opts = {})
      data, _status_code, _headers = delete_portal_with_http_info(opts)
      data
    end

    # Delete a portal
    # Deletes the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-portal/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def delete_portal_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.delete_portal ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/delete'

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
        :operation => :"Portal::SettingsApi.delete_portal",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#delete_portal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a portal
    # Returns the current portal information.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-information/
    # @param [Hash] opts the optional parameters
    # @return [TenantWrapper]
    def get_portal_information(opts = {})
      data, _status_code, _headers = get_portal_information_with_http_info(opts)
      data
    end

    # Get a portal
    # Returns the current portal information.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-information/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantWrapper, Integer, Hash)>] TenantWrapper data, response status code and response headers
    def get_portal_information_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.get_portal_information ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal'

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
      return_type = opts[:debug_return_type] || 'TenantWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::SettingsApi.get_portal_information",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#get_portal_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a path to the portal
    # Returns the full absolute path to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-path/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :virtual_path The virtual path for the portal resource access.
    # @return [ObjectWrapper]
    def get_portal_path(opts = {})
      data, _status_code, _headers = get_portal_path_with_http_info(opts)
      data
    end

    # Get a path to the portal
    # Returns the full absolute path to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-path/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :virtual_path The virtual path for the portal resource access.
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
    def get_portal_path_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.get_portal_path ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/path'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'virtualPath'] = opts[:'virtual_path'] if !opts[:'virtual_path'].nil?

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
        :operation => :"Portal::SettingsApi.get_portal_path",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#get_portal_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send removal instructions
    # Sends the instructions to remove the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-delete-instructions/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_delete_instructions(opts = {})
      send_delete_instructions_with_http_info(opts)
      nil
    end

    # Send removal instructions
    # Sends the instructions to remove the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-delete-instructions/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def send_delete_instructions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.send_delete_instructions ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/delete'

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
        :operation => :"Portal::SettingsApi.send_delete_instructions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#send_delete_instructions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send suspension instructions
    # Sends the instructions to suspend the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-suspend-instructions/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_suspend_instructions(opts = {})
      send_suspend_instructions_with_http_info(opts)
      nil
    end

    # Send suspension instructions
    # Sends the instructions to suspend the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-suspend-instructions/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def send_suspend_instructions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.send_suspend_instructions ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/suspend'

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
        :operation => :"Portal::SettingsApi.send_suspend_instructions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#send_suspend_instructions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deactivate a portal
    # Deactivates the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/suspend-portal/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def suspend_portal(opts = {})
      suspend_portal_with_http_info(opts)
      nil
    end

    # Deactivate a portal
    # Deactivates the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/suspend-portal/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def suspend_portal_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.suspend_portal ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/suspend'

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
        :operation => :"Portal::SettingsApi.suspend_portal",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#suspend_portal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

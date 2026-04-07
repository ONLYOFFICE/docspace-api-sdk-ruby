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
  module Security
    class ActiveConnectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get active connections
    # Returns all the active connections to the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-active-connections/
    # @param [Hash] opts the optional parameters
    # @return [ActiveConnectionsWrapper]
    def get_all_active_connections(opts = {})
      data, _status_code, _headers = get_all_active_connections_with_http_info(opts)
      data
    end

    # Get active connections
    # Returns all the active connections to the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-active-connections/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActiveConnectionsWrapper, Integer, Hash)>] ActiveConnectionsWrapper data, response status code and response headers
    def get_all_active_connections_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::ActiveConnectionsApi.get_all_active_connections ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/activeconnections'

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
      return_type = opts[:debug_return_type] || 'ActiveConnectionsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::ActiveConnectionsApi.get_all_active_connections",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::ActiveConnectionsApi#get_all_active_connections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Log out from the connection
    # Logs out from the connection with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-active-connection/
    # @param login_event_id [Integer] The ID of the specific login event.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def log_out_active_connection(login_event_id, opts = {})
      data, _status_code, _headers = log_out_active_connection_with_http_info(login_event_id, opts)
      data
    end

    # Log out from the connection
    # Logs out from the connection with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-active-connection/
    # @param login_event_id [Integer] The ID of the specific login event.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def log_out_active_connection_with_http_info(login_event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::ActiveConnectionsApi.log_out_active_connection ...'
      end
      # verify the required parameter 'login_event_id' is set
      if @api_client.config.client_side_validation && login_event_id.nil?
        fail ArgumentError, "Missing the required parameter 'login_event_id' when calling Security::ActiveConnectionsApi.log_out_active_connection"
      end
      # resource path
      local_var_path = '/api/2.0/security/activeconnections/logout/{loginEventId}'.sub('{' + 'loginEventId' + '}', CGI.escape(login_event_id.to_s))

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
        :operation => :"Security::ActiveConnectionsApi.log_out_active_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::ActiveConnectionsApi#log_out_active_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Log out and change password
    # Logs out from all the active connections for the current user and changes their password.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-active-connections-change-password/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def log_out_all_active_connections_change_password(opts = {})
      data, _status_code, _headers = log_out_all_active_connections_change_password_with_http_info(opts)
      data
    end

    # Log out and change password
    # Logs out from all the active connections for the current user and changes their password.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-active-connections-change-password/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def log_out_all_active_connections_change_password_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::ActiveConnectionsApi.log_out_all_active_connections_change_password ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/activeconnections/logoutallchangepassword'

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
        :operation => :"Security::ActiveConnectionsApi.log_out_all_active_connections_change_password",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::ActiveConnectionsApi#log_out_all_active_connections_change_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Log out for the user by ID
    # Logs out from all the active connections for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-active-connections-for-user/
    # @param user_id [String] The user ID extracted from the route parameters.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def log_out_all_active_connections_for_user(user_id, opts = {})
      log_out_all_active_connections_for_user_with_http_info(user_id, opts)
      nil
    end

    # Log out for the user by ID
    # Logs out from all the active connections for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-active-connections-for-user/
    # @param user_id [String] The user ID extracted from the route parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def log_out_all_active_connections_for_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::ActiveConnectionsApi.log_out_all_active_connections_for_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling Security::ActiveConnectionsApi.log_out_all_active_connections_for_user"
      end
      # resource path
      local_var_path = '/api/2.0/security/activeconnections/logoutall/{userId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::ActiveConnectionsApi.log_out_all_active_connections_for_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::ActiveConnectionsApi#log_out_all_active_connections_for_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Log out from all connections except the current one
    # Logs out from all the active connections except the current connection.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-except-this-connection/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def log_out_all_except_this_connection(opts = {})
      data, _status_code, _headers = log_out_all_except_this_connection_with_http_info(opts)
      data
    end

    # Log out from all connections except the current one
    # Logs out from all the active connections except the current connection.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-except-this-connection/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def log_out_all_except_this_connection_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::ActiveConnectionsApi.log_out_all_except_this_connection ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/activeconnections/logoutallexceptthis'

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
        :operation => :"Security::ActiveConnectionsApi.log_out_all_except_this_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::ActiveConnectionsApi#log_out_all_except_this_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

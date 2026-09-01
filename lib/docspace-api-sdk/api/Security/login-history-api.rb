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
    class LoginHistoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Start the login history report generation
    # Starts generating the login history report (XLSX by default, or CSV) and saves it to My documents.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-login-history-report/
    # @param [Hash] opts the optional parameters
    # @option opts [AuditReportFormat] :format The output file format of the report. Defaults to XLSX.
    # @return [DocumentBuilderTaskWrapper]
    def create_login_history_report(opts = {})
      data, _status_code, _headers = create_login_history_report_with_http_info(opts)
      data
    end

    # Start the login history report generation
    # Starts generating the login history report (XLSX by default, or CSV) and saves it to My documents.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-login-history-report/
    # @param [Hash] opts the optional parameters
    # @option opts [AuditReportFormat] :format The output file format of the report. Defaults to XLSX.
    # @return [Array<(DocumentBuilderTaskWrapper, Integer, Hash)>] DocumentBuilderTaskWrapper data, response status code and response headers
    def create_login_history_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::LoginHistoryApi.create_login_history_report ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/audit/login/report'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DocumentBuilderTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::LoginHistoryApi.create_login_history_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::LoginHistoryApi#create_login_history_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get login history
    # Returns all the latest user login activity, including successful logins and error logs.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-login-events/
    # @param [Hash] opts the optional parameters
    # @return [LoginEventArrayWrapper]
    def get_last_login_events(opts = {})
      data, _status_code, _headers = get_last_login_events_with_http_info(opts)
      data
    end

    # Get login history
    # Returns all the latest user login activity, including successful logins and error logs.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-login-events/
    # @param [Hash] opts the optional parameters
    # @return [Array<(LoginEventArrayWrapper, Integer, Hash)>] LoginEventArrayWrapper data, response status code and response headers
    def get_last_login_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::LoginHistoryApi.get_last_login_events ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/audit/login/last'

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
      return_type = opts[:debug_return_type] || 'LoginEventArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::LoginHistoryApi.get_last_login_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::LoginHistoryApi#get_last_login_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get filtered login events
    # Returns a list of the login events by the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-events-by-filter/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id The ID of the user whose login events are being queried.
    # @option opts [MessageAction] :action The login-related action to filter events by.
    # @option opts [Time] :from The starting date and time for filtering login events.
    # @option opts [Time] :to The ending date and time for filtering login events.
    # @option opts [Integer] :count The number of login events to retrieve in the query.
    # @option opts [Integer] :start_index The starting index for fetching a subset of login events from the query results.
    # @return [LoginEventArrayWrapper]
    def get_login_events_by_filter(opts = {})
      data, _status_code, _headers = get_login_events_by_filter_with_http_info(opts)
      data
    end

    # Get filtered login events
    # Returns a list of the login events by the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-events-by-filter/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id The ID of the user whose login events are being queried.
    # @option opts [MessageAction] :action The login-related action to filter events by.
    # @option opts [Time] :from The starting date and time for filtering login events.
    # @option opts [Time] :to The ending date and time for filtering login events.
    # @option opts [Integer] :count The number of login events to retrieve in the query.
    # @option opts [Integer] :start_index The starting index for fetching a subset of login events from the query results.
    # @return [Array<(LoginEventArrayWrapper, Integer, Hash)>] LoginEventArrayWrapper data, response status code and response headers
    def get_login_events_by_filter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::LoginHistoryApi.get_login_events_by_filter ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Security::LoginHistoryApi.get_login_events_by_filter, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Security::LoginHistoryApi.get_login_events_by_filter, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/security/audit/login/filter'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'action'] = opts[:'action'] if !opts[:'action'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoginEventArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::LoginHistoryApi.get_login_events_by_filter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::LoginHistoryApi#get_login_events_by_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the login history report generation status
    # Returns the status of generating the login history report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-history-report/
    # @param [Hash] opts the optional parameters
    # @return [DocumentBuilderTaskWrapper]
    def get_login_history_report(opts = {})
      data, _status_code, _headers = get_login_history_report_with_http_info(opts)
      data
    end

    # Get the login history report generation status
    # Returns the status of generating the login history report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-history-report/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentBuilderTaskWrapper, Integer, Hash)>] DocumentBuilderTaskWrapper data, response status code and response headers
    def get_login_history_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::LoginHistoryApi.get_login_history_report ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/audit/login/report'

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
      return_type = opts[:debug_return_type] || 'DocumentBuilderTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::LoginHistoryApi.get_login_history_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::LoginHistoryApi#get_login_history_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terminate the login history report generation
    # Terminates generating the login history report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-login-history-report/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def terminate_login_history_report(opts = {})
      terminate_login_history_report_with_http_info(opts)
      nil
    end

    # Terminate the login history report generation
    # Terminates generating the login history report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-login-history-report/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def terminate_login_history_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::LoginHistoryApi.terminate_login_history_report ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/audit/login/report'

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
        :operation => :"Security::LoginHistoryApi.terminate_login_history_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::LoginHistoryApi#terminate_login_history_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

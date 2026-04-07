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
    class UserStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get profiles by status
    # Returns a list of profiles filtered by the user status.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-by-status/
    # @param status [EmployeeStatus] The user status.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_by Specifies the criteria used to filter the profiles in the request.
    # @option opts [Integer] :count The maximum number of user profiles to retrieve.
    # @option opts [Integer] :start_index The starting index for retrieving data in a paginated request.
    # @option opts [String] :sort_by Specifies the property or field name by which the results should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_separator Represents the separator used to split multiple filter criteria in a query string.
    # @option opts [String] :filter_value A string value representing additional filter criteria used in query parameters.
    # @return [EmployeeFullArrayWrapper]
    def get_by_status(status, opts = {})
      data, _status_code, _headers = get_by_status_with_http_info(status, opts)
      data
    end

    # Get profiles by status
    # Returns a list of profiles filtered by the user status.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-by-status/
    # @param status [EmployeeStatus] The user status.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_by Specifies the criteria used to filter the profiles in the request.
    # @option opts [Integer] :count The maximum number of user profiles to retrieve.
    # @option opts [Integer] :start_index The starting index for retrieving data in a paginated request.
    # @option opts [String] :sort_by Specifies the property or field name by which the results should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_separator Represents the separator used to split multiple filter criteria in a query string.
    # @option opts [String] :filter_value A string value representing additional filter criteria used in query parameters.
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def get_by_status_with_http_info(status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserStatusApi.get_by_status ...'
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling People::UserStatusApi.get_by_status"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::UserStatusApi.get_by_status, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::UserStatusApi.get_by_status, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/people/status/{status}'.sub('{' + 'status' + '}', CGI.escape(status.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filterBy'] = opts[:'filter_by'] if !opts[:'filter_by'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'filterSeparator'] = opts[:'filter_separator'] if !opts[:'filter_separator'].nil?
      query_params[:'filterValue'] = opts[:'filter_value'] if !opts[:'filter_value'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeFullArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::UserStatusApi.get_by_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserStatusApi#get_by_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set an activation status to the users
    # Sets the required activation status to the list of users with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-activation-status/
    # @param activationstatus [EmployeeActivationStatus] The new user activation status.
    # @param update_members_request_dto [UpdateMembersRequestDto] The request parameters for updating the user information.
    # @param [Hash] opts the optional parameters
    # @return [EmployeeFullArrayWrapper]
    def update_user_activation_status(activationstatus, update_members_request_dto, opts = {})
      data, _status_code, _headers = update_user_activation_status_with_http_info(activationstatus, update_members_request_dto, opts)
      data
    end

    # Set an activation status to the users
    # Sets the required activation status to the list of users with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-activation-status/
    # @param activationstatus [EmployeeActivationStatus] The new user activation status.
    # @param update_members_request_dto [UpdateMembersRequestDto] The request parameters for updating the user information.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def update_user_activation_status_with_http_info(activationstatus, update_members_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserStatusApi.update_user_activation_status ...'
      end
      # verify the required parameter 'activationstatus' is set
      if @api_client.config.client_side_validation && activationstatus.nil?
        fail ArgumentError, "Missing the required parameter 'activationstatus' when calling People::UserStatusApi.update_user_activation_status"
      end
      # verify the required parameter 'update_members_request_dto' is set
      if @api_client.config.client_side_validation && update_members_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'update_members_request_dto' when calling People::UserStatusApi.update_user_activation_status"
      end
      # resource path
      local_var_path = '/api/2.0/people/activationstatus/{activationstatus}'.sub('{' + 'activationstatus' + '}', CGI.escape(activationstatus.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_members_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeFullArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::UserStatusApi.update_user_activation_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserStatusApi#update_user_activation_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change a user status
    # Changes a status of the users with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-status/
    # @param status [EmployeeStatus] The new user status.
    # @param update_members_request_dto [UpdateMembersRequestDto] The request parameters for updating the user information.
    # @param [Hash] opts the optional parameters
    # @return [EmployeeFullArrayWrapper]
    def update_user_status(status, update_members_request_dto, opts = {})
      data, _status_code, _headers = update_user_status_with_http_info(status, update_members_request_dto, opts)
      data
    end

    # Change a user status
    # Changes a status of the users with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-status/
    # @param status [EmployeeStatus] The new user status.
    # @param update_members_request_dto [UpdateMembersRequestDto] The request parameters for updating the user information.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def update_user_status_with_http_info(status, update_members_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserStatusApi.update_user_status ...'
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling People::UserStatusApi.update_user_status"
      end
      # verify the required parameter 'update_members_request_dto' is set
      if @api_client.config.client_side_validation && update_members_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'update_members_request_dto' when calling People::UserStatusApi.update_user_status"
      end
      # resource path
      local_var_path = '/api/2.0/people/status/{status}'.sub('{' + 'status' + '}', CGI.escape(status.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_members_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeFullArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::UserStatusApi.update_user_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserStatusApi#update_user_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

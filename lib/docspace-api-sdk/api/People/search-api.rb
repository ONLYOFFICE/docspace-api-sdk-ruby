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
    class SearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get account entries with file sharing settings
    # Returns the account entries with their sharing settings for a file with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-files-shared/
    # @param id [Integer] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the account sharing settings from the response.
    # @option opts [Boolean] :include_shared Specifies whether to include the account sharing settings in the response.
    # @option opts [Boolean] :invited_by_me Specifies whether the user is invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The area of the account entries.
    # @option opts [Array<EmployeeType>] :employee_types The list of the user types.
    # @option opts [Integer] :count The number of items to retrieve in a request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @option opts [String] :filter_separator Specifies the separator used in filter expressions.
    # @option opts [String] :filter_value The text filter applied to the accounts search query.
    # @return [ObjectArrayWrapper]
    def get_accounts_entries_with_files_shared(id, opts = {})
      data, _status_code, _headers = get_accounts_entries_with_files_shared_with_http_info(id, opts)
      data
    end

    # Get account entries with file sharing settings
    # Returns the account entries with their sharing settings for a file with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-files-shared/
    # @param id [Integer] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the account sharing settings from the response.
    # @option opts [Boolean] :include_shared Specifies whether to include the account sharing settings in the response.
    # @option opts [Boolean] :invited_by_me Specifies whether the user is invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The area of the account entries.
    # @option opts [Array<EmployeeType>] :employee_types The list of the user types.
    # @option opts [Integer] :count The number of items to retrieve in a request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @option opts [String] :filter_separator Specifies the separator used in filter expressions.
    # @option opts [String] :filter_value The text filter applied to the accounts search query.
    # @return [Array<(ObjectArrayWrapper, Integer, Hash)>] ObjectArrayWrapper data, response status code and response headers
    def get_accounts_entries_with_files_shared_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::SearchApi.get_accounts_entries_with_files_shared ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling People::SearchApi.get_accounts_entries_with_files_shared"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_accounts_entries_with_files_shared, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_accounts_entries_with_files_shared, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/accounts/file/{id}/search'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'employeeStatus'] = opts[:'employee_status'] if !opts[:'employee_status'].nil?
      query_params[:'activationStatus'] = opts[:'activation_status'] if !opts[:'activation_status'].nil?
      query_params[:'excludeShared'] = opts[:'exclude_shared'] if !opts[:'exclude_shared'].nil?
      query_params[:'includeShared'] = opts[:'include_shared'] if !opts[:'include_shared'].nil?
      query_params[:'invitedByMe'] = opts[:'invited_by_me'] if !opts[:'invited_by_me'].nil?
      query_params[:'inviterId'] = opts[:'inviter_id'] if !opts[:'inviter_id'].nil?
      query_params[:'area'] = opts[:'area'] if !opts[:'area'].nil?
      query_params[:'employeeTypes'] = @api_client.build_collection_param(opts[:'employee_types'], :csv) if !opts[:'employee_types'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
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
      return_type = opts[:debug_return_type] || 'ObjectArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::SearchApi.get_accounts_entries_with_files_shared",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::SearchApi#get_accounts_entries_with_files_shared\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get account entries with folder sharing settings
    # Returns the account entries with their sharing settings in a folder with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-folders-shared/
    # @param id [Integer] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the account sharing settings from the response.
    # @option opts [Boolean] :include_shared Specifies whether to include the account sharing settings in the response.
    # @option opts [Boolean] :invited_by_me Specifies whether the user is invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The area of the account entries.
    # @option opts [Array<EmployeeType>] :employee_types The list of the user types.
    # @option opts [Integer] :count The number of items to retrieve in a request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @option opts [String] :filter_separator Specifies the separator used in filter expressions.
    # @option opts [String] :filter_value The text filter applied to the accounts search query.
    # @return [ObjectArrayWrapper]
    def get_accounts_entries_with_folders_shared(id, opts = {})
      data, _status_code, _headers = get_accounts_entries_with_folders_shared_with_http_info(id, opts)
      data
    end

    # Get account entries with folder sharing settings
    # Returns the account entries with their sharing settings in a folder with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-folders-shared/
    # @param id [Integer] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the account sharing settings from the response.
    # @option opts [Boolean] :include_shared Specifies whether to include the account sharing settings in the response.
    # @option opts [Boolean] :invited_by_me Specifies whether the user is invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The area of the account entries.
    # @option opts [Array<EmployeeType>] :employee_types The list of the user types.
    # @option opts [Integer] :count The number of items to retrieve in a request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @option opts [String] :filter_separator Specifies the separator used in filter expressions.
    # @option opts [String] :filter_value The text filter applied to the accounts search query.
    # @return [Array<(ObjectArrayWrapper, Integer, Hash)>] ObjectArrayWrapper data, response status code and response headers
    def get_accounts_entries_with_folders_shared_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::SearchApi.get_accounts_entries_with_folders_shared ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling People::SearchApi.get_accounts_entries_with_folders_shared"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_accounts_entries_with_folders_shared, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_accounts_entries_with_folders_shared, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/accounts/folder/{id}/search'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'employeeStatus'] = opts[:'employee_status'] if !opts[:'employee_status'].nil?
      query_params[:'activationStatus'] = opts[:'activation_status'] if !opts[:'activation_status'].nil?
      query_params[:'excludeShared'] = opts[:'exclude_shared'] if !opts[:'exclude_shared'].nil?
      query_params[:'includeShared'] = opts[:'include_shared'] if !opts[:'include_shared'].nil?
      query_params[:'invitedByMe'] = opts[:'invited_by_me'] if !opts[:'invited_by_me'].nil?
      query_params[:'inviterId'] = opts[:'inviter_id'] if !opts[:'inviter_id'].nil?
      query_params[:'area'] = opts[:'area'] if !opts[:'area'].nil?
      query_params[:'employeeTypes'] = @api_client.build_collection_param(opts[:'employee_types'], :csv) if !opts[:'employee_types'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
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
      return_type = opts[:debug_return_type] || 'ObjectArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::SearchApi.get_accounts_entries_with_folders_shared",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::SearchApi#get_accounts_entries_with_folders_shared\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get account entries
    # Returns the account entries with their sharing settings in a room with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-rooms-shared/
    # @param id [Integer] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the account sharing settings from the response.
    # @option opts [Boolean] :include_shared Specifies whether to include the account sharing settings in the response.
    # @option opts [Boolean] :invited_by_me Specifies whether the user is invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The area of the account entries.
    # @option opts [Array<EmployeeType>] :employee_types The list of the user types.
    # @option opts [Integer] :count The number of items to retrieve in a request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @option opts [String] :filter_separator Specifies the separator used in filter expressions.
    # @option opts [String] :filter_value The text filter applied to the accounts search query.
    # @return [ObjectArrayWrapper]
    def get_accounts_entries_with_rooms_shared(id, opts = {})
      data, _status_code, _headers = get_accounts_entries_with_rooms_shared_with_http_info(id, opts)
      data
    end

    # Get account entries
    # Returns the account entries with their sharing settings in a room with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-rooms-shared/
    # @param id [Integer] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the account sharing settings from the response.
    # @option opts [Boolean] :include_shared Specifies whether to include the account sharing settings in the response.
    # @option opts [Boolean] :invited_by_me Specifies whether the user is invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The area of the account entries.
    # @option opts [Array<EmployeeType>] :employee_types The list of the user types.
    # @option opts [Integer] :count The number of items to retrieve in a request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @option opts [String] :filter_separator Specifies the separator used in filter expressions.
    # @option opts [String] :filter_value The text filter applied to the accounts search query.
    # @return [Array<(ObjectArrayWrapper, Integer, Hash)>] ObjectArrayWrapper data, response status code and response headers
    def get_accounts_entries_with_rooms_shared_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::SearchApi.get_accounts_entries_with_rooms_shared ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling People::SearchApi.get_accounts_entries_with_rooms_shared"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_accounts_entries_with_rooms_shared, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_accounts_entries_with_rooms_shared, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/accounts/room/{id}/search'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'employeeStatus'] = opts[:'employee_status'] if !opts[:'employee_status'].nil?
      query_params[:'activationStatus'] = opts[:'activation_status'] if !opts[:'activation_status'].nil?
      query_params[:'excludeShared'] = opts[:'exclude_shared'] if !opts[:'exclude_shared'].nil?
      query_params[:'includeShared'] = opts[:'include_shared'] if !opts[:'include_shared'].nil?
      query_params[:'invitedByMe'] = opts[:'invited_by_me'] if !opts[:'invited_by_me'].nil?
      query_params[:'inviterId'] = opts[:'inviter_id'] if !opts[:'inviter_id'].nil?
      query_params[:'area'] = opts[:'area'] if !opts[:'area'].nil?
      query_params[:'employeeTypes'] = @api_client.build_collection_param(opts[:'employee_types'], :csv) if !opts[:'employee_types'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
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
      return_type = opts[:debug_return_type] || 'ObjectArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::SearchApi.get_accounts_entries_with_rooms_shared",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::SearchApi#get_accounts_entries_with_rooms_shared\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search users
    # Returns a list of users matching the search query.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-search/
    # @param query [String] The search query.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_by Specifies a filter criteria for the user search query.
    # @option opts [String] :filter_value The value used for filtering users, allowing additional constraints for the query.
    # @return [EmployeeFullArrayWrapper]
    def get_search(query, opts = {})
      data, _status_code, _headers = get_search_with_http_info(query, opts)
      data
    end

    # Search users
    # Returns a list of users matching the search query.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-search/
    # @param query [String] The search query.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_by Specifies a filter criteria for the user search query.
    # @option opts [String] :filter_value The value used for filtering users, allowing additional constraints for the query.
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def get_search_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::SearchApi.get_search ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling People::SearchApi.get_search"
      end
      # resource path
      local_var_path = '/api/2.0/people/@search/{query}'.sub('{' + 'query' + '}', CGI.escape(query.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filterBy'] = opts[:'filter_by'] if !opts[:'filter_by'].nil?
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
        :operation => :"People::SearchApi.get_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::SearchApi#get_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search users by extended filter
    # Returns a list of users matching the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-simple-by-filter/
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [String] :group_id The group ID.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [EmployeeType] :employee_type The user type.
    # @option opts [Array<Integer>] :employee_types The list of user types.
    # @option opts [Boolean] :is_administrator Specifies if the user is an administrator or not.
    # @option opts [Payments] :payments The user payment status.
    # @option opts [AccountLoginType] :account_login_type The account login type.
    # @option opts [QuotaFilter] :quota_filter The quota filter (All - 0, Default - 1, Custom - 2).
    # @option opts [Boolean] :without_group Specifies whether the user should be a member of a group or not.
    # @option opts [Boolean] :exclude_group Specifies whether the user should be a member of the group with the specified ID.
    # @option opts [Boolean] :invited_by_me Specifies whether the user is invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The filter area.
    # @option opts [Integer] :count The maximum number of items to be retrieved in the response.
    # @option opts [Integer] :start_index The zero-based index of the first item to be retrieved in a filtered result set.
    # @option opts [String] :sort_by Specifies the property or field name by which the results should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_separator Represents the separator used to split filter criteria in query parameters.
    # @option opts [String] :filter_value The search text used to filter results based on user input.
    # @return [EmployeeArrayWrapper]
    def get_simple_by_filter(opts = {})
      data, _status_code, _headers = get_simple_by_filter_with_http_info(opts)
      data
    end

    # Search users by extended filter
    # Returns a list of users matching the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-simple-by-filter/
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [String] :group_id The group ID.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [EmployeeType] :employee_type The user type.
    # @option opts [Array<Integer>] :employee_types The list of user types.
    # @option opts [Boolean] :is_administrator Specifies if the user is an administrator or not.
    # @option opts [Payments] :payments The user payment status.
    # @option opts [AccountLoginType] :account_login_type The account login type.
    # @option opts [QuotaFilter] :quota_filter The quota filter (All - 0, Default - 1, Custom - 2).
    # @option opts [Boolean] :without_group Specifies whether the user should be a member of a group or not.
    # @option opts [Boolean] :exclude_group Specifies whether the user should be a member of the group with the specified ID.
    # @option opts [Boolean] :invited_by_me Specifies whether the user is invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The filter area.
    # @option opts [Integer] :count The maximum number of items to be retrieved in the response.
    # @option opts [Integer] :start_index The zero-based index of the first item to be retrieved in a filtered result set.
    # @option opts [String] :sort_by Specifies the property or field name by which the results should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_separator Represents the separator used to split filter criteria in query parameters.
    # @option opts [String] :filter_value The search text used to filter results based on user input.
    # @return [Array<(EmployeeArrayWrapper, Integer, Hash)>] EmployeeArrayWrapper data, response status code and response headers
    def get_simple_by_filter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::SearchApi.get_simple_by_filter ...'
      end
      allowable_values = [0, 1, 2, 3, 4]
      if @api_client.config.client_side_validation && opts[:'employee_types'] && !opts[:'employee_types'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"employee_types\", must include one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_simple_by_filter, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_simple_by_filter, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/people/simple/filter'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'employeeStatus'] = opts[:'employee_status'] if !opts[:'employee_status'].nil?
      query_params[:'groupId'] = opts[:'group_id'] if !opts[:'group_id'].nil?
      query_params[:'activationStatus'] = opts[:'activation_status'] if !opts[:'activation_status'].nil?
      query_params[:'employeeType'] = opts[:'employee_type'] if !opts[:'employee_type'].nil?
      query_params[:'employeeTypes'] = @api_client.build_collection_param(opts[:'employee_types'], :csv) if !opts[:'employee_types'].nil?
      query_params[:'isAdministrator'] = opts[:'is_administrator'] if !opts[:'is_administrator'].nil?
      query_params[:'payments'] = opts[:'payments'] if !opts[:'payments'].nil?
      query_params[:'accountLoginType'] = opts[:'account_login_type'] if !opts[:'account_login_type'].nil?
      query_params[:'quotaFilter'] = opts[:'quota_filter'] if !opts[:'quota_filter'].nil?
      query_params[:'withoutGroup'] = opts[:'without_group'] if !opts[:'without_group'].nil?
      query_params[:'excludeGroup'] = opts[:'exclude_group'] if !opts[:'exclude_group'].nil?
      query_params[:'invitedByMe'] = opts[:'invited_by_me'] if !opts[:'invited_by_me'].nil?
      query_params[:'inviterId'] = opts[:'inviter_id'] if !opts[:'inviter_id'].nil?
      query_params[:'area'] = opts[:'area'] if !opts[:'area'].nil?
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
      return_type = opts[:debug_return_type] || 'EmployeeArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::SearchApi.get_simple_by_filter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::SearchApi#get_simple_by_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get users with file sharing settings
    # Returns the users with the sharing settings in a file with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-files-shared/
    # @param id [Integer] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the user sharing settings or not.
    # @option opts [Boolean] :include_shared Specifies whether to include the user sharing settings or not.
    # @option opts [Boolean] :invited_by_me Specifies whether the user was invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The user area.
    # @option opts [Array<EmployeeType>] :employee_types The list of user types.
    # @option opts [Integer] :count The maximum number of users to be retrieved in the request.
    # @option opts [Integer] :start_index The zero-based index of the first record to retrieve in a paged query.
    # @option opts [String] :filter_separator The character or string used to separate multiple filter values in a filtering query.
    # @option opts [String] :filter_value The filter text value used for searching or filtering user results.
    # @return [EmployeeFullArrayWrapper]
    def get_users_with_files_shared(id, opts = {})
      data, _status_code, _headers = get_users_with_files_shared_with_http_info(id, opts)
      data
    end

    # Get users with file sharing settings
    # Returns the users with the sharing settings in a file with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-files-shared/
    # @param id [Integer] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the user sharing settings or not.
    # @option opts [Boolean] :include_shared Specifies whether to include the user sharing settings or not.
    # @option opts [Boolean] :invited_by_me Specifies whether the user was invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The user area.
    # @option opts [Array<EmployeeType>] :employee_types The list of user types.
    # @option opts [Integer] :count The maximum number of users to be retrieved in the request.
    # @option opts [Integer] :start_index The zero-based index of the first record to retrieve in a paged query.
    # @option opts [String] :filter_separator The character or string used to separate multiple filter values in a filtering query.
    # @option opts [String] :filter_value The filter text value used for searching or filtering user results.
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def get_users_with_files_shared_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::SearchApi.get_users_with_files_shared ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling People::SearchApi.get_users_with_files_shared"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_users_with_files_shared, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_users_with_files_shared, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/people/file/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'employeeStatus'] = opts[:'employee_status'] if !opts[:'employee_status'].nil?
      query_params[:'activationStatus'] = opts[:'activation_status'] if !opts[:'activation_status'].nil?
      query_params[:'excludeShared'] = opts[:'exclude_shared'] if !opts[:'exclude_shared'].nil?
      query_params[:'includeShared'] = opts[:'include_shared'] if !opts[:'include_shared'].nil?
      query_params[:'invitedByMe'] = opts[:'invited_by_me'] if !opts[:'invited_by_me'].nil?
      query_params[:'inviterId'] = opts[:'inviter_id'] if !opts[:'inviter_id'].nil?
      query_params[:'area'] = opts[:'area'] if !opts[:'area'].nil?
      query_params[:'employeeTypes'] = @api_client.build_collection_param(opts[:'employee_types'], :csv) if !opts[:'employee_types'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
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
        :operation => :"People::SearchApi.get_users_with_files_shared",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::SearchApi#get_users_with_files_shared\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get users with folder sharing settings
    # Returns the users with the sharing settings in a folder with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-folders-shared/
    # @param id [Integer] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the user sharing settings or not.
    # @option opts [Boolean] :include_shared Specifies whether to include the user sharing settings or not.
    # @option opts [Boolean] :invited_by_me Specifies whether the user was invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The user area.
    # @option opts [Array<EmployeeType>] :employee_types The list of user types.
    # @option opts [Integer] :count The maximum number of users to be retrieved in the request.
    # @option opts [Integer] :start_index The zero-based index of the first record to retrieve in a paged query.
    # @option opts [String] :filter_separator The character or string used to separate multiple filter values in a filtering query.
    # @option opts [String] :filter_value The filter text value used for searching or filtering user results.
    # @return [EmployeeFullArrayWrapper]
    def get_users_with_folders_shared(id, opts = {})
      data, _status_code, _headers = get_users_with_folders_shared_with_http_info(id, opts)
      data
    end

    # Get users with folder sharing settings
    # Returns the users with the sharing settings in a folder with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-folders-shared/
    # @param id [Integer] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the user sharing settings or not.
    # @option opts [Boolean] :include_shared Specifies whether to include the user sharing settings or not.
    # @option opts [Boolean] :invited_by_me Specifies whether the user was invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The user area.
    # @option opts [Array<EmployeeType>] :employee_types The list of user types.
    # @option opts [Integer] :count The maximum number of users to be retrieved in the request.
    # @option opts [Integer] :start_index The zero-based index of the first record to retrieve in a paged query.
    # @option opts [String] :filter_separator The character or string used to separate multiple filter values in a filtering query.
    # @option opts [String] :filter_value The filter text value used for searching or filtering user results.
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def get_users_with_folders_shared_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::SearchApi.get_users_with_folders_shared ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling People::SearchApi.get_users_with_folders_shared"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_users_with_folders_shared, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_users_with_folders_shared, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/people/folder/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'employeeStatus'] = opts[:'employee_status'] if !opts[:'employee_status'].nil?
      query_params[:'activationStatus'] = opts[:'activation_status'] if !opts[:'activation_status'].nil?
      query_params[:'excludeShared'] = opts[:'exclude_shared'] if !opts[:'exclude_shared'].nil?
      query_params[:'includeShared'] = opts[:'include_shared'] if !opts[:'include_shared'].nil?
      query_params[:'invitedByMe'] = opts[:'invited_by_me'] if !opts[:'invited_by_me'].nil?
      query_params[:'inviterId'] = opts[:'inviter_id'] if !opts[:'inviter_id'].nil?
      query_params[:'area'] = opts[:'area'] if !opts[:'area'].nil?
      query_params[:'employeeTypes'] = @api_client.build_collection_param(opts[:'employee_types'], :csv) if !opts[:'employee_types'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
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
        :operation => :"People::SearchApi.get_users_with_folders_shared",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::SearchApi#get_users_with_folders_shared\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get users with room sharing settings
    # Returns the users with the sharing settings in a room with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-room-shared/
    # @param id [Integer] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the user sharing settings or not.
    # @option opts [Boolean] :include_shared Specifies whether to include the user sharing settings or not.
    # @option opts [Boolean] :invited_by_me Specifies whether the user was invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The user area.
    # @option opts [Array<EmployeeType>] :employee_types The list of user types.
    # @option opts [Integer] :count The maximum number of users to be retrieved in the request.
    # @option opts [Integer] :start_index The zero-based index of the first record to retrieve in a paged query.
    # @option opts [String] :filter_separator The character or string used to separate multiple filter values in a filtering query.
    # @option opts [String] :filter_value The filter text value used for searching or filtering user results.
    # @return [EmployeeFullArrayWrapper]
    def get_users_with_room_shared(id, opts = {})
      data, _status_code, _headers = get_users_with_room_shared_with_http_info(id, opts)
      data
    end

    # Get users with room sharing settings
    # Returns the users with the sharing settings in a room with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-room-shared/
    # @param id [Integer] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the user sharing settings or not.
    # @option opts [Boolean] :include_shared Specifies whether to include the user sharing settings or not.
    # @option opts [Boolean] :invited_by_me Specifies whether the user was invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The user area.
    # @option opts [Array<EmployeeType>] :employee_types The list of user types.
    # @option opts [Integer] :count The maximum number of users to be retrieved in the request.
    # @option opts [Integer] :start_index The zero-based index of the first record to retrieve in a paged query.
    # @option opts [String] :filter_separator The character or string used to separate multiple filter values in a filtering query.
    # @option opts [String] :filter_value The filter text value used for searching or filtering user results.
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def get_users_with_room_shared_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::SearchApi.get_users_with_room_shared ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling People::SearchApi.get_users_with_room_shared"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_users_with_room_shared, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.get_users_with_room_shared, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/people/room/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'employeeStatus'] = opts[:'employee_status'] if !opts[:'employee_status'].nil?
      query_params[:'activationStatus'] = opts[:'activation_status'] if !opts[:'activation_status'].nil?
      query_params[:'excludeShared'] = opts[:'exclude_shared'] if !opts[:'exclude_shared'].nil?
      query_params[:'includeShared'] = opts[:'include_shared'] if !opts[:'include_shared'].nil?
      query_params[:'invitedByMe'] = opts[:'invited_by_me'] if !opts[:'invited_by_me'].nil?
      query_params[:'inviterId'] = opts[:'inviter_id'] if !opts[:'inviter_id'].nil?
      query_params[:'area'] = opts[:'area'] if !opts[:'area'].nil?
      query_params[:'employeeTypes'] = @api_client.build_collection_param(opts[:'employee_types'], :csv) if !opts[:'employee_types'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
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
        :operation => :"People::SearchApi.get_users_with_room_shared",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::SearchApi#get_users_with_room_shared\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search users with detailed information by extended filter
    # Returns a list of users with full information about them matching the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-extended-filter/
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [String] :group_id The group ID.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [EmployeeType] :employee_type The user type.
    # @option opts [Array<Integer>] :employee_types The list of user types.
    # @option opts [Boolean] :is_administrator Specifies if the user is an administrator or not.
    # @option opts [Payments] :payments The user payment status.
    # @option opts [AccountLoginType] :account_login_type The account login type.
    # @option opts [QuotaFilter] :quota_filter The quota filter (All - 0, Default - 1, Custom - 2).
    # @option opts [Boolean] :without_group Specifies whether the user should be a member of a group or not.
    # @option opts [Boolean] :exclude_group Specifies whether the user should be a member of the group with the specified ID.
    # @option opts [Boolean] :invited_by_me Specifies whether the user is invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The filter area.
    # @option opts [Integer] :count The maximum number of items to be retrieved in the response.
    # @option opts [Integer] :start_index The zero-based index of the first item to be retrieved in a filtered result set.
    # @option opts [String] :sort_by Specifies the property or field name by which the results should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_separator Represents the separator used to split filter criteria in query parameters.
    # @option opts [String] :filter_value The search text used to filter results based on user input.
    # @return [EmployeeFullArrayWrapper]
    def search_users_by_extended_filter(opts = {})
      data, _status_code, _headers = search_users_by_extended_filter_with_http_info(opts)
      data
    end

    # Search users with detailed information by extended filter
    # Returns a list of users with full information about them matching the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-extended-filter/
    # @param [Hash] opts the optional parameters
    # @option opts [EmployeeStatus] :employee_status The user status.
    # @option opts [String] :group_id The group ID.
    # @option opts [EmployeeActivationStatus] :activation_status The user activation status.
    # @option opts [EmployeeType] :employee_type The user type.
    # @option opts [Array<Integer>] :employee_types The list of user types.
    # @option opts [Boolean] :is_administrator Specifies if the user is an administrator or not.
    # @option opts [Payments] :payments The user payment status.
    # @option opts [AccountLoginType] :account_login_type The account login type.
    # @option opts [QuotaFilter] :quota_filter The quota filter (All - 0, Default - 1, Custom - 2).
    # @option opts [Boolean] :without_group Specifies whether the user should be a member of a group or not.
    # @option opts [Boolean] :exclude_group Specifies whether the user should be a member of the group with the specified ID.
    # @option opts [Boolean] :invited_by_me Specifies whether the user is invited by the current user or not.
    # @option opts [String] :inviter_id The inviter ID.
    # @option opts [Area] :area The filter area.
    # @option opts [Integer] :count The maximum number of items to be retrieved in the response.
    # @option opts [Integer] :start_index The zero-based index of the first item to be retrieved in a filtered result set.
    # @option opts [String] :sort_by Specifies the property or field name by which the results should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_separator Represents the separator used to split filter criteria in query parameters.
    # @option opts [String] :filter_value The search text used to filter results based on user input.
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def search_users_by_extended_filter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::SearchApi.search_users_by_extended_filter ...'
      end
      allowable_values = [0, 1, 2, 3, 4]
      if @api_client.config.client_side_validation && opts[:'employee_types'] && !opts[:'employee_types'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"employee_types\", must include one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.search_users_by_extended_filter, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::SearchApi.search_users_by_extended_filter, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/people/filter'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'employeeStatus'] = opts[:'employee_status'] if !opts[:'employee_status'].nil?
      query_params[:'groupId'] = opts[:'group_id'] if !opts[:'group_id'].nil?
      query_params[:'activationStatus'] = opts[:'activation_status'] if !opts[:'activation_status'].nil?
      query_params[:'employeeType'] = opts[:'employee_type'] if !opts[:'employee_type'].nil?
      query_params[:'employeeTypes'] = @api_client.build_collection_param(opts[:'employee_types'], :csv) if !opts[:'employee_types'].nil?
      query_params[:'isAdministrator'] = opts[:'is_administrator'] if !opts[:'is_administrator'].nil?
      query_params[:'payments'] = opts[:'payments'] if !opts[:'payments'].nil?
      query_params[:'accountLoginType'] = opts[:'account_login_type'] if !opts[:'account_login_type'].nil?
      query_params[:'quotaFilter'] = opts[:'quota_filter'] if !opts[:'quota_filter'].nil?
      query_params[:'withoutGroup'] = opts[:'without_group'] if !opts[:'without_group'].nil?
      query_params[:'excludeGroup'] = opts[:'exclude_group'] if !opts[:'exclude_group'].nil?
      query_params[:'invitedByMe'] = opts[:'invited_by_me'] if !opts[:'invited_by_me'].nil?
      query_params[:'inviterId'] = opts[:'inviter_id'] if !opts[:'inviter_id'].nil?
      query_params[:'area'] = opts[:'area'] if !opts[:'area'].nil?
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
        :operation => :"People::SearchApi.search_users_by_extended_filter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::SearchApi#search_users_by_extended_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search users (using query parameters)
    # Returns a list of users matching the search query. This method uses the query parameters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-query/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The search query.
    # @return [EmployeeArrayWrapper]
    def search_users_by_query(opts = {})
      data, _status_code, _headers = search_users_by_query_with_http_info(opts)
      data
    end

    # Search users (using query parameters)
    # Returns a list of users matching the search query. This method uses the query parameters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-query/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The search query.
    # @return [Array<(EmployeeArrayWrapper, Integer, Hash)>] EmployeeArrayWrapper data, response status code and response headers
    def search_users_by_query_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::SearchApi.search_users_by_query ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::SearchApi.search_users_by_query",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::SearchApi#search_users_by_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search users by status filter
    # Returns a list of users matching the status filter and search query.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-status/
    # @param status [EmployeeStatus] The user status.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The advanced search query.
    # @option opts [String] :filter_by Specifies the criteria used to filter search results in advanced queries.
    # @option opts [String] :filter_value The value used to filter the search query.
    # @return [EmployeeFullArrayWrapper]
    def search_users_by_status(status, opts = {})
      data, _status_code, _headers = search_users_by_status_with_http_info(status, opts)
      data
    end

    # Search users by status filter
    # Returns a list of users matching the status filter and search query.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-status/
    # @param status [EmployeeStatus] The user status.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The advanced search query.
    # @option opts [String] :filter_by Specifies the criteria used to filter search results in advanced queries.
    # @option opts [String] :filter_value The value used to filter the search query.
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def search_users_by_status_with_http_info(status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::SearchApi.search_users_by_status ...'
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling People::SearchApi.search_users_by_status"
      end
      # resource path
      local_var_path = '/api/2.0/people/status/{status}/search'.sub('{' + 'status' + '}', CGI.escape(status.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'filterBy'] = opts[:'filter_by'] if !opts[:'filter_by'].nil?
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
        :operation => :"People::SearchApi.search_users_by_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::SearchApi#search_users_by_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

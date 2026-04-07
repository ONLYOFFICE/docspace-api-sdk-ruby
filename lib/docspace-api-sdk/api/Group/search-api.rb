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
  module Group
    class SearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get groups with file sharing settings
    # Returns groups with their sharing settings for a file with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-files-shared/
    # @param id [Integer] The group ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the group sharing settings from the response.
    # @option opts [Integer] :count The number of groups to retrieve in the request.
    # @option opts [Integer] :start_index The starting index from which to begin retrieving groups with their sharing settings.
    # @option opts [String] :filter_value The text used as a filter for retrieving groups with their sharing settings.
    # @return [GroupArrayWrapper]
    def get_groups_with_files_shared(id, opts = {})
      data, _status_code, _headers = get_groups_with_files_shared_with_http_info(id, opts)
      data
    end

    # Get groups with file sharing settings
    # Returns groups with their sharing settings for a file with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-files-shared/
    # @param id [Integer] The group ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the group sharing settings from the response.
    # @option opts [Integer] :count The number of groups to retrieve in the request.
    # @option opts [Integer] :start_index The starting index from which to begin retrieving groups with their sharing settings.
    # @option opts [String] :filter_value The text used as a filter for retrieving groups with their sharing settings.
    # @return [Array<(GroupArrayWrapper, Integer, Hash)>] GroupArrayWrapper data, response status code and response headers
    def get_groups_with_files_shared_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::SearchApi.get_groups_with_files_shared ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Group::SearchApi.get_groups_with_files_shared"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Group::SearchApi.get_groups_with_files_shared, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Group::SearchApi.get_groups_with_files_shared, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/group/file/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'excludeShared'] = opts[:'exclude_shared'] if !opts[:'exclude_shared'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
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
      return_type = opts[:debug_return_type] || 'GroupArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Group::SearchApi.get_groups_with_files_shared",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::SearchApi#get_groups_with_files_shared\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get groups with folder sharing settings
    # Returns groups with their sharing settings in a folder with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-folders-shared/
    # @param id [Integer] The group ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the group sharing settings from the response.
    # @option opts [Integer] :count The number of groups to retrieve in the request.
    # @option opts [Integer] :start_index The starting index from which to begin retrieving groups with their sharing settings.
    # @option opts [String] :filter_value The text used as a filter for retrieving groups with their sharing settings.
    # @return [GroupArrayWrapper]
    def get_groups_with_folders_shared(id, opts = {})
      data, _status_code, _headers = get_groups_with_folders_shared_with_http_info(id, opts)
      data
    end

    # Get groups with folder sharing settings
    # Returns groups with their sharing settings in a folder with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-folders-shared/
    # @param id [Integer] The group ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the group sharing settings from the response.
    # @option opts [Integer] :count The number of groups to retrieve in the request.
    # @option opts [Integer] :start_index The starting index from which to begin retrieving groups with their sharing settings.
    # @option opts [String] :filter_value The text used as a filter for retrieving groups with their sharing settings.
    # @return [Array<(GroupArrayWrapper, Integer, Hash)>] GroupArrayWrapper data, response status code and response headers
    def get_groups_with_folders_shared_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::SearchApi.get_groups_with_folders_shared ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Group::SearchApi.get_groups_with_folders_shared"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Group::SearchApi.get_groups_with_folders_shared, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Group::SearchApi.get_groups_with_folders_shared, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/group/folder/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'excludeShared'] = opts[:'exclude_shared'] if !opts[:'exclude_shared'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
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
      return_type = opts[:debug_return_type] || 'GroupArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Group::SearchApi.get_groups_with_folders_shared",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::SearchApi#get_groups_with_folders_shared\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get groups with room sharing settings
    # Returns groups with their sharing settings in a room with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-rooms-shared/
    # @param id [Integer] The group ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the group sharing settings from the response.
    # @option opts [Integer] :count The number of groups to retrieve in the request.
    # @option opts [Integer] :start_index The starting index from which to begin retrieving groups with their sharing settings.
    # @option opts [String] :filter_value The text used as a filter for retrieving groups with their sharing settings.
    # @return [GroupArrayWrapper]
    def get_groups_with_rooms_shared(id, opts = {})
      data, _status_code, _headers = get_groups_with_rooms_shared_with_http_info(id, opts)
      data
    end

    # Get groups with room sharing settings
    # Returns groups with their sharing settings in a room with the ID specified in request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-rooms-shared/
    # @param id [Integer] The group ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude_shared Specifies whether to exclude the group sharing settings from the response.
    # @option opts [Integer] :count The number of groups to retrieve in the request.
    # @option opts [Integer] :start_index The starting index from which to begin retrieving groups with their sharing settings.
    # @option opts [String] :filter_value The text used as a filter for retrieving groups with their sharing settings.
    # @return [Array<(GroupArrayWrapper, Integer, Hash)>] GroupArrayWrapper data, response status code and response headers
    def get_groups_with_rooms_shared_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::SearchApi.get_groups_with_rooms_shared ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Group::SearchApi.get_groups_with_rooms_shared"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Group::SearchApi.get_groups_with_rooms_shared, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Group::SearchApi.get_groups_with_rooms_shared, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/group/room/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'excludeShared'] = opts[:'exclude_shared'] if !opts[:'exclude_shared'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
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
      return_type = opts[:debug_return_type] || 'GroupArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Group::SearchApi.get_groups_with_rooms_shared",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::SearchApi#get_groups_with_rooms_shared\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

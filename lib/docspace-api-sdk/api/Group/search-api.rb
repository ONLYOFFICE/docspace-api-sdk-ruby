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
    # Search groups for a file
    # Returns the groups that can be given access to the file with the ID given in the route, and reports for each  of them whether it already has access to that file.  The caller has to be allowed to manage the access of that file, and the ID has to belong to an existing file,  so the operation answers 403 for a file the caller cannot share and 404 for an ID that matches nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the file yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/file/{id}/search`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-files-shared/
    # @param id [Integer, String] The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude_shared Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart.
    # @option opts [Integer] :count The size of the page. It defaults to 100, which is also the largest value the operation accepts.
    # @option opts [Integer] :start_index The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response.
    # @option opts [String] :filter_value The text to match against the group name. Omit it to get every group the caller may grant access to.
    # @return [GroupArrayWrapper]
    def get_groups_with_files_shared(id, opts = {})
      data, _status_code, _headers = get_groups_with_files_shared_with_http_info(id, opts)
      data
    end

    # Search groups for a file
    # Returns the groups that can be given access to the file with the ID given in the route, and reports for each  of them whether it already has access to that file.  The caller has to be allowed to manage the access of that file, and the ID has to belong to an existing file,  so the operation answers 403 for a file the caller cannot share and 404 for an ID that matches nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the file yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/file/{id}/search`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-files-shared/
    # @param id [Integer, String] The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude_shared Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart.
    # @option opts [Integer] :count The size of the page. It defaults to 100, which is also the largest value the operation accepts.
    # @option opts [Integer] :start_index The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response.
    # @option opts [String] :filter_value The text to match against the group name. Omit it to get every group the caller may grant access to.
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

    # Search groups for a folder
    # Returns the groups that can be given access to the folder with the ID given in the route, and reports for  each of them whether it already has access to that folder.  The caller has to be allowed to manage the access of that folder, and the ID has to belong to an existing  folder, so the operation answers 403 for a folder the caller cannot share and 404 for an ID that matches  nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the folder yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/folder/{id}/search`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-folders-shared/
    # @param id [Integer, String] The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude_shared Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart.
    # @option opts [Integer] :count The size of the page. It defaults to 100, which is also the largest value the operation accepts.
    # @option opts [Integer] :start_index The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response.
    # @option opts [String] :filter_value The text to match against the group name. Omit it to get every group the caller may grant access to.
    # @return [GroupArrayWrapper]
    def get_groups_with_folders_shared(id, opts = {})
      data, _status_code, _headers = get_groups_with_folders_shared_with_http_info(id, opts)
      data
    end

    # Search groups for a folder
    # Returns the groups that can be given access to the folder with the ID given in the route, and reports for  each of them whether it already has access to that folder.  The caller has to be allowed to manage the access of that folder, and the ID has to belong to an existing  folder, so the operation answers 403 for a folder the caller cannot share and 404 for an ID that matches  nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the folder yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/folder/{id}/search`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-folders-shared/
    # @param id [Integer, String] The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude_shared Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart.
    # @option opts [Integer] :count The size of the page. It defaults to 100, which is also the largest value the operation accepts.
    # @option opts [Integer] :start_index The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response.
    # @option opts [String] :filter_value The text to match against the group name. Omit it to get every group the caller may grant access to.
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

    # Search groups for a room
    # Returns the groups that can be given access to the room with the ID given in the route, and reports for each  of them whether it already has access to that room.  The caller has to be allowed to manage the access of that room, and the ID has to belong to an existing room,  so the operation answers 403 for a room the caller cannot share and 404 for an ID that matches nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the room yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/room/{id}/search`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-rooms-shared/
    # @param id [Integer, String] The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude_shared Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart.
    # @option opts [Integer] :count The size of the page. It defaults to 100, which is also the largest value the operation accepts.
    # @option opts [Integer] :start_index The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response.
    # @option opts [String] :filter_value The text to match against the group name. Omit it to get every group the caller may grant access to.
    # @return [GroupArrayWrapper]
    def get_groups_with_rooms_shared(id, opts = {})
      data, _status_code, _headers = get_groups_with_rooms_shared_with_http_info(id, opts)
      data
    end

    # Search groups for a room
    # Returns the groups that can be given access to the room with the ID given in the route, and reports for each  of them whether it already has access to that room.  The caller has to be allowed to manage the access of that room, and the ID has to belong to an existing room,  so the operation answers 403 for a room the caller cannot share and 404 for an ID that matches nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the room yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/room/{id}/search`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-rooms-shared/
    # @param id [Integer, String] The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude_shared Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart.
    # @option opts [Integer] :count The size of the page. It defaults to 100, which is also the largest value the operation accepts.
    # @option opts [Integer] :start_index The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response.
    # @option opts [String] :filter_value The text to match against the group name. Omit it to get every group the caller may grant access to.
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

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
    class GroupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a new group
    # Adds a new group with the group manager, name, and members specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-group/
    # @param [Hash] opts the optional parameters
    # @option opts [GroupRequestDto] :group_request_dto 
    # @return [GroupWrapper]
    def add_group(opts = {})
      data, _status_code, _headers = add_group_with_http_info(opts)
      data
    end

    # Add a new group
    # Adds a new group with the group manager, name, and members specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-group/
    # @param [Hash] opts the optional parameters
    # @option opts [GroupRequestDto] :group_request_dto 
    # @return [Array<(GroupWrapper, Integer, Hash)>] GroupWrapper data, response status code and response headers
    def add_group_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::GroupApi.add_group ...'
      end
      # resource path
      local_var_path = '/api/2.0/group'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'group_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'GroupWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Group::GroupApi.add_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::GroupApi#add_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add group members
    # Adds new group members to the group with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-members-to/
    # @param id [String] The group ID.
    # @param members_request [MembersRequest] The member request.
    # @param [Hash] opts the optional parameters
    # @return [GroupWrapper]
    def add_members_to(id, members_request, opts = {})
      data, _status_code, _headers = add_members_to_with_http_info(id, members_request, opts)
      data
    end

    # Add group members
    # Adds new group members to the group with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-members-to/
    # @param id [String] The group ID.
    # @param members_request [MembersRequest] The member request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupWrapper, Integer, Hash)>] GroupWrapper data, response status code and response headers
    def add_members_to_with_http_info(id, members_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::GroupApi.add_members_to ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Group::GroupApi.add_members_to"
      end
      # verify the required parameter 'members_request' is set
      if @api_client.config.client_side_validation && members_request.nil?
        fail ArgumentError, "Missing the required parameter 'members_request' when calling Group::GroupApi.add_members_to"
      end
      # resource path
      local_var_path = '/api/2.0/group/{id}/members'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(members_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Group::GroupApi.add_members_to",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::GroupApi#add_members_to\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a group
    # Deletes a group with the ID specified in the request from the list of groups on the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-group/
    # @param id [String] The group ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group(id, opts = {})
      delete_group_with_http_info(id, opts)
      nil
    end

    # Delete a group
    # Deletes a group with the ID specified in the request from the list of groups on the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-group/
    # @param id [String] The group ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_group_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::GroupApi.delete_group ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Group::GroupApi.delete_group"
      end
      # resource path
      local_var_path = '/api/2.0/group/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"Group::GroupApi.delete_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::GroupApi#delete_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a group
    # Returns the detailed information about the selected group.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group/
    # @param id [String] The group ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members Specifies whether to include the group members or not.
    # @return [GroupWrapper]
    def get_group(id, opts = {})
      data, _status_code, _headers = get_group_with_http_info(id, opts)
      data
    end

    # Get a group
    # Returns the detailed information about the selected group.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group/
    # @param id [String] The group ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members Specifies whether to include the group members or not.
    # @return [Array<(GroupWrapper, Integer, Hash)>] GroupWrapper data, response status code and response headers
    def get_group_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::GroupApi.get_group ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Group::GroupApi.get_group"
      end
      # resource path
      local_var_path = '/api/2.0/group/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeMembers'] = opts[:'include_members'] if !opts[:'include_members'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GroupWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Group::GroupApi.get_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::GroupApi#get_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get user groups
    # Returns a list of groups for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group-by-user-id/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [GroupSummaryArrayWrapper]
    def get_group_by_user_id(userid, opts = {})
      data, _status_code, _headers = get_group_by_user_id_with_http_info(userid, opts)
      data
    end

    # Get user groups
    # Returns a list of groups for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group-by-user-id/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupSummaryArrayWrapper, Integer, Hash)>] GroupSummaryArrayWrapper data, response status code and response headers
    def get_group_by_user_id_with_http_info(userid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::GroupApi.get_group_by_user_id ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling Group::GroupApi.get_group_by_user_id"
      end
      # resource path
      local_var_path = '/api/2.0/group/user/{userid}'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupSummaryArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Group::GroupApi.get_group_by_user_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::GroupApi#get_group_by_user_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get groups
    # Returns the general information about all the groups, such as group ID and group manager.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id The user ID.
    # @option opts [Boolean] :manager Specifies if the user is a manager or not.
    # @option opts [Integer] :count The number of records to retrieve.
    # @option opts [Integer] :start_index The starting index for paginated results.
    # @option opts [String] :sort_by Specifies the property used to sort the query results.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used for filtering or searching group data.
    # @return [GroupArrayWrapper]
    def get_groups(opts = {})
      data, _status_code, _headers = get_groups_with_http_info(opts)
      data
    end

    # Get groups
    # Returns the general information about all the groups, such as group ID and group manager.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id The user ID.
    # @option opts [Boolean] :manager Specifies if the user is a manager or not.
    # @option opts [Integer] :count The number of records to retrieve.
    # @option opts [Integer] :start_index The starting index for paginated results.
    # @option opts [String] :sort_by Specifies the property used to sort the query results.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used for filtering or searching group data.
    # @return [Array<(GroupArrayWrapper, Integer, Hash)>] GroupArrayWrapper data, response status code and response headers
    def get_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::GroupApi.get_groups ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Group::GroupApi.get_groups, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Group::GroupApi.get_groups, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/group'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'manager'] = opts[:'manager'] if !opts[:'manager'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
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
        :operation => :"Group::GroupApi.get_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::GroupApi#get_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Move group members
    # Moves all the members from the selected group to another one specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/move-members-to/
    # @param from_id [String] The group ID to move from.
    # @param to_id [String] The group ID to move to.
    # @param [Hash] opts the optional parameters
    # @return [GroupWrapper]
    def move_members_to(from_id, to_id, opts = {})
      data, _status_code, _headers = move_members_to_with_http_info(from_id, to_id, opts)
      data
    end

    # Move group members
    # Moves all the members from the selected group to another one specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/move-members-to/
    # @param from_id [String] The group ID to move from.
    # @param to_id [String] The group ID to move to.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupWrapper, Integer, Hash)>] GroupWrapper data, response status code and response headers
    def move_members_to_with_http_info(from_id, to_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::GroupApi.move_members_to ...'
      end
      # verify the required parameter 'from_id' is set
      if @api_client.config.client_side_validation && from_id.nil?
        fail ArgumentError, "Missing the required parameter 'from_id' when calling Group::GroupApi.move_members_to"
      end
      # verify the required parameter 'to_id' is set
      if @api_client.config.client_side_validation && to_id.nil?
        fail ArgumentError, "Missing the required parameter 'to_id' when calling Group::GroupApi.move_members_to"
      end
      # resource path
      local_var_path = '/api/2.0/group/{fromId}/members/{toId}'.sub('{' + 'fromId' + '}', CGI.escape(from_id.to_s)).sub('{' + 'toId' + '}', CGI.escape(to_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Group::GroupApi.move_members_to",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::GroupApi#move_members_to\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove group members
    # Removes the group members specified in the request from the selected group.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-members-from/
    # @param id [String] The group ID.
    # @param members_request [MembersRequest] The member request.
    # @param [Hash] opts the optional parameters
    # @return [GroupWrapper]
    def remove_members_from(id, members_request, opts = {})
      data, _status_code, _headers = remove_members_from_with_http_info(id, members_request, opts)
      data
    end

    # Remove group members
    # Removes the group members specified in the request from the selected group.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-members-from/
    # @param id [String] The group ID.
    # @param members_request [MembersRequest] The member request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupWrapper, Integer, Hash)>] GroupWrapper data, response status code and response headers
    def remove_members_from_with_http_info(id, members_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::GroupApi.remove_members_from ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Group::GroupApi.remove_members_from"
      end
      # verify the required parameter 'members_request' is set
      if @api_client.config.client_side_validation && members_request.nil?
        fail ArgumentError, "Missing the required parameter 'members_request' when calling Group::GroupApi.remove_members_from"
      end
      # resource path
      local_var_path = '/api/2.0/group/{id}/members'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(members_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Group::GroupApi.remove_members_from",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::GroupApi#remove_members_from\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set a group manager
    # Sets a user with the ID specified in the request as a group manager.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-group-manager/
    # @param id [String] The group ID.
    # @param set_manager_request [SetManagerRequest] The request for setting a group manager.
    # @param [Hash] opts the optional parameters
    # @return [GroupWrapper]
    def set_group_manager(id, set_manager_request, opts = {})
      data, _status_code, _headers = set_group_manager_with_http_info(id, set_manager_request, opts)
      data
    end

    # Set a group manager
    # Sets a user with the ID specified in the request as a group manager.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-group-manager/
    # @param id [String] The group ID.
    # @param set_manager_request [SetManagerRequest] The request for setting a group manager.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupWrapper, Integer, Hash)>] GroupWrapper data, response status code and response headers
    def set_group_manager_with_http_info(id, set_manager_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::GroupApi.set_group_manager ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Group::GroupApi.set_group_manager"
      end
      # verify the required parameter 'set_manager_request' is set
      if @api_client.config.client_side_validation && set_manager_request.nil?
        fail ArgumentError, "Missing the required parameter 'set_manager_request' when calling Group::GroupApi.set_group_manager"
      end
      # resource path
      local_var_path = '/api/2.0/group/{id}/manager'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_manager_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Group::GroupApi.set_group_manager",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::GroupApi#set_group_manager\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replace group members
    # Replaces the group members with those specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-members-to/
    # @param id [String] The group ID.
    # @param members_request [MembersRequest] The member request.
    # @param [Hash] opts the optional parameters
    # @return [GroupWrapper]
    def set_members_to(id, members_request, opts = {})
      data, _status_code, _headers = set_members_to_with_http_info(id, members_request, opts)
      data
    end

    # Replace group members
    # Replaces the group members with those specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-members-to/
    # @param id [String] The group ID.
    # @param members_request [MembersRequest] The member request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupWrapper, Integer, Hash)>] GroupWrapper data, response status code and response headers
    def set_members_to_with_http_info(id, members_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::GroupApi.set_members_to ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Group::GroupApi.set_members_to"
      end
      # verify the required parameter 'members_request' is set
      if @api_client.config.client_side_validation && members_request.nil?
        fail ArgumentError, "Missing the required parameter 'members_request' when calling Group::GroupApi.set_members_to"
      end
      # resource path
      local_var_path = '/api/2.0/group/{id}/members'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(members_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Group::GroupApi.set_members_to",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::GroupApi#set_members_to\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a group
    # Updates the existing group changing the group manager, name, and/or members.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-group/
    # @param id [String] The group ID.
    # @param update_group_request [UpdateGroupRequest] The request for updating a group.
    # @param [Hash] opts the optional parameters
    # @return [GroupWrapper]
    def update_group(id, update_group_request, opts = {})
      data, _status_code, _headers = update_group_with_http_info(id, update_group_request, opts)
      data
    end

    # Update a group
    # Updates the existing group changing the group manager, name, and/or members.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-group/
    # @param id [String] The group ID.
    # @param update_group_request [UpdateGroupRequest] The request for updating a group.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupWrapper, Integer, Hash)>] GroupWrapper data, response status code and response headers
    def update_group_with_http_info(id, update_group_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Group::GroupApi.update_group ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Group::GroupApi.update_group"
      end
      # verify the required parameter 'update_group_request' is set
      if @api_client.config.client_side_validation && update_group_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_group_request' when calling Group::GroupApi.update_group"
      end
      # resource path
      local_var_path = '/api/2.0/group/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_group_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Group::GroupApi.update_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Group::GroupApi#update_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

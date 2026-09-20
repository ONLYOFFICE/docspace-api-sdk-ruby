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
    # Creates a group with the given name and, optionally, a manager and a first set of members.  The caller needs the permissions to edit groups and to add and remove users.  The name is required and cannot be blank, and unlike the operations that add members later, this one checks  every listed account upfront and rejects the whole call with 400 if any of them is unusable - a guest, a  disabled account or an ID that matches nobody.  The call is not idempotent: names are not unique, so repeating it creates a second group with the same name.  Creating a group raises a `GroupCreated` webhook, and the answer holds the new group with its members  included.  Members can be changed afterwards through `PUT api/2.0/group/{id}` or the dedicated member operations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-group/
    # @param [Hash] opts the optional parameters
    # @option opts [GroupRequestDto] :group_request_dto 
    # @return [GroupWrapper]
    def add_group(opts = {})
      data, _status_code, _headers = add_group_with_http_info(opts)
      data
    end

    # Add a new group
    # Creates a group with the given name and, optionally, a manager and a first set of members.  The caller needs the permissions to edit groups and to add and remove users.  The name is required and cannot be blank, and unlike the operations that add members later, this one checks  every listed account upfront and rejects the whole call with 400 if any of them is unusable - a guest, a  disabled account or an ID that matches nobody.  The call is not idempotent: names are not unique, so repeating it creates a second group with the same name.  Creating a group raises a `GroupCreated` webhook, and the answer holds the new group with its members  included.  Members can be changed afterwards through `PUT api/2.0/group/{id}` or the dedicated member operations.
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
    # Adds the listed accounts to a group, keeping the members it already has.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  Accounts that cannot be group members - a guest, a disabled account or an ID that matches nobody - are  silently skipped instead of failing the call, so compare the members in the answer with what was sent to see  what was actually applied.  The call is idempotent for an account that is already a member, and it does not change who manages the group;  use `PUT api/2.0/group/{id}/manager` for that.  The answer is the group with its members after the addition.  To replace the whole list instead of extending it, use `POST api/2.0/group/{id}/members`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-members-to/
    # @param id [String] The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.
    # @param members_request [MembersRequest] The accounts to add, replace with, or remove.
    # @param [Hash] opts the optional parameters
    # @return [GroupWrapper]
    def add_members_to(id, members_request, opts = {})
      data, _status_code, _headers = add_members_to_with_http_info(id, members_request, opts)
      data
    end

    # Add group members
    # Adds the listed accounts to a group, keeping the members it already has.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  Accounts that cannot be group members - a guest, a disabled account or an ID that matches nobody - are  silently skipped instead of failing the call, so compare the members in the answer with what was sent to see  what was actually applied.  The call is idempotent for an account that is already a member, and it does not change who manages the group;  use `PUT api/2.0/group/{id}/manager` for that.  The answer is the group with its members after the addition.  To replace the whole list instead of extending it, use `POST api/2.0/group/{id}/members`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-members-to/
    # @param id [String] The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.
    # @param members_request [MembersRequest] The accounts to add, replace with, or remove.
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
    # Deletes a group and withdraws the access it had been granted to rooms, folders and files.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  The removal is permanent and cannot be undone, and it affects sharing: everything that was shared with the  group loses that share, so members who had access only through this group lose it too.  The accounts themselves are kept - only their membership disappears.  The call answers 204 with no body and raises a `GroupDeleted` webhook; a second call with the same ID answers  404 rather than succeeding again.  To empty a group without deleting it, move its members away with  `PUT api/2.0/group/{fromId}/members/{toId}` or remove them through `DELETE api/2.0/group/{id}/members`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-group/
    # @param id [String] The ID of the group to delete, taken from the route. It has to be a group that has not been deleted already,  otherwise the operation answers 404.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group(id, opts = {})
      delete_group_with_http_info(id, opts)
      nil
    end

    # Delete a group
    # Deletes a group and withdraws the access it had been granted to rooms, folders and files.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  The removal is permanent and cannot be undone, and it affects sharing: everything that was shared with the  group loses that share, so members who had access only through this group lose it too.  The accounts themselves are kept - only their membership disappears.  The call answers 204 with no body and raises a `GroupDeleted` webhook; a second call with the same ID answers  404 rather than succeeding again.  To empty a group without deleting it, move its members away with  `PUT api/2.0/group/{fromId}/members/{toId}` or remove them through `DELETE api/2.0/group/{id}/members`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-group/
    # @param id [String] The ID of the group to delete, taken from the route. It has to be a group that has not been deleted already,  otherwise the operation answers 404.
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
    # Returns one group by its ID, with its name, its manager and - when asked for - the accounts that belong to  it.  The caller needs the permission to read groups, and the ID has to belong to a group that has not been  deleted, otherwise the operation answers 404.  The call is read-only, and the member list is left out unless `includeMembers` is set to true, so ask for it  only when the members are actually needed.  Use `GET api/2.0/group` to look a group up by name or to page through them all.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group/
    # @param id [String] The ID of the group to read, taken from the route. It has to be a group that has not been deleted, otherwise  the operation answers 404.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members Whether to fill in the member list of the group. It defaults to true, so set it to false when only the name  and the manager are needed and the group may be large.
    # @return [GroupWrapper]
    def get_group(id, opts = {})
      data, _status_code, _headers = get_group_with_http_info(id, opts)
      data
    end

    # Get a group
    # Returns one group by its ID, with its name, its manager and - when asked for - the accounts that belong to  it.  The caller needs the permission to read groups, and the ID has to belong to a group that has not been  deleted, otherwise the operation answers 404.  The call is read-only, and the member list is left out unless `includeMembers` is set to true, so ask for it  only when the members are actually needed.  Use `GET api/2.0/group` to look a group up by name or to page through them all.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group/
    # @param id [String] The ID of the group to read, taken from the route. It has to be a group that has not been deleted, otherwise  the operation answers 404.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members Whether to fill in the member list of the group. It defaults to true, so set it to false when only the name  and the manager are needed and the group may be large.
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
    # Returns every group the account with the ID in the route belongs to, as a flat list of ID and name pairs.  The caller needs the permission to read groups.  The call is read-only, is not paged, and answers an empty list both for an account that belongs to no group  and for an ID that matches no account, so an empty answer does not prove the account exists.  The entries are summaries and carry neither the manager nor the members - read `GET api/2.0/group/{id}` for  the full picture of one of them.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group-by-user-id/
    # @param userid [String] The ID of the account whose groups are listed, taken from the route. An ID that matches no account yields an  empty list rather than 404.
    # @param [Hash] opts the optional parameters
    # @return [GroupSummaryArrayWrapper]
    def get_group_by_user_id(userid, opts = {})
      data, _status_code, _headers = get_group_by_user_id_with_http_info(userid, opts)
      data
    end

    # Get user groups
    # Returns every group the account with the ID in the route belongs to, as a flat list of ID and name pairs.  The caller needs the permission to read groups.  The call is read-only, is not paged, and answers an empty list both for an account that belongs to no group  and for an ID that matches no account, so an empty answer does not prove the account exists.  The entries are summaries and carry neither the manager nor the members - read `GET api/2.0/group/{id}` for  the full picture of one of them.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group-by-user-id/
    # @param userid [String] The ID of the account whose groups are listed, taken from the route. An ID that matches no account yields an  empty list rather than 404.
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
    # Returns the groups of the portal, one page at a time, with the summary information about each of them - the  ID, the name and the manager - but without the member list.  The caller needs the permission to read groups.  The call is read-only, and the number of groups that match the filters is reported in the total count of the  response, so a client can page through them with `count` and `startIndex`.  Narrow the result with `filterValue` on the group name, with `userId` to keep only the groups that account  belongs to, and with `manager` set to true to keep only the groups it manages; order it with `sortBy` and  `sortOrder`, and an unknown `sortBy` falls back to sorting by title.  The entries carry no members - read `GET api/2.0/group/{id}` with `includeMembers` for one group, or  `GET api/2.0/group/user/{userid}` to find the groups of a single account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id Keeps only the groups the account with this ID takes part in. Omit it to search every group of the portal.
    # @option opts [Boolean] :manager Narrows `userId` down to the groups that account manages, instead of every group it belongs to. It has no  effect on its own and defaults to false.
    # @option opts [Integer] :count The size of the page. It defaults to 100, which is also the largest value the operation accepts.
    # @option opts [Integer] :start_index The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response.
    # @option opts [String] :sort_by What to order the groups by: `Title`, `Manager` or `MembersCount`, compared without regard to case. Any other  value, and omitting the field, orders by title.
    # @option opts [SortOrder] :sort_order The direction of the ordering: `Ascending`, which is the default, or `Descending`.
    # @option opts [String] :filter_value The text to match against the group name. Omit it to get every group.
    # @return [GroupArrayWrapper]
    def get_groups(opts = {})
      data, _status_code, _headers = get_groups_with_http_info(opts)
      data
    end

    # Get groups
    # Returns the groups of the portal, one page at a time, with the summary information about each of them - the  ID, the name and the manager - but without the member list.  The caller needs the permission to read groups.  The call is read-only, and the number of groups that match the filters is reported in the total count of the  response, so a client can page through them with `count` and `startIndex`.  Narrow the result with `filterValue` on the group name, with `userId` to keep only the groups that account  belongs to, and with `manager` set to true to keep only the groups it manages; order it with `sortBy` and  `sortOrder`, and an unknown `sortBy` falls back to sorting by title.  The entries carry no members - read `GET api/2.0/group/{id}` with `includeMembers` for one group, or  `GET api/2.0/group/user/{userid}` to find the groups of a single account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id Keeps only the groups the account with this ID takes part in. Omit it to search every group of the portal.
    # @option opts [Boolean] :manager Narrows `userId` down to the groups that account manages, instead of every group it belongs to. It has no  effect on its own and defaults to false.
    # @option opts [Integer] :count The size of the page. It defaults to 100, which is also the largest value the operation accepts.
    # @option opts [Integer] :start_index The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response.
    # @option opts [String] :sort_by What to order the groups by: `Title`, `Manager` or `MembersCount`, compared without regard to case. Any other  value, and omitting the field, orders by title.
    # @option opts [SortOrder] :sort_order The direction of the ordering: `Ascending`, which is the default, or `Descending`.
    # @option opts [String] :filter_value The text to match against the group name. Omit it to get every group.
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
    # Moves every member of one group into another group, emptying the first one.  The caller needs the permissions to edit groups and to add and remove users, and both IDs have to belong to  groups that have not been deleted, otherwise the operation answers 404.  The source group is kept, only without members, so delete it separately through  `DELETE api/2.0/group/{id}` if it is no longer needed.  Members that cannot be group members any more are silently skipped rather than failing the call, and an  account that already belongs to the destination is simply left there.  The answer is the destination group with its members, not the source one.  To move a chosen few instead of everybody, use `PUT api/2.0/group/{id}/members` and  `DELETE api/2.0/group/{id}/members`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/move-members-to/
    # @param from_id [String] The ID of the group the members are taken from. It is emptied but not deleted, and it has to be a group that  has not been deleted already.
    # @param to_id [String] The ID of the group the members are moved into. It is the group the answer describes, and it has to be a  group that has not been deleted already.
    # @param [Hash] opts the optional parameters
    # @return [GroupWrapper]
    def move_members_to(from_id, to_id, opts = {})
      data, _status_code, _headers = move_members_to_with_http_info(from_id, to_id, opts)
      data
    end

    # Move group members
    # Moves every member of one group into another group, emptying the first one.  The caller needs the permissions to edit groups and to add and remove users, and both IDs have to belong to  groups that have not been deleted, otherwise the operation answers 404.  The source group is kept, only without members, so delete it separately through  `DELETE api/2.0/group/{id}` if it is no longer needed.  Members that cannot be group members any more are silently skipped rather than failing the call, and an  account that already belongs to the destination is simply left there.  The answer is the destination group with its members, not the source one.  To move a chosen few instead of everybody, use `PUT api/2.0/group/{id}/members` and  `DELETE api/2.0/group/{id}/members`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/move-members-to/
    # @param from_id [String] The ID of the group the members are taken from. It is emptied but not deleted, and it has to be a group that  has not been deleted already.
    # @param to_id [String] The ID of the group the members are moved into. It is the group the answer describes, and it has to be a  group that has not been deleted already.
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
    # Removes the listed accounts from a group, leaving the rest of its members in place.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  The accounts themselves are kept; only their membership in this group ends, together with the access they had  through it.  The call is idempotent and forgiving: an ID that is not a member, and one that matches no account at all, are  both skipped without an error, and an empty list simply changes nothing.  The answer is the group with the members that remain.  Emptying a group cannot be done through `POST api/2.0/group/{id}/members`, which needs at least one valid  account, so list every member here, or move them away with `PUT api/2.0/group/{fromId}/members/{toId}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-members-from/
    # @param id [String] The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.
    # @param members_request [MembersRequest] The accounts to add, replace with, or remove.
    # @param [Hash] opts the optional parameters
    # @return [GroupWrapper]
    def remove_members_from(id, members_request, opts = {})
      data, _status_code, _headers = remove_members_from_with_http_info(id, members_request, opts)
      data
    end

    # Remove group members
    # Removes the listed accounts from a group, leaving the rest of its members in place.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  The accounts themselves are kept; only their membership in this group ends, together with the access they had  through it.  The call is idempotent and forgiving: an ID that is not a member, and one that matches no account at all, are  both skipped without an error, and an empty list simply changes nothing.  The answer is the group with the members that remain.  Emptying a group cannot be done through `POST api/2.0/group/{id}/members`, which needs at least one valid  account, so list every member here, or move them away with `PUT api/2.0/group/{fromId}/members/{toId}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-members-from/
    # @param id [String] The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.
    # @param members_request [MembersRequest] The accounts to add, replace with, or remove.
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
    # Makes an account the manager of a group, replacing whoever managed it before.  The caller needs the permissions to edit groups and to add and remove users.  Both the group and the account have to exist: the operation answers 404 when the ID in the route matches no  live group and also when `userId` matches no account, so the message of the error says which of the two was  not found.  The account is added to the group at the same time, so a manager does not have to be a member beforehand, and  the previous manager stays in the group as an ordinary member.  A group has one manager, which makes the call idempotent when it names the account that manages it already.  The answer is the group with its new manager.  To change the members rather than the manager, use `PUT api/2.0/group/{id}/members`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-group-manager/
    # @param id [String] The ID of the group whose manager is set, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.
    # @param set_manager_request [SetManagerRequest] The account to make the manager of the group.
    # @param [Hash] opts the optional parameters
    # @return [GroupWrapper]
    def set_group_manager(id, set_manager_request, opts = {})
      data, _status_code, _headers = set_group_manager_with_http_info(id, set_manager_request, opts)
      data
    end

    # Set a group manager
    # Makes an account the manager of a group, replacing whoever managed it before.  The caller needs the permissions to edit groups and to add and remove users.  Both the group and the account have to exist: the operation answers 404 when the ID in the route matches no  live group and also when `userId` matches no account, so the message of the error says which of the two was  not found.  The account is added to the group at the same time, so a manager does not have to be a member beforehand, and  the previous manager stays in the group as an ordinary member.  A group has one manager, which makes the call idempotent when it names the account that manages it already.  The answer is the group with its new manager.  To change the members rather than the manager, use `PUT api/2.0/group/{id}/members`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-group-manager/
    # @param id [String] The ID of the group whose manager is set, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.
    # @param set_manager_request [SetManagerRequest] The account to make the manager of the group.
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
    # Replaces the whole member list of a group with the accounts given in the request, removing everybody who is  not in that list.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  At least one of the listed accounts has to be usable as a group member, otherwise the call is rejected with  400 and the group is left untouched; the accounts that cannot be members - a guest, a disabled account or an  ID that matches nobody - are then silently skipped while the rest are applied.  The replacement is not atomic: the current members are removed first and the new ones added afterwards, so a  failure in between can leave the group empty.  The answer is the group with the members it ends up with, which is why it should be read instead of assuming  the request was applied verbatim.  To add or remove a few accounts without touching the others, use `PUT api/2.0/group/{id}/members` and  `DELETE api/2.0/group/{id}/members`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-members-to/
    # @param id [String] The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.
    # @param members_request [MembersRequest] The accounts to add, replace with, or remove.
    # @param [Hash] opts the optional parameters
    # @return [GroupWrapper]
    def set_members_to(id, members_request, opts = {})
      data, _status_code, _headers = set_members_to_with_http_info(id, members_request, opts)
      data
    end

    # Replace group members
    # Replaces the whole member list of a group with the accounts given in the request, removing everybody who is  not in that list.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  At least one of the listed accounts has to be usable as a group member, otherwise the call is rejected with  400 and the group is left untouched; the accounts that cannot be members - a guest, a disabled account or an  ID that matches nobody - are then silently skipped while the rest are applied.  The replacement is not atomic: the current members are removed first and the new ones added afterwards, so a  failure in between can leave the group empty.  The answer is the group with the members it ends up with, which is why it should be read instead of assuming  the request was applied verbatim.  To add or remove a few accounts without touching the others, use `PUT api/2.0/group/{id}/members` and  `DELETE api/2.0/group/{id}/members`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-members-to/
    # @param id [String] The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.
    # @param members_request [MembersRequest] The accounts to add, replace with, or remove.
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
    # Changes the name and the manager of a group and adds or removes members, in one call.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  Every field is optional and the ones that are left out are kept: omitting `groupName` keeps the current name,  and omitting `groupManager` keeps the current manager rather than clearing it.  Accounts in `membersToAdd` that cannot be group members - a guest, a disabled account or an ID that matches  nobody - are silently skipped instead of failing the call, so compare the members in the answer with what was  sent to see what was actually applied.  Members are added first and removed afterwards, an account listed in both lists therefore ends up removed,  and removing an account that is not a member changes nothing.  The change raises a `GroupUpdated` webhook, and the answer holds the group as it is after the update.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-group/
    # @param id [String] The ID of the group to update, taken from the route. It has to be a group that has not been deleted,  otherwise the operation answers 404.
    # @param update_group_request [UpdateGroupRequest] The fields to change. Every field is optional and the ones that are left out keep their current values, so an  empty object changes nothing.
    # @param [Hash] opts the optional parameters
    # @return [GroupWrapper]
    def update_group(id, update_group_request, opts = {})
      data, _status_code, _headers = update_group_with_http_info(id, update_group_request, opts)
      data
    end

    # Update a group
    # Changes the name and the manager of a group and adds or removes members, in one call.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  Every field is optional and the ones that are left out are kept: omitting `groupName` keeps the current name,  and omitting `groupManager` keeps the current manager rather than clearing it.  Accounts in `membersToAdd` that cannot be group members - a guest, a disabled account or an ID that matches  nobody - are silently skipped instead of failing the call, so compare the members in the answer with what was  sent to see what was actually applied.  Members are added first and removed afterwards, an account listed in both lists therefore ends up removed,  and removing an account that is not a member changes nothing.  The change raises a `GroupUpdated` webhook, and the answer holds the group as it is after the update.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-group/
    # @param id [String] The ID of the group to update, taken from the route. It has to be a group that has not been deleted,  otherwise the operation answers 404.
    # @param update_group_request [UpdateGroupRequest] The fields to change. Every field is optional and the ones that are left out keep their current values, so an  empty object changes nothing.
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

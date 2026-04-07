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
  module Rooms
    class GroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a new room group
    # Creates a new room group with the specified name, icon, and list of rooms.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-group/
    # @param [Hash] opts the optional parameters
    # @option opts [RoomGroupRequestDto] :room_group_request_dto 
    # @return [RoomGroupWrapper]
    def add_room_group(opts = {})
      data, _status_code, _headers = add_room_group_with_http_info(opts)
      data
    end

    # Add a new room group
    # Creates a new room group with the specified name, icon, and list of rooms.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-group/
    # @param [Hash] opts the optional parameters
    # @option opts [RoomGroupRequestDto] :room_group_request_dto 
    # @return [Array<(RoomGroupWrapper, Integer, Hash)>] RoomGroupWrapper data, response status code and response headers
    def add_room_group_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::GroupsApi.add_room_group ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/group'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'room_group_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'RoomGroupWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::GroupsApi.add_room_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::GroupsApi#add_room_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change group icon
    # Changes the icon of an existing room group.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-group-icon/
    # @param id [Integer] Group id
    # @param [Hash] opts the optional parameters
    # @option opts [IconRequest] :icon_request Icon update data.
    # @return [RoomGroupWrapper]
    def change_room_group_icon(id, opts = {})
      data, _status_code, _headers = change_room_group_icon_with_http_info(id, opts)
      data
    end

    # Change group icon
    # Changes the icon of an existing room group.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-group-icon/
    # @param id [Integer] Group id
    # @param [Hash] opts the optional parameters
    # @option opts [IconRequest] :icon_request Icon update data.
    # @return [Array<(RoomGroupWrapper, Integer, Hash)>] RoomGroupWrapper data, response status code and response headers
    def change_room_group_icon_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::GroupsApi.change_room_group_icon ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::GroupsApi.change_room_group_icon"
      end
      # resource path
      local_var_path = '/api/2.0/files/group/{id}/icon'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'icon_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'RoomGroupWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::GroupsApi.change_room_group_icon",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::GroupsApi#change_room_group_icon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete group
    # Deletes the specified room group.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-group/
    # @param id [Integer] The group unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members Whether to include group members.
    # @return [nil]
    def delete_room_group(id, opts = {})
      delete_room_group_with_http_info(id, opts)
      nil
    end

    # Delete group
    # Deletes the specified room group.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-group/
    # @param id [Integer] The group unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members Whether to include group members.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_room_group_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::GroupsApi.delete_room_group ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::GroupsApi.delete_room_group"
      end
      # resource path
      local_var_path = '/api/2.0/files/group/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeMembers'] = opts[:'include_members'] if !opts[:'include_members'].nil?

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
        :operation => :"Rooms::GroupsApi.delete_room_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::GroupsApi#delete_room_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get room group info
    # Returns detailed information about a room group.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-group-info/
    # @param id [Integer] The group unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members Whether to include group members.
    # @return [RoomGroupWrapper]
    def get_room_group_info(id, opts = {})
      data, _status_code, _headers = get_room_group_info_with_http_info(id, opts)
      data
    end

    # Get room group info
    # Returns detailed information about a room group.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-group-info/
    # @param id [Integer] The group unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members Whether to include group members.
    # @return [Array<(RoomGroupWrapper, Integer, Hash)>] RoomGroupWrapper data, response status code and response headers
    def get_room_group_info_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::GroupsApi.get_room_group_info ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::GroupsApi.get_room_group_info"
      end
      # resource path
      local_var_path = '/api/2.0/files/group/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'RoomGroupWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::GroupsApi.get_room_group_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::GroupsApi#get_room_group_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List room groups
    # Returns a list of all room groups for the current user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-groups/
    # @param id [Integer] The group unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members Whether to include group members.
    # @return [RoomGroupArrayWrapper]
    def get_room_groups(id, opts = {})
      data, _status_code, _headers = get_room_groups_with_http_info(id, opts)
      data
    end

    # List room groups
    # Returns a list of all room groups for the current user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-groups/
    # @param id [Integer] The group unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members Whether to include group members.
    # @return [Array<(RoomGroupArrayWrapper, Integer, Hash)>] RoomGroupArrayWrapper data, response status code and response headers
    def get_room_groups_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::GroupsApi.get_room_groups ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::GroupsApi.get_room_groups"
      end
      # resource path
      local_var_path = '/api/2.0/files/group'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'RoomGroupArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::GroupsApi.get_room_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::GroupsApi#get_room_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update room group
    # Updates room group properties and adds or removes rooms.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-group/
    # @param id [Integer] The group ID.
    # @param update_room_group_request [UpdateRoomGroupRequest] The request for updating a group.
    # @param [Hash] opts the optional parameters
    # @return [RoomGroupWrapper]
    def update_room_group(id, update_room_group_request, opts = {})
      data, _status_code, _headers = update_room_group_with_http_info(id, update_room_group_request, opts)
      data
    end

    # Update room group
    # Updates room group properties and adds or removes rooms.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-group/
    # @param id [Integer] The group ID.
    # @param update_room_group_request [UpdateRoomGroupRequest] The request for updating a group.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoomGroupWrapper, Integer, Hash)>] RoomGroupWrapper data, response status code and response headers
    def update_room_group_with_http_info(id, update_room_group_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::GroupsApi.update_room_group ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::GroupsApi.update_room_group"
      end
      # verify the required parameter 'update_room_group_request' is set
      if @api_client.config.client_side_validation && update_room_group_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_room_group_request' when calling Rooms::GroupsApi.update_room_group"
      end
      # resource path
      local_var_path = '/api/2.0/files/group/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_room_group_request)

      # return_type
      return_type = opts[:debug_return_type] || 'RoomGroupWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::GroupsApi.update_room_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::GroupsApi#update_room_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

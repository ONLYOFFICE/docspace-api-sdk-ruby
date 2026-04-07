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
  module AI
    class AgentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an ai agent
    # Creates an ai agent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-agent/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateAgentRequestDto] :create_agent_request_dto 
    # @return [FolderIntegerWrapper]
    def create_agent(opts = {})
      data, _status_code, _headers = create_agent_with_http_info(opts)
      data
    end

    # Create an ai agent
    # Creates an ai agent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-agent/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateAgentRequestDto] :create_agent_request_dto 
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def create_agent_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.create_agent ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/agents'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_agent_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.create_agent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#create_agent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove an ai agent
    # Removes an ai agent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-agent/
    # @param id [Integer] The room ID.
    # @param delete_room_request [DeleteRoomRequest] The parameters for deleting a room.
    # @param [Hash] opts the optional parameters
    # @return [FileOperationWrapper]
    def delete_agent(id, delete_room_request, opts = {})
      data, _status_code, _headers = delete_agent_with_http_info(id, delete_room_request, opts)
      data
    end

    # Remove an ai agent
    # Removes an ai agent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-agent/
    # @param id [Integer] The room ID.
    # @param delete_room_request [DeleteRoomRequest] The parameters for deleting a room.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileOperationWrapper, Integer, Hash)>] FileOperationWrapper data, response status code and response headers
    def delete_agent_with_http_info(id, delete_room_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.delete_agent ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::AgentsApi.delete_agent"
      end
      # verify the required parameter 'delete_room_request' is set
      if @api_client.config.client_side_validation && delete_room_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_room_request' when calling AI::AgentsApi.delete_agent"
      end
      # resource path
      local_var_path = '/api/2.0/ai/agents/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_room_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.delete_agent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#delete_agent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return an ai agent
    # Returns an ai agent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agent-info/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def get_agent_info(id, opts = {})
      data, _status_code, _headers = get_agent_info_with_http_info(id, opts)
      data
    end

    # Return an ai agent
    # Returns an ai agent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agent-info/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def get_agent_info_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.get_agent_info ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::AgentsApi.get_agent_info"
      end
      # resource path
      local_var_path = '/api/2.0/ai/agents/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'FolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.get_agent_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#get_agent_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ai agents
    # Get ai agents
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agents/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subject_id The filter by user ID.
    # @option opts [String] :subject_owner_id The filter by room owner ID.
    # @option opts [Boolean] :without_tags Specifies whether to search by tags or not.
    # @option opts [String] :tags The tags in the serialized format.
    # @option opts [Boolean] :exclude_subject Specifies whether to exclude search by user or group ID.
    # @option opts [SubjectFilter] :subject_filter The filter by user (Owner - 0, Member - 1).
    # @option opts [QuotaFilter] :quota_filter The filter by quota (All - 0, Default - 1, Custom - 2).
    # @option opts [Integer] :count Specifies the maximum number of items to retrieve.
    # @option opts [Integer] :start_index The index from which to start retrieving the room content.
    # @option opts [String] :sort_by Specifies the field by which the room content should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text filter value used to refine search or query operations.
    # @return [FolderContentIntegerWrapper]
    def get_agents(opts = {})
      data, _status_code, _headers = get_agents_with_http_info(opts)
      data
    end

    # Get ai agents
    # Get ai agents
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agents/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subject_id The filter by user ID.
    # @option opts [String] :subject_owner_id The filter by room owner ID.
    # @option opts [Boolean] :without_tags Specifies whether to search by tags or not.
    # @option opts [String] :tags The tags in the serialized format.
    # @option opts [Boolean] :exclude_subject Specifies whether to exclude search by user or group ID.
    # @option opts [SubjectFilter] :subject_filter The filter by user (Owner - 0, Member - 1).
    # @option opts [QuotaFilter] :quota_filter The filter by quota (All - 0, Default - 1, Custom - 2).
    # @option opts [Integer] :count Specifies the maximum number of items to retrieve.
    # @option opts [Integer] :start_index The index from which to start retrieving the room content.
    # @option opts [String] :sort_by Specifies the field by which the room content should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text filter value used to refine search or query operations.
    # @return [Array<(FolderContentIntegerWrapper, Integer, Hash)>] FolderContentIntegerWrapper data, response status code and response headers
    def get_agents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.get_agents ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling AI::AgentsApi.get_agents, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling AI::AgentsApi.get_agents, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/ai/agents'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subjectId'] = opts[:'subject_id'] if !opts[:'subject_id'].nil?
      query_params[:'subjectOwnerId'] = opts[:'subject_owner_id'] if !opts[:'subject_owner_id'].nil?
      query_params[:'withoutTags'] = opts[:'without_tags'] if !opts[:'without_tags'].nil?
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'excludeSubject'] = opts[:'exclude_subject'] if !opts[:'exclude_subject'].nil?
      query_params[:'subjectFilter'] = opts[:'subject_filter'] if !opts[:'subject_filter'].nil?
      query_params[:'quotaFilter'] = opts[:'quota_filter'] if !opts[:'quota_filter'].nil?
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
      return_type = opts[:debug_return_type] || 'FolderContentIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.get_agents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#get_agents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the room new items
    # Returns the room new items.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agents-new-items/
    # @param [Hash] opts the optional parameters
    # @return [NewItemsAgentNewItemsArrayWrapper]
    def get_agents_new_items(opts = {})
      data, _status_code, _headers = get_agents_new_items_with_http_info(opts)
      data
    end

    # Get the room new items
    # Returns the room new items.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agents-new-items/
    # @param [Hash] opts the optional parameters
    # @return [Array<(NewItemsAgentNewItemsArrayWrapper, Integer, Hash)>] NewItemsAgentNewItemsArrayWrapper data, response status code and response headers
    def get_agents_new_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.get_agents_new_items ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/agents/news'

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
      return_type = opts[:debug_return_type] || 'NewItemsAgentNewItemsArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.get_agents_new_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#get_agents_new_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset the AI agents quota limit
    # Resets the quota limit for the AI agents with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-agents-quota/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateRoomsRoomIdsRequestDtoInteger] :update_rooms_room_ids_request_dto_integer 
    # @return [FolderIntegerArrayWrapper]
    def reset_agents_quota(opts = {})
      data, _status_code, _headers = reset_agents_quota_with_http_info(opts)
      data
    end

    # Reset the AI agents quota limit
    # Resets the quota limit for the AI agents with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-agents-quota/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateRoomsRoomIdsRequestDtoInteger] :update_rooms_room_ids_request_dto_integer 
    # @return [Array<(FolderIntegerArrayWrapper, Integer, Hash)>] FolderIntegerArrayWrapper data, response status code and response headers
    def reset_agents_quota_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.reset_agents_quota ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/agents/resetquota'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_rooms_room_ids_request_dto_integer'])

      # return_type
      return_type = opts[:debug_return_type] || 'FolderIntegerArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.reset_agents_quota",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#reset_agents_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an ai agent
    # Updates an ai agent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-agent/
    # @param id [Integer] The room ID.
    # @param update_room_request [UpdateRoomRequest] The request parameters for updating a room.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def update_agent(id, update_room_request, opts = {})
      data, _status_code, _headers = update_agent_with_http_info(id, update_room_request, opts)
      data
    end

    # Update an ai agent
    # Updates an ai agent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-agent/
    # @param id [Integer] The room ID.
    # @param update_room_request [UpdateRoomRequest] The request parameters for updating a room.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def update_agent_with_http_info(id, update_room_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.update_agent ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::AgentsApi.update_agent"
      end
      # verify the required parameter 'update_room_request' is set
      if @api_client.config.client_side_validation && update_room_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_room_request' when calling AI::AgentsApi.update_agent"
      end
      # resource path
      local_var_path = '/api/2.0/ai/agents/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_room_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.update_agent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#update_agent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the AI agent quota limit
    # Changes the quota limit for the AI agents with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-agents-quota/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateRoomsQuotaRequestDtoInteger] :update_rooms_quota_request_dto_integer 
    # @return [FolderIntegerArrayWrapper]
    def update_agents_quota(opts = {})
      data, _status_code, _headers = update_agents_quota_with_http_info(opts)
      data
    end

    # Change the AI agent quota limit
    # Changes the quota limit for the AI agents with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-agents-quota/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateRoomsQuotaRequestDtoInteger] :update_rooms_quota_request_dto_integer 
    # @return [Array<(FolderIntegerArrayWrapper, Integer, Hash)>] FolderIntegerArrayWrapper data, response status code and response headers
    def update_agents_quota_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.update_agents_quota ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/agents/agentquota'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_rooms_quota_request_dto_integer'])

      # return_type
      return_type = opts[:debug_return_type] || 'FolderIntegerArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.update_agents_quota",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#update_agents_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

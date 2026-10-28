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
    # Create an agent
    # Creates an AI agent room and binds a model to it, in that order. `profileId` is required, has to be a UUID, has to name an existing profile, and that profile has to support chat - an image-only model is refused here rather than failing on every later request. `prompt` is required and is stored on the room as its standing instruction with any markup stripped, so it cannot round-trip HTML into another user's reply. The two steps are not atomic: when the room is created but the model binding fails, the call reports an error and the room is left behind, so re-bind it with `PUT api/2.0/ai/agents/{id}` rather than creating a second one.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-create/
    # @param ai_agents_create_request [AiAgentsCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiFolderWrapper]
    def ai_agents_create(ai_agents_create_request, opts = {})
      data, _status_code, _headers = ai_agents_create_with_http_info(ai_agents_create_request, opts)
      data
    end

    # Create an agent
    # Creates an AI agent room and binds a model to it, in that order. `profileId` is required, has to be a UUID, has to name an existing profile, and that profile has to support chat - an image-only model is refused here rather than failing on every later request. `prompt` is required and is stored on the room as its standing instruction with any markup stripped, so it cannot round-trip HTML into another user's reply. The two steps are not atomic: when the room is created but the model binding fails, the call reports an error and the room is left behind, so re-bind it with `PUT api/2.0/ai/agents/{id}` rather than creating a second one.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-create/
    # @param ai_agents_create_request [AiAgentsCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFolderWrapper, Integer, Hash)>] AiFolderWrapper data, response status code and response headers
    def ai_agents_create_with_http_info(ai_agents_create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.ai_agents_create ...'
      end
      # verify the required parameter 'ai_agents_create_request' is set
      if @api_client.config.client_side_validation && ai_agents_create_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_agents_create_request' when calling AI::AgentsApi.ai_agents_create"
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_agents_create_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiFolderWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.ai_agents_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#ai_agents_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an agent
    # Deletes an AI agent room. The ID has to be the room's integer identifier, and the body is forwarded to the DocSpace AI service unchanged, so it accepts the same options as deleting an ordinary room - `deleteAfter` among them. Deletion is asynchronous there: the answer is a file-operation payload to poll, not a completed result. The agent's model binding is deliberately left behind, because the upstream assignment API has no per-entry delete, so an orphaned assignment row survives the room.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-delete/
    # @param id [String] The agent identifier.
    # @param ai_agents_delete_request [AiAgentsDeleteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiFileOperationWrapper]
    def ai_agents_delete(id, ai_agents_delete_request, opts = {})
      data, _status_code, _headers = ai_agents_delete_with_http_info(id, ai_agents_delete_request, opts)
      data
    end

    # Delete an agent
    # Deletes an AI agent room. The ID has to be the room's integer identifier, and the body is forwarded to the DocSpace AI service unchanged, so it accepts the same options as deleting an ordinary room - `deleteAfter` among them. Deletion is asynchronous there: the answer is a file-operation payload to poll, not a completed result. The agent's model binding is deliberately left behind, because the upstream assignment API has no per-entry delete, so an orphaned assignment row survives the room.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-delete/
    # @param id [String] The agent identifier.
    # @param ai_agents_delete_request [AiAgentsDeleteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFileOperationWrapper, Integer, Hash)>] AiFileOperationWrapper data, response status code and response headers
    def ai_agents_delete_with_http_info(id, ai_agents_delete_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.ai_agents_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::AgentsApi.ai_agents_delete"
      end
      # verify the required parameter 'ai_agents_delete_request' is set
      if @api_client.config.client_side_validation && ai_agents_delete_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_agents_delete_request' when calling AI::AgentsApi.ai_agents_delete"
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_agents_delete_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiFileOperationWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.ai_agents_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#ai_agents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an agent
    # Returns one AI agent room, enriched with the `profileId` currently bound to it so an edit form can prefill its model selector. The ID is the room's integer identifier, and a non-integer value is refused rather than passed on to fail opaquely upstream. The binding lives in an assignment rather than on the room, so it is looked up separately: a missing or unreadable assignment simply leaves `profileId` out of the answer instead of failing the call. The standing instruction comes back on the room as `chatSettings.prompt`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-get/
    # @param id [String] The agent identifier.
    # @param [Hash] opts the optional parameters
    # @return [AiAgentsGet200Response]
    def ai_agents_get(id, opts = {})
      data, _status_code, _headers = ai_agents_get_with_http_info(id, opts)
      data
    end

    # Get an agent
    # Returns one AI agent room, enriched with the `profileId` currently bound to it so an edit form can prefill its model selector. The ID is the room's integer identifier, and a non-integer value is refused rather than passed on to fail opaquely upstream. The binding lives in an assignment rather than on the room, so it is looked up separately: a missing or unreadable assignment simply leaves `profileId` out of the answer instead of failing the call. The standing instruction comes back on the room as `chatSettings.prompt`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-get/
    # @param id [String] The agent identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiAgentsGet200Response, Integer, Hash)>] AiAgentsGet200Response data, response status code and response headers
    def ai_agents_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.ai_agents_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::AgentsApi.ai_agents_get"
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
      return_type = opts[:debug_return_type] || 'AiAgentsGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.ai_agents_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#ai_agents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List agents
    # Lists the portal's AI agent rooms. The query is forwarded unchanged to the DocSpace AI service, so it takes the same paging, sorting and filtering parameters as an ordinary room listing, and the answer is that service's folder-content payload rather than a shape of this API's own. Array and object query values are dropped rather than guessed at, so send flat strings. The profile bound to each agent is not included here - read one agent with `GET api/2.0/ai/agents/{id}` for that.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-list/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subject_id Show only the agent rooms this user takes part in.
    # @option opts [String] :subject_owner_id Show only the agent rooms owned by this user.
    # @option opts [Boolean] :exclude_subject Invert the user filter: leave out what `subjectId` selects instead of keeping it.
    # @option opts [String] :tags Show only the agent rooms carrying these tags, comma-separated.
    # @option opts [Boolean] :without_tags Show only the agent rooms that carry no tags at all.
    # @option opts [Integer] :quota_filter Filter by quota kind: 0 for all, 1 for the default quota, 2 for a custom one.
    # @option opts [String] :filter_value Show only the agent rooms whose title matches this text.
    # @option opts [String] :sort_by Field to sort by, for example `DateAndTime`.
    # @option opts [String] :sort_order Sort direction, `ascending` or `descending`.
    # @option opts [Integer] :start_index Index of the first entry to return; 0 starts at the beginning.
    # @option opts [Integer] :count How many entries to return. The internal service applies its own default.
    # @return [AiFolderContentWrapper]
    def ai_agents_list(opts = {})
      data, _status_code, _headers = ai_agents_list_with_http_info(opts)
      data
    end

    # List agents
    # Lists the portal's AI agent rooms. The query is forwarded unchanged to the DocSpace AI service, so it takes the same paging, sorting and filtering parameters as an ordinary room listing, and the answer is that service's folder-content payload rather than a shape of this API's own. Array and object query values are dropped rather than guessed at, so send flat strings. The profile bound to each agent is not included here - read one agent with `GET api/2.0/ai/agents/{id}` for that.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-list/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subject_id Show only the agent rooms this user takes part in.
    # @option opts [String] :subject_owner_id Show only the agent rooms owned by this user.
    # @option opts [Boolean] :exclude_subject Invert the user filter: leave out what `subjectId` selects instead of keeping it.
    # @option opts [String] :tags Show only the agent rooms carrying these tags, comma-separated.
    # @option opts [Boolean] :without_tags Show only the agent rooms that carry no tags at all.
    # @option opts [Integer] :quota_filter Filter by quota kind: 0 for all, 1 for the default quota, 2 for a custom one.
    # @option opts [String] :filter_value Show only the agent rooms whose title matches this text.
    # @option opts [String] :sort_by Field to sort by, for example `DateAndTime`.
    # @option opts [String] :sort_order Sort direction, `ascending` or `descending`.
    # @option opts [Integer] :start_index Index of the first entry to return; 0 starts at the beginning.
    # @option opts [Integer] :count How many entries to return. The internal service applies its own default.
    # @return [Array<(AiFolderContentWrapper, Integer, Hash)>] AiFolderContentWrapper data, response status code and response headers
    def ai_agents_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.ai_agents_list ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/agents'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subjectId'] = opts[:'subject_id'] if !opts[:'subject_id'].nil?
      query_params[:'subjectOwnerId'] = opts[:'subject_owner_id'] if !opts[:'subject_owner_id'].nil?
      query_params[:'excludeSubject'] = opts[:'exclude_subject'] if !opts[:'exclude_subject'].nil?
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'withoutTags'] = opts[:'without_tags'] if !opts[:'without_tags'].nil?
      query_params[:'quotaFilter'] = opts[:'quota_filter'] if !opts[:'quota_filter'].nil?
      query_params[:'filterValue'] = opts[:'filter_value'] if !opts[:'filter_value'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiFolderContentWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.ai_agents_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#ai_agents_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List agent news items
    # Lists the unread items across the caller's AI agent rooms, so a badge can be rendered without walking each room. It takes no parameters and is scoped to the caller by the DocSpace AI service. The answer is that service's new-items payload. This is a read-only operation and does not mark anything as seen.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-news/
    # @param [Hash] opts the optional parameters
    # @return [AiNewItemsAgentNewItemsArrayWrapper]
    def ai_agents_news(opts = {})
      data, _status_code, _headers = ai_agents_news_with_http_info(opts)
      data
    end

    # List agent news items
    # Lists the unread items across the caller's AI agent rooms, so a badge can be rendered without walking each room. It takes no parameters and is scoped to the caller by the DocSpace AI service. The answer is that service's new-items payload. This is a read-only operation and does not mark anything as seen.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-news/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiNewItemsAgentNewItemsArrayWrapper, Integer, Hash)>] AiNewItemsAgentNewItemsArrayWrapper data, response status code and response headers
    def ai_agents_news_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.ai_agents_news ...'
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
      return_type = opts[:debug_return_type] || 'AiNewItemsAgentNewItemsArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.ai_agents_news",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#ai_agents_news\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset agents' quota
    # Returns the listed AI agent rooms to the portal's default storage quota, forwarding `roomIds` to the DocSpace AI service unchanged. The answer is that service's payload, one updated room per entry. This is the counterpart of `PUT api/2.0/ai/agents/agentquota` and takes no quota value of its own. Rooms already on the default are unaffected.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-reset-quota/
    # @param ai_agents_reset_quota_request [AiAgentsResetQuotaRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiFolderArrayWrapper]
    def ai_agents_reset_quota(ai_agents_reset_quota_request, opts = {})
      data, _status_code, _headers = ai_agents_reset_quota_with_http_info(ai_agents_reset_quota_request, opts)
      data
    end

    # Reset agents' quota
    # Returns the listed AI agent rooms to the portal's default storage quota, forwarding `roomIds` to the DocSpace AI service unchanged. The answer is that service's payload, one updated room per entry. This is the counterpart of `PUT api/2.0/ai/agents/agentquota` and takes no quota value of its own. Rooms already on the default are unaffected.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-reset-quota/
    # @param ai_agents_reset_quota_request [AiAgentsResetQuotaRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFolderArrayWrapper, Integer, Hash)>] AiFolderArrayWrapper data, response status code and response headers
    def ai_agents_reset_quota_with_http_info(ai_agents_reset_quota_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.ai_agents_reset_quota ...'
      end
      # verify the required parameter 'ai_agents_reset_quota_request' is set
      if @api_client.config.client_side_validation && ai_agents_reset_quota_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_agents_reset_quota_request' when calling AI::AgentsApi.ai_agents_reset_quota"
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_agents_reset_quota_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiFolderArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.ai_agents_reset_quota",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#ai_agents_reset_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an agent
    # Changes an AI agent room - its title, tags or standing instruction - and optionally rebinds its model. The ID has to be the room's integer identifier. `profileId` is not part of the room contract: it is taken out of the forwarded body and applied afterwards as the agent's assignment, and it has to be a UUID naming an existing chat-capable profile. An instruction sent as `chatSettings.prompt` has its markup stripped, as on create; note that when `chatSettings` is present the upstream service still requires the rest of that object to be valid, so send it whole.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update/
    # @param id [String] The agent identifier.
    # @param ai_agents_update_request [AiAgentsUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiFolderWrapper]
    def ai_agents_update(id, ai_agents_update_request, opts = {})
      data, _status_code, _headers = ai_agents_update_with_http_info(id, ai_agents_update_request, opts)
      data
    end

    # Update an agent
    # Changes an AI agent room - its title, tags or standing instruction - and optionally rebinds its model. The ID has to be the room's integer identifier. `profileId` is not part of the room contract: it is taken out of the forwarded body and applied afterwards as the agent's assignment, and it has to be a UUID naming an existing chat-capable profile. An instruction sent as `chatSettings.prompt` has its markup stripped, as on create; note that when `chatSettings` is present the upstream service still requires the rest of that object to be valid, so send it whole.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update/
    # @param id [String] The agent identifier.
    # @param ai_agents_update_request [AiAgentsUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFolderWrapper, Integer, Hash)>] AiFolderWrapper data, response status code and response headers
    def ai_agents_update_with_http_info(id, ai_agents_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.ai_agents_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::AgentsApi.ai_agents_update"
      end
      # verify the required parameter 'ai_agents_update_request' is set
      if @api_client.config.client_side_validation && ai_agents_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_agents_update_request' when calling AI::AgentsApi.ai_agents_update"
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_agents_update_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiFolderWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.ai_agents_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#ai_agents_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update agents' quota
    # Sets the storage quota of the listed AI agent rooms in one call, forwarding `roomIds` and `quota` to the DocSpace AI service unchanged. The answer is that service's payload, one updated room per entry. A quota applies to the room's stored files, not to the model usage of its chats. Use `PUT api/2.0/ai/agents/resetquota` to return rooms to the portal default instead of naming a number.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update-quota/
    # @param ai_agents_update_quota_request [AiAgentsUpdateQuotaRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiFolderArrayWrapper]
    def ai_agents_update_quota(ai_agents_update_quota_request, opts = {})
      data, _status_code, _headers = ai_agents_update_quota_with_http_info(ai_agents_update_quota_request, opts)
      data
    end

    # Update agents' quota
    # Sets the storage quota of the listed AI agent rooms in one call, forwarding `roomIds` and `quota` to the DocSpace AI service unchanged. The answer is that service's payload, one updated room per entry. A quota applies to the room's stored files, not to the model usage of its chats. Use `PUT api/2.0/ai/agents/resetquota` to return rooms to the portal default instead of naming a number.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update-quota/
    # @param ai_agents_update_quota_request [AiAgentsUpdateQuotaRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFolderArrayWrapper, Integer, Hash)>] AiFolderArrayWrapper data, response status code and response headers
    def ai_agents_update_quota_with_http_info(ai_agents_update_quota_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.ai_agents_update_quota ...'
      end
      # verify the required parameter 'ai_agents_update_quota_request' is set
      if @api_client.config.client_side_validation && ai_agents_update_quota_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_agents_update_quota_request' when calling AI::AgentsApi.ai_agents_update_quota"
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_agents_update_quota_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiFolderArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AgentsApi.ai_agents_update_quota",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AgentsApi#ai_agents_update_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

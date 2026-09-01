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
    # Creates an AI agent room in the .NET AI service and binds the supplied `profileId` to it as a `Chat` assignment. The instruction is stored on the room as a prompt-only chat setting; a failed binding is reported as an error even though the room already exists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-create/
    # @param ai_agents_create_request [AiAgentsCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiFolderIntegerWrapper]
    def ai_agents_create(ai_agents_create_request, opts = {})
      data, _status_code, _headers = ai_agents_create_with_http_info(ai_agents_create_request, opts)
      data
    end

    # Create an agent
    # Creates an AI agent room in the .NET AI service and binds the supplied `profileId` to it as a `Chat` assignment. The instruction is stored on the room as a prompt-only chat setting; a failed binding is reported as an error even though the room already exists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-create/
    # @param ai_agents_create_request [AiAgentsCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFolderIntegerWrapper, Integer, Hash)>] AiFolderIntegerWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'AiFolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

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
    # Deletes an AI agent room.
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
    # Deletes an AI agent room.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Returns one AI agent room, enriched with the `profileId` bound to it so an edit form can prefill the profile selector. A missing assignment simply leaves `profileId` out.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-get/
    # @param id [String] The agent identifier.
    # @param [Hash] opts the optional parameters
    # @return [AiFolderIntegerWrapper]
    def ai_agents_get(id, opts = {})
      data, _status_code, _headers = ai_agents_get_with_http_info(id, opts)
      data
    end

    # Get an agent
    # Returns one AI agent room, enriched with the `profileId` bound to it so an edit form can prefill the profile selector. A missing assignment simply leaves `profileId` out.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-get/
    # @param id [String] The agent identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFolderIntegerWrapper, Integer, Hash)>] AiFolderIntegerWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'AiFolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

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
    # Lists the portal's AI agent rooms. Query parameters are forwarded unchanged to the .NET AI service, which answers with its folder-content payload.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-list/
    # @param [Hash] opts the optional parameters
    # @return [AiFolderContentIntegerWrapper]
    def ai_agents_list(opts = {})
      data, _status_code, _headers = ai_agents_list_with_http_info(opts)
      data
    end

    # List agents
    # Lists the portal's AI agent rooms. Query parameters are forwarded unchanged to the .NET AI service, which answers with its folder-content payload.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-list/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFolderContentIntegerWrapper, Integer, Hash)>] AiFolderContentIntegerWrapper data, response status code and response headers
    def ai_agents_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AgentsApi.ai_agents_list ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/agents'

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
      return_type = opts[:debug_return_type] || 'AiFolderContentIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

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
    # Lists the new items across the caller's AI agent rooms.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-news/
    # @param [Hash] opts the optional parameters
    # @return [AiNewItemsAgentNewItemsArrayWrapper]
    def ai_agents_news(opts = {})
      data, _status_code, _headers = ai_agents_news_with_http_info(opts)
      data
    end

    # List agent news items
    # Lists the new items across the caller's AI agent rooms.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Resets the storage quota of the given AI agent rooms.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-reset-quota/
    # @param ai_agents_reset_quota_request [AiAgentsResetQuotaRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiFolderIntegerArrayWrapper]
    def ai_agents_reset_quota(ai_agents_reset_quota_request, opts = {})
      data, _status_code, _headers = ai_agents_reset_quota_with_http_info(ai_agents_reset_quota_request, opts)
      data
    end

    # Reset agents' quota
    # Resets the storage quota of the given AI agent rooms.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-reset-quota/
    # @param ai_agents_reset_quota_request [AiAgentsResetQuotaRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFolderIntegerArrayWrapper, Integer, Hash)>] AiFolderIntegerArrayWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'AiFolderIntegerArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

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
    # Updates an AI agent room - title, tags, instruction. `profileId` is not part of the room contract: it is stripped from the forwarded body and re-bound as the agent's assignment afterwards.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update/
    # @param id [String] The agent identifier.
    # @param ai_agents_update_request [AiAgentsUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiFolderIntegerWrapper]
    def ai_agents_update(id, ai_agents_update_request, opts = {})
      data, _status_code, _headers = ai_agents_update_with_http_info(id, ai_agents_update_request, opts)
      data
    end

    # Update an agent
    # Updates an AI agent room - title, tags, instruction. `profileId` is not part of the room contract: it is stripped from the forwarded body and re-bound as the agent's assignment afterwards.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update/
    # @param id [String] The agent identifier.
    # @param ai_agents_update_request [AiAgentsUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFolderIntegerWrapper, Integer, Hash)>] AiFolderIntegerWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'AiFolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

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
    # Changes the storage quota of the given AI agent rooms.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update-quota/
    # @param ai_agents_update_quota_request [AiAgentsUpdateQuotaRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiFolderIntegerArrayWrapper]
    def ai_agents_update_quota(ai_agents_update_quota_request, opts = {})
      data, _status_code, _headers = ai_agents_update_quota_with_http_info(ai_agents_update_quota_request, opts)
      data
    end

    # Update agents' quota
    # Changes the storage quota of the given AI agent rooms.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update-quota/
    # @param ai_agents_update_quota_request [AiAgentsUpdateQuotaRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFolderIntegerArrayWrapper, Integer, Hash)>] AiFolderIntegerArrayWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'AiFolderIntegerArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

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

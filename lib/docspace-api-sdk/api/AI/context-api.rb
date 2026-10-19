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
    class ContextApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get context folders
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-context-folders/
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_context_get_context_folders(opts = {})
      data, _status_code, _headers = ai_context_get_context_folders_with_http_info(opts)
      data
    end

    # Get context folders
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-context-folders/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_context_get_context_folders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ContextApi.ai_context_get_context_folders ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/context/get-context-folders'

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
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::ContextApi.ai_context_get_context_folders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ContextApi#ai_context_get_context_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get room skill
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skill/
    # @param cloud [String] 
    # @param room_id [String] 
    # @param skill_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_context_get_room_skill(cloud, room_id, skill_id, opts = {})
      data, _status_code, _headers = ai_context_get_room_skill_with_http_info(cloud, room_id, skill_id, opts)
      data
    end

    # Get room skill
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skill/
    # @param cloud [String] 
    # @param room_id [String] 
    # @param skill_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_context_get_room_skill_with_http_info(cloud, room_id, skill_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ContextApi.ai_context_get_room_skill ...'
      end
      # verify the required parameter 'cloud' is set
      if @api_client.config.client_side_validation && cloud.nil?
        fail ArgumentError, "Missing the required parameter 'cloud' when calling AI::ContextApi.ai_context_get_room_skill"
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::ContextApi.ai_context_get_room_skill"
      end
      # verify the required parameter 'skill_id' is set
      if @api_client.config.client_side_validation && skill_id.nil?
        fail ArgumentError, "Missing the required parameter 'skill_id' when calling AI::ContextApi.ai_context_get_room_skill"
      end
      # resource path
      local_var_path = '/api/2.0/ai/context/get-room-skill'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cloud'] = cloud
      query_params[:'roomId'] = room_id
      query_params[:'skillId'] = skill_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::ContextApi.ai_context_get_room_skill",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ContextApi#ai_context_get_room_skill\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get room skills
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skills/
    # @param cloud [String] 
    # @param room_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_context_get_room_skills(cloud, room_id, opts = {})
      data, _status_code, _headers = ai_context_get_room_skills_with_http_info(cloud, room_id, opts)
      data
    end

    # Get room skills
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skills/
    # @param cloud [String] 
    # @param room_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_context_get_room_skills_with_http_info(cloud, room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ContextApi.ai_context_get_room_skills ...'
      end
      # verify the required parameter 'cloud' is set
      if @api_client.config.client_side_validation && cloud.nil?
        fail ArgumentError, "Missing the required parameter 'cloud' when calling AI::ContextApi.ai_context_get_room_skills"
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::ContextApi.ai_context_get_room_skills"
      end
      # resource path
      local_var_path = '/api/2.0/ai/context/get-room-skills'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cloud'] = cloud
      query_params[:'roomId'] = room_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::ContextApi.ai_context_get_room_skills",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ContextApi#ai_context_get_room_skills\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

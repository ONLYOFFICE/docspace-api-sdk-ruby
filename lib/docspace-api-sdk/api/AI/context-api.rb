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
    # Lists the Instructions rooms the caller can connect to a chat as context, grouped under the account they belong to (`docspace` for this portal). Only a room the caller can read that holds at least one skill is listed: one without skills would connect nothing. An empty list means there is nothing to connect. At most 1000 Instructions rooms are read; any beyond them are left out without a signal. Read the skills of one room with `GET api/2.0/ai/context/get-room-skills`. This is a read-only operation.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-context-folders/
    # @param [Hash] opts the optional parameters
    # @return [Array<AiContextFolder>]
    def ai_context_get_context_folders(opts = {})
      data, _status_code, _headers = ai_context_get_context_folders_with_http_info(opts)
      data
    end

    # Get context folders
    # Lists the Instructions rooms the caller can connect to a chat as context, grouped under the account they belong to (`docspace` for this portal). Only a room the caller can read that holds at least one skill is listed: one without skills would connect nothing. An empty list means there is nothing to connect. At most 1000 Instructions rooms are read; any beyond them are left out without a signal. Read the skills of one room with `GET api/2.0/ai/context/get-room-skills`. This is a read-only operation.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-context-folders/
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AiContextFolder>, Integer, Hash)>] Array<AiContextFolder> data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'Array<AiContextFolder>'

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

    # Get knowledge folders
    # Lists the Knowledge rooms the caller can connect to a chat as its knowledge base, grouped under the account they belong to (`docspace` for this portal). A connected Knowledge room limits the knowledge search of a round to it (`actionArgs.knowledgeRooms`). An empty list means there is none the caller can read. At most 1000 Knowledge rooms are listed; any beyond them are left out without a signal. This is a read-only operation.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-knowledge-folders/
    # @param [Hash] opts the optional parameters
    # @return [Array<AiContextFolder>]
    def ai_context_get_knowledge_folders(opts = {})
      data, _status_code, _headers = ai_context_get_knowledge_folders_with_http_info(opts)
      data
    end

    # Get knowledge folders
    # Lists the Knowledge rooms the caller can connect to a chat as its knowledge base, grouped under the account they belong to (`docspace` for this portal). A connected Knowledge room limits the knowledge search of a round to it (`actionArgs.knowledgeRooms`). An empty list means there is none the caller can read. At most 1000 Knowledge rooms are listed; any beyond them are left out without a signal. This is a read-only operation.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-knowledge-folders/
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AiContextFolder>, Integer, Hash)>] Array<AiContextFolder> data, response status code and response headers
    def ai_context_get_knowledge_folders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ContextApi.ai_context_get_knowledge_folders ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/context/get-knowledge-folders'

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
      return_type = opts[:debug_return_type] || 'Array<AiContextFolder>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::ContextApi.ai_context_get_knowledge_folders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ContextApi#ai_context_get_knowledge_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get room skill
    # Returns the Markdown file of one skill of an Instructions room as a JSON string. `roomId` and `skillId` are required, and the skill has to be one of that room's skills: the ID of any other file, readable or not, answers 404, as does a room that is not an Instructions room the caller can read. Only the first 256 KiB of the file are read, which covers the 64 K characters a chat passes to the model; a longer file comes back cut there without a signal. This is a read-only operation.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skill/
    # @param room_id [String] The Instructions room identifier.
    # @param skill_id [String] The skill identifier, as `GET api/2.0/ai/context/get-room-skills` lists it.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cloud The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it.
    # @return [String]
    def ai_context_get_room_skill(room_id, skill_id, opts = {})
      data, _status_code, _headers = ai_context_get_room_skill_with_http_info(room_id, skill_id, opts)
      data
    end

    # Get room skill
    # Returns the Markdown file of one skill of an Instructions room as a JSON string. `roomId` and `skillId` are required, and the skill has to be one of that room's skills: the ID of any other file, readable or not, answers 404, as does a room that is not an Instructions room the caller can read. Only the first 256 KiB of the file are read, which covers the 64 K characters a chat passes to the model; a longer file comes back cut there without a signal. This is a read-only operation.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skill/
    # @param room_id [String] The Instructions room identifier.
    # @param skill_id [String] The skill identifier, as `GET api/2.0/ai/context/get-room-skills` lists it.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cloud The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it.
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def ai_context_get_room_skill_with_http_info(room_id, skill_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ContextApi.ai_context_get_room_skill ...'
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
      query_params[:'roomId'] = room_id
      query_params[:'skillId'] = skill_id
      query_params[:'cloud'] = opts[:'cloud'] if !opts[:'cloud'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

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
    # Lists the skills of one Instructions room: the ID, name and description from the frontmatter of each skill file, not its body. `roomId` is required; `cloud` is accepted and not read. A room that is not an Instructions room the caller can read answers 404. Read the body of one skill with `GET api/2.0/ai/context/get-room-skill`. This is a read-only operation.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skills/
    # @param room_id [String] The Instructions room identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cloud The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it.
    # @return [Array<AiRoomSkill>]
    def ai_context_get_room_skills(room_id, opts = {})
      data, _status_code, _headers = ai_context_get_room_skills_with_http_info(room_id, opts)
      data
    end

    # Get room skills
    # Lists the skills of one Instructions room: the ID, name and description from the frontmatter of each skill file, not its body. `roomId` is required; `cloud` is accepted and not read. A room that is not an Instructions room the caller can read answers 404. Read the body of one skill with `GET api/2.0/ai/context/get-room-skill`. This is a read-only operation.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skills/
    # @param room_id [String] The Instructions room identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cloud The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it.
    # @return [Array<(Array<AiRoomSkill>, Integer, Hash)>] Array<AiRoomSkill> data, response status code and response headers
    def ai_context_get_room_skills_with_http_info(room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ContextApi.ai_context_get_room_skills ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling AI::ContextApi.ai_context_get_room_skills"
      end
      # resource path
      local_var_path = '/api/2.0/ai/context/get-room-skills'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'roomId'] = room_id
      query_params[:'cloud'] = opts[:'cloud'] if !opts[:'cloud'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AiRoomSkill>'

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

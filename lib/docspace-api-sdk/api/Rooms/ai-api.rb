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
    class AIApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the AI project model
    # Returns the AI model selected for the chat of an AI project, as the ID of an AI model profile. Any project member with read access may call it. The call is read-only. The result holds only the project's own choice: `profileId` is null when nobody has selected a model for the project yet, or when the selected profile has been removed from the portal since. In both cases the portal-wide model is used instead, which this operation does not return. To change the model, use `PUT api/2.0/files/rooms/{id}/model`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-project-model/
    # @param id [Integer] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [AiProjectModelWrapper]
    def get_project_model(id, opts = {})
      data, _status_code, _headers = get_project_model_with_http_info(id, opts)
      data
    end

    # Get the AI project model
    # Returns the AI model selected for the chat of an AI project, as the ID of an AI model profile. Any project member with read access may call it. The call is read-only. The result holds only the project's own choice: `profileId` is null when nobody has selected a model for the project yet, or when the selected profile has been removed from the portal since. In both cases the portal-wide model is used instead, which this operation does not return. To change the model, use `PUT api/2.0/files/rooms/{id}/model`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-project-model/
    # @param id [Integer] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiProjectModelWrapper, Integer, Hash)>] AiProjectModelWrapper data, response status code and response headers
    def get_project_model_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::AIApi.get_project_model ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::AIApi.get_project_model"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/model'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'AiProjectModelWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::AIApi.get_project_model",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::AIApi#get_project_model\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the AI project sources
    # Returns the Instructions and Knowledge rooms linked to an AI project as its sources.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-project-sources/
    # @param id [Integer] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [AiProjectSourcesWrapper]
    def get_project_sources(id, opts = {})
      data, _status_code, _headers = get_project_sources_with_http_info(id, opts)
      data
    end

    # Get the AI project sources
    # Returns the Instructions and Knowledge rooms linked to an AI project as its sources.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-project-sources/
    # @param id [Integer] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiProjectSourcesWrapper, Integer, Hash)>] AiProjectSourcesWrapper data, response status code and response headers
    def get_project_sources_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::AIApi.get_project_sources ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::AIApi.get_project_sources"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/sources'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'AiProjectSourcesWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::AIApi.get_project_sources",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::AIApi#get_project_sources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the skills of an AI room
    # Returns the skills of an Instructions room, or of the Instructions rooms linked to an AI project.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-skills/
    # @param id [Integer] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [AiSkillsWrapper]
    def get_room_skills(id, opts = {})
      data, _status_code, _headers = get_room_skills_with_http_info(id, opts)
      data
    end

    # Get the skills of an AI room
    # Returns the skills of an Instructions room, or of the Instructions rooms linked to an AI project.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-skills/
    # @param id [Integer] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSkillsWrapper, Integer, Hash)>] AiSkillsWrapper data, response status code and response headers
    def get_room_skills_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::AIApi.get_room_skills ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::AIApi.get_room_skills"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/skills'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'AiSkillsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::AIApi.get_room_skills",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::AIApi#get_room_skills\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the skills of Instructions rooms
    # Returns the skills of several Instructions rooms. Rooms the caller cannot read are left out.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-skills/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :room_ids IDs of the Instructions rooms, one `roomIds` query item per room; 1 to 20 items.
    # @return [AiSkillsWrapper]
    def get_rooms_skills(opts = {})
      data, _status_code, _headers = get_rooms_skills_with_http_info(opts)
      data
    end

    # Get the skills of Instructions rooms
    # Returns the skills of several Instructions rooms. Rooms the caller cannot read are left out.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-skills/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :room_ids IDs of the Instructions rooms, one `roomIds` query item per room; 1 to 20 items.
    # @return [Array<(AiSkillsWrapper, Integer, Hash)>] AiSkillsWrapper data, response status code and response headers
    def get_rooms_skills_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::AIApi.get_rooms_skills ...'
      end
      if @api_client.config.client_side_validation && !opts[:'room_ids'].nil? && opts[:'room_ids'].length > 20
        fail ArgumentError, 'invalid value for "opts[:"room_ids"]" when calling Rooms::AIApi.get_rooms_skills, number of items must be less than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:'room_ids'].nil? && opts[:'room_ids'].length < 1
        fail ArgumentError, 'invalid value for "opts[:"room_ids"]" when calling Rooms::AIApi.get_rooms_skills, number of items must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/rooms/skills'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'roomIds'] = @api_client.build_collection_param(opts[:'room_ids'], :multi) if !opts[:'room_ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiSkillsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::AIApi.get_rooms_skills",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::AIApi#get_rooms_skills\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Link sources to an AI project
    # Links Instructions and Knowledge rooms to an AI project as its sources, which gives every project member read access to them. The caller must manage the project and each listed room; rooms that are already linked are skipped.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/link-project-sources/
    # @param id [Integer] ID of the project.
    # @param link_ai_project_sources_request [LinkAiProjectSourcesRequest] The rooms to link.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def link_project_sources(id, link_ai_project_sources_request, opts = {})
      link_project_sources_with_http_info(id, link_ai_project_sources_request, opts)
      nil
    end

    # Link sources to an AI project
    # Links Instructions and Knowledge rooms to an AI project as its sources, which gives every project member read access to them. The caller must manage the project and each listed room; rooms that are already linked are skipped.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/link-project-sources/
    # @param id [Integer] ID of the project.
    # @param link_ai_project_sources_request [LinkAiProjectSourcesRequest] The rooms to link.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def link_project_sources_with_http_info(id, link_ai_project_sources_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::AIApi.link_project_sources ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::AIApi.link_project_sources"
      end
      # verify the required parameter 'link_ai_project_sources_request' is set
      if @api_client.config.client_side_validation && link_ai_project_sources_request.nil?
        fail ArgumentError, "Missing the required parameter 'link_ai_project_sources_request' when calling Rooms::AIApi.link_project_sources"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/sources'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(link_ai_project_sources_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::AIApi.link_project_sources",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::AIApi#link_project_sources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the AI project model
    # Selects the AI model that answers in the chat of an AI project, replacing the previous choice, and returns the model now selected. Take `profileId` from the profiles that `GET api/2.0/ai/profiles/list` returns. The caller must be able to edit the project; reading it is not enough. The change applies to every member of the project, is recorded in the audit trail and notifies the project's open clients. Repeating the call with the same profile changes nothing. A model can only be replaced by another one: there is no operation that clears the selection and returns the project to the portal-wide model. The profile must exist on the portal and be able to chat; a profile known to serve only other kinds of tasks, such as image generation, is refused with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-project-model/
    # @param id [Integer] ID of the project.
    # @param update_ai_project_model_request [UpdateAiProjectModelRequest] The model to set.
    # @param [Hash] opts the optional parameters
    # @return [AiProjectModelWrapper]
    def set_project_model(id, update_ai_project_model_request, opts = {})
      data, _status_code, _headers = set_project_model_with_http_info(id, update_ai_project_model_request, opts)
      data
    end

    # Set the AI project model
    # Selects the AI model that answers in the chat of an AI project, replacing the previous choice, and returns the model now selected. Take `profileId` from the profiles that `GET api/2.0/ai/profiles/list` returns. The caller must be able to edit the project; reading it is not enough. The change applies to every member of the project, is recorded in the audit trail and notifies the project's open clients. Repeating the call with the same profile changes nothing. A model can only be replaced by another one: there is no operation that clears the selection and returns the project to the portal-wide model. The profile must exist on the portal and be able to chat; a profile known to serve only other kinds of tasks, such as image generation, is refused with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-project-model/
    # @param id [Integer] ID of the project.
    # @param update_ai_project_model_request [UpdateAiProjectModelRequest] The model to set.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiProjectModelWrapper, Integer, Hash)>] AiProjectModelWrapper data, response status code and response headers
    def set_project_model_with_http_info(id, update_ai_project_model_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::AIApi.set_project_model ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::AIApi.set_project_model"
      end
      # verify the required parameter 'update_ai_project_model_request' is set
      if @api_client.config.client_side_validation && update_ai_project_model_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_ai_project_model_request' when calling Rooms::AIApi.set_project_model"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/model'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_ai_project_model_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiProjectModelWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::AIApi.set_project_model",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::AIApi#set_project_model\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unlink sources from an AI project
    # Unlinks Instructions and Knowledge rooms from an AI project; project members lose the access the link gave them. The caller must manage the project, rights on the rooms are not checked; the rooms themselves are not changed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-project-sources/
    # @param id [Integer] ID of the project.
    # @param unlink_ai_project_sources_request [UnlinkAiProjectSourcesRequest] The rooms to unlink.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unlink_project_sources(id, unlink_ai_project_sources_request, opts = {})
      unlink_project_sources_with_http_info(id, unlink_ai_project_sources_request, opts)
      nil
    end

    # Unlink sources from an AI project
    # Unlinks Instructions and Knowledge rooms from an AI project; project members lose the access the link gave them. The caller must manage the project, rights on the rooms are not checked; the rooms themselves are not changed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-project-sources/
    # @param id [Integer] ID of the project.
    # @param unlink_ai_project_sources_request [UnlinkAiProjectSourcesRequest] The rooms to unlink.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def unlink_project_sources_with_http_info(id, unlink_ai_project_sources_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::AIApi.unlink_project_sources ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::AIApi.unlink_project_sources"
      end
      # verify the required parameter 'unlink_ai_project_sources_request' is set
      if @api_client.config.client_side_validation && unlink_ai_project_sources_request.nil?
        fail ArgumentError, "Missing the required parameter 'unlink_ai_project_sources_request' when calling Rooms::AIApi.unlink_project_sources"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/sources'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(unlink_ai_project_sources_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::AIApi.unlink_project_sources",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::AIApi#unlink_project_sources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

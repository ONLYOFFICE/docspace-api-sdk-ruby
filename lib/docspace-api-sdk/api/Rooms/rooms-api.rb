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
    class RoomsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add the room tags
    # Adds the tags to a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/
    # @param id [Integer] The room Id.
    # @param [Hash] opts the optional parameters
    # @option opts [BatchTagsRequestDto] :batch_tags_request_dto The parameters for managing tags.
    # @return [FolderIntegerWrapper]
    def add_room_tags(id, opts = {})
      data, _status_code, _headers = add_room_tags_with_http_info(id, opts)
      data
    end

    # Add the room tags
    # Adds the tags to a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/
    # @param id [Integer] The room Id.
    # @param [Hash] opts the optional parameters
    # @option opts [BatchTagsRequestDto] :batch_tags_request_dto The parameters for managing tags.
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def add_room_tags_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.add_room_tags ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.add_room_tags"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/tags'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'batch_tags_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.add_room_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#add_room_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Archive a room
    # Moves a room with the ID specified in the request to the Archive section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @option opts [ArchiveRoomRequest] :archive_room_request The parameters for archiving a room.
    # @return [FileOperationWrapper]
    def archive_room(id, opts = {})
      data, _status_code, _headers = archive_room_with_http_info(id, opts)
      data
    end

    # Archive a room
    # Moves a room with the ID specified in the request to the Archive section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @option opts [ArchiveRoomRequest] :archive_room_request The parameters for archiving a room.
    # @return [Array<(FileOperationWrapper, Integer, Hash)>] FileOperationWrapper data, response status code and response headers
    def archive_room_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.archive_room ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.archive_room"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/archive'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'archive_room_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.archive_room",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#archive_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the room cover
    # Changes a cover of a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/
    # @param id [Integer] The room ID.
    # @param cover_request_dto [CoverRequestDto] The request parameters to change the room cover.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def change_room_cover(id, cover_request_dto, opts = {})
      data, _status_code, _headers = change_room_cover_with_http_info(id, cover_request_dto, opts)
      data
    end

    # Change the room cover
    # Changes a cover of a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/
    # @param id [Integer] The room ID.
    # @param cover_request_dto [CoverRequestDto] The request parameters to change the room cover.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def change_room_cover_with_http_info(id, cover_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.change_room_cover ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.change_room_cover"
      end
      # verify the required parameter 'cover_request_dto' is set
      if @api_client.config.client_side_validation && cover_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'cover_request_dto' when calling Rooms::RoomsApi.change_room_cover"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/cover'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cover_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'FolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.change_room_cover",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#change_room_cover\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a room
    # Creates a room in the Rooms section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRoomRequestDto] :create_room_request_dto 
    # @return [FolderIntegerWrapper]
    def create_room(opts = {})
      data, _status_code, _headers = create_room_with_http_info(opts)
      data
    end

    # Create a room
    # Creates a room in the Rooms section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRoomRequestDto] :create_room_request_dto 
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def create_room_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.create_room ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_room_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.create_room",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#create_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a room from the template
    # Creates a room in the Rooms section based on the template.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-from-template/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRoomFromTemplateDto] :create_room_from_template_dto 
    # @return [RoomFromTemplateStatusWrapper]
    def create_room_from_template(opts = {})
      data, _status_code, _headers = create_room_from_template_with_http_info(opts)
      data
    end

    # Create a room from the template
    # Creates a room in the Rooms section based on the template.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-from-template/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRoomFromTemplateDto] :create_room_from_template_dto 
    # @return [Array<(RoomFromTemplateStatusWrapper, Integer, Hash)>] RoomFromTemplateStatusWrapper data, response status code and response headers
    def create_room_from_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.create_room_from_template ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/fromtemplate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_room_from_template_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'RoomFromTemplateStatusWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.create_room_from_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#create_room_from_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a room logo
    # Creates a logo for a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/
    # @param id [Integer] The room ID.
    # @param logo_request [LogoRequest] The logo request parameters.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def create_room_logo(id, logo_request, opts = {})
      data, _status_code, _headers = create_room_logo_with_http_info(id, logo_request, opts)
      data
    end

    # Create a room logo
    # Creates a logo for a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/
    # @param id [Integer] The room ID.
    # @param logo_request [LogoRequest] The logo request parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def create_room_logo_with_http_info(id, logo_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.create_room_logo ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.create_room_logo"
      end
      # verify the required parameter 'logo_request' is set
      if @api_client.config.client_side_validation && logo_request.nil?
        fail ArgumentError, "Missing the required parameter 'logo_request' when calling Rooms::RoomsApi.create_room_logo"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/logo'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(logo_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.create_room_logo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#create_room_logo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a room tag
    # Creates a custom room tag with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-tag/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTagRequestDto] :create_tag_request_dto 
    # @return [StringWrapper]
    def create_room_tag(opts = {})
      data, _status_code, _headers = create_room_tag_with_http_info(opts)
      data
    end

    # Create a room tag
    # Creates a custom room tag with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-tag/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTagRequestDto] :create_tag_request_dto 
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def create_room_tag_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.create_room_tag ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/tags'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_tag_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.create_room_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#create_room_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start creating room template
    # Starts creating the room template.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-template/
    # @param [Hash] opts the optional parameters
    # @option opts [RoomTemplateDto] :room_template_dto 
    # @return [RoomTemplateStatusWrapper]
    def create_room_template(opts = {})
      data, _status_code, _headers = create_room_template_with_http_info(opts)
      data
    end

    # Start creating room template
    # Starts creating the room template.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-template/
    # @param [Hash] opts the optional parameters
    # @option opts [RoomTemplateDto] :room_template_dto 
    # @return [Array<(RoomTemplateStatusWrapper, Integer, Hash)>] RoomTemplateStatusWrapper data, response status code and response headers
    def create_room_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.create_room_template ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/roomtemplate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'room_template_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'RoomTemplateStatusWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.create_room_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#create_room_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a third-party room
    # Creates a room in the Rooms section stored in a third-party storage.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-third-party/
    # @param id [String] The ID of the folder in the third-party storage in which the contents of the room will be stored.
    # @param create_third_party_room [CreateThirdPartyRoom] The third-party room information.
    # @param [Hash] opts the optional parameters
    # @return [FolderStringWrapper]
    def create_room_third_party(id, create_third_party_room, opts = {})
      data, _status_code, _headers = create_room_third_party_with_http_info(id, create_third_party_room, opts)
      data
    end

    # Create a third-party room
    # Creates a room in the Rooms section stored in a third-party storage.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-third-party/
    # @param id [String] The ID of the folder in the third-party storage in which the contents of the room will be stored.
    # @param create_third_party_room [CreateThirdPartyRoom] The third-party room information.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderStringWrapper, Integer, Hash)>] FolderStringWrapper data, response status code and response headers
    def create_room_third_party_with_http_info(id, create_third_party_room, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.create_room_third_party ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.create_room_third_party"
      end
      # verify the required parameter 'create_third_party_room' is set
      if @api_client.config.client_side_validation && create_third_party_room.nil?
        fail ArgumentError, "Missing the required parameter 'create_third_party_room' when calling Rooms::RoomsApi.create_room_third_party"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/thirdparty/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_third_party_room)

      # return_type
      return_type = opts[:debug_return_type] || 'FolderStringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.create_room_third_party",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#create_room_third_party\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the custom room tags
    # Deletes a bunch of custom tags specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-custom-tags/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchTagsRequestDto] :batch_tags_request_dto 
    # @return [nil]
    def delete_custom_tags(opts = {})
      delete_custom_tags_with_http_info(opts)
      nil
    end

    # Delete the custom room tags
    # Deletes a bunch of custom tags specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-custom-tags/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchTagsRequestDto] :batch_tags_request_dto 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_custom_tags_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.delete_custom_tags ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/tags'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'batch_tags_request_dto'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.delete_custom_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#delete_custom_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a room
    # Removes a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/
    # @param id [Integer] The room ID.
    # @param delete_room_request [DeleteRoomRequest] The parameters for deleting a room.
    # @param [Hash] opts the optional parameters
    # @return [FileOperationWrapper]
    def delete_room(id, delete_room_request, opts = {})
      data, _status_code, _headers = delete_room_with_http_info(id, delete_room_request, opts)
      data
    end

    # Remove a room
    # Removes a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/
    # @param id [Integer] The room ID.
    # @param delete_room_request [DeleteRoomRequest] The parameters for deleting a room.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileOperationWrapper, Integer, Hash)>] FileOperationWrapper data, response status code and response headers
    def delete_room_with_http_info(id, delete_room_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.delete_room ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.delete_room"
      end
      # verify the required parameter 'delete_room_request' is set
      if @api_client.config.client_side_validation && delete_room_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_room_request' when calling Rooms::RoomsApi.delete_room"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"Rooms::RoomsApi.delete_room",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#delete_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a room logo
    # Removes a logo from a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def delete_room_logo(id, opts = {})
      data, _status_code, _headers = delete_room_logo_with_http_info(id, opts)
      data
    end

    # Remove a room logo
    # Removes a logo from a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def delete_room_logo_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.delete_room_logo ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.delete_room_logo"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/logo'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"Rooms::RoomsApi.delete_room_logo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#delete_room_logo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove the room tags
    # Removes the tags from a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/
    # @param id [Integer] The room Id.
    # @param [Hash] opts the optional parameters
    # @option opts [BatchTagsRequestDto] :batch_tags_request_dto The parameters for managing tags.
    # @return [FolderIntegerWrapper]
    def delete_room_tags(id, opts = {})
      data, _status_code, _headers = delete_room_tags_with_http_info(id, opts)
      data
    end

    # Remove the room tags
    # Removes the tags from a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/
    # @param id [Integer] The room Id.
    # @param [Hash] opts the optional parameters
    # @option opts [BatchTagsRequestDto] :batch_tags_request_dto The parameters for managing tags.
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def delete_room_tags_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.delete_room_tags ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.delete_room_tags"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/tags'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'batch_tags_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.delete_room_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#delete_room_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the new room items
    # Returns a list of all the new items from a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [NewItemsFileEntryBaseArrayWrapper]
    def get_new_room_items(id, opts = {})
      data, _status_code, _headers = get_new_room_items_with_http_info(id, opts)
      data
    end

    # Get the new room items
    # Returns a list of all the new items from a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(NewItemsFileEntryBaseArrayWrapper, Integer, Hash)>] NewItemsFileEntryBaseArrayWrapper data, response status code and response headers
    def get_new_room_items_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_new_room_items ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.get_new_room_items"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/news'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'NewItemsFileEntryBaseArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_new_room_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_new_room_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get public settings
    # Returns the public settings of the room template with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-settings/
    # @param id [Integer] The room template ID.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def get_public_settings(id, opts = {})
      data, _status_code, _headers = get_public_settings_with_http_info(id, opts)
      data
    end

    # Get public settings
    # Returns the public settings of the room template with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-settings/
    # @param id [Integer] The room template ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def get_public_settings_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_public_settings ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.get_public_settings"
      end
      # resource path
      local_var_path = '/api/2.0/files/roomtemplate/{id}/public'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_public_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_public_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get covers
    # Returns a list of all covers.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-covers/
    # @param [Hash] opts the optional parameters
    # @return [CoversResultArrayWrapper]
    def get_room_covers(opts = {})
      data, _status_code, _headers = get_room_covers_with_http_info(opts)
      data
    end

    # Get covers
    # Returns a list of all covers.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-covers/
    # @param [Hash] opts the optional parameters
    # @return [Array<(CoversResultArrayWrapper, Integer, Hash)>] CoversResultArrayWrapper data, response status code and response headers
    def get_room_covers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_room_covers ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/covers'

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
      return_type = opts[:debug_return_type] || 'CoversResultArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_room_covers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_room_covers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the room creation progress
    # Returns the progress of creating a room from the template.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-creating-status/
    # @param [Hash] opts the optional parameters
    # @return [RoomFromTemplateStatusWrapper]
    def get_room_creating_status(opts = {})
      data, _status_code, _headers = get_room_creating_status_with_http_info(opts)
      data
    end

    # Get the room creation progress
    # Returns the progress of creating a room from the template.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-creating-status/
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoomFromTemplateStatusWrapper, Integer, Hash)>] RoomFromTemplateStatusWrapper data, response status code and response headers
    def get_room_creating_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_room_creating_status ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/fromtemplate/status'

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
      return_type = opts[:debug_return_type] || 'RoomFromTemplateStatusWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_room_creating_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_room_creating_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the room index export
    # Returns the room index export.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-index-export/
    # @param [Hash] opts the optional parameters
    # @return [DocumentBuilderTaskWrapper]
    def get_room_index_export(opts = {})
      data, _status_code, _headers = get_room_index_export_with_http_info(opts)
      data
    end

    # Get the room index export
    # Returns the room index export.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-index-export/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentBuilderTaskWrapper, Integer, Hash)>] DocumentBuilderTaskWrapper data, response status code and response headers
    def get_room_index_export_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_room_index_export ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/indexexport'

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
      return_type = opts[:debug_return_type] || 'DocumentBuilderTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_room_index_export",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_room_index_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get room information
    # Returns the room information.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-info/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def get_room_info(id, opts = {})
      data, _status_code, _headers = get_room_info_with_http_info(id, opts)
      data
    end

    # Get room information
    # Returns the room information.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-info/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def get_room_info_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_room_info ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.get_room_info"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_room_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_room_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the room links
    # Returns the links of the room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @option opts [LinkType] :type The link type.
    # @return [FileShareArrayWrapper]
    def get_room_links(id, opts = {})
      data, _status_code, _headers = get_room_links_with_http_info(id, opts)
      data
    end

    # Get the room links
    # Returns the links of the room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @option opts [LinkType] :type The link type.
    # @return [Array<(FileShareArrayWrapper, Integer, Hash)>] FileShareArrayWrapper data, response status code and response headers
    def get_room_links_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_room_links ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.get_room_links"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/links'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_room_links",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_room_links\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the room access rights
    # Returns the access rights of a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-security-info/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @option opts [ShareFilterType] :filter_type The filter type of the access rights.
    # @option opts [Integer] :count The number of items to be retrieved or processed.
    # @option opts [Integer] :start_index The starting index of the items to retrieve in a paginated request.
    # @option opts [String] :filter_value The text filter value used for filtering room security information.
    # @return [FileShareArrayWrapper]
    def get_room_security_info(id, opts = {})
      data, _status_code, _headers = get_room_security_info_with_http_info(id, opts)
      data
    end

    # Get the room access rights
    # Returns the access rights of a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-security-info/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @option opts [ShareFilterType] :filter_type The filter type of the access rights.
    # @option opts [Integer] :count The number of items to be retrieved or processed.
    # @option opts [Integer] :start_index The starting index of the items to retrieve in a paginated request.
    # @option opts [String] :filter_value The text filter value used for filtering room security information.
    # @return [Array<(FileShareArrayWrapper, Integer, Hash)>] FileShareArrayWrapper data, response status code and response headers
    def get_room_security_info_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_room_security_info ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.get_room_security_info"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Rooms::RoomsApi.get_room_security_info, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Rooms::RoomsApi.get_room_security_info, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/share'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
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
      return_type = opts[:debug_return_type] || 'FileShareArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_room_security_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_room_security_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the room tags
    # Returns a list of custom tags.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-tags-info/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count Gets or sets the number of tag results to retrieve.  This property specifies the maximum amount of tag data to be included in the result set.
    # @option opts [Integer] :start_index Represents the starting index from which the tags' information will be retrieved.  This property is used to define the offset for pagination when retrieving a list of tags. It determines  the point in the data set from which the retrieval begins.
    # @option opts [String] :filter_value Gets or sets the text value used for searching tags.  This property is typically used as a filter value when retrieving tag information.
    # @return [ObjectArrayWrapper]
    def get_room_tags_info(opts = {})
      data, _status_code, _headers = get_room_tags_info_with_http_info(opts)
      data
    end

    # Get the room tags
    # Returns a list of custom tags.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-tags-info/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count Gets or sets the number of tag results to retrieve.  This property specifies the maximum amount of tag data to be included in the result set.
    # @option opts [Integer] :start_index Represents the starting index from which the tags' information will be retrieved.  This property is used to define the offset for pagination when retrieving a list of tags. It determines  the point in the data set from which the retrieval begins.
    # @option opts [String] :filter_value Gets or sets the text value used for searching tags.  This property is typically used as a filter value when retrieving tag information.
    # @return [Array<(ObjectArrayWrapper, Integer, Hash)>] ObjectArrayWrapper data, response status code and response headers
    def get_room_tags_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_room_tags_info ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Rooms::RoomsApi.get_room_tags_info, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Rooms::RoomsApi.get_room_tags_info, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/tags'

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'ObjectArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_room_tags_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_room_tags_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get status of room template creation
    # Returns the progress status of the room template creation process.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-template-creating-status/
    # @param [Hash] opts the optional parameters
    # @return [RoomTemplateStatusWrapper]
    def get_room_template_creating_status(opts = {})
      data, _status_code, _headers = get_room_template_creating_status_with_http_info(opts)
      data
    end

    # Get status of room template creation
    # Returns the progress status of the room template creation process.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-template-creating-status/
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoomTemplateStatusWrapper, Integer, Hash)>] RoomTemplateStatusWrapper data, response status code and response headers
    def get_room_template_creating_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_room_template_creating_status ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/roomtemplate/status'

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
      return_type = opts[:debug_return_type] || 'RoomTemplateStatusWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_room_template_creating_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_room_template_creating_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get rooms
    # Returns the contents of the Rooms section by the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<RoomType>] :type The filter by room type.
    # @option opts [String] :subject_id The filter by user ID.
    # @option opts [String] :subject_owner_id The filter by room owner ID.
    # @option opts [SearchArea] :search_area The room search area (Active, Archive, Any, Recent by links).
    # @option opts [Boolean] :without_tags Specifies whether to search by tags or not.
    # @option opts [String] :tags The tags in the serialized format.
    # @option opts [Boolean] :exclude_subject Specifies whether to exclude search by user or group ID.
    # @option opts [ProviderFilter] :provider The filter by provider name (None, Box, DropBox, GoogleDrive, kDrive, OneDrive, SharePoint, WebDav, Yandex, Storage).
    # @option opts [SubjectFilter] :subject_filter The filter by user (Owner - 0, Member - 1).
    # @option opts [QuotaFilter] :quota_filter The filter by quota (All - 0, Default - 1, Custom - 2).
    # @option opts [StorageFilter] :storage_filter The filter by storage (None - 0, Internal - 1, ThirdParty - 2).
    # @option opts [Integer] :count Specifies the maximum number of items to retrieve.
    # @option opts [Integer] :start_index The index from which to start retrieving the room content.
    # @option opts [String] :sort_by Specifies the field by which the room content should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text filter value used to refine search or query operations.
    # @option opts [Integer] :group_id The group ID
    # @return [FolderContentIntegerWrapper]
    def get_rooms_folder(opts = {})
      data, _status_code, _headers = get_rooms_folder_with_http_info(opts)
      data
    end

    # Get rooms
    # Returns the contents of the Rooms section by the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<RoomType>] :type The filter by room type.
    # @option opts [String] :subject_id The filter by user ID.
    # @option opts [String] :subject_owner_id The filter by room owner ID.
    # @option opts [SearchArea] :search_area The room search area (Active, Archive, Any, Recent by links).
    # @option opts [Boolean] :without_tags Specifies whether to search by tags or not.
    # @option opts [String] :tags The tags in the serialized format.
    # @option opts [Boolean] :exclude_subject Specifies whether to exclude search by user or group ID.
    # @option opts [ProviderFilter] :provider The filter by provider name (None, Box, DropBox, GoogleDrive, kDrive, OneDrive, SharePoint, WebDav, Yandex, Storage).
    # @option opts [SubjectFilter] :subject_filter The filter by user (Owner - 0, Member - 1).
    # @option opts [QuotaFilter] :quota_filter The filter by quota (All - 0, Default - 1, Custom - 2).
    # @option opts [StorageFilter] :storage_filter The filter by storage (None - 0, Internal - 1, ThirdParty - 2).
    # @option opts [Integer] :count Specifies the maximum number of items to retrieve.
    # @option opts [Integer] :start_index The index from which to start retrieving the room content.
    # @option opts [String] :sort_by Specifies the field by which the room content should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text filter value used to refine search or query operations.
    # @option opts [Integer] :group_id The group ID
    # @return [Array<(FolderContentIntegerWrapper, Integer, Hash)>] FolderContentIntegerWrapper data, response status code and response headers
    def get_rooms_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_rooms_folder ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Rooms::RoomsApi.get_rooms_folder, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Rooms::RoomsApi.get_rooms_folder, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/rooms'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = @api_client.build_collection_param(opts[:'type'], :csv) if !opts[:'type'].nil?
      query_params[:'subjectId'] = opts[:'subject_id'] if !opts[:'subject_id'].nil?
      query_params[:'subjectOwnerId'] = opts[:'subject_owner_id'] if !opts[:'subject_owner_id'].nil?
      query_params[:'searchArea'] = opts[:'search_area'] if !opts[:'search_area'].nil?
      query_params[:'withoutTags'] = opts[:'without_tags'] if !opts[:'without_tags'].nil?
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'excludeSubject'] = opts[:'exclude_subject'] if !opts[:'exclude_subject'].nil?
      query_params[:'provider'] = opts[:'provider'] if !opts[:'provider'].nil?
      query_params[:'subjectFilter'] = opts[:'subject_filter'] if !opts[:'subject_filter'].nil?
      query_params[:'quotaFilter'] = opts[:'quota_filter'] if !opts[:'quota_filter'].nil?
      query_params[:'storageFilter'] = opts[:'storage_filter'] if !opts[:'storage_filter'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'filterValue'] = opts[:'filter_value'] if !opts[:'filter_value'].nil?
      query_params[:'groupId'] = opts[:'group_id'] if !opts[:'group_id'].nil?

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
        :operation => :"Rooms::RoomsApi.get_rooms_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_rooms_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the room new items
    # Returns the room new items.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-new-items/
    # @param [Hash] opts the optional parameters
    # @return [NewItemsRoomNewItemsArrayWrapper]
    def get_rooms_new_items(opts = {})
      data, _status_code, _headers = get_rooms_new_items_with_http_info(opts)
      data
    end

    # Get the room new items
    # Returns the room new items.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-new-items/
    # @param [Hash] opts the optional parameters
    # @return [Array<(NewItemsRoomNewItemsArrayWrapper, Integer, Hash)>] NewItemsRoomNewItemsArrayWrapper data, response status code and response headers
    def get_rooms_new_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_rooms_new_items ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/news'

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
      return_type = opts[:debug_return_type] || 'NewItemsRoomNewItemsArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_rooms_new_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_rooms_new_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the room primary external link
    # Returns the primary external link of the room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [FileShareWrapper]
    def get_rooms_primary_external_link(id, opts = {})
      data, _status_code, _headers = get_rooms_primary_external_link_with_http_info(id, opts)
      data
    end

    # Get the room primary external link
    # Returns the primary external link of the room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileShareWrapper, Integer, Hash)>] FileShareWrapper data, response status code and response headers
    def get_rooms_primary_external_link_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_rooms_primary_external_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.get_rooms_primary_external_link"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/link'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileShareWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_rooms_primary_external_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_rooms_primary_external_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Has tag links
    # Checks if a specific custom tag has linked items.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/has-tag-links/
    # @param tag_name2 [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag_name Represents the name of a tag
    # @return [BooleanWrapper]
    def has_tag_links(tag_name2, opts = {})
      data, _status_code, _headers = has_tag_links_with_http_info(tag_name2, opts)
      data
    end

    # Has tag links
    # Checks if a specific custom tag has linked items.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/has-tag-links/
    # @param tag_name2 [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag_name Represents the name of a tag
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def has_tag_links_with_http_info(tag_name2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.has_tag_links ...'
      end
      # verify the required parameter 'tag_name2' is set
      if @api_client.config.client_side_validation && tag_name2.nil?
        fail ArgumentError, "Missing the required parameter 'tag_name2' when calling Rooms::RoomsApi.has_tag_links"
      end
      # resource path
      local_var_path = '/api/2.0/files/tags/{tagName}/haslinks'.sub('{' + 'tagName' + '}', CGI.escape(tag_name2.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tagName'] = opts[:'tag_name'] if !opts[:'tag_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.has_tag_links",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#has_tag_links\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Pin a room
    # Pins a room with the ID specified in the request to the top of the list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def pin_room(id, opts = {})
      data, _status_code, _headers = pin_room_with_http_info(id, opts)
      data
    end

    # Pin a room
    # Pins a room with the ID specified in the request to the top of the list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def pin_room_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.pin_room ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.pin_room"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/pin'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"Rooms::RoomsApi.pin_room",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#pin_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reorder the room
    # Reorders the room with ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def reorder_room(id, opts = {})
      data, _status_code, _headers = reorder_room_with_http_info(id, opts)
      data
    end

    # Reorder the room
    # Reorders the room with ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def reorder_room_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.reorder_room ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.reorder_room"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/reorder'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"Rooms::RoomsApi.reorder_room",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#reorder_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resend the room invitations
    # Resends the email invitations to a room with the ID specified in the request to the selected users.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/
    # @param id [Integer] The room ID.
    # @param user_invitation [UserInvitation] The user invitation parameters.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def resend_email_invitations(id, user_invitation, opts = {})
      resend_email_invitations_with_http_info(id, user_invitation, opts)
      nil
    end

    # Resend the room invitations
    # Resends the email invitations to a room with the ID specified in the request to the selected users.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/
    # @param id [Integer] The room ID.
    # @param user_invitation [UserInvitation] The user invitation parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def resend_email_invitations_with_http_info(id, user_invitation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.resend_email_invitations ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.resend_email_invitations"
      end
      # verify the required parameter 'user_invitation' is set
      if @api_client.config.client_side_validation && user_invitation.nil?
        fail ArgumentError, "Missing the required parameter 'user_invitation' when calling Rooms::RoomsApi.resend_email_invitations"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/resend'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(user_invitation)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.resend_email_invitations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#resend_email_invitations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set public settings
    # Sets the public settings for the room template with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-public-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [SetPublicDto] :set_public_dto 
    # @return [nil]
    def set_public_settings(opts = {})
      set_public_settings_with_http_info(opts)
      nil
    end

    # Set public settings
    # Sets the public settings for the room template with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-public-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [SetPublicDto] :set_public_dto 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def set_public_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.set_public_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/roomtemplate/public'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_public_dto'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.set_public_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#set_public_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the room external or invitation link
    # Sets the room external or invitation link with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/
    # @param id [Integer] The room ID.
    # @param room_link_request [RoomLinkRequest] The room link parameters.
    # @param [Hash] opts the optional parameters
    # @return [FileShareWrapper]
    def set_room_link(id, room_link_request, opts = {})
      data, _status_code, _headers = set_room_link_with_http_info(id, room_link_request, opts)
      data
    end

    # Set the room external or invitation link
    # Sets the room external or invitation link with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/
    # @param id [Integer] The room ID.
    # @param room_link_request [RoomLinkRequest] The room link parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileShareWrapper, Integer, Hash)>] FileShareWrapper data, response status code and response headers
    def set_room_link_with_http_info(id, room_link_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.set_room_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.set_room_link"
      end
      # verify the required parameter 'room_link_request' is set
      if @api_client.config.client_side_validation && room_link_request.nil?
        fail ArgumentError, "Missing the required parameter 'room_link_request' when calling Rooms::RoomsApi.set_room_link"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/links'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(room_link_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.set_room_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#set_room_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the room access rights
    # Sets the access rights to the room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/
    # @param id [Integer] The room ID.
    # @param room_invitation_request [RoomInvitationRequest] The room invitation request.
    # @param [Hash] opts the optional parameters
    # @return [RoomSecurityWrapper]
    def set_room_security(id, room_invitation_request, opts = {})
      data, _status_code, _headers = set_room_security_with_http_info(id, room_invitation_request, opts)
      data
    end

    # Set the room access rights
    # Sets the access rights to the room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/
    # @param id [Integer] The room ID.
    # @param room_invitation_request [RoomInvitationRequest] The room invitation request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoomSecurityWrapper, Integer, Hash)>] RoomSecurityWrapper data, response status code and response headers
    def set_room_security_with_http_info(id, room_invitation_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.set_room_security ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.set_room_security"
      end
      # verify the required parameter 'room_invitation_request' is set
      if @api_client.config.client_side_validation && room_invitation_request.nil?
        fail ArgumentError, "Missing the required parameter 'room_invitation_request' when calling Rooms::RoomsApi.set_room_security"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/share'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(room_invitation_request)

      # return_type
      return_type = opts[:debug_return_type] || 'RoomSecurityWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.set_room_security",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#set_room_security\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start the room index export
    # Starts the index export of a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-room-index-export/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [DocumentBuilderTaskWrapper]
    def start_room_index_export(id, opts = {})
      data, _status_code, _headers = start_room_index_export_with_http_info(id, opts)
      data
    end

    # Start the room index export
    # Starts the index export of a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-room-index-export/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentBuilderTaskWrapper, Integer, Hash)>] DocumentBuilderTaskWrapper data, response status code and response headers
    def start_room_index_export_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.start_room_index_export ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.start_room_index_export"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/indexexport'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'DocumentBuilderTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.start_room_index_export",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#start_room_index_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terminate the room index export
    # Terminates the room index export.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-room-index-export/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def terminate_room_index_export(opts = {})
      terminate_room_index_export_with_http_info(opts)
      nil
    end

    # Terminate the room index export
    # Terminates the room index export.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-room-index-export/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def terminate_room_index_export_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.terminate_room_index_export ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/indexexport'

      # query parameters
      query_params = opts[:query_params] || {}

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
        :operation => :"Rooms::RoomsApi.terminate_room_index_export",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#terminate_room_index_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unarchive a room
    # Moves a room with the ID specified in the request from the Archive section to the Rooms section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @option opts [ArchiveRoomRequest] :archive_room_request The parameters for archiving a room.
    # @return [FileOperationWrapper]
    def unarchive_room(id, opts = {})
      data, _status_code, _headers = unarchive_room_with_http_info(id, opts)
      data
    end

    # Unarchive a room
    # Moves a room with the ID specified in the request from the Archive section to the Rooms section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @option opts [ArchiveRoomRequest] :archive_room_request The parameters for archiving a room.
    # @return [Array<(FileOperationWrapper, Integer, Hash)>] FileOperationWrapper data, response status code and response headers
    def unarchive_room_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.unarchive_room ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.unarchive_room"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/unarchive'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'archive_room_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.unarchive_room",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#unarchive_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unpin a room
    # Unpins a room with the ID specified in the request from the top of the list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def unpin_room(id, opts = {})
      data, _status_code, _headers = unpin_room_with_http_info(id, opts)
      data
    end

    # Unpin a room
    # Unpins a room with the ID specified in the request from the top of the list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/
    # @param id [Integer] The room ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def unpin_room_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.unpin_room ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.unpin_room"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/unpin'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"Rooms::RoomsApi.unpin_room",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#unpin_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a room
    # Updates a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/
    # @param id [Integer] The room ID.
    # @param update_room_request [UpdateRoomRequest] The request parameters for updating a room.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def update_room(id, update_room_request, opts = {})
      data, _status_code, _headers = update_room_with_http_info(id, update_room_request, opts)
      data
    end

    # Update a room
    # Updates a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/
    # @param id [Integer] The room ID.
    # @param update_room_request [UpdateRoomRequest] The request parameters for updating a room.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def update_room_with_http_info(id, update_room_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.update_room ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.update_room"
      end
      # verify the required parameter 'update_room_request' is set
      if @api_client.config.client_side_validation && update_room_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_room_request' when calling Rooms::RoomsApi.update_room"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"Rooms::RoomsApi.update_room",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#update_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update tag
    # Updates the name of a custom tag.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-tag/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateTagRequestDto] :update_tag_request_dto 
    # @return [StringWrapper]
    def update_room_tag(opts = {})
      data, _status_code, _headers = update_room_tag_with_http_info(opts)
      data
    end

    # Update tag
    # Updates the name of a custom tag.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-tag/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateTagRequestDto] :update_tag_request_dto 
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def update_room_tag_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.update_room_tag ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/tags'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_tag_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.update_room_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#update_room_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a room logo image
    # Uploads a temporary image to create a room logo.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-room-logo/
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The image data.
    # @return [UploadResultWrapper]
    def upload_room_logo(opts = {})
      data, _status_code, _headers = upload_room_logo_with_http_info(opts)
      data
    end

    # Upload a room logo image
    # Uploads a temporary image to create a room logo.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-room-logo/
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The image data.
    # @return [Array<(UploadResultWrapper, Integer, Hash)>] UploadResultWrapper data, response status code and response headers
    def upload_room_logo_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.upload_room_logo ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/logos'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['File'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UploadResultWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.upload_room_logo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#upload_room_logo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

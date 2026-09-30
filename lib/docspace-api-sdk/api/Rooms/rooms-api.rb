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
    # Attach tags to a room
    # Attaches the named tags to a room and returns the room with its whole tag set. Tags are portal-wide labels  shared by every room, and a name that the catalogue does not hold yet is created there by this call, so  attaching is also the short way of adding a tag to the portal. Names already attached to the room are kept as  they are, and repeating the call changes nothing, which makes it safe to retry. An empty list is accepted and  does nothing, while a blank or overlong name is rejected as an invalid request. The caller must be a manager  of the room or an administrator of the portal, and a room in the Archive section is refused with 403. A tag  has no identifier of its own and is addressed by name, so `GET api/2.0/files/tags` is what shows which names  already exist. Use `DELETE api/2.0/files/rooms/{id}/tags` to detach them again, which leaves the tags  themselves in the catalogue.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/
    # @param id [Integer, String] The room whose tags are changed, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param [Hash] opts the optional parameters
    # @option opts [BatchTagsRequestDto] :batch_tags_request_dto The names to attach or to detach.
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def add_room_tags(id, opts = {})
      data, _status_code, _headers = add_room_tags_with_http_info(id, opts)
      data
    end

    # Attach tags to a room
    # Attaches the named tags to a room and returns the room with its whole tag set. Tags are portal-wide labels  shared by every room, and a name that the catalogue does not hold yet is created there by this call, so  attaching is also the short way of adding a tag to the portal. Names already attached to the room are kept as  they are, and repeating the call changes nothing, which makes it safe to retry. An empty list is accepted and  does nothing, while a blank or overlong name is rejected as an invalid request. The caller must be a manager  of the room or an administrator of the portal, and a room in the Archive section is refused with 403. A tag  has no identifier of its own and is addressed by name, so `GET api/2.0/files/tags` is what shows which names  already exist. Use `DELETE api/2.0/files/rooms/{id}/tags` to detach them again, which leaves the tags  themselves in the catalogue.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/
    # @param id [Integer, String] The room whose tags are changed, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param [Hash] opts the optional parameters
    # @option opts [BatchTagsRequestDto] :batch_tags_request_dto The names to attach or to detach.
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || (id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

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
    # Queues a background job that moves one room from the Rooms section to the Archive section, and returns the  operation record of that job. An archived room stays readable to its members and becomes read only: files  cannot be created, renamed or edited in it, and its settings, tags, logo and links can no longer be changed,  which is why many other room operations answer an archived room with a refusal. The caller must be a manager  of the room; administrators of the portal cannot archive a room they were not invited to, and a room template  cannot be archived at all and is answered as missing. The room is not archived when the response arrives: poll  `GET api/2.0/files/fileops` until `finished` is true. Archiving an already archived room is harmless.  `deleteAfter` decides only how long the finished record survives, not what happens to the room. Use  `PUT api/2.0/files/rooms/{id}/unarchive` to bring the room back.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/
    # @param id [Integer, String] The room to move, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param [Hash] opts the optional parameters
    # @option opts [ArchiveRoomRequest] :archive_room_request The body of the request. It carries only the lifetime of the job record, so an empty object is a normal  request.
    # @return [FileOperationWrapper]
    def archive_room(id, opts = {})
      data, _status_code, _headers = archive_room_with_http_info(id, opts)
      data
    end

    # Archive a room
    # Queues a background job that moves one room from the Rooms section to the Archive section, and returns the  operation record of that job. An archived room stays readable to its members and becomes read only: files  cannot be created, renamed or edited in it, and its settings, tags, logo and links can no longer be changed,  which is why many other room operations answer an archived room with a refusal. The caller must be a manager  of the room; administrators of the portal cannot archive a room they were not invited to, and a room template  cannot be archived at all and is answered as missing. The room is not archived when the response arrives: poll  `GET api/2.0/files/fileops` until `finished` is true. Archiving an already archived room is harmless.  `deleteAfter` decides only how long the finished record survives, not what happens to the room. Use  `PUT api/2.0/files/rooms/{id}/unarchive` to bring the room back.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/
    # @param id [Integer, String] The room to move, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param [Hash] opts the optional parameters
    # @option opts [ArchiveRoomRequest] :archive_room_request The body of the request. It carries only the lifetime of the job record, so an empty object is a normal  request.
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
    # Sets the cover picture and the background colour a room is shown with, and returns the whole room afterwards.  `cover` accepts only an identifier listed by `GET api/2.0/files/rooms/covers`, and `color` only six  hexadecimal digits with no leading number sign, so anything else is rejected as an invalid request. Either  field may be sent on its own, an empty `cover` clears the picture, an empty `color` restores the default one,  and an empty body leaves the room untouched. The cover is what the room shows while it has no uploaded logo:  setting a logo with `POST api/2.0/files/rooms/{id}/logo` hides the cover without erasing it, and deleting that  logo brings it back. The caller must be a manager of the room, an archived room is refused with 403, and an  unknown or deleted room is answered with 404. Repeating the same request is harmless, and the cover survives  archiving and unarchiving.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/
    # @param id [Integer, String] The room to change, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param cover_request_dto [CoverRequestDto] The cover and the colour to apply. Either half may be sent on its own, and an empty object leaves the room as  it is.
    # @param [Hash] opts the optional parameters
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def change_room_cover(id, cover_request_dto, opts = {})
      data, _status_code, _headers = change_room_cover_with_http_info(id, cover_request_dto, opts)
      data
    end

    # Change the room cover
    # Sets the cover picture and the background colour a room is shown with, and returns the whole room afterwards.  `cover` accepts only an identifier listed by `GET api/2.0/files/rooms/covers`, and `color` only six  hexadecimal digits with no leading number sign, so anything else is rejected as an invalid request. Either  field may be sent on its own, an empty `cover` clears the picture, an empty `color` restores the default one,  and an empty body leaves the room untouched. The cover is what the room shows while it has no uploaded logo:  setting a logo with `POST api/2.0/files/rooms/{id}/logo` hides the cover without erasing it, and deleting that  logo brings it back. The caller must be a manager of the room, an archived room is refused with 403, and an  unknown or deleted room is answered with 404. Repeating the same request is harmless, and the cover survives  archiving and unarchiving.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/
    # @param id [Integer, String] The room to change, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param cover_request_dto [CoverRequestDto] The cover and the colour to apply. Either half may be sent on its own, and an empty object leaves the room as  it is.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || (id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

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
    # Creates a room in the portal Rooms section and returns it. `roomType` decides which sharing links, member  roles and form features the room offers, and it cannot be changed afterwards, so a room of the wrong kind has  to be recreated. The caller must be the portal owner, a portal administrator or a room administrator; a user  or a guest is refused, and so is a public room while the portal forbids external sharing. `title` is required  and must not be blank: characters a folder name cannot hold are replaced with underscores and the rest is  truncated, so the stored title can differ from the one sent and two rooms can share it. `quota` is accepted  only while the per-room quota feature is on and must stay within the portal quota, `cover` only for an id  returned by `GET api/2.0/files/rooms/covers`, and `color` as six hexadecimal digits with no leading number  sign. Tag names the portal does not know yet are added to the tag catalogue. `share` is not implemented and  any non-empty value is rejected, so invite members afterwards with `PUT api/2.0/files/rooms/{id}/share`.  Passing the portal room limit ends the call as a billing refusal and creates nothing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRoomRequestDto] :create_room_request_dto 
    # @return [FolderWrapper]
    def create_room(opts = {})
      data, _status_code, _headers = create_room_with_http_info(opts)
      data
    end

    # Create a room
    # Creates a room in the portal Rooms section and returns it. `roomType` decides which sharing links, member  roles and form features the room offers, and it cannot be changed afterwards, so a room of the wrong kind has  to be recreated. The caller must be the portal owner, a portal administrator or a room administrator; a user  or a guest is refused, and so is a public room while the portal forbids external sharing. `title` is required  and must not be blank: characters a folder name cannot hold are replaced with underscores and the rest is  truncated, so the stored title can differ from the one sent and two rooms can share it. `quota` is accepted  only while the per-room quota feature is on and must stay within the portal quota, `cover` only for an id  returned by `GET api/2.0/files/rooms/covers`, and `color` as six hexadecimal digits with no leading number  sign. Tag names the portal does not know yet are added to the tag catalogue. `share` is not implemented and  any non-empty value is rejected, so invite members afterwards with `PUT api/2.0/files/rooms/{id}/share`.  Passing the portal room limit ends the call as a billing refusal and creates nothing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRoomRequestDto] :create_room_request_dto 
    # @return [Array<(FolderWrapper, Integer, Hash)>] FolderWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'FolderWrapper'

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
    # Starts a background job that copies a room template into a new room of the Rooms section, and answers with the  same progress record that `GET api/2.0/files/rooms/fromtemplate/status` returns. The caller must be able to  read the template and to create rooms at all, so a user or a guest is refused, and the checks run before the  job is queued. The room does not exist when the response arrives: poll the status operation until  `isCompleted` is true, then take `roomId` from it, and treat a non-empty `error` as a failed job. Only one  such job is kept per account, and a finished one is discarded when the next is started, so a second creation  loses the record of the first. Anything not sent is inherited from the template, and `copyLogo` keeps the  template logo and makes `logo` pointless. `quota` is accepted only while the per-room quota feature is on, and  a template of a public room cannot be instantiated while the portal forbids external sharing. A template that  does not exist or cannot be read is answered as missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-from-template/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRoomFromTemplateDto] :create_room_from_template_dto 
    # @return [RoomFromTemplateStatusWrapper]
    def create_room_from_template(opts = {})
      data, _status_code, _headers = create_room_from_template_with_http_info(opts)
      data
    end

    # Create a room from the template
    # Starts a background job that copies a room template into a new room of the Rooms section, and answers with the  same progress record that `GET api/2.0/files/rooms/fromtemplate/status` returns. The caller must be able to  read the template and to create rooms at all, so a user or a guest is refused, and the checks run before the  job is queued. The room does not exist when the response arrives: poll the status operation until  `isCompleted` is true, then take `roomId` from it, and treat a non-empty `error` as a failed job. Only one  such job is kept per account, and a finished one is discarded when the next is started, so a second creation  loses the record of the first. Anything not sent is inherited from the template, and `copyLogo` keeps the  template logo and makes `logo` pointless. `quota` is accepted only while the per-room quota feature is on, and  a template of a public room cannot be instantiated while the portal forbids external sharing. A template that  does not exist or cannot be read is answered as missing.
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

    # Set the room logo
    # Turns an image already uploaded to the portal into the logo of a room and returns the room with the addresses  of the four logo sizes. This is the second half of a two-step flow: upload the picture with  `POST api/2.0/files/logos` first and pass the path it returns as `tmpFile`, because the image itself is never  sent here. The temporary file belongs to the account that uploaded it and is consumed by this call, so it  cannot be reused for a second room and a path somebody else uploaded is refused. `x`, `y`, `width` and  `height` crop the picture; sending a position without a size is rejected as an invalid request, while a size  without a position is accepted. An empty `tmpFile` leaves the room as it is. A logo replaces the cover in the  interface without erasing it, and removing the logo brings the cover back. The caller must be a manager of the  room, an archived room is refused, and an unknown room is answered with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/
    # @param id [Integer, String] The room the logo is set on.
    # @param logo_request [LogoRequest] The uploaded picture and the piece of it to use.
    # @param [Hash] opts the optional parameters
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def create_room_logo(id, logo_request, opts = {})
      data, _status_code, _headers = create_room_logo_with_http_info(id, logo_request, opts)
      data
    end

    # Set the room logo
    # Turns an image already uploaded to the portal into the logo of a room and returns the room with the addresses  of the four logo sizes. This is the second half of a two-step flow: upload the picture with  `POST api/2.0/files/logos` first and pass the path it returns as `tmpFile`, because the image itself is never  sent here. The temporary file belongs to the account that uploaded it and is consumed by this call, so it  cannot be reused for a second room and a path somebody else uploaded is refused. `x`, `y`, `width` and  `height` crop the picture; sending a position without a size is rejected as an invalid request, while a size  without a position is accepted. An empty `tmpFile` leaves the room as it is. A logo replaces the cover in the  interface without erasing it, and removing the logo brings the cover back. The caller must be a manager of the  room, an archived room is refused, and an unknown room is answered with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/
    # @param id [Integer, String] The room the logo is set on.
    # @param logo_request [LogoRequest] The uploaded picture and the piece of it to use.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || (id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

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
    # Adds a custom tag to the portal-wide catalog of room tags and answers with the stored name. Tags are shared by  the whole portal instead of belonging to the caller: once the tag exists, every room manager can attach it to  their own rooms with `PUT api/2.0/files/rooms/{id}/tags`, and that call also creates a tag it does not find.  Creating a name that is already in the catalog returns the existing tag unchanged rather than a duplicate or  an error, so repeating the call after a timeout is safe. A blank name, or one longer than the published limit,  is rejected as an invalid request. Only a room manager or a portal administrator may create a tag, and a user  or a guest is refused. The answer is the name as stored, and that name is the value to send in the `tags`  filter of `GET api/2.0/files/rooms` and in the room tag calls. The catalog itself is read with  `GET api/2.0/files/tags`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-tag/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTagRequestDto] :create_tag_request_dto 
    # @return [StringWrapper]
    def create_room_tag(opts = {})
      data, _status_code, _headers = create_room_tag_with_http_info(opts)
      data
    end

    # Create a room tag
    # Adds a custom tag to the portal-wide catalog of room tags and answers with the stored name. Tags are shared by  the whole portal instead of belonging to the caller: once the tag exists, every room manager can attach it to  their own rooms with `PUT api/2.0/files/rooms/{id}/tags`, and that call also creates a tag it does not find.  Creating a name that is already in the catalog returns the existing tag unchanged rather than a duplicate or  an error, so repeating the call after a timeout is safe. A blank name, or one longer than the published limit,  is rejected as an invalid request. Only a room manager or a portal administrator may create a tag, and a user  or a guest is refused. The answer is the name as stored, and that name is the value to send in the `tags`  filter of `GET api/2.0/files/rooms` and in the room tag calls. The catalog itself is read with  `GET api/2.0/files/tags`.
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

    # Create a room template
    # Queues a background job that turns an existing room into a reusable room template, and returns the state of  that job right away. The template lands in the portal's Templates section, inherits the source room's type,  privacy, indexing, storage limit, lifetime, download and watermark settings, and receives copies of the room's  files together with its ordinary subfolders and everything inside them; the service subfolders a room keeps  for its own workflows are left out. The caller needs room-manager rights on the source room, and the room must  not be archived: a room that cannot be found under Rooms is answered as missing, and every other refusal comes  back as a rejection. The template is not ready when the response arrives, so poll  `GET api/2.0/files/roomtemplate/status` until `isCompleted` is true, then read `templateId`; a non-empty  `error` there means the job failed and the half-built template was removed. Only one template creation is  tracked per caller, and starting another replaces the previous record. Setting `public` to true discards  `share` and `groups` and shares the finished template with everyone instead, while `copyLogo` reuses the  source room's own picture and makes `logo` irrelevant.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-template/
    # @param [Hash] opts the optional parameters
    # @option opts [RoomTemplateDto] :room_template_dto 
    # @return [RoomTemplateStatusWrapper]
    def create_room_template(opts = {})
      data, _status_code, _headers = create_room_template_with_http_info(opts)
      data
    end

    # Create a room template
    # Queues a background job that turns an existing room into a reusable room template, and returns the state of  that job right away. The template lands in the portal's Templates section, inherits the source room's type,  privacy, indexing, storage limit, lifetime, download and watermark settings, and receives copies of the room's  files together with its ordinary subfolders and everything inside them; the service subfolders a room keeps  for its own workflows are left out. The caller needs room-manager rights on the source room, and the room must  not be archived: a room that cannot be found under Rooms is answered as missing, and every other refusal comes  back as a rejection. The template is not ready when the response arrives, so poll  `GET api/2.0/files/roomtemplate/status` until `isCompleted` is true, then read `templateId`; a non-empty  `error` there means the job failed and the half-built template was removed. Only one template creation is  tracked per caller, and starting another replaces the previous record. Setting `public` to true discards  `share` and `groups` and shares the finished template with everyone instead, while `copyLogo` reuses the  source room's own picture and makes `logo` irrelevant.
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
    # Turns a folder of a connected third-party storage account into a room of the `Rooms` section, so that the  files of the room keep living in that storage instead of the portal. Connect the account first with  `POST api/2.0/files/thirdparty` and take the path parameter from a folder listing of that account: it is the  identifier of a folder in the storage, not of a room. One connected account can back one room only, so a  second call over the same account is refused, and so is an account that was not connected for room storage.  The caller needs the right to create rooms, which a portal user and a guest do not have; a public room is  refused while the administrator restricts external access, and reaching the room limit of the tariff is  refused too. With `createAsNewFolder` the room is a new subfolder named after `title`, otherwise the folder  from the path becomes the room itself and `indexing`, `denyDownload`, `tags` and `logo` are then dropped. The  answer is the new room, whose identifiers are strings; a public or a form-filling room already has its primary  link, readable with `GET api/2.0/files/rooms/{id}/link`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-third-party/
    # @param id [String] The identifier of the folder in the connected third-party storage that becomes the room, or receives it as a  subfolder. Folder identifiers of a connected account are strings and are returned by the folder listings of  that account.
    # @param create_third_party_room [CreateThirdPartyRoom] The settings of the room to be created out of the folder.
    # @param [Hash] opts the optional parameters
    # @return [ThirdPartyFolderWrapper]
    def create_room_third_party(id, create_third_party_room, opts = {})
      data, _status_code, _headers = create_room_third_party_with_http_info(id, create_third_party_room, opts)
      data
    end

    # Create a third-party room
    # Turns a folder of a connected third-party storage account into a room of the `Rooms` section, so that the  files of the room keep living in that storage instead of the portal. Connect the account first with  `POST api/2.0/files/thirdparty` and take the path parameter from a folder listing of that account: it is the  identifier of a folder in the storage, not of a room. One connected account can back one room only, so a  second call over the same account is refused, and so is an account that was not connected for room storage.  The caller needs the right to create rooms, which a portal user and a guest do not have; a public room is  refused while the administrator restricts external access, and reaching the room limit of the tariff is  refused too. With `createAsNewFolder` the room is a new subfolder named after `title`, otherwise the folder  from the path becomes the room itself and `indexing`, `denyDownload`, `tags` and `logo` are then dropped. The  answer is the new room, whose identifiers are strings; a public or a form-filling room already has its primary  link, readable with `GET api/2.0/files/rooms/{id}/link`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-third-party/
    # @param id [String] The identifier of the folder in the connected third-party storage that becomes the room, or receives it as a  subfolder. Folder identifiers of a connected account are strings and are returned by the folder listings of  that account.
    # @param create_third_party_room [CreateThirdPartyRoom] The settings of the room to be created out of the folder.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ThirdPartyFolderWrapper, Integer, Hash)>] ThirdPartyFolderWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'ThirdPartyFolderWrapper'

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
    # Deletes custom room tags from the portal catalog by name and detaches them from every room that carries them;  the rooms themselves and their content are untouched, and only the tag disappears from their tag lists. Only a  portal administrator may call it, and a room manager who is allowed to create tags is refused. The names are  matched exactly as they are stored: names that are not in the catalog are skipped in silence and an empty list  is accepted as a no-op, so a successful answer does not prove that anything was deleted; check a name with  `GET api/2.0/files/tags/{tagName}/haslinks` first when that matters. The call cannot be undone: creating the  name again with `POST api/2.0/files/tags` brings back the tag but not its links, which have to be attached to  each room once more. The answer carries no body. To take a tag off one room and leave it in the catalog for  the others, use `DELETE api/2.0/files/rooms/{id}/tags` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-custom-tags/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchTagsRequestDto] :batch_tags_request_dto 
    # @return [nil]
    def delete_custom_tags(opts = {})
      delete_custom_tags_with_http_info(opts)
      nil
    end

    # Delete the custom room tags
    # Deletes custom room tags from the portal catalog by name and detaches them from every room that carries them;  the rooms themselves and their content are untouched, and only the tag disappears from their tag lists. Only a  portal administrator may call it, and a room manager who is allowed to create tags is refused. The names are  matched exactly as they are stored: names that are not in the catalog are skipped in silence and an empty list  is accepted as a no-op, so a successful answer does not prove that anything was deleted; check a name with  `GET api/2.0/files/tags/{tagName}/haslinks` first when that matters. The call cannot be undone: creating the  name again with `POST api/2.0/files/tags` brings back the tag but not its links, which have to be attached to  each room once more. The answer carries no body. To take a tag off one room and leave it in the catalog for  the others, use `DELETE api/2.0/files/rooms/{id}/tags` instead.
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
    # Queues a background job that deletes one room with everything inside it, and returns the operation record of  that job. Deleting a room is destructive and has no trash step: the room and its files are gone once the job  finishes, unlike a file or a folder, which is moved to the trash first. The right to delete is checked before  the job is queued, so a caller who may not delete the room is refused straight away and an unknown room is  answered as missing; the same checks run again when the job starts, which is why the `error` of the finished  operation still has to be read. Poll `GET api/2.0/files/fileops` until `finished` is true, or read the  returned record again by its `id`. The record is kept until it is read once, so one poll after completion  still sees it. `deleteAfter` in the body is required by the contract but has no effect on the job. An archived  room is deleted the same way, and a second delete of the same id reports that the room is missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/
    # @param id [Integer, String] The room to delete, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param delete_room_request [DeleteRoomRequest] The body of the request. It is required even though the deletion does not depend on what it holds.
    # @param [Hash] opts the optional parameters
    # @return [FileOperationWrapper]
    def delete_room(id, delete_room_request, opts = {})
      data, _status_code, _headers = delete_room_with_http_info(id, delete_room_request, opts)
      data
    end

    # Remove a room
    # Queues a background job that deletes one room with everything inside it, and returns the operation record of  that job. Deleting a room is destructive and has no trash step: the room and its files are gone once the job  finishes, unlike a file or a folder, which is moved to the trash first. The right to delete is checked before  the job is queued, so a caller who may not delete the room is refused straight away and an unknown room is  answered as missing; the same checks run again when the job starts, which is why the `error` of the finished  operation still has to be read. Poll `GET api/2.0/files/fileops` until `finished` is true, or read the  returned record again by its `id`. The record is kept until it is read once, so one poll after completion  still sees it. `deleteAfter` in the body is required by the contract but has no effect on the job. An archived  room is deleted the same way, and a second delete of the same id reports that the room is missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/
    # @param id [Integer, String] The room to delete, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param delete_room_request [DeleteRoomRequest] The body of the request. It is required even though the deletion does not depend on what it holds.
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
    # Removes the uploaded logo of a room and returns the room with empty logo addresses. What the room falls back  to is its cover and colour, which the logo only hid: if a cover was set before the logo, it is shown again,  and `POST api/2.0/files/rooms/{id}/cover` is what changes it. Nothing else about the room is touched, so  membership, tags, links and settings are preserved. A room that has no logo is accepted and answered with 200,  and repeating the call is therefore harmless. The caller must be a manager of the room; a member invited even  with editing rights is refused, and so is a room in the Archive section. A room that does not exist or was  deleted is answered as missing. After the logo is removed a new one can be set again through  `POST api/2.0/files/logos` followed by `POST api/2.0/files/rooms/{id}/logo`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def delete_room_logo(id, opts = {})
      data, _status_code, _headers = delete_room_logo_with_http_info(id, opts)
      data
    end

    # Remove a room logo
    # Removes the uploaded logo of a room and returns the room with empty logo addresses. What the room falls back  to is its cover and colour, which the logo only hid: if a cover was set before the logo, it is shown again,  and `POST api/2.0/files/rooms/{id}/cover` is what changes it. Nothing else about the room is touched, so  membership, tags, links and settings are preserved. A room that has no logo is accepted and answered with 200,  and repeating the call is therefore harmless. The caller must be a manager of the room; a member invited even  with editing rights is refused, and so is a room in the Archive section. A room that does not exist or was  deleted is answered as missing. After the logo is removed a new one can be set again through  `POST api/2.0/files/logos` followed by `POST api/2.0/files/rooms/{id}/logo`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || (id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

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

    # Detach tags from a room
    # Detaches the named tags from a room and returns the room with its remaining tag set. Only the link between the  room and the tag is removed: the tag stays in the portal catalogue and keeps working for every other room, and  `DELETE api/2.0/files/tags` is what removes it from the portal itself. Names that are not in the catalogue, or  not attached to this room, are skipped without an error, so a successful answer does not prove that anything  was detached; compare the returned tag set instead. An empty list is accepted and does nothing, while a null  entry in the list is rejected as an invalid request. The caller must be a manager of the room or an  administrator of the portal, and a room in the Archive section is refused with 403. A tag that loses its last  room stays in the catalogue, and only deleting that room takes the tag with it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/
    # @param id [Integer, String] The room whose tags are changed, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param [Hash] opts the optional parameters
    # @option opts [BatchTagsRequestDto] :batch_tags_request_dto The names to attach or to detach.
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def delete_room_tags(id, opts = {})
      data, _status_code, _headers = delete_room_tags_with_http_info(id, opts)
      data
    end

    # Detach tags from a room
    # Detaches the named tags from a room and returns the room with its remaining tag set. Only the link between the  room and the tag is removed: the tag stays in the portal catalogue and keeps working for every other room, and  `DELETE api/2.0/files/tags` is what removes it from the portal itself. Names that are not in the catalogue, or  not attached to this room, are skipped without an error, so a successful answer does not prove that anything  was detached; compare the returned tag set instead. An empty list is accepted and does nothing, while a null  entry in the list is rejected as an invalid request. The caller must be a manager of the room or an  administrator of the portal, and a room in the Archive section is refused with 403. A tag that loses its last  room stays in the catalogue, and only deleting that room takes the tag with it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/
    # @param id [Integer, String] The room whose tags are changed, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param [Hash] opts the optional parameters
    # @option opts [BatchTagsRequestDto] :batch_tags_request_dto The names to attach or to detach.
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || (id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

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

    # Get external DB sync status
    # Returns the record of the external database export job of a form filling room, or an empty body when the room  has no job at all. The room must be a form filling room and the caller must be able to edit it, otherwise the  call is refused; an unknown room is answered with 404. This is the polling target of  `POST api/2.0/files/rooms/{id}/externaldbsync`: repeat it until `isCompleted` is true, and then read `forms`,  which lists one entry per original form with its own `success` and `error` and is empty while the job is still  running. `percentage` advances as forms are processed, `status` distinguishes a job that is queued, running,  finished or failed, and `error` carries the message of a job that stopped as a whole. The record belongs to  the room rather than to the account that started the job, so any member who can edit the room sees the same  answer. The call changes nothing and is safe to repeat.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-db-sync-status/
    # @param id [Integer] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [ExternalDbSyncTaskWrapper]
    def get_external_db_sync_status(id, opts = {})
      data, _status_code, _headers = get_external_db_sync_status_with_http_info(id, opts)
      data
    end

    # Get external DB sync status
    # Returns the record of the external database export job of a form filling room, or an empty body when the room  has no job at all. The room must be a form filling room and the caller must be able to edit it, otherwise the  call is refused; an unknown room is answered with 404. This is the polling target of  `POST api/2.0/files/rooms/{id}/externaldbsync`: repeat it until `isCompleted` is true, and then read `forms`,  which lists one entry per original form with its own `success` and `error` and is empty while the job is still  running. `percentage` advances as forms are processed, `status` distinguishes a job that is queued, running,  finished or failed, and `error` carries the message of a job that stopped as a whole. The record belongs to  the room rather than to the account that started the job, so any member who can edit the room sees the same  answer. The call changes nothing and is safe to repeat.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-db-sync-status/
    # @param id [Integer] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExternalDbSyncTaskWrapper, Integer, Hash)>] ExternalDbSyncTaskWrapper data, response status code and response headers
    def get_external_db_sync_status_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.get_external_db_sync_status ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.get_external_db_sync_status"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/externaldbsync'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'ExternalDbSyncTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.get_external_db_sync_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#get_external_db_sync_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get new items in a room
    # Returns what is new for the calling account in one room, grouped by the day the entry was last changed, with  the newest day first and the entries inside a day ordered from the most recent. Only files are reported: a  folder somebody else created is not an entry of its own, while a file created inside it is, however deep it  lies. What the caller changed is never new for the caller, and a file that was deleted afterwards disappears  from the answer. Reading this list leaves the badges alone, which is what makes it the operation to call  before `GET api/2.0/files/rooms/{id}`, since opening the room clears them. An empty array therefore means that  there is nothing new, not that the badges were already read. The caller needs access to the room; somebody who  is not a member is refused, and an unknown or deleted room is answered as missing. Use  `GET api/2.0/files/rooms/news` for the same report across every room at once.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [NewItemsFileEntryBaseArrayWrapper]
    def get_new_room_items(id, opts = {})
      data, _status_code, _headers = get_new_room_items_with_http_info(id, opts)
      data
    end

    # Get new items in a room
    # Returns what is new for the calling account in one room, grouped by the day the entry was last changed, with  the newest day first and the entries inside a day ordered from the most recent. Only files are reported: a  folder somebody else created is not an entry of its own, while a file created inside it is, however deep it  lies. What the caller changed is never new for the caller, and a file that was deleted afterwards disappears  from the answer. Reading this list leaves the badges alone, which is what makes it the operation to call  before `GET api/2.0/files/rooms/{id}`, since opening the room clears them. An empty array therefore means that  there is nothing new, not that the badges were already read. The caller needs access to the room; somebody who  is not a member is refused, and an unknown or deleted room is answered as missing. Use  `GET api/2.0/files/rooms/news` for the same report across every room at once.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
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

    # Get room template public access
    # Reports whether the room template addressed by `id` is shared with everyone or is reachable only by the  accounts it was explicitly shared with. True means the Everyone group holds read access, so any member allowed  to create rooms can build one from the template with `POST api/2.0/files/rooms/fromtemplate`; false means only  the owner and the named recipients can. The identifier has to belong to a room template — take it from  `templateId` of `GET api/2.0/files/roomtemplate/status`, or from the folder list of `GET api/2.0/files/rooms`  called with `searchArea` set to 4 — while an ordinary room, a deleted template or an unknown value is answered  as missing. The caller needs read access to the template, so somebody else's private template is refused even  for a portal administrator, and members who cannot reach the Templates section at all are refused whatever the  template's state. The call only reads state; use `PUT api/2.0/files/roomtemplate/public` to change it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-settings/
    # @param id [Integer] The identifier of the room template. Take it from `templateId` of `GET api/2.0/files/roomtemplate/status`, or  from the folder list of `GET api/2.0/files/rooms` called with `searchArea` set to 4; an identifier of an  ordinary room is not accepted.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def get_public_settings(id, opts = {})
      data, _status_code, _headers = get_public_settings_with_http_info(id, opts)
      data
    end

    # Get room template public access
    # Reports whether the room template addressed by `id` is shared with everyone or is reachable only by the  accounts it was explicitly shared with. True means the Everyone group holds read access, so any member allowed  to create rooms can build one from the template with `POST api/2.0/files/rooms/fromtemplate`; false means only  the owner and the named recipients can. The identifier has to belong to a room template — take it from  `templateId` of `GET api/2.0/files/roomtemplate/status`, or from the folder list of `GET api/2.0/files/rooms`  called with `searchArea` set to 4 — while an ordinary room, a deleted template or an unknown value is answered  as missing. The caller needs read access to the template, so somebody else's private template is refused even  for a portal administrator, and members who cannot reach the Templates section at all are refused whatever the  template's state. The call only reads state; use `PUT api/2.0/files/roomtemplate/public` to change it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-settings/
    # @param id [Integer] The identifier of the room template. Take it from `templateId` of `GET api/2.0/files/roomtemplate/status`, or  from the folder list of `GET api/2.0/files/rooms` called with `searchArea` set to 4; an identifier of an  ordinary room is not accepted.
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
      if @api_client.config.client_side_validation && id > 2147483647
        fail ArgumentError, 'invalid value for "id" when calling Rooms::RoomsApi.get_public_settings, must be smaller than or equal to 2147483647.'
      end

      if @api_client.config.client_side_validation && id < 1
        fail ArgumentError, 'invalid value for "id" when calling Rooms::RoomsApi.get_public_settings, must be greater than or equal to 1.'
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

    # Get room cover gallery
    # Returns the gallery of cover pictures a room can be given: every entry pairs the identifier to send to  `POST api/2.0/files/rooms/{id}/cover` with the drawing itself as inline vector markup ready to be rendered.  The gallery is built into the product rather than stored per portal, so it is the same for every account and  every room, does not depend on what rooms exist, and its identifiers do not change with the language of the  request. The identifiers are unique and stable, which makes them safe to keep in a client, while the drawings  behind them may change between product versions. Any account of the portal may read the gallery, but a guest  is refused. The list is the only source of valid cover identifiers: a value that is not in it is rejected  wherever a cover is set, including room creation and room update. The call changes nothing and is safe to  repeat.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-covers/
    # @param [Hash] opts the optional parameters
    # @return [CoversResultArrayWrapper]
    def get_room_covers(opts = {})
      data, _status_code, _headers = get_room_covers_with_http_info(opts)
      data
    end

    # Get room cover gallery
    # Returns the gallery of cover pictures a room can be given: every entry pairs the identifier to send to  `POST api/2.0/files/rooms/{id}/cover` with the drawing itself as inline vector markup ready to be rendered.  The gallery is built into the product rather than stored per portal, so it is the same for every account and  every room, does not depend on what rooms exist, and its identifiers do not change with the language of the  request. The identifiers are unique and stable, which makes them safe to keep in a client, while the drawings  behind them may change between product versions. Any account of the portal may read the gallery, but a guest  is refused. The list is the only source of valid cover identifiers: a value that is not in it is rejected  wherever a cover is set, including room creation and room update. The call changes nothing and is safe to  repeat.
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
    # Returns the progress of the room-from-template job started by the calling account with  `POST api/2.0/files/rooms/fromtemplate`. The record is private to the account that started the job: jobs of  other members are never reported, and only one record is kept per account. The body is empty when the account  has no such record, and it is also empty when the job queue cannot be read, so an empty answer is not proof  that nothing was started. `progress` is a percentage, `isCompleted` marks the end of the job whether it  succeeded or failed, `error` carries the failure message and is empty on success, and `roomId` is meaningful  only once the room exists. The record survives the end of the job and is dropped when the next creation  starts, so polling after completion keeps returning the same answer. Poll this operation until `isCompleted`  is true and then read the room itself with `GET api/2.0/files/rooms/{id}`. The call changes nothing and is  safe to repeat.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-creating-status/
    # @param [Hash] opts the optional parameters
    # @return [RoomFromTemplateStatusWrapper]
    def get_room_creating_status(opts = {})
      data, _status_code, _headers = get_room_creating_status_with_http_info(opts)
      data
    end

    # Get the room creation progress
    # Returns the progress of the room-from-template job started by the calling account with  `POST api/2.0/files/rooms/fromtemplate`. The record is private to the account that started the job: jobs of  other members are never reported, and only one record is kept per account. The body is empty when the account  has no such record, and it is also empty when the job queue cannot be read, so an empty answer is not proof  that nothing was started. `progress` is a percentage, `isCompleted` marks the end of the job whether it  succeeded or failed, `error` carries the failure message and is empty on success, and `roomId` is meaningful  only once the room exists. The record survives the end of the job and is dropped when the next creation  starts, so polling after completion keeps returning the same answer. Poll this operation until `isCompleted`  is true and then read the room itself with `GET api/2.0/files/rooms/{id}`. The call changes nothing and is  safe to repeat.
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
    # Returns the state of the index export of the calling account, the job started by  `POST api/2.0/files/rooms/{id}/indexexport`. The record is not addressed by room: there is at most one per  account, and the answer describes the latest export whichever room it was started for. When the account has  never started one, or its record was cancelled, the body is null rather than an error, so null is the normal  way of saying that there is nothing to report. While the job runs, `percentage` moves in coarse steps instead  of smoothly, which makes it a rough hint rather than a measure of the remaining time; `isCompleted` is the  field to wait on, and it is also set for a job that failed or was cancelled, so read `status` to tell the  outcomes apart and `error` for the message. After a successful build, `resultFileId`, `resultFileName` and  `resultFileUrl` point to the spreadsheet saved in the My documents section of the caller. The record survives  completion and is replaced only by the next export.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-index-export/
    # @param [Hash] opts the optional parameters
    # @return [DocumentBuilderTaskWrapper]
    def get_room_index_export(opts = {})
      data, _status_code, _headers = get_room_index_export_with_http_info(opts)
      data
    end

    # Get the room index export
    # Returns the state of the index export of the calling account, the job started by  `POST api/2.0/files/rooms/{id}/indexexport`. The record is not addressed by room: there is at most one per  account, and the answer describes the latest export whichever room it was started for. When the account has  never started one, or its record was cancelled, the body is null rather than an error, so null is the normal  way of saying that there is nothing to report. While the job runs, `percentage` moves in coarse steps instead  of smoothly, which makes it a rough hint rather than a measure of the remaining time; `isCompleted` is the  field to wait on, and it is also set for a job that failed or was cancelled, so read `status` to tell the  outcomes apart and `error` for the message. After a successful build, `resultFileId`, `resultFileName` and  `resultFileUrl` point to the spreadsheet saved in the My documents section of the caller. The record survives  completion and is replaced only by the next export.
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
    # Returns one room with its type, title, tags, logo, cover, colour, quota and virtual data room settings,  together with the access level the caller has in it. Reading the room is not a side-effect-free call: it  clears the caller new-item badges for that room, and `newForMe` comes back as 0, so read  `GET api/2.0/files/rooms/{id}/news` first when the new items matter. The caller needs read access to the room;  portal administrators can read a room they were never invited to, while a member without access is refused.  The operation also answers an anonymous caller, but only in the context of a valid external share link of that  room, and a plain anonymous request is rejected as unauthenticated. A room that never existed, was deleted, or  lives in a section the caller cannot see is answered as missing. Archived rooms are returned as well and are  recognised by their root section rather than by a separate flag. Use `GET api/2.0/files/rooms` to search and  page through rooms instead of guessing ids.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-info/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def get_room_info(id, opts = {})
      data, _status_code, _headers = get_room_info_with_http_info(id, opts)
      data
    end

    # Get room information
    # Returns one room with its type, title, tags, logo, cover, colour, quota and virtual data room settings,  together with the access level the caller has in it. Reading the room is not a side-effect-free call: it  clears the caller new-item badges for that room, and `newForMe` comes back as 0, so read  `GET api/2.0/files/rooms/{id}/news` first when the new items matter. The caller needs read access to the room;  portal administrators can read a room they were never invited to, while a member without access is refused.  The operation also answers an anonymous caller, but only in the context of a valid external share link of that  room, and a plain anonymous request is rejected as unauthenticated. A room that never existed, was deleted, or  lives in a section the caller cannot see is answered as missing. Archived rooms are returned as well and are  recognised by their root section rather than by a separate flag. Use `GET api/2.0/files/rooms` to search and  page through rooms instead of guessing ids.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-info/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || (id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

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
    # Returns the sharing links of a room, with the invitation and the external links mixed together unless `type`  narrows it to one kind. Each entry carries the link address, its title, access level, expiration, the flag  that marks the primary external link of the room and, for invitation links, how many times it may still be  used. Public and form filling rooms come with an external link created for them, so an empty answer there  means that the link was revoked rather than that the room is private; rooms of the other kinds start with no  links at all and only gain one when somebody creates it, which for a collaboration room and a virtual data  room can be an invitation link alone. The caller needs access to the room and the right to see its links: a  member invited without that right gets an empty list rather than an error, while somebody who is not in the  room at all is refused. Paging parameters are not honoured here: the first hundred links are returned and the  reported count is the number of entries actually sent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/
    # @param id [Integer, String] The room whose links are listed, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param [Hash] opts the optional parameters
    # @option opts [LinkType] :type Narrows the answer to one kind of link: invitation links, which turn whoever opens them into a member, or  external links, which open the room without an account. Leaving it out returns both kinds together.
    # @return [FileShareArrayWrapper]
    def get_room_links(id, opts = {})
      data, _status_code, _headers = get_room_links_with_http_info(id, opts)
      data
    end

    # Get the room links
    # Returns the sharing links of a room, with the invitation and the external links mixed together unless `type`  narrows it to one kind. Each entry carries the link address, its title, access level, expiration, the flag  that marks the primary external link of the room and, for invitation links, how many times it may still be  used. Public and form filling rooms come with an external link created for them, so an empty answer there  means that the link was revoked rather than that the room is private; rooms of the other kinds start with no  links at all and only gain one when somebody creates it, which for a collaboration room and a virtual data  room can be an invitation link alone. The caller needs access to the room and the right to see its links: a  member invited without that right gets an empty list rather than an error, while somebody who is not in the  room at all is refused. Paging parameters are not honoured here: the first hundred links are returned and the  reported count is the number of entries actually sent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/
    # @param id [Integer, String] The room whose links are listed, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param [Hash] opts the optional parameters
    # @option opts [LinkType] :type Narrows the answer to one kind of link: invitation links, which turn whoever opens them into a member, or  external links, which open the room without an account. Leaving it out returns both kinds together.
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
    # Returns one page of the access list of a room: the owner first, then the managers, the groups, the ordinary  members, the guests and finally the invitations nobody has accepted yet, with the total in the response  headers. `filterType` selects what is listed and defaults to accounts and groups, which leaves the sharing  links of the room out; those are read with `GET api/2.0/files/rooms/{id}/links`. `filterValue` matches the  displayed name of the subject, and an invitation that is still pending is listed under the email address it  was sent to. Paging is done with `count` and `startIndex`, and the order is stable between calls. Any member  who can read the room sees the accounts and the groups, so the list is not limited to the managers, and portal  administrators can read the list of a room they were never invited to; somebody who is not in the room at all  is refused. Asking for the link entries instead needs the right to see the links of the room, and a member  without it gets an empty page rather than an error.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-security-info/
    # @param id [Integer, String] The room whose access list is read, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param [Hash] opts the optional parameters
    # @option opts [ShareFilterType] :filter_type What kind of access entries to list. The default covers accounts and groups and leaves the sharing links of  the room out; those are read with `GET api/2.0/files/rooms/{id}/links`.
    # @option opts [Integer] :count How many entries to return in one answer. The total number of matching entries comes back in the response  headers, so it is what tells the caller whether another page is needed.
    # @option opts [Integer] :start_index How many matching entries to skip before the page starts. Together with the page size it walks the list, which  is ordered by role and then by name and is therefore stable between calls.
    # @option opts [String] :filter_value Keeps only the entries whose displayed name contains this text. An invitation that has not been accepted yet  is listed under the email address it was sent to, so that is what has to be searched for.
    # @return [FileShareArrayWrapper]
    def get_room_security_info(id, opts = {})
      data, _status_code, _headers = get_room_security_info_with_http_info(id, opts)
      data
    end

    # Get the room access rights
    # Returns one page of the access list of a room: the owner first, then the managers, the groups, the ordinary  members, the guests and finally the invitations nobody has accepted yet, with the total in the response  headers. `filterType` selects what is listed and defaults to accounts and groups, which leaves the sharing  links of the room out; those are read with `GET api/2.0/files/rooms/{id}/links`. `filterValue` matches the  displayed name of the subject, and an invitation that is still pending is listed under the email address it  was sent to. Paging is done with `count` and `startIndex`, and the order is stable between calls. Any member  who can read the room sees the accounts and the groups, so the list is not limited to the managers, and portal  administrators can read the list of a room they were never invited to; somebody who is not in the room at all  is refused. Asking for the link entries instead needs the right to see the links of the room, and a member  without it gets an empty page rather than an error.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-security-info/
    # @param id [Integer, String] The room whose access list is read, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param [Hash] opts the optional parameters
    # @option opts [ShareFilterType] :filter_type What kind of access entries to list. The default covers accounts and groups and leaves the sharing links of  the room out; those are read with `GET api/2.0/files/rooms/{id}/links`.
    # @option opts [Integer] :count How many entries to return in one answer. The total number of matching entries comes back in the response  headers, so it is what tells the caller whether another page is needed.
    # @option opts [Integer] :start_index How many matching entries to skip before the page starts. Together with the page size it walks the list, which  is ordered by role and then by name and is therefore stable between calls.
    # @option opts [String] :filter_value Keeps only the entries whose displayed name contains this text. An invitation that has not been accepted yet  is listed under the email address it was sent to, so that is what has to be searched for.
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

    # Get available room tags
    # Returns the custom room tags available to the caller as a flat array of names, not of objects. What the array  holds depends on the account: a portal administrator gets the whole catalog, including tags that no room uses  yet, while every other account gets only the tags attached to rooms it can see, with duplicates removed. An  empty answer therefore means that this caller sees no tagged room, not that the portal has no tags.  `filterValue` keeps the names that contain the given text, ignoring case, while `count` and `startIndex` page  the result; no total is returned, so a page shorter than `count` is the signal that the list is exhausted. The  names are exactly the values accepted by the `tags` filter of `GET api/2.0/files/rooms` and by the room tag  calls, which makes this the call to fill a tag picker with. Add a tag with `POST api/2.0/files/tags` and check  whether one is still in use with `GET api/2.0/files/tags/{tagName}/haslinks`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-tags-info/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count How many tag names one page may carry. The answer reports no total, so a page shorter than this is the sign  that the list is exhausted.
    # @option opts [Integer] :start_index How many tag names to skip before the page begins. Raise it by the number of names already received to read  the next page.
    # @option opts [String] :filter_value Keeps only the tag names that contain this text, ignoring case. It is a substring match, so a fragment from  the middle of a name is enough.
    # @return [STRINGArrayWrapper]
    def get_room_tags_info(opts = {})
      data, _status_code, _headers = get_room_tags_info_with_http_info(opts)
      data
    end

    # Get available room tags
    # Returns the custom room tags available to the caller as a flat array of names, not of objects. What the array  holds depends on the account: a portal administrator gets the whole catalog, including tags that no room uses  yet, while every other account gets only the tags attached to rooms it can see, with duplicates removed. An  empty answer therefore means that this caller sees no tagged room, not that the portal has no tags.  `filterValue` keeps the names that contain the given text, ignoring case, while `count` and `startIndex` page  the result; no total is returned, so a page shorter than `count` is the signal that the list is exhausted. The  names are exactly the values accepted by the `tags` filter of `GET api/2.0/files/rooms` and by the room tag  calls, which makes this the call to fill a tag picker with. Add a tag with `POST api/2.0/files/tags` and check  whether one is still in use with `GET api/2.0/files/tags/{tagName}/haslinks`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-tags-info/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count How many tag names one page may carry. The answer reports no total, so a page shorter than this is the sign  that the list is exhausted.
    # @option opts [Integer] :start_index How many tag names to skip before the page begins. Raise it by the number of names already received to read  the next page.
    # @option opts [String] :filter_value Keeps only the tag names that contain this text, ignoring case. It is a substring match, so a fragment from  the middle of a name is enough.
    # @return [Array<(STRINGArrayWrapper, Integer, Hash)>] STRINGArrayWrapper data, response status code and response headers
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

      if @api_client.config.client_side_validation && !opts[:'start_index'].nil? && opts[:'start_index'] > 2147483647
        fail ArgumentError, 'invalid value for "opts[:"start_index"]" when calling Rooms::RoomsApi.get_room_tags_info, must be smaller than or equal to 2147483647.'
      end

      if @api_client.config.client_side_validation && !opts[:'start_index'].nil? && opts[:'start_index'] < 0
        fail ArgumentError, 'invalid value for "opts[:"start_index"]" when calling Rooms::RoomsApi.get_room_tags_info, must be greater than or equal to 0.'
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
      return_type = opts[:debug_return_type] || 'STRINGArrayWrapper'

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

    # Get room template creation status
    # Reports the state of the room template creation the caller started with `POST api/2.0/files/roomtemplate`. The  record is private to the account that started the job: work started by another member is never reported, and a  caller who has started none gets an empty response instead of an object. Poll until `isCompleted` turns true,  then take the identifier of the finished template from `templateId`; a non-empty `error` means the job failed  and no template was kept. Treat `isCompleted` as the completion signal rather than `progress`, which the  background job only sets to 100 once the work is over. The record outlives the job, so a finished operation  can be read again and keeps returning the same identifier until the caller starts another template creation,  which replaces it. The call only reads state and needs no access to the source room or to the template, but it  does require an authenticated caller.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-template-creating-status/
    # @param [Hash] opts the optional parameters
    # @return [RoomTemplateStatusWrapper]
    def get_room_template_creating_status(opts = {})
      data, _status_code, _headers = get_room_template_creating_status_with_http_info(opts)
      data
    end

    # Get room template creation status
    # Reports the state of the room template creation the caller started with `POST api/2.0/files/roomtemplate`. The  record is private to the account that started the job: work started by another member is never reported, and a  caller who has started none gets an empty response instead of an object. Poll until `isCompleted` turns true,  then take the identifier of the finished template from `templateId`; a non-empty `error` means the job failed  and no template was kept. Treat `isCompleted` as the completion signal rather than `progress`, which the  background job only sets to 100 once the work is over. The record outlives the job, so a finished operation  can be read again and keeps returning the same identifier until the caller starts another template creation,  which replaces it. The call only reads state and needs no access to the source room or to the template, but it  does require an authenticated caller.
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
    # Lists the rooms of one section of the portal: the active rooms by default, or the archive, the form-filling  section or the room templates, chosen with `searchArea`. The rooms arrive in `folders` while `files` stays  empty, `current` describes the section itself, and `total` counts every room that matched the filters before  paging. A caller sees only the rooms they created or were invited to, while a portal administrator sees all of  them, so an empty answer means nothing is visible to this account rather than nothing exists. The remaining  parameters narrow the same set, by room type, title, tags, member, owner, storage, quota and privacy, and they  combine with each other. Sorting is not free of side effects: a `sortBy` value is also stored as this  account's default order for later listings, and omitting it reuses the stored order. Page the result with  `count` and `startIndex`. Read a single room with `GET api/2.0/files/rooms/{id}`, and create one with  `POST api/2.0/files/rooms`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<RoomType>] :type Keeps only the rooms of the listed kinds. Repeat the parameter to pass more than one value; they are combined  with OR, and omitting it returns the rooms of every kind.
    # @option opts [String] :subject_id Keeps only the rooms this account or group has access to, which is how the rooms of one member are listed. The  identifier comes from the portal people and group listings, and the exclude flag turns the filter into its  opposite.
    # @option opts [String] :subject_owner_id Keeps only the rooms created by this account, regardless of who else was invited to them. The identifier comes  from the portal people listing, and the exclude flag turns the filter into its opposite.
    # @option opts [SearchArea] :search_area The section to list. Every section is a separate root and a room belongs to exactly one of them at a time, so  archiving a room moves it out of the active section. The default is the active section, which leaves the  form-filling rooms to their own value.
    # @option opts [Boolean] :without_tags When true, keeps only the rooms that carry no tag at all, which is the complement of the tag filter. When  false or omitted, tags play no part in the selection.
    # @option opts [String] :tags A JSON array of tag names serialized into a single query value, for example [Important,Legal]. A room  matches when it carries any one of them. Take the names from `GET api/2.0/files/tags`; a name that is not in  the catalog simply matches nothing.
    # @option opts [Boolean] :exclude_subject Inverts the two subject filters: when true, the rooms of the named account are the ones left out of the answer  instead of the only ones kept. It does nothing on its own.
    # @option opts [ProviderFilter] :provider Keeps only the rooms whose content lives in the named third-party service, for portals where rooms may be  connected to external storage. The default keeps rooms of every origin.
    # @option opts [QuotaFilter] :quota_filter Splits the rooms by whether a storage quota was set on the room itself or it follows the portal default, which  is how rooms with a custom limit are found.
    # @option opts [StorageFilter] :storage_filter Splits the rooms by where their content is stored, in the portal itself or in a connected third-party account.  It is the coarse form of the provider filter.
    # @option opts [RoomPrivacyFilter] :privacy_filter Splits the rooms by whether they are private, that is encrypted rooms whose content the portal cannot read.  Omitting it returns both kinds.
    # @option opts [Integer] :count How many rooms one page may carry. Ask for the next page by raising the start index by the number of rooms  already received.
    # @option opts [Integer] :start_index How many matching rooms to skip before the page begins. Page through the answer until the skip plus the rooms  received reaches the total it reports.
    # @option opts [String] :sort_by The field to order the rooms by, named as in the file listings: `AZ` for the title, `DateAndTime` for the last  change, `DateAndTimeCreation`, `Author`, `Size`, `Type`, `RoomType`, `Tags`, `UsedSpace`, `LastOpened`. The  name is matched ignoring case, an unknown one is rejected rather than ignored, and the accepted one also  becomes this account's stored order.
    # @option opts [SortOrder] :sort_order The direction of the order chosen by the sort field. It has no effect when no sort field is given and the  stored order of the account is used.
    # @option opts [String] :filter_value Keeps only the rooms whose title contains this text, ignoring case. It is a substring match over the title  alone: room content and tags are not searched.
    # @option opts [Integer] :group_id Keeps only the rooms that belong to this room group. The identifier comes from `GET api/2.0/files/group`; the  groups of portal members are a different concept and their identifiers do not match here.
    # @return [FolderContentWrapper]
    def get_rooms_folder(opts = {})
      data, _status_code, _headers = get_rooms_folder_with_http_info(opts)
      data
    end

    # Get rooms
    # Lists the rooms of one section of the portal: the active rooms by default, or the archive, the form-filling  section or the room templates, chosen with `searchArea`. The rooms arrive in `folders` while `files` stays  empty, `current` describes the section itself, and `total` counts every room that matched the filters before  paging. A caller sees only the rooms they created or were invited to, while a portal administrator sees all of  them, so an empty answer means nothing is visible to this account rather than nothing exists. The remaining  parameters narrow the same set, by room type, title, tags, member, owner, storage, quota and privacy, and they  combine with each other. Sorting is not free of side effects: a `sortBy` value is also stored as this  account's default order for later listings, and omitting it reuses the stored order. Page the result with  `count` and `startIndex`. Read a single room with `GET api/2.0/files/rooms/{id}`, and create one with  `POST api/2.0/files/rooms`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<RoomType>] :type Keeps only the rooms of the listed kinds. Repeat the parameter to pass more than one value; they are combined  with OR, and omitting it returns the rooms of every kind.
    # @option opts [String] :subject_id Keeps only the rooms this account or group has access to, which is how the rooms of one member are listed. The  identifier comes from the portal people and group listings, and the exclude flag turns the filter into its  opposite.
    # @option opts [String] :subject_owner_id Keeps only the rooms created by this account, regardless of who else was invited to them. The identifier comes  from the portal people listing, and the exclude flag turns the filter into its opposite.
    # @option opts [SearchArea] :search_area The section to list. Every section is a separate root and a room belongs to exactly one of them at a time, so  archiving a room moves it out of the active section. The default is the active section, which leaves the  form-filling rooms to their own value.
    # @option opts [Boolean] :without_tags When true, keeps only the rooms that carry no tag at all, which is the complement of the tag filter. When  false or omitted, tags play no part in the selection.
    # @option opts [String] :tags A JSON array of tag names serialized into a single query value, for example [Important,Legal]. A room  matches when it carries any one of them. Take the names from `GET api/2.0/files/tags`; a name that is not in  the catalog simply matches nothing.
    # @option opts [Boolean] :exclude_subject Inverts the two subject filters: when true, the rooms of the named account are the ones left out of the answer  instead of the only ones kept. It does nothing on its own.
    # @option opts [ProviderFilter] :provider Keeps only the rooms whose content lives in the named third-party service, for portals where rooms may be  connected to external storage. The default keeps rooms of every origin.
    # @option opts [QuotaFilter] :quota_filter Splits the rooms by whether a storage quota was set on the room itself or it follows the portal default, which  is how rooms with a custom limit are found.
    # @option opts [StorageFilter] :storage_filter Splits the rooms by where their content is stored, in the portal itself or in a connected third-party account.  It is the coarse form of the provider filter.
    # @option opts [RoomPrivacyFilter] :privacy_filter Splits the rooms by whether they are private, that is encrypted rooms whose content the portal cannot read.  Omitting it returns both kinds.
    # @option opts [Integer] :count How many rooms one page may carry. Ask for the next page by raising the start index by the number of rooms  already received.
    # @option opts [Integer] :start_index How many matching rooms to skip before the page begins. Page through the answer until the skip plus the rooms  received reaches the total it reports.
    # @option opts [String] :sort_by The field to order the rooms by, named as in the file listings: `AZ` for the title, `DateAndTime` for the last  change, `DateAndTimeCreation`, `Author`, `Size`, `Type`, `RoomType`, `Tags`, `UsedSpace`, `LastOpened`. The  name is matched ignoring case, an unknown one is rejected rather than ignored, and the accepted one also  becomes this account's stored order.
    # @option opts [SortOrder] :sort_order The direction of the order chosen by the sort field. It has no effect when no sort field is given and the  stored order of the account is used.
    # @option opts [String] :filter_value Keeps only the rooms whose title contains this text, ignoring case. It is a substring match over the title  alone: room content and tags are not searched.
    # @option opts [Integer] :group_id Keeps only the rooms that belong to this room group. The identifier comes from `GET api/2.0/files/group`; the  groups of portal members are a different concept and their identifiers do not match here.
    # @return [Array<(FolderContentWrapper, Integer, Hash)>] FolderContentWrapper data, response status code and response headers
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
      query_params[:'type'] = @api_client.build_collection_param(opts[:'type'], :multi) if !opts[:'type'].nil?
      query_params[:'subjectId'] = opts[:'subject_id'] if !opts[:'subject_id'].nil?
      query_params[:'subjectOwnerId'] = opts[:'subject_owner_id'] if !opts[:'subject_owner_id'].nil?
      query_params[:'searchArea'] = opts[:'search_area'] if !opts[:'search_area'].nil?
      query_params[:'withoutTags'] = opts[:'without_tags'] if !opts[:'without_tags'].nil?
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'excludeSubject'] = opts[:'exclude_subject'] if !opts[:'exclude_subject'].nil?
      query_params[:'provider'] = opts[:'provider'] if !opts[:'provider'].nil?
      query_params[:'quotaFilter'] = opts[:'quota_filter'] if !opts[:'quota_filter'].nil?
      query_params[:'storageFilter'] = opts[:'storage_filter'] if !opts[:'storage_filter'].nil?
      query_params[:'privacyFilter'] = opts[:'privacy_filter'] if !opts[:'privacy_filter'].nil?
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
      return_type = opts[:debug_return_type] || 'FolderContentWrapper'

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

    # Get new items in all rooms
    # Collects everything that is marked as new for the caller across the active rooms into one answer, grouped  first by the day an entry changed and then by the room it belongs to. An entry becomes new when somebody else  creates or changes it in a room the caller has already opened, so the caller's own work never shows up here,  and neither does anything from a room they have never visited. Only files are listed: a new subfolder is not  an item, although files created inside it are, at any depth. The days come newest first, and inside a day the  rooms and their files follow the same order by change time. The archive is out of scope, only rooms of the  active section are covered. Reading the list clears nothing: the marks stay until the room itself is opened  with `GET api/2.0/files/rooms/{id}`. An empty array means that this account has nothing new. For one room, use  `GET api/2.0/files/rooms/{id}/news`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-new-items/
    # @param [Hash] opts the optional parameters
    # @return [NewItemsRoomNewItemsArrayWrapper]
    def get_rooms_new_items(opts = {})
      data, _status_code, _headers = get_rooms_new_items_with_http_info(opts)
      data
    end

    # Get new items in all rooms
    # Collects everything that is marked as new for the caller across the active rooms into one answer, grouped  first by the day an entry changed and then by the room it belongs to. An entry becomes new when somebody else  creates or changes it in a room the caller has already opened, so the caller's own work never shows up here,  and neither does anything from a room they have never visited. Only files are listed: a new subfolder is not  an item, although files created inside it are, at any depth. The days come newest first, and inside a day the  rooms and their files follow the same order by change time. The archive is out of scope, only rooms of the  active section are covered. Reading the list clears nothing: the marks stay until the room itself is opened  with `GET api/2.0/files/rooms/{id}`. An empty array means that this account has nothing new. For one room, use  `GET api/2.0/files/rooms/{id}/news`.
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
    # Returns the primary external link of a room, which is the one address meant to be handed out to people outside  the portal. A public room and a form filling room get such a link when they are created, and asking for it  again returns the same link rather than a new one, so the answer is stable. In a room that has no primary link  yet this call creates one instead of reporting nothing, which needs the right to manage the links of the room:  a member invited with a lower level is refused with 403, and so is anybody who is not in the room at all. A  link that was explicitly revoked stays revoked and is reported as missing rather than recreated, and an  unknown room is answered with 404 as well. An archived public room still reports its link. The answer is the  same entry that `GET api/2.0/files/rooms/{id}/links` returns with the primary flag set, including the request  token that has to travel with the address.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [FileShareWrapper]
    def get_rooms_primary_external_link(id, opts = {})
      data, _status_code, _headers = get_rooms_primary_external_link_with_http_info(id, opts)
      data
    end

    # Get the room primary external link
    # Returns the primary external link of a room, which is the one address meant to be handed out to people outside  the portal. A public room and a form filling room get such a link when they are created, and asking for it  again returns the same link rather than a new one, so the answer is stable. In a room that has no primary link  yet this call creates one instead of reporting nothing, which needs the right to manage the links of the room:  a member invited with a lower level is refused with 403, and so is anybody who is not in the room at all. A  link that was explicitly revoked stays revoked and is reported as missing rather than recreated, and an  unknown room is answered with 404 as well. An archived public room still reports its link. The answer is the  same entry that `GET api/2.0/files/rooms/{id}/links` returns with the primary flag set, including the request  token that has to travel with the address.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
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

    # Check room tag usage
    # Reports whether any room still carries the named tag, which is the check to run before the tag is deleted from  the catalog. Only a portal administrator may call it, and every other account is refused. The name is matched  exactly against the catalog, and a name that is not in it is answered with 404. That also tells the two ways a  tag stops being used apart: taking the tag off the last room that carried it leaves the tag in the catalog and  turns the answer to false, while deleting that last room removes the tag itself, after which the call answers  404. A true answer means at least one room, active or archived, still references the tag, so deleting it with  `DELETE api/2.0/files/tags` would strip it from those rooms. The handler reads the tag name from the query  string, so the value has to be sent twice: in the path segment and as the `tagName` query parameter.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/has-tag-links/
    # @param tag_name2 [String] The tag being checked. Send the same value as the `tagName` query parameter, which is the one the handler reads.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag_name The tag to check, spelled exactly as it is stored in the catalog. This query value is the one the handler  reads, so the path segment of the same name has to repeat it.
    # @return [BooleanWrapper]
    def has_tag_links(tag_name2, opts = {})
      data, _status_code, _headers = has_tag_links_with_http_info(tag_name2, opts)
      data
    end

    # Check room tag usage
    # Reports whether any room still carries the named tag, which is the check to run before the tag is deleted from  the catalog. Only a portal administrator may call it, and every other account is refused. The name is matched  exactly against the catalog, and a name that is not in it is answered with 404. That also tells the two ways a  tag stops being used apart: taking the tag off the last room that carried it leaves the tag in the catalog and  turns the answer to false, while deleting that last room removes the tag itself, after which the call answers  404. A true answer means at least one room, active or archived, still references the tag, so deleting it with  `DELETE api/2.0/files/tags` would strip it from those rooms. The handler reads the tag name from the query  string, so the value has to be sent twice: in the path segment and as the `tagName` query parameter.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/has-tag-links/
    # @param tag_name2 [String] The tag being checked. Send the same value as the `tagName` query parameter, which is the one the handler reads.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag_name The tag to check, spelled exactly as it is stored in the catalog. This query value is the one the handler  reads, so the path segment of the same name has to repeat it.
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
    # Pins a room to the top of the room list of the calling account and returns the room with the pinned flag set.  Pinning is personal: it changes the order only for the caller, is invisible to the other members of the room,  and does not survive a trip through the Archive section, so an unarchived room has to be pinned again. Pinned  rooms stay above the unpinned ones whatever sorting or filter the listing uses, and their own order between  each other is stable. An account may keep only a limited number of pinned rooms at a time, ten on a portal  with the default configuration, and AI rooms are counted separately against their own allowance; a request  over the limit is refused until something is unpinned with `PUT api/2.0/files/rooms/{id}/unpin`. Pinning a  room that is already pinned changes nothing and is safe to repeat. Anybody who can read the room may pin it,  including guests and portal administrators who were never invited, while somebody who is not in the room is  refused, an archived room is rejected and an unknown room is answered as missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def pin_room(id, opts = {})
      data, _status_code, _headers = pin_room_with_http_info(id, opts)
      data
    end

    # Pin a room
    # Pins a room to the top of the room list of the calling account and returns the room with the pinned flag set.  Pinning is personal: it changes the order only for the caller, is invisible to the other members of the room,  and does not survive a trip through the Archive section, so an unarchived room has to be pinned again. Pinned  rooms stay above the unpinned ones whatever sorting or filter the listing uses, and their own order between  each other is stable. An account may keep only a limited number of pinned rooms at a time, ten on a portal  with the default configuration, and AI rooms are counted separately against their own allowance; a request  over the limit is refused until something is unpinned with `PUT api/2.0/files/rooms/{id}/unpin`. Pinning a  room that is already pinned changes nothing and is safe to repeat. Anybody who can read the room may pin it,  including guests and portal administrators who were never invited, while somebody who is not in the room is  refused, an archived room is rejected and an unknown room is answered as missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || (id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

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

    # Reorder room contents
    # Renumbers the manual order of the items lying directly in a room so that they run from one upwards with no  gaps and no duplicates, and returns the room. The order of the items relative to each other is preserved: only  the numbers are compacted, and nothing is moved, renamed, duplicated or deleted. Files and folders share one  sequence. Nested folders keep their own numbering and are not touched, so each level is compacted on its own.  The operation is meant for a room with indexing turned on, where the manual order is what listings follow; a  room without indexing accepts it and simply has nothing that depends on the result. Running it twice changes  nothing the second time, and an already dense sequence is left as it is, which makes the call safe to retry.  The caller must be a manager of the room; a member invited with any other level is refused, an archived room  is rejected, and an unknown or deleted room is answered as missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def reorder_room(id, opts = {})
      data, _status_code, _headers = reorder_room_with_http_info(id, opts)
      data
    end

    # Reorder room contents
    # Renumbers the manual order of the items lying directly in a room so that they run from one upwards with no  gaps and no duplicates, and returns the room. The order of the items relative to each other is preserved: only  the numbers are compacted, and nothing is moved, renamed, duplicated or deleted. Files and folders share one  sequence. Nested folders keep their own numbering and are not touched, so each level is compacted on its own.  The operation is meant for a room with indexing turned on, where the manual order is what listings follow; a  room without indexing accepts it and simply has nothing that depends on the result. Running it twice changes  nothing the second time, and an already dense sequence is left as it is, which makes the call safe to retry.  The caller must be a manager of the room; a member invited with any other level is refused, an archived room  is rejected, and an unknown or deleted room is answered as missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || (id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

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
    # Sends the room invitation email again to members who were invited but have not joined yet. `resendAll` covers  every pending invitation of the room and makes `usersIds` irrelevant, while an explicit list without that flag  is limited to the named accounts. An account that has already accepted the invitation, is not a member of the  room, or is invisible to the caller is skipped without an error, and a request that names nobody and does not  set the flag does nothing, so a successful answer never proves that a message went out. Nothing about the room  or its membership changes, and the operation can be repeated. The caller must be a manager of the room, an  archived room is refused, a room template is answered as missing, and a malformed account id is rejected as an  invalid request. The call is rate limited, so a client that loops over members should send one batch instead.  The response carries no body.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/
    # @param id [Integer, String] The room whose invitations are resent, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param user_invitation [UserInvitation] Which pending invitations to send again.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def resend_email_invitations(id, user_invitation, opts = {})
      resend_email_invitations_with_http_info(id, user_invitation, opts)
      nil
    end

    # Resend the room invitations
    # Sends the room invitation email again to members who were invited but have not joined yet. `resendAll` covers  every pending invitation of the room and makes `usersIds` irrelevant, while an explicit list without that flag  is limited to the named accounts. An account that has already accepted the invitation, is not a member of the  room, or is invisible to the caller is skipped without an error, and a request that names nobody and does not  set the flag does nothing, so a successful answer never proves that a message went out. Nothing about the room  or its membership changes, and the operation can be repeated. The caller must be a manager of the room, an  archived room is refused, a room template is answered as missing, and a malformed account id is rejected as an  invalid request. The call is rate limited, so a client that loops over members should send one batch instead.  The response carries no body.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/
    # @param id [Integer, String] The room whose invitations are resent, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param user_invitation [UserInvitation] Which pending invitations to send again.
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

    # Set room template public access
    # Switches the room template named by `id` between shared with everyone and private, rewriting its whole  recipient list in the process. With `public` true the Everyone group is granted read access, so every member  allowed to create rooms can build one from the template with `POST api/2.0/files/rooms/fromtemplate`; with  false that access is taken away. In both cases every other account and group the template was shared with —  including the addresses passed as `share` when it was created — loses access, so this is not a way to add a  single recipient to an existing list. Only the account that owns the template may call it: a portal  administrator who does not own it is refused, and so is a member invited to the source room. The identifier  has to resolve to a room template; an ordinary room or an unknown value is answered as missing, and an  identifier below 1 is rejected as an invalid request. Repeating the call with the same value changes nothing,  and nothing is returned; read the current state with `GET api/2.0/files/roomtemplate/{id}/public`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-public-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [SetPublicDto] :set_public_dto 
    # @return [nil]
    def set_public_settings(opts = {})
      set_public_settings_with_http_info(opts)
      nil
    end

    # Set room template public access
    # Switches the room template named by `id` between shared with everyone and private, rewriting its whole  recipient list in the process. With `public` true the Everyone group is granted read access, so every member  allowed to create rooms can build one from the template with `POST api/2.0/files/rooms/fromtemplate`; with  false that access is taken away. In both cases every other account and group the template was shared with —  including the addresses passed as `share` when it was created — loses access, so this is not a way to add a  single recipient to an existing list. Only the account that owns the template may call it: a portal  administrator who does not own it is refused, and so is a member invited to the source room. The identifier  has to resolve to a room template; an ordinary room or an unknown value is answered as missing, and an  identifier below 1 is rejected as an invalid request. Repeating the call with the same value changes nothing,  and nothing is returned; read the current state with `GET api/2.0/files/roomtemplate/{id}/public`.
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
    # Creates, updates or deletes one sharing link of a room and returns it. `linkType` chooses the kind: an  invitation link makes whoever opens it a member with the given access level, while an external link opens the  room without an account. Omitting `linkId` creates a link, passing the id of an existing one updates it, and  an unknown id is created with that id; the kind of an existing link cannot be changed afterwards. An access  level of 0 deletes the link, and deleting the primary external link of a public or form filling room  immediately replaces it with a fresh one, so such a room is never left without one. A room keeps at most one  invitation link, and a second one is refused; form filling rooms take no invitation links, and collaboration,  form filling and virtual data rooms take no external links. An expiration date in the past is dropped silently  for an external link and rejected for an invitation link. `password`, `denyDownload` and `internal` apply to  external links only.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/
    # @param id [Integer, String] The room the link belongs to, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param room_link_request [RoomLinkRequest] The link to create, change or revoke.
    # @param [Hash] opts the optional parameters
    # @return [FileShareWrapper]
    def set_room_link(id, room_link_request, opts = {})
      data, _status_code, _headers = set_room_link_with_http_info(id, room_link_request, opts)
      data
    end

    # Set the room external or invitation link
    # Creates, updates or deletes one sharing link of a room and returns it. `linkType` chooses the kind: an  invitation link makes whoever opens it a member with the given access level, while an external link opens the  room without an account. Omitting `linkId` creates a link, passing the id of an existing one updates it, and  an unknown id is created with that id; the kind of an existing link cannot be changed afterwards. An access  level of 0 deletes the link, and deleting the primary external link of a public or form filling room  immediately replaces it with a fresh one, so such a room is never left without one. A room keeps at most one  invitation link, and a second one is refused; form filling rooms take no invitation links, and collaboration,  form filling and virtual data rooms take no external links. An expiration date in the past is dropped silently  for an external link and rejected for an invitation link. `password`, `denyDownload` and `internal` apply to  external links only.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/
    # @param id [Integer, String] The room the link belongs to, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param room_link_request [RoomLinkRequest] The link to create, change or revoke.
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
    # Adds, changes and removes room members in one batch, and returns the resulting access list of the named  subjects. Each entry names either an account or a group of the portal, or the email address of somebody who  has no account yet, together with the access level to grant; an access of 0 removes the subject from the room.  An entry without an access level is ignored, the same subject listed twice keeps the last level, and an empty  list is accepted and changes nothing. The caller must be a manager of the room, so an invitation sent by a  user or a guest is refused, and an account that is a portal user or a guest cannot be made a room manager.  Inviting by email also needs the portal to allow guest invitations. A subject the caller is not allowed to see  is dropped without an error, which is why the answer has to be compared with the request. Removing a member  who still holds a form role is refused through `error` unless `force` is set. `notify` sends the invitation  email with the optional `message`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/
    # @param id [Integer, String] The room whose membership changes, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param room_invitation_request [RoomInvitationRequest] The membership changes to apply, together with how the people concerned are notified.
    # @param [Hash] opts the optional parameters
    # @return [RoomSecurityWrapper]
    def set_room_security(id, room_invitation_request, opts = {})
      data, _status_code, _headers = set_room_security_with_http_info(id, room_invitation_request, opts)
      data
    end

    # Set the room access rights
    # Adds, changes and removes room members in one batch, and returns the resulting access list of the named  subjects. Each entry names either an account or a group of the portal, or the email address of somebody who  has no account yet, together with the access level to grant; an access of 0 removes the subject from the room.  An entry without an access level is ignored, the same subject listed twice keeps the last level, and an empty  list is accepted and changes nothing. The caller must be a manager of the room, so an invitation sent by a  user or a guest is refused, and an account that is a portal user or a guest cannot be made a room manager.  Inviting by email also needs the portal to allow guest invitations. A subject the caller is not allowed to see  is dropped without an error, which is why the answer has to be compared with the request. Removing a member  who still holds a form role is refused through `error` unless `force` is set. `notify` sends the invitation  email with the optional `message`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/
    # @param id [Integer, String] The room whose membership changes, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param room_invitation_request [RoomInvitationRequest] The membership changes to apply, together with how the people concerned are notified.
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

    # Start external DB sync
    # Queues a background job that re-exports the collected data of every original form of a form filling room into  the external database configured for the portal, and returns the job record. The room must be a form filling  room and the caller must be able to edit it, otherwise the call is refused with 403; an unknown room is  answered with 404. The export is not done when the response arrives: poll  `GET api/2.0/files/rooms/{id}/externaldbsync` until `isCompleted` is true, then read `forms` for the per-form  outcome, which stays empty while the job is running. Starting the job again while it is still running returns  the same record instead of a second job, so a retry is safe; a finished job is replaced by the new one. One  job is kept per room. A form whose data cannot be exported does not stop the others: it comes back in `forms`  with `success` false and its own `error`. When the portal has no external database configured the call fails  and nothing is queued.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-external-db-sync/
    # @param id [Integer] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [ExternalDbSyncTaskWrapper]
    def start_external_db_sync(id, opts = {})
      data, _status_code, _headers = start_external_db_sync_with_http_info(id, opts)
      data
    end

    # Start external DB sync
    # Queues a background job that re-exports the collected data of every original form of a form filling room into  the external database configured for the portal, and returns the job record. The room must be a form filling  room and the caller must be able to edit it, otherwise the call is refused with 403; an unknown room is  answered with 404. The export is not done when the response arrives: poll  `GET api/2.0/files/rooms/{id}/externaldbsync` until `isCompleted` is true, then read `forms` for the per-form  outcome, which stays empty while the job is running. Starting the job again while it is still running returns  the same record instead of a second job, so a retry is safe; a finished job is replaced by the new one. One  job is kept per room. A form whose data cannot be exported does not stop the others: it comes back in `forms`  with `success` false and its own `error`. When the portal has no external database configured the call fails  and nothing is queued.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-external-db-sync/
    # @param id [Integer] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExternalDbSyncTaskWrapper, Integer, Hash)>] ExternalDbSyncTaskWrapper data, response status code and response headers
    def start_external_db_sync_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::RoomsApi.start_external_db_sync ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::RoomsApi.start_external_db_sync"
      end
      # resource path
      local_var_path = '/api/2.0/files/rooms/{id}/externaldbsync'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'ExternalDbSyncTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::RoomsApi.start_external_db_sync",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::RoomsApi#start_external_db_sync\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start the room index export
    # Queues a background job that builds the index of a virtual data room as a spreadsheet, and answers with the  job record to poll. The room has to be a virtual data room with indexing switched on, and the caller has to be  its manager or a portal administrator; any other kind of room, a room template, and a member invited with a  lower access level are refused, while an unknown room is answered as missing. There is one job per account:  starting an export while an earlier one is still running answers with that earlier record instead of queuing a  second job, and a finished record is replaced by the new one. Poll `GET api/2.0/files/rooms/indexexport` until  `isCompleted` is true, then read `status` to tell a completed job from a failed or cancelled one, and take  `resultFileId` and `resultFileUrl` from the same record. The report is saved as a spreadsheet in the My  documents section of the caller, not in the room. Cancel a running job with  `DELETE api/2.0/files/rooms/indexexport`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-room-index-export/
    # @param id [Integer] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [DocumentBuilderTaskWrapper]
    def start_room_index_export(id, opts = {})
      data, _status_code, _headers = start_room_index_export_with_http_info(id, opts)
      data
    end

    # Start the room index export
    # Queues a background job that builds the index of a virtual data room as a spreadsheet, and answers with the  job record to poll. The room has to be a virtual data room with indexing switched on, and the caller has to be  its manager or a portal administrator; any other kind of room, a room template, and a member invited with a  lower access level are refused, while an unknown room is answered as missing. There is one job per account:  starting an export while an earlier one is still running answers with that earlier record instead of queuing a  second job, and a finished record is replaced by the new one. Poll `GET api/2.0/files/rooms/indexexport` until  `isCompleted` is true, then read `status` to tell a completed job from a failed or cancelled one, and take  `resultFileId` and `resultFileUrl` from the same record. The report is saved as a spreadsheet in the My  documents section of the caller, not in the room. Cancel a running job with  `DELETE api/2.0/files/rooms/indexexport`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-room-index-export/
    # @param id [Integer] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
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
    # Cancels the room index export of the calling account and drops its job record. No room is named because there  is at most one export per account, so the call always acts on the caller's own job and never on somebody  else's: an account with nothing running gets a successful answer that changes nothing, which makes the call  safe to repeat and makes it useless as a way of stopping an export somebody else started. Afterwards  `GET api/2.0/files/rooms/indexexport` answers with an empty body until a new export is started with  `POST api/2.0/files/rooms/{id}/indexexport`. The cancellation is asynchronous: the background job stops at its  next checkpoint, so one that is already saving the file may still finish, and a report that was written before  the cancellation stays in the My documents section of the caller and has to be deleted as an ordinary file.  The answer carries no body and says nothing about whether an export was running.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-room-index-export/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def terminate_room_index_export(opts = {})
      terminate_room_index_export_with_http_info(opts)
      nil
    end

    # Terminate the room index export
    # Cancels the room index export of the calling account and drops its job record. No room is named because there  is at most one export per account, so the call always acts on the caller's own job and never on somebody  else's: an account with nothing running gets a successful answer that changes nothing, which makes the call  safe to repeat and makes it useless as a way of stopping an export somebody else started. Afterwards  `GET api/2.0/files/rooms/indexexport` answers with an empty body until a new export is started with  `POST api/2.0/files/rooms/{id}/indexexport`. The cancellation is asynchronous: the background job stops at its  next checkpoint, so one that is already saving the file may still finish, and a report that was written before  the cancellation stays in the My documents section of the caller and has to be deleted as an ordinary file.  The answer carries no body and says nothing about whether an export was running.
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
    # Queues a background job that moves one room from the Archive section back to the Rooms section, and returns  the operation record of that job. The room becomes writable again with the membership, tags, logo and links it  had before, while the pinned state of its members is not restored and has to be set again with  `PUT api/2.0/files/rooms/{id}/pin`. The caller must be a manager of the room; a member who was only invited to  it is refused, a room template is answered as missing, and a room that was never archived simply stays where  it is. The room is not moved when the response arrives: poll `GET api/2.0/files/fileops` until `finished` is  true, and expect a room that is still archived until then. `deleteAfter` decides only how long the finished  record survives. Calling the operation twice in a row does not corrupt the room, and a deleted or unknown room  id is reported as missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/
    # @param id [Integer, String] The room to move, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param [Hash] opts the optional parameters
    # @option opts [ArchiveRoomRequest] :archive_room_request The body of the request. It carries only the lifetime of the job record, so an empty object is a normal  request.
    # @return [FileOperationWrapper]
    def unarchive_room(id, opts = {})
      data, _status_code, _headers = unarchive_room_with_http_info(id, opts)
      data
    end

    # Unarchive a room
    # Queues a background job that moves one room from the Archive section back to the Rooms section, and returns  the operation record of that job. The room becomes writable again with the membership, tags, logo and links it  had before, while the pinned state of its members is not restored and has to be set again with  `PUT api/2.0/files/rooms/{id}/pin`. The caller must be a manager of the room; a member who was only invited to  it is refused, a room template is answered as missing, and a room that was never archived simply stays where  it is. The room is not moved when the response arrives: poll `GET api/2.0/files/fileops` until `finished` is  true, and expect a room that is still archived until then. `deleteAfter` decides only how long the finished  record survives. Calling the operation twice in a row does not corrupt the room, and a deleted or unknown room  id is reported as missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/
    # @param id [Integer, String] The room to move, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param [Hash] opts the optional parameters
    # @option opts [ArchiveRoomRequest] :archive_room_request The body of the request. It carries only the lifetime of the job record, so an empty object is a normal  request.
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
    # Removes a room from the pinned group of the calling account and returns the room with the pinned flag cleared.  Only the personal ordering of the caller changes: the room itself, its members, their roles and its contents  are left exactly as they were, and the room stays in the list, simply among the unpinned ones. Unpinning frees  one of the pin slots of the account, which AI rooms count separately, so it is the way out of a refused  `PUT api/2.0/files/rooms/{id}/pin`. Unpinning a room that was never pinned is accepted and changes nothing, so  the call can be repeated safely and its answer does not prove that anything was pinned before. Anybody who can  read the room may unpin it, while somebody who is not in the room at all is refused and an unknown or deleted  room is answered as missing. An archived room cannot be unpinned.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def unpin_room(id, opts = {})
      data, _status_code, _headers = unpin_room_with_http_info(id, opts)
      data
    end

    # Unpin a room
    # Removes a room from the pinned group of the calling account and returns the room with the pinned flag cleared.  Only the personal ordering of the caller changes: the room itself, its members, their roles and its contents  are left exactly as they were, and the room stays in the list, simply among the unpinned ones. Unpinning frees  one of the pin slots of the account, which AI rooms count separately, so it is the way out of a refused  `PUT api/2.0/files/rooms/{id}/pin`. Unpinning a room that was never pinned is accepted and changes nothing, so  the call can be repeated safely and its answer does not prove that anything was pinned before. Anybody who can  read the room may unpin it, while somebody who is not in the room at all is refused and an unknown or deleted  room is answered as missing. An archived room cannot be unpinned.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/
    # @param id [Integer, String] The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || (id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

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
    # Applies a partial change to one room and returns the whole room as it is after it. Only the fields present in  the body are touched, an empty body changes nothing, and a property the body does not define is rejected as an  invalid request instead of being ignored. The caller must be a manager of this room: portal administrators do  not get in without an invitation, and an archived room is refused. `title` is trimmed, sanitised the way a  room title is sanitised at creation, and a blank value is treated as no change. `tags` replaces the whole tag  set and an empty array clears it, an empty `color` restores the default and an empty `cover` removes the  cover. A `quota` of -1 switches the room back to no custom limit, any other negative value restores the portal  default, and a positive one is accepted only while the per-room quota feature is on. Turning `indexing` on  renumbers the room contents. `chatSettings` belongs to an AI room and is rejected anywhere else. Use  `POST api/2.0/files/rooms/{id}/logo` for logo cropping.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/
    # @param id [Integer, String] The room to update, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param update_room_request [UpdateRoomRequest] The fields to change. Only the properties present in the object are applied, and a property that the object  does not define is rejected instead of being ignored.
    # @param [Hash] opts the optional parameters
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def update_room(id, update_room_request, opts = {})
      data, _status_code, _headers = update_room_with_http_info(id, update_room_request, opts)
      data
    end

    # Update a room
    # Applies a partial change to one room and returns the whole room as it is after it. Only the fields present in  the body are touched, an empty body changes nothing, and a property the body does not define is rejected as an  invalid request instead of being ignored. The caller must be a manager of this room: portal administrators do  not get in without an invitation, and an archived room is refused. `title` is trimmed, sanitised the way a  room title is sanitised at creation, and a blank value is treated as no change. `tags` replaces the whole tag  set and an empty array clears it, an empty `color` restores the default and an empty `cover` removes the  cover. A `quota` of -1 switches the room back to no custom limit, any other negative value restores the portal  default, and a positive one is accepted only while the per-room quota feature is on. Turning `indexing` on  renumbers the room contents. `chatSettings` belongs to an AI room and is rejected anywhere else. Use  `POST api/2.0/files/rooms/{id}/logo` for logo cropping.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/
    # @param id [Integer, String] The room to update, named by the identifier that `GET api/2.0/files/rooms` reports for it.
    # @param update_room_request [UpdateRoomRequest] The fields to change. Only the properties present in the object are applied, and a property that the object  does not define is rejected instead of being ignored.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || (id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

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

    # Rename a room tag
    # Renames a custom room tag in the portal catalog. The rename follows the tag everywhere it is used: every room  that carries it keeps it and shows the new name, so nothing has to be re-attached afterwards. Only a portal  administrator may rename a tag, and a room manager who is allowed to create tags is still refused here. The  old name is matched exactly as it is stored rather than searched for, and a name that is not in the catalog is  answered as missing. A new name that another tag already occupies is rejected as an invalid request, because  tag names are unique across the portal; both names must be non-blank and within the published length limit.  The answer is the new name. Stored queries are not updated for the caller: a `tags` filter of  `GET api/2.0/files/rooms` that still names the old value stops matching anything. The catalog is read with  `GET api/2.0/files/tags`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-tag/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateTagRequestDto] :update_tag_request_dto 
    # @return [StringWrapper]
    def update_room_tag(opts = {})
      data, _status_code, _headers = update_room_tag_with_http_info(opts)
      data
    end

    # Rename a room tag
    # Renames a custom room tag in the portal catalog. The rename follows the tag everywhere it is used: every room  that carries it keeps it and shows the new name, so nothing has to be re-attached afterwards. Only a portal  administrator may rename a tag, and a room manager who is allowed to create tags is still refused here. The  old name is matched exactly as it is stored rather than searched for, and a name that is not in the catalog is  answered as missing. A new name that another tag already occupies is rejected as an invalid request, because  tag names are unique across the portal; both names must be non-blank and within the published length limit.  The answer is the new name. Stored queries are not updated for the caller: a `tags` filter of  `GET api/2.0/files/rooms` that still names the old value stops matching anything. The catalog is read with  `GET api/2.0/files/tags`.
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
    # Stores an image in temporary storage and answers with the path to it, which is the first half of setting a  room logo. No room changes here: pass the returned path as `tmpFile` to `POST api/2.0/files/rooms/{id}/logo`,  together with the crop rectangle, to make the image the logo of a room. The image travels as multipart form  data, and the first file part of the request is the one that is used while any other part is ignored. It is  re-encoded to PNG and scaled down to fit 1280 by 1280 pixels, so a larger picture is accepted and shrunk,  while a part that is not a readable image, or one over the portal limit for uploaded images, is refused with  400. Only a room manager or a portal administrator may upload, and everyone else gets 403. Every call produces  a new path, and an image that is never used stays in temporary storage until it is cleaned up, so uploading  twice is harmless.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-room-logo/
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The image data.
    # @return [UploadResultWrapper]
    def upload_room_logo(opts = {})
      data, _status_code, _headers = upload_room_logo_with_http_info(opts)
      data
    end

    # Upload a room logo image
    # Stores an image in temporary storage and answers with the path to it, which is the first half of setting a  room logo. No room changes here: pass the returned path as `tmpFile` to `POST api/2.0/files/rooms/{id}/logo`,  together with the crop rectangle, to make the image the logo of a room. The image travels as multipart form  data, and the first file part of the request is the one that is used while any other part is ignored. It is  re-encoded to PNG and scaled down to fit 1280 by 1280 pixels, so a larger picture is accepted and shrunk,  while a part that is not a readable image, or one over the portal limit for uploaded images, is refused with  400. Only a room manager or a portal administrator may upload, and everyone else gets 403. Every call produces  a new path, and an image that is never used stays in temporary storage until it is cleaned up, so uploading  twice is harmless.
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

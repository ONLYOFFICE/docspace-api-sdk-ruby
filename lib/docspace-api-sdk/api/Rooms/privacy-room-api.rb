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
    class PrivacyRoomApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete an encryption key
    # Removes one encryption key pair from the calling user's own key set and answers 204 with no body. The pair is  named by the `id` of an entry of `GET api/2.0/privacyroom/keys`; the caller's other pairs stay as they are.  The call is destructive and cannot be repeated: the key material is gone for good, a second delete of the same  `id`, like an `id` that was never stored, is answered with 404, and there is no parameter for another user's  keys, so an authenticated member only ever deletes their own while a guest is refused. Deleting the last key  the caller holds locks them out of the private rooms they belong to, their own rooms included: the rooms and  their content survive untouched and stay listed as private, but `GET api/2.0/privacyroom/{roomId}/access` then  refuses the caller until a new key is stored with `POST api/2.0/privacyroom/keys`. Before DocSpace 4.0 the  call answered 200 with the caller's remaining keys, so a client that read that list has to call  `GET api/2.0/privacyroom/keys` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-keys/
    # @param id [String] The pair to delete, taken from the `id` of an entry of `GET api/2.0/privacyroom/keys`. Only the caller's own  pairs can be named here.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_keys(id, opts = {})
      delete_keys_with_http_info(id, opts)
      nil
    end

    # Delete an encryption key
    # Removes one encryption key pair from the calling user's own key set and answers 204 with no body. The pair is  named by the `id` of an entry of `GET api/2.0/privacyroom/keys`; the caller's other pairs stay as they are.  The call is destructive and cannot be repeated: the key material is gone for good, a second delete of the same  `id`, like an `id` that was never stored, is answered with 404, and there is no parameter for another user's  keys, so an authenticated member only ever deletes their own while a guest is refused. Deleting the last key  the caller holds locks them out of the private rooms they belong to, their own rooms included: the rooms and  their content survive untouched and stay listed as private, but `GET api/2.0/privacyroom/{roomId}/access` then  refuses the caller until a new key is stored with `POST api/2.0/privacyroom/keys`. Before DocSpace 4.0 the  call answered 200 with the caller's remaining keys, so a client that read that list has to call  `GET api/2.0/privacyroom/keys` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-keys/
    # @param id [String] The pair to delete, taken from the `id` of an entry of `GET api/2.0/privacyroom/keys`. Only the caller's own  pairs can be named here.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_keys_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::PrivacyRoomApi.delete_keys ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Rooms::PrivacyRoomApi.delete_keys"
      end
      # resource path
      local_var_path = '/api/2.0/privacyroom/keys/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"Rooms::PrivacyRoomApi.delete_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::PrivacyRoomApi#delete_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get own encryption keys
    # Returns every encryption key pair the calling user holds, the encrypted private half included, which is the  material a client needs in order to decrypt content in a private room. The set is personal and there is no  parameter for another user's keys: an authenticated caller reads only their own, and a guest, who cannot own  key material at all, always reads an empty set. The call is read-only. An empty answer, whether an empty list  or none at all, means no key has been created yet, and until `POST api/2.0/privacyroom/keys` creates one the  user cannot be invited to a private room. Each entry carries the pair's `id`, its owner in `userId`, the  moment the material was stored in `date`, the public half, the private half encrypted with the user's  password, and the portal-wide crypto engine in `cryptoEngineId`. For the keys that open a whole private room  use `GET api/2.0/privacyroom/{roomId}/access`, and for the keys a single file is shared with use  `GET api/2.0/files/file/{fileId}/publickeys`; this operation is about the caller alone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys/
    # @param [Hash] opts the optional parameters
    # @return [EncryptionKeyArrayWrapper]
    def get_user_keys(opts = {})
      data, _status_code, _headers = get_user_keys_with_http_info(opts)
      data
    end

    # Get own encryption keys
    # Returns every encryption key pair the calling user holds, the encrypted private half included, which is the  material a client needs in order to decrypt content in a private room. The set is personal and there is no  parameter for another user's keys: an authenticated caller reads only their own, and a guest, who cannot own  key material at all, always reads an empty set. The call is read-only. An empty answer, whether an empty list  or none at all, means no key has been created yet, and until `POST api/2.0/privacyroom/keys` creates one the  user cannot be invited to a private room. Each entry carries the pair's `id`, its owner in `userId`, the  moment the material was stored in `date`, the public half, the private half encrypted with the user's  password, and the portal-wide crypto engine in `cryptoEngineId`. For the keys that open a whole private room  use `GET api/2.0/privacyroom/{roomId}/access`, and for the keys a single file is shared with use  `GET api/2.0/files/file/{fileId}/publickeys`; this operation is about the caller alone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys/
    # @param [Hash] opts the optional parameters
    # @return [Array<(EncryptionKeyArrayWrapper, Integer, Hash)>] EncryptionKeyArrayWrapper data, response status code and response headers
    def get_user_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::PrivacyRoomApi.get_user_keys ...'
      end
      # resource path
      local_var_path = '/api/2.0/privacyroom/keys'

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
      return_type = opts[:debug_return_type] || 'EncryptionKeyArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::PrivacyRoomApi.get_user_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::PrivacyRoomApi#get_user_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get private room access keys
    # Returns the encryption keys that give access to a private room: one entry per key held by each of its members,  which is what a client needs in order to encrypt a file key for everyone allowed to open the room's content.  Only the caller's own entries carry `privateKeyEnc`; another member's entry carries the public half alone, and  an entry with no public half is not reported as access at all. The room has to be a private one, a room  created without private mode holds no access keys and the call is refused, and it has to still exist: an  unknown room, or one already moved to Trash, is reported as missing, while an archived private room still  answers. Access follows room membership and not portal role: any member from read access upwards receives the  full set, whereas a DocSpace administrator who is not a member is refused, and so is a caller holding no key  of their own, the room creator included once they delete their last key. The call is read-only. For the keys  of a single file use `GET api/2.0/files/file/{fileId}/publickeys`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys-for-room/
    # @param room_id [Integer] The private room whose access keys are read. Take it from the `id` of the room returned by  `POST api/2.0/files/rooms` or listed by `GET api/2.0/files/rooms`.
    # @param [Hash] opts the optional parameters
    # @return [EncryptionKeyArrayWrapper]
    def get_user_keys_for_room(room_id, opts = {})
      data, _status_code, _headers = get_user_keys_for_room_with_http_info(room_id, opts)
      data
    end

    # Get private room access keys
    # Returns the encryption keys that give access to a private room: one entry per key held by each of its members,  which is what a client needs in order to encrypt a file key for everyone allowed to open the room's content.  Only the caller's own entries carry `privateKeyEnc`; another member's entry carries the public half alone, and  an entry with no public half is not reported as access at all. The room has to be a private one, a room  created without private mode holds no access keys and the call is refused, and it has to still exist: an  unknown room, or one already moved to Trash, is reported as missing, while an archived private room still  answers. Access follows room membership and not portal role: any member from read access upwards receives the  full set, whereas a DocSpace administrator who is not a member is refused, and so is a caller holding no key  of their own, the room creator included once they delete their last key. The call is read-only. For the keys  of a single file use `GET api/2.0/files/file/{fileId}/publickeys`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys-for-room/
    # @param room_id [Integer] The private room whose access keys are read. Take it from the `id` of the room returned by  `POST api/2.0/files/rooms` or listed by `GET api/2.0/files/rooms`.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EncryptionKeyArrayWrapper, Integer, Hash)>] EncryptionKeyArrayWrapper data, response status code and response headers
    def get_user_keys_for_room_with_http_info(room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::PrivacyRoomApi.get_user_keys_for_room ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling Rooms::PrivacyRoomApi.get_user_keys_for_room"
      end
      # resource path
      local_var_path = '/api/2.0/privacyroom/{roomId}/access'.sub('{' + 'roomId' + '}', CGI.escape(room_id.to_s))

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
      return_type = opts[:debug_return_type] || 'EncryptionKeyArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::PrivacyRoomApi.get_user_keys_for_room",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::PrivacyRoomApi#get_user_keys_for_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rotate an encryption key
    # Rotates one encryption key pair of the calling user: the entry whose `id` matches is overwritten with the  submitted `publicKey` and `privateKeyEnc`, and the caller's other pairs are left untouched. The pair has to  exist already, an `id` that is not in the caller's set is answered with 404, and a first key is created with  `POST api/2.0/privacyroom/keys`. This is a full replacement rather than a merge: both halves are mandatory,  and a request that omits or blanks one of them is rejected as invalid with the stored pair surviving  unchanged, so a rotation that means to keep the private half has to send it again. Omitting `id` targets the  all-zero pair, the one a client that never sets an id keeps rotating. Every authenticated member rotates their  own keys and only their own, and a guest is refused. The call is mutating, and repeating it with the same body  leaves the same state. It answers with every key the caller holds afterwards, and from then on  `GET api/2.0/privacyroom/{roomId}/access` reports the new public half for this member.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/replace-key/
    # @param [Hash] opts the optional parameters
    # @option opts [EncryptionKeyRequestDto] :encryption_key_request_dto 
    # @return [EncryptionKeyArrayWrapper]
    def replace_key(opts = {})
      data, _status_code, _headers = replace_key_with_http_info(opts)
      data
    end

    # Rotate an encryption key
    # Rotates one encryption key pair of the calling user: the entry whose `id` matches is overwritten with the  submitted `publicKey` and `privateKeyEnc`, and the caller's other pairs are left untouched. The pair has to  exist already, an `id` that is not in the caller's set is answered with 404, and a first key is created with  `POST api/2.0/privacyroom/keys`. This is a full replacement rather than a merge: both halves are mandatory,  and a request that omits or blanks one of them is rejected as invalid with the stored pair surviving  unchanged, so a rotation that means to keep the private half has to send it again. Omitting `id` targets the  all-zero pair, the one a client that never sets an id keeps rotating. Every authenticated member rotates their  own keys and only their own, and a guest is refused. The call is mutating, and repeating it with the same body  leaves the same state. It answers with every key the caller holds afterwards, and from then on  `GET api/2.0/privacyroom/{roomId}/access` reports the new public half for this member.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/replace-key/
    # @param [Hash] opts the optional parameters
    # @option opts [EncryptionKeyRequestDto] :encryption_key_request_dto 
    # @return [Array<(EncryptionKeyArrayWrapper, Integer, Hash)>] EncryptionKeyArrayWrapper data, response status code and response headers
    def replace_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::PrivacyRoomApi.replace_key ...'
      end
      # resource path
      local_var_path = '/api/2.0/privacyroom/keys'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'encryption_key_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'EncryptionKeyArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::PrivacyRoomApi.replace_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::PrivacyRoomApi#replace_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an encryption key
    # Stores a new encryption key pair for the calling user and answers with that user's whole key set. The material  is end-to-end: `publicKey` is the half other members use to encrypt file keys for this user, while  `privateKeyEnc` arrives already encrypted with the user's own password, so the portal keeps it as opaque text.  A member must hold at least one key before they can be invited to a private room, which makes this the first  call of the private-room flow. Every authenticated member manages their own keys and only their own, there is  no parameter for somebody else's, and a guest is refused, which is also why a guest cannot become a member of  a private room. The call is mutating and is not safe to repeat: `id` names the pair inside the caller's set  and an `id` that is already stored is answered with 409, while a request that omits or blanks either half is  rejected as invalid and stores nothing. A successful call answers 201 with every key the caller now holds. To  change the material of an existing pair use `PUT api/2.0/privacyroom/keys`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-keys/
    # @param [Hash] opts the optional parameters
    # @option opts [EncryptionKeyRequestDto] :encryption_key_request_dto 
    # @return [EncryptionKeyArrayWrapper]
    def set_keys(opts = {})
      data, _status_code, _headers = set_keys_with_http_info(opts)
      data
    end

    # Create an encryption key
    # Stores a new encryption key pair for the calling user and answers with that user's whole key set. The material  is end-to-end: `publicKey` is the half other members use to encrypt file keys for this user, while  `privateKeyEnc` arrives already encrypted with the user's own password, so the portal keeps it as opaque text.  A member must hold at least one key before they can be invited to a private room, which makes this the first  call of the private-room flow. Every authenticated member manages their own keys and only their own, there is  no parameter for somebody else's, and a guest is refused, which is also why a guest cannot become a member of  a private room. The call is mutating and is not safe to repeat: `id` names the pair inside the caller's set  and an `id` that is already stored is answered with 409, while a request that omits or blanks either half is  rejected as invalid and stores nothing. A successful call answers 201 with every key the caller now holds. To  change the material of an existing pair use `PUT api/2.0/privacyroom/keys`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-keys/
    # @param [Hash] opts the optional parameters
    # @option opts [EncryptionKeyRequestDto] :encryption_key_request_dto 
    # @return [Array<(EncryptionKeyArrayWrapper, Integer, Hash)>] EncryptionKeyArrayWrapper data, response status code and response headers
    def set_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Rooms::PrivacyRoomApi.set_keys ...'
      end
      # resource path
      local_var_path = '/api/2.0/privacyroom/keys'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'encryption_key_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'EncryptionKeyArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Rooms::PrivacyRoomApi.set_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Rooms::PrivacyRoomApi#set_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

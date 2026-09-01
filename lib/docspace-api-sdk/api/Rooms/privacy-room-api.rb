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
    # Deletes an encryption key and removes it from the system.
    # Deletes an encryption key and removes it from the system based on the provided key identifier.    Breaking change in DocSpace 4.0: the endpoint used to answer 200 with the caller's remaining  encryption keys and now answers 204 with no body. A client that read that list must call  `GET api/2.0/privacyroom/keys` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-keys/
    # @param id [String] The unique identifier of the encryption key to be deleted.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_keys(id, opts = {})
      delete_keys_with_http_info(id, opts)
      nil
    end

    # Deletes an encryption key and removes it from the system.
    # Deletes an encryption key and removes it from the system based on the provided key identifier.    Breaking change in DocSpace 4.0: the endpoint used to answer 200 with the caller's remaining  encryption keys and now answers 204 with no body. A client that read that list must call  `GET api/2.0/privacyroom/keys` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-keys/
    # @param id [String] The unique identifier of the encryption key to be deleted.
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

    # Retrieves encryption keys associated with the current user.
    # Retrieves encryption keys associated with the current user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys/
    # @param [Hash] opts the optional parameters
    # @return [EncryptionKeyArrayWrapper]
    def get_user_keys(opts = {})
      data, _status_code, _headers = get_user_keys_with_http_info(opts)
      data
    end

    # Retrieves encryption keys associated with the current user.
    # Retrieves encryption keys associated with the current user.
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

    # Retrieves the encryption keys associated with a specific privacy room.
    # Retrieves the encryption keys associated with a specific privacy room.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys-for-room/
    # @param room_id [Integer] The identifier of the privacy room.
    # @param [Hash] opts the optional parameters
    # @return [EncryptionKeyArrayWrapper]
    def get_user_keys_for_room(room_id, opts = {})
      data, _status_code, _headers = get_user_keys_for_room_with_http_info(room_id, opts)
      data
    end

    # Retrieves the encryption keys associated with a specific privacy room.
    # Retrieves the encryption keys associated with a specific privacy room.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys-for-room/
    # @param room_id [Integer] The identifier of the privacy room.
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

    # Replaces an existing encryption key with a new one for the user.
    # Replaces an existing encryption key with a new one for the user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/replace-key/
    # @param [Hash] opts the optional parameters
    # @option opts [EncryptionKeyRequestDto] :encryption_key_request_dto The request object containing the public and private key information to replace the existing key.
    # @return [EncryptionKeyArrayWrapper]
    def replace_key(opts = {})
      data, _status_code, _headers = replace_key_with_http_info(opts)
      data
    end

    # Replaces an existing encryption key with a new one for the user.
    # Replaces an existing encryption key with a new one for the user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/replace-key/
    # @param [Hash] opts the optional parameters
    # @option opts [EncryptionKeyRequestDto] :encryption_key_request_dto The request object containing the public and private key information to replace the existing key.
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

    # Creates and sets encryption keys for the user.
    # Creates and sets encryption keys for the user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-keys/
    # @param [Hash] opts the optional parameters
    # @option opts [EncryptionKeyRequestDto] :encryption_key_request_dto The request object containing public and private key information.
    # @return [EncryptionKeyArrayWrapper]
    def set_keys(opts = {})
      data, _status_code, _headers = set_keys_with_http_info(opts)
      data
    end

    # Creates and sets encryption keys for the user.
    # Creates and sets encryption keys for the user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-keys/
    # @param [Hash] opts the optional parameters
    # @option opts [EncryptionKeyRequestDto] :encryption_key_request_dto The request object containing public and private key information.
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

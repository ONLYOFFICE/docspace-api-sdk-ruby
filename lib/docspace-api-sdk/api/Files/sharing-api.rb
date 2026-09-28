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
  module Files
    class SharingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Unlock a password-protected link
    # Submits the password of a protected external share link and answers with the same resolved link data as  `GET api/2.0/files/share/{key}`, so this operation is called only after that one reported that a password is  required. The token in the path is the `requestToken` of the link, and the password is the one chosen by the  member who shared the entry. The call needs no authentication; a signed-in caller that may already read the  room is let through by the resolve operation itself and does not need the password at all. A correct password  is remembered for the caller, so later requests with the same token resolve without repeating it, and a wrong  one is reported in the `status` field as an invalid password rather than as an HTTP error, while the  remembered password is dropped. Attempts are counted per link and per calling address: once the portal's limit  is reached, further attempts are rejected until the block expires, which makes the operation unsuitable for  trying passwords in a loop. Nothing about the entry is changed by the call itself.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/apply-external-share-password/
    # @param key [String] The token of the external share link, taken verbatim from the `requestToken` of a link returned by the link  operations of an entry, such as `GET api/2.0/files/rooms/{id}/link`. It is an opaque URL-safe string that  carries the link's own identifier, so it cannot be assembled by hand.
    # @param external_share_request_param [ExternalShareRequestParam] The body of the request, holding the password to check.
    # @param [Hash] opts the optional parameters
    # @return [ExternalShareWrapper]
    def apply_external_share_password(key, external_share_request_param, opts = {})
      data, _status_code, _headers = apply_external_share_password_with_http_info(key, external_share_request_param, opts)
      data
    end

    # Unlock a password-protected link
    # Submits the password of a protected external share link and answers with the same resolved link data as  `GET api/2.0/files/share/{key}`, so this operation is called only after that one reported that a password is  required. The token in the path is the `requestToken` of the link, and the password is the one chosen by the  member who shared the entry. The call needs no authentication; a signed-in caller that may already read the  room is let through by the resolve operation itself and does not need the password at all. A correct password  is remembered for the caller, so later requests with the same token resolve without repeating it, and a wrong  one is reported in the `status` field as an invalid password rather than as an HTTP error, while the  remembered password is dropped. Attempts are counted per link and per calling address: once the portal's limit  is reached, further attempts are rejected until the block expires, which makes the operation unsuitable for  trying passwords in a loop. Nothing about the entry is changed by the call itself.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/apply-external-share-password/
    # @param key [String] The token of the external share link, taken verbatim from the `requestToken` of a link returned by the link  operations of an entry, such as `GET api/2.0/files/rooms/{id}/link`. It is an opaque URL-safe string that  carries the link's own identifier, so it cannot be assembled by hand.
    # @param external_share_request_param [ExternalShareRequestParam] The body of the request, holding the password to check.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExternalShareWrapper, Integer, Hash)>] ExternalShareWrapper data, response status code and response headers
    def apply_external_share_password_with_http_info(key, external_share_request_param, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.apply_external_share_password ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling Files::SharingApi.apply_external_share_password"
      end
      # verify the required parameter 'external_share_request_param' is set
      if @api_client.config.client_side_validation && external_share_request_param.nil?
        fail ArgumentError, "Missing the required parameter 'external_share_request_param' when calling Files::SharingApi.apply_external_share_password"
      end
      # resource path
      local_var_path = '/api/2.0/files/share/{key}/password'.sub('{' + 'key' + '}', CGI.escape(key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(external_share_request_param)

      # return_type
      return_type = opts[:debug_return_type] || 'ExternalShareWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"Files::SharingApi.apply_external_share_password",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#apply_external_share_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the room or file owner
    # Hands the ownership of the listed rooms and files over to a single account, and returns the entries as they  look afterwards. Among folders only rooms are accepted - take their identifiers from  `GET api/2.0/files/rooms`; a plain folder is refused. A file is accepted only while it lies in the portal's  common section, so a file kept inside a room or in a personal section is refused as well, and so is a file  that is locked or currently open in the editor. The new owner has to be an active account that is allowed to  manage rooms, and a private room additionally requires that this account has already set up its encryption  keys; a deactivated account, a guest or a plain member is rejected. The caller must be the creator of every  listed room, or a portal administrator. The call mutates the entries one at a time and stops at the first item  it may not touch, leaving the entries already processed changed, so a partial answer is possible; an item  whose owner is already the target account is returned untouched, which makes a repeat safe. The previous owner  keeps access to a transferred room as its manager, while a transferred file is saved as a new version authored  by the new owner. An entry that lives on a connected third-party account is quietly left out.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-file-owner/
    # @param [Hash] opts the optional parameters
    # @option opts [ChangeOwnerRequestDto] :change_owner_request_dto 
    # @return [FileEntryBaseArrayWrapper]
    def change_file_owner(opts = {})
      data, _status_code, _headers = change_file_owner_with_http_info(opts)
      data
    end

    # Change the room or file owner
    # Hands the ownership of the listed rooms and files over to a single account, and returns the entries as they  look afterwards. Among folders only rooms are accepted - take their identifiers from  `GET api/2.0/files/rooms`; a plain folder is refused. A file is accepted only while it lies in the portal's  common section, so a file kept inside a room or in a personal section is refused as well, and so is a file  that is locked or currently open in the editor. The new owner has to be an active account that is allowed to  manage rooms, and a private room additionally requires that this account has already set up its encryption  keys; a deactivated account, a guest or a plain member is rejected. The caller must be the creator of every  listed room, or a portal administrator. The call mutates the entries one at a time and stops at the first item  it may not touch, leaving the entries already processed changed, so a partial answer is possible; an item  whose owner is already the target account is returned untouched, which makes a repeat safe. The previous owner  keeps access to a transferred room as its manager, while a transferred file is saved as a new version authored  by the new owner. An entry that lives on a connected third-party account is quietly left out.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-file-owner/
    # @param [Hash] opts the optional parameters
    # @option opts [ChangeOwnerRequestDto] :change_owner_request_dto 
    # @return [Array<(FileEntryBaseArrayWrapper, Integer, Hash)>] FileEntryBaseArrayWrapper data, response status code and response headers
    def change_file_owner_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.change_file_owner ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/owner'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'change_owner_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileEntryBaseArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SharingApi.change_file_owner",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#change_file_owner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file encryption keys
    # Answers with the encryption keys that open one file kept in a private room: one entry per member who holds  rights on the file and has published keys, each carrying that member's public key, and the caller's own entry  carrying the encrypted private half as well. The private half of another member is never handed out. A member  who has not published keys yet is left out of the answer altogether, which is how a client tells that this  member cannot open the file until keys are published through `POST api/2.0/privacyroom/keys`; a member who  holds the file only through a group is not reported either, because group entries are skipped. The file has to  lie in a private room or in the encrypted section - a file kept anywhere else carries no keys and is rejected  as an unsupported request. The caller needs read access to the file and is answered with 403 otherwise, and a  file that does not exist is answered as missing. The call is read-only, and the answer changes as soon as a  member publishes or rotates keys, so read it again rather than caching it for a later session.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-access/
    # @param file_id [Integer, String] The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
    # @param [Hash] opts the optional parameters
    # @return [EncryptionKeyArrayWrapper]
    def get_encryption_access(file_id, opts = {})
      data, _status_code, _headers = get_encryption_access_with_http_info(file_id, opts)
      data
    end

    # Get file encryption keys
    # Answers with the encryption keys that open one file kept in a private room: one entry per member who holds  rights on the file and has published keys, each carrying that member's public key, and the caller's own entry  carrying the encrypted private half as well. The private half of another member is never handed out. A member  who has not published keys yet is left out of the answer altogether, which is how a client tells that this  member cannot open the file until keys are published through `POST api/2.0/privacyroom/keys`; a member who  holds the file only through a group is not reported either, because group entries are skipped. The file has to  lie in a private room or in the encrypted section - a file kept anywhere else carries no keys and is rejected  as an unsupported request. The caller needs read access to the file and is answered with 403 otherwise, and a  file that does not exist is answered as missing. The call is read-only, and the answer changes as soon as a  member publishes or rotates keys, so read it again rather than caching it for a later session.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-access/
    # @param file_id [Integer, String] The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EncryptionKeyArrayWrapper, Integer, Hash)>] EncryptionKeyArrayWrapper data, response status code and response headers
    def get_encryption_access_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.get_encryption_access ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::SharingApi.get_encryption_access"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/publickeys'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
        :operation => :"Files::SharingApi.get_encryption_access",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#get_encryption_access\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resolve an external share link
    # Resolves the token of an external share link into the room or file it points at, and reports the outcome of  validating the link. The token is the `requestToken` of a link returned by the link operations of an entry,  such as `GET api/2.0/files/file/{id}/link` or `GET api/2.0/files/rooms/{id}/link`. The call needs no  authentication and answers a refused link in the `status` field rather than with an HTTP error, so that field  has to be read before anything else: a token that matches no link, and a link whose entry has been archived or  moved to the trash, both resolve as invalid; a link past its expiration date resolves as expired; a  password-protected link resolves as requiring a password, which is then submitted through  `POST api/2.0/files/share/{key}/password`; and a public link resolves as denied when the portal forbids  sharing with people outside it. The call is not read-only: for a signed-in caller the first successful  resolution puts the entry into the account's own lists, and for a visitor without an account it opens an  anonymous session that later requests with the same token reuse. Pass `fileId` or `folderId` to have an entry  inside the link's target echoed back.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-share-data/
    # @param key [String] The token of the external share link, taken verbatim from the `requestToken` of a link returned by the link  operations of an entry, such as `GET api/2.0/files/rooms/{id}/link`. It is an opaque URL-safe string that  carries the link's own identifier, so it cannot be assembled by hand.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_id A file inside the room the link points at, echoed back in the answer's entity fields so a client can show what  was opened. The value is ignored when the file does not sit under the link's target, and passing it together  with a folder has no effect - the file wins.
    # @option opts [String] :folder_id A folder inside the room the link points at, echoed back in the answer's entity fields. It is ignored when the  folder does not sit under the link's target, and when a file is passed as well.
    # @return [ExternalShareWrapper]
    def get_external_share_data(key, opts = {})
      data, _status_code, _headers = get_external_share_data_with_http_info(key, opts)
      data
    end

    # Resolve an external share link
    # Resolves the token of an external share link into the room or file it points at, and reports the outcome of  validating the link. The token is the `requestToken` of a link returned by the link operations of an entry,  such as `GET api/2.0/files/file/{id}/link` or `GET api/2.0/files/rooms/{id}/link`. The call needs no  authentication and answers a refused link in the `status` field rather than with an HTTP error, so that field  has to be read before anything else: a token that matches no link, and a link whose entry has been archived or  moved to the trash, both resolve as invalid; a link past its expiration date resolves as expired; a  password-protected link resolves as requiring a password, which is then submitted through  `POST api/2.0/files/share/{key}/password`; and a public link resolves as denied when the portal forbids  sharing with people outside it. The call is not read-only: for a signed-in caller the first successful  resolution puts the entry into the account's own lists, and for a visitor without an account it opens an  anonymous session that later requests with the same token reuse. Pass `fileId` or `folderId` to have an entry  inside the link's target echoed back.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-share-data/
    # @param key [String] The token of the external share link, taken verbatim from the `requestToken` of a link returned by the link  operations of an entry, such as `GET api/2.0/files/rooms/{id}/link`. It is an opaque URL-safe string that  carries the link's own identifier, so it cannot be assembled by hand.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_id A file inside the room the link points at, echoed back in the answer's entity fields so a client can show what  was opened. The value is ignored when the file does not sit under the link's target, and passing it together  with a folder has no effect - the file wins.
    # @option opts [String] :folder_id A folder inside the room the link points at, echoed back in the answer's entity fields. It is ignored when the  folder does not sit under the link's target, and when a file is passed as well.
    # @return [Array<(ExternalShareWrapper, Integer, Hash)>] ExternalShareWrapper data, response status code and response headers
    def get_external_share_data_with_http_info(key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.get_external_share_data ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling Files::SharingApi.get_external_share_data"
      end
      # resource path
      local_var_path = '/api/2.0/files/share/{key}'.sub('{' + 'key' + '}', CGI.escape(key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fileId'] = opts[:'file_id'] if !opts[:'file_id'].nil?
      query_params[:'folderId'] = opts[:'folder_id'] if !opts[:'folder_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ExternalShareWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"Files::SharingApi.get_external_share_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#get_external_share_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file sharing rights
    # Lists the accounts and groups that hold rights on one file, one entry per subject, with the level each of them  has, whether the caller may still change that level, and which of them owns the file. The owner comes first,  then room managers, groups, ordinary members, guests, and last the accounts that have not accepted their  invitation yet, each of those ranked by access level and by name. External links are left out and are listed  by `GET api/2.0/files/file/{id}/links` instead, while a PDF form kept in a form-filling room also reports the  link of that room, because the form is filled out through it. `startIndex` and `count` page through the  subjects, and their total number is reported in the response headers rather than in the body. Listing takes  the right to change the sharing of the file, which its creator, the manager of its room and a portal  administrator acting as room manager have, while inside a public room reading the file is enough; a member who  may read but not share is answered with an empty list although the header still counts the subjects, and a  caller with no access, a guest included, is refused. A file that does not exist, or was deleted permanently,  is answered as missing. The call is read-only; for several entries at once use `POST api/2.0/files/share`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/
    # @param id [Integer, String] The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it.
    # @option opts [Integer] :start_index How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page.
    # @return [FileShareArrayWrapper]
    def get_file_security_info(id, opts = {})
      data, _status_code, _headers = get_file_security_info_with_http_info(id, opts)
      data
    end

    # Get file sharing rights
    # Lists the accounts and groups that hold rights on one file, one entry per subject, with the level each of them  has, whether the caller may still change that level, and which of them owns the file. The owner comes first,  then room managers, groups, ordinary members, guests, and last the accounts that have not accepted their  invitation yet, each of those ranked by access level and by name. External links are left out and are listed  by `GET api/2.0/files/file/{id}/links` instead, while a PDF form kept in a form-filling room also reports the  link of that room, because the form is filled out through it. `startIndex` and `count` page through the  subjects, and their total number is reported in the response headers rather than in the body. Listing takes  the right to change the sharing of the file, which its creator, the manager of its room and a portal  administrator acting as room manager have, while inside a public room reading the file is enough; a member who  may read but not share is answered with an empty list although the header still counts the subjects, and a  caller with no access, a guest included, is refused. A file that does not exist, or was deleted permanently,  is answered as missing. The call is read-only; for several entries at once use `POST api/2.0/files/share`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/
    # @param id [Integer, String] The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it.
    # @option opts [Integer] :start_index How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page.
    # @return [Array<(FileShareArrayWrapper, Integer, Hash)>] FileShareArrayWrapper data, response status code and response headers
    def get_file_security_info_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.get_file_security_info ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::SharingApi.get_file_security_info"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::SharingApi.get_file_security_info, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::SharingApi.get_file_security_info, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/file/{id}/share'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?

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
        :operation => :"Files::SharingApi.get_file_security_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#get_file_security_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get folder sharing rights
    # Lists the accounts and groups that hold rights on one folder or room, one entry per subject, with the level  each of them has, whether the caller may still change that level, and which of them owns the entry. The owner  comes first, then room managers, groups, ordinary members, guests, and last the accounts that have not  accepted their invitation yet, each of those ranked by access level and by name. External links are left out  and are listed by `GET api/2.0/files/folder/{id}/links` instead. `startIndex` and `count` page through the  subjects, and their total number is reported in the response headers rather than in the body. For a room, and  for a folder inside a public room, read access is enough; any other folder is listed only to a caller who may  change its sharing, which the manager of its room and a portal administrator acting as room manager may, and a  member who may only read such a folder is answered with an empty list although the header still counts the  subjects. A caller with no access, a guest included, is refused, and a folder that does not exist is answered  as missing. The call is read-only. For a room prefer `GET api/2.0/files/rooms/{id}/share`, which filters the  same subjects by kind and by name.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/
    # @param id [Integer, String] The folder or room the operation addresses. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count How many entries at most to answer with, in the operations of this folder that return a list; an operation  that answers with a single object is not affected by it.
    # @option opts [Integer] :start_index How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page.
    # @return [FileShareArrayWrapper]
    def get_folder_security_info(id, opts = {})
      data, _status_code, _headers = get_folder_security_info_with_http_info(id, opts)
      data
    end

    # Get folder sharing rights
    # Lists the accounts and groups that hold rights on one folder or room, one entry per subject, with the level  each of them has, whether the caller may still change that level, and which of them owns the entry. The owner  comes first, then room managers, groups, ordinary members, guests, and last the accounts that have not  accepted their invitation yet, each of those ranked by access level and by name. External links are left out  and are listed by `GET api/2.0/files/folder/{id}/links` instead. `startIndex` and `count` page through the  subjects, and their total number is reported in the response headers rather than in the body. For a room, and  for a folder inside a public room, read access is enough; any other folder is listed only to a caller who may  change its sharing, which the manager of its room and a portal administrator acting as room manager may, and a  member who may only read such a folder is answered with an empty list although the header still counts the  subjects. A caller with no access, a guest included, is refused, and a folder that does not exist is answered  as missing. The call is read-only. For a room prefer `GET api/2.0/files/rooms/{id}/share`, which filters the  same subjects by kind and by name.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/
    # @param id [Integer, String] The folder or room the operation addresses. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count How many entries at most to answer with, in the operations of this folder that return a list; an operation  that answers with a single object is not affected by it.
    # @option opts [Integer] :start_index How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page.
    # @return [Array<(FileShareArrayWrapper, Integer, Hash)>] FileShareArrayWrapper data, response status code and response headers
    def get_folder_security_info_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.get_folder_security_info ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::SharingApi.get_folder_security_info"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::SharingApi.get_folder_security_info, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::SharingApi.get_folder_security_info, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/folder/{id}/share'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?

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
        :operation => :"Files::SharingApi.get_folder_security_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#get_folder_security_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file access of group members
    # Lists the members of one portal group together with the access each of them has on a file that group was  granted rights to: `groupAccess` is the level the group itself carries, `userAccess` is the level set on that  member alone, `overridden` says which of the two applies, `owner` marks the member who created the file, and  `canEditAccess` says whether the caller may still change that member's level. Take the group identifier from  the group entries of `GET api/2.0/files/file/{id}/share`. `startIndex` and `count` page through the members,  `filterValue` keeps only those whose first name, last name or email contains the value - the comparison is  made in lower case, so an uppercase value matches nothing - and the number of members is reported in the  response headers. Members come back ordered by first name. A group that holds no rights on this file, a file  the caller cannot read and a file that does not exist are all answered with an empty list rather than an  error, so an empty answer does not mean that the group has no members. A guest is refused. The call is  read-only.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/
    # @param file_id [Integer, String] The file whose access is being read. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.
    # @param group_id [String] The group whose members are listed. Take it from the entries of `GET api/2.0/files/file/{id}/share` that stand  for a group; a group that holds no rights on this file is answered with an empty list.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count How many members at most to answer with.
    # @option opts [Integer] :start_index How many members to skip before answering, used together with `count` to page through a large group.
    # @option opts [String] :filter_value Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing.
    # @return [GroupMemberSecurityRequestArrayWrapper]
    def get_groups_members_with_file_security(file_id, group_id, opts = {})
      data, _status_code, _headers = get_groups_members_with_file_security_with_http_info(file_id, group_id, opts)
      data
    end

    # Get file access of group members
    # Lists the members of one portal group together with the access each of them has on a file that group was  granted rights to: `groupAccess` is the level the group itself carries, `userAccess` is the level set on that  member alone, `overridden` says which of the two applies, `owner` marks the member who created the file, and  `canEditAccess` says whether the caller may still change that member's level. Take the group identifier from  the group entries of `GET api/2.0/files/file/{id}/share`. `startIndex` and `count` page through the members,  `filterValue` keeps only those whose first name, last name or email contains the value - the comparison is  made in lower case, so an uppercase value matches nothing - and the number of members is reported in the  response headers. Members come back ordered by first name. A group that holds no rights on this file, a file  the caller cannot read and a file that does not exist are all answered with an empty list rather than an  error, so an empty answer does not mean that the group has no members. A guest is refused. The call is  read-only.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/
    # @param file_id [Integer, String] The file whose access is being read. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.
    # @param group_id [String] The group whose members are listed. Take it from the entries of `GET api/2.0/files/file/{id}/share` that stand  for a group; a group that holds no rights on this file is answered with an empty list.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count How many members at most to answer with.
    # @option opts [Integer] :start_index How many members to skip before answering, used together with `count` to page through a large group.
    # @option opts [String] :filter_value Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing.
    # @return [Array<(GroupMemberSecurityRequestArrayWrapper, Integer, Hash)>] GroupMemberSecurityRequestArrayWrapper data, response status code and response headers
    def get_groups_members_with_file_security_with_http_info(file_id, group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.get_groups_members_with_file_security ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::SharingApi.get_groups_members_with_file_security"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling Files::SharingApi.get_groups_members_with_file_security"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::SharingApi.get_groups_members_with_file_security, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::SharingApi.get_groups_members_with_file_security, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/group/{groupId}/share'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s)).sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupMemberSecurityRequestArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SharingApi.get_groups_members_with_file_security",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#get_groups_members_with_file_security\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get folder access of group members
    # Lists the members of one portal group together with the access each of them has on a folder or room that group  was granted rights to: `groupAccess` is the level the group itself carries, `userAccess` is the level set on  that member alone, `overridden` says which of the two applies, `owner` marks the member who created the entry,  and `canEditAccess` says whether the caller may still change that member's level. Take the group identifier  from the group entries of `GET api/2.0/files/folder/{id}/share`. `startIndex` and `count` page through the  members, `filterValue` keeps only those whose first name, last name or email contains the value - the  comparison is made in lower case, so an uppercase value matches nothing - and the number of members is  reported in the response headers. Members come back ordered by first name. A group that holds no rights on  this folder, a folder the caller cannot read and a folder that does not exist are all answered with an empty  list rather than an error, so an empty answer does not mean that the group has no members. A guest is refused.  The call is read-only.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/
    # @param folder_id [Integer, String] The folder or room whose access is being read. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.
    # @param group_id [String] The group whose members are listed. Take it from the entries of `GET api/2.0/files/folder/{id}/share` that  stand for a group; a group that holds no rights on this folder is answered with an empty list.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count How many members at most to answer with.
    # @option opts [Integer] :start_index How many members to skip before answering, used together with `count` to page through a large group.
    # @option opts [String] :filter_value Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing.
    # @return [GroupMemberSecurityRequestArrayWrapper]
    def get_groups_members_with_folder_security(folder_id, group_id, opts = {})
      data, _status_code, _headers = get_groups_members_with_folder_security_with_http_info(folder_id, group_id, opts)
      data
    end

    # Get folder access of group members
    # Lists the members of one portal group together with the access each of them has on a folder or room that group  was granted rights to: `groupAccess` is the level the group itself carries, `userAccess` is the level set on  that member alone, `overridden` says which of the two applies, `owner` marks the member who created the entry,  and `canEditAccess` says whether the caller may still change that member's level. Take the group identifier  from the group entries of `GET api/2.0/files/folder/{id}/share`. `startIndex` and `count` page through the  members, `filterValue` keeps only those whose first name, last name or email contains the value - the  comparison is made in lower case, so an uppercase value matches nothing - and the number of members is  reported in the response headers. Members come back ordered by first name. A group that holds no rights on  this folder, a folder the caller cannot read and a folder that does not exist are all answered with an empty  list rather than an error, so an empty answer does not mean that the group has no members. A guest is refused.  The call is read-only.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/
    # @param folder_id [Integer, String] The folder or room whose access is being read. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.
    # @param group_id [String] The group whose members are listed. Take it from the entries of `GET api/2.0/files/folder/{id}/share` that  stand for a group; a group that holds no rights on this folder is answered with an empty list.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count How many members at most to answer with.
    # @option opts [Integer] :start_index How many members to skip before answering, used together with `count` to page through a large group.
    # @option opts [String] :filter_value Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing.
    # @return [Array<(GroupMemberSecurityRequestArrayWrapper, Integer, Hash)>] GroupMemberSecurityRequestArrayWrapper data, response status code and response headers
    def get_groups_members_with_folder_security_with_http_info(folder_id, group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.get_groups_members_with_folder_security ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::SharingApi.get_groups_members_with_folder_security"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling Files::SharingApi.get_groups_members_with_folder_security"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::SharingApi.get_groups_members_with_folder_security, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::SharingApi.get_groups_members_with_folder_security, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/group/{groupId}/share'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s)).sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupMemberSecurityRequestArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SharingApi.get_groups_members_with_folder_security",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#get_groups_members_with_folder_security\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get sharing rights in batch
    # Returns who has access to the files and folders listed in the request, merged into one list of subjects, and  is the batch counterpart of `GET api/2.0/files/file/{id}/share` and `GET api/2.0/files/rooms/{id}/share`.  Identifiers come from any listing operation, such as `GET api/2.0/files/{folderId}`. The caller needs read  access to every listed entry: a single entry it cannot read makes the whole call fail instead of dropping that  entry, so the list has to be filtered beforehand. Identifiers that match nothing are skipped without an error,  and an empty list of identifiers gives an empty answer. The call is read-only. Each account or group appears  once: the caller's own record comes first, the owner's record second, and the rest are ordered by display  name. When the same subject holds different rights on the listed entries, its access is reported as the  `Varies` value instead of a real level, which means the entries have to be inspected one by one to see the  difference. Records that describe external links are included only for a caller that is allowed to read the  links of the entry.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [FileShareArrayWrapper]
    def get_security_info(opts = {})
      data, _status_code, _headers = get_security_info_with_http_info(opts)
      data
    end

    # Get sharing rights in batch
    # Returns who has access to the files and folders listed in the request, merged into one list of subjects, and  is the batch counterpart of `GET api/2.0/files/file/{id}/share` and `GET api/2.0/files/rooms/{id}/share`.  Identifiers come from any listing operation, such as `GET api/2.0/files/{folderId}`. The caller needs read  access to every listed entry: a single entry it cannot read makes the whole call fail instead of dropping that  entry, so the list has to be filtered beforehand. Identifiers that match nothing are skipped without an error,  and an empty list of identifiers gives an empty answer. The call is read-only. Each account or group appears  once: the caller's own record comes first, the owner's record second, and the rest are ordered by display  name. When the same subject holds different rights on the listed entries, its access is reported as the  `Varies` value instead of a real level, which means the entries have to be inspected one by one to see the  difference. Records that describe external links are included only for a caller that is allowed to read the  links of the entry.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [Array<(FileShareArrayWrapper, Integer, Hash)>] FileShareArrayWrapper data, response status code and response headers
    def get_security_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.get_security_info ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/share'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'base_batch_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SharingApi.get_security_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#get_security_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get users to mention in a file
    # Lists the portal members who can read the file, which is what an editor client offers when somebody types a  mention. The set holds the readers of the file plus everyone who reads it by role rather than by share - the  portal owner, the DocSpace administrators and the author of the file - while the caller themselves, the  subjects standing behind external links and deactivated accounts are left out. It is ordered by display name  as the portal renders it. A guest receives a single entry, the owner of the file, because a guest is not a  portal member and may not learn who else works on the document. The caller needs read access to the file, and  an unknown file id is reported as missing. The call only reads. A caller who reached the file through an  external link instead of an account is answered with nothing at all. For the users to offer when protecting a  document use `GET api/2.0/files/file/{fileId}/protectusers`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/
    # @param file_id [Integer, String] The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
    # @param [Hash] opts the optional parameters
    # @return [MentionWrapperArrayWrapper]
    def get_shared_users(file_id, opts = {})
      data, _status_code, _headers = get_shared_users_with_http_info(file_id, opts)
      data
    end

    # Get users to mention in a file
    # Lists the portal members who can read the file, which is what an editor client offers when somebody types a  mention. The set holds the readers of the file plus everyone who reads it by role rather than by share - the  portal owner, the DocSpace administrators and the author of the file - while the caller themselves, the  subjects standing behind external links and deactivated accounts are left out. It is ordered by display name  as the portal renders it. A guest receives a single entry, the owner of the file, because a guest is not a  portal member and may not learn who else works on the document. The caller needs read access to the file, and  an unknown file id is reported as missing. The call only reads. A caller who reached the file through an  external link instead of an account is answered with nothing at all. For the users to offer when protecting a  document use `GET api/2.0/files/file/{fileId}/protectusers`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/
    # @param file_id [Integer, String] The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MentionWrapperArrayWrapper, Integer, Hash)>] MentionWrapperArrayWrapper data, response status code and response headers
    def get_shared_users_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.get_shared_users ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::SharingApi.get_shared_users"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/sharedusers'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'MentionWrapperArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SharingApi.get_shared_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#get_shared_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove sharing rights in batch
    # Revokes the access of every account and group on the files and folders listed in the request, and clears the  entries from the caller's own favorites, recent and unread marks. The owner's own record is kept, since  removing it would take the entry away from the account that owns it, and external links survive untouched -  remove those through the link operations of the entry. The caller must be allowed to change the access of each  entry, which means the creator of the room, a portal administrator, or a member with the rights to manage it;  a caller whose only access came through an external link may use this call to drop the entry from its own  list, while a directly invited member or an unrelated account is refused. The answer is always `true` and  identifiers that match nothing are skipped silently, so a successful answer is not proof that anything was  revoked - read the rights back with `POST api/2.0/files/share`. The call is destructive and safe to repeat. To  take the rights of one account away instead of all of them, call `PUT api/2.0/files/share` with that account's  access set to `None`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [BooleanWrapper]
    def remove_security_info(opts = {})
      data, _status_code, _headers = remove_security_info_with_http_info(opts)
      data
    end

    # Remove sharing rights in batch
    # Revokes the access of every account and group on the files and folders listed in the request, and clears the  entries from the caller's own favorites, recent and unread marks. The owner's own record is kept, since  removing it would take the entry away from the account that owns it, and external links survive untouched -  remove those through the link operations of the entry. The caller must be allowed to change the access of each  entry, which means the creator of the room, a portal administrator, or a member with the rights to manage it;  a caller whose only access came through an external link may use this call to drop the entry from its own  list, while a directly invited member or an unrelated account is refused. The answer is always `true` and  identifiers that match nothing are skipped silently, so a successful answer is not proof that anything was  revoked - read the rights back with `POST api/2.0/files/share`. The call is destructive and safe to repeat. To  take the rights of one account away instead of all of them, call `PUT api/2.0/files/share` with that account's  access set to `None`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def remove_security_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.remove_security_info ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/share'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'base_batch_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SharingApi.remove_security_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#remove_security_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Notify mentioned users
    # Emails the people named in `emails` that they were mentioned in a file, with a link that opens the file at the  place the mention sits when `actionLink` carries the anchor the editor produced. Only addresses that belong to  portal accounts are notified: an address that belongs to nobody is skipped, and the note is cut to its first  200 characters in the mail, while a `message` longer than the field allows is refused with 400. The answer is  usually empty: the access list of the file comes back when the file is encrypted, or when one of the addresses  belongs to nobody and the caller may share the file - that is then the cue to invite that person with  `PUT api/2.0/files/file/{id}/share`. The caller needs comment rights, which the creator of the file, the  manager of its room and a member invited to comment, review or edit have, while a guest or a member without  access is refused with 403; a file that does not exist answers with 404 and a file in the trash is refused.  The operation is rate-limited and answers 429 once the caller sends too many notifications. A delivery failure  is swallowed, so 200 does not prove that the mail left the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/
    # @param file_id [Integer, String] The file the mention was made in. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @option opts [MentionMessageWrapper] :mention_message_wrapper The notification to send.
    # @return [AceShortWrapperArrayWrapper]
    def send_editor_notify(file_id, opts = {})
      data, _status_code, _headers = send_editor_notify_with_http_info(file_id, opts)
      data
    end

    # Notify mentioned users
    # Emails the people named in `emails` that they were mentioned in a file, with a link that opens the file at the  place the mention sits when `actionLink` carries the anchor the editor produced. Only addresses that belong to  portal accounts are notified: an address that belongs to nobody is skipped, and the note is cut to its first  200 characters in the mail, while a `message` longer than the field allows is refused with 400. The answer is  usually empty: the access list of the file comes back when the file is encrypted, or when one of the addresses  belongs to nobody and the caller may share the file - that is then the cue to invite that person with  `PUT api/2.0/files/file/{id}/share`. The caller needs comment rights, which the creator of the file, the  manager of its room and a member invited to comment, review or edit have, while a guest or a member without  access is refused with 403; a file that does not exist answers with 404 and a file in the trash is refused.  The operation is rate-limited and answers 429 once the caller sends too many notifications. A delivery failure  is swallowed, so 200 does not prove that the mail left the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/
    # @param file_id [Integer, String] The file the mention was made in. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @option opts [MentionMessageWrapper] :mention_message_wrapper The notification to send.
    # @return [Array<(AceShortWrapperArrayWrapper, Integer, Hash)>] AceShortWrapperArrayWrapper data, response status code and response headers
    def send_editor_notify_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.send_editor_notify ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::SharingApi.send_editor_notify"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/sendeditornotify'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'mention_message_wrapper'])

      # return_type
      return_type = opts[:debug_return_type] || 'AceShortWrapperArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SharingApi.send_editor_notify",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#send_editor_notify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Share a file
    # Grants, changes or withdraws the rights of the listed accounts and groups on one file, and answers with the  rights those subjects hold afterwards. Every element of `share` names a subject and the level it is to get,  and the level that denies everything takes the access away instead; an empty `share` changes nothing and is  answered with an empty list. A subject the caller is not allowed to share with, such as a guest who belongs to  another member, is dropped without an error, so compare the answer with what was sent. With `notify` set, each  account named is emailed about the access it received and `sharingMessage` is put into that mail with its  markup stripped, while a message longer than the field allows is rejected as an invalid request. The caller  has to be allowed to change the sharing of the file, which its creator, the manager of the room it lies in and  a portal administrator acting as room manager are; anyone else, a guest and a member with read access  included, is refused. The call is mutating and safe to repeat. For several files and folders in one request  use `PUT api/2.0/files/share`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/
    # @param id [Integer, String] The file whose sharing is being changed. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.
    # @param security_info_simple_request_dto [SecurityInfoSimpleRequestDto] The rights to apply to the file, and whether to announce them by mail.
    # @param [Hash] opts the optional parameters
    # @return [FileShareArrayWrapper]
    def set_file_security_info(id, security_info_simple_request_dto, opts = {})
      data, _status_code, _headers = set_file_security_info_with_http_info(id, security_info_simple_request_dto, opts)
      data
    end

    # Share a file
    # Grants, changes or withdraws the rights of the listed accounts and groups on one file, and answers with the  rights those subjects hold afterwards. Every element of `share` names a subject and the level it is to get,  and the level that denies everything takes the access away instead; an empty `share` changes nothing and is  answered with an empty list. A subject the caller is not allowed to share with, such as a guest who belongs to  another member, is dropped without an error, so compare the answer with what was sent. With `notify` set, each  account named is emailed about the access it received and `sharingMessage` is put into that mail with its  markup stripped, while a message longer than the field allows is rejected as an invalid request. The caller  has to be allowed to change the sharing of the file, which its creator, the manager of the room it lies in and  a portal administrator acting as room manager are; anyone else, a guest and a member with read access  included, is refused. The call is mutating and safe to repeat. For several files and folders in one request  use `PUT api/2.0/files/share`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/
    # @param id [Integer, String] The file whose sharing is being changed. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.
    # @param security_info_simple_request_dto [SecurityInfoSimpleRequestDto] The rights to apply to the file, and whether to announce them by mail.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileShareArrayWrapper, Integer, Hash)>] FileShareArrayWrapper data, response status code and response headers
    def set_file_security_info_with_http_info(id, security_info_simple_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.set_file_security_info ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::SharingApi.set_file_security_info"
      end
      # verify the required parameter 'security_info_simple_request_dto' is set
      if @api_client.config.client_side_validation && security_info_simple_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'security_info_simple_request_dto' when calling Files::SharingApi.set_file_security_info"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{id}/share'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(security_info_simple_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SharingApi.set_file_security_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#set_file_security_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Share a folder
    # Grants, changes or withdraws the rights of the listed accounts and groups on one folder, and answers with the  rights those subjects hold afterwards. Every element of `share` names a subject and the level it is to get,  and the level that denies everything takes the access away instead; an empty `share` changes nothing and is  answered with an empty list. A subject the caller is not allowed to share with, such as a guest who belongs to  another member, is dropped without an error. With `notify` set, each account named is emailed about the access  it received and `sharingMessage` is put into that mail with its markup stripped, while a message longer than  the field allows is rejected as an invalid request. The caller has to be allowed to change the sharing of the  folder, which the manager of the room it belongs to and a portal administrator acting as room manager are;  anyone else, a guest and a member with read access included, is refused. The call is mutating and safe to  repeat. For a room use `PUT api/2.0/files/rooms/{id}/share`, which invites people by email as well.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/
    # @param id [Integer, String] The folder whose sharing is being changed. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.
    # @param security_info_simple_request_dto [SecurityInfoSimpleRequestDto] The rights to apply to the folder, and whether to announce them by mail.
    # @param [Hash] opts the optional parameters
    # @return [FileShareArrayWrapper]
    def set_folder_security_info(id, security_info_simple_request_dto, opts = {})
      data, _status_code, _headers = set_folder_security_info_with_http_info(id, security_info_simple_request_dto, opts)
      data
    end

    # Share a folder
    # Grants, changes or withdraws the rights of the listed accounts and groups on one folder, and answers with the  rights those subjects hold afterwards. Every element of `share` names a subject and the level it is to get,  and the level that denies everything takes the access away instead; an empty `share` changes nothing and is  answered with an empty list. A subject the caller is not allowed to share with, such as a guest who belongs to  another member, is dropped without an error. With `notify` set, each account named is emailed about the access  it received and `sharingMessage` is put into that mail with its markup stripped, while a message longer than  the field allows is rejected as an invalid request. The caller has to be allowed to change the sharing of the  folder, which the manager of the room it belongs to and a portal administrator acting as room manager are;  anyone else, a guest and a member with read access included, is refused. The call is mutating and safe to  repeat. For a room use `PUT api/2.0/files/rooms/{id}/share`, which invites people by email as well.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/
    # @param id [Integer, String] The folder whose sharing is being changed. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.
    # @param security_info_simple_request_dto [SecurityInfoSimpleRequestDto] The rights to apply to the folder, and whether to announce them by mail.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileShareArrayWrapper, Integer, Hash)>] FileShareArrayWrapper data, response status code and response headers
    def set_folder_security_info_with_http_info(id, security_info_simple_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.set_folder_security_info ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::SharingApi.set_folder_security_info"
      end
      # verify the required parameter 'security_info_simple_request_dto' is set
      if @api_client.config.client_side_validation && security_info_simple_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'security_info_simple_request_dto' when calling Files::SharingApi.set_folder_security_info"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{id}/share'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(security_info_simple_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SharingApi.set_folder_security_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#set_folder_security_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set sharing rights in batch
    # Grants, changes or withdraws the access of the listed accounts and groups on every file and folder named in  the request at once, and returns the resulting rights. Entry identifiers come from a listing operation, and  the accounts and groups come from the portal's own account and group lists; an access of `None` withdraws the  rights instead of granting them. The caller must be allowed to change the access of every listed entry - the  creator of the room, a member with the rights to manage it, or a portal administrator - and a read-only member  or a guest is refused even when the payload changes nothing. A subject the caller is not allowed to share  with, such as a guest that belongs to another member, is skipped without an error, and an empty `share`  collection makes the call do nothing and answer with an empty list. Repeating the same request leaves the same  rights in place. The answer holds one record per listed subject for each entry that was actually processed, so  it is shorter than the request when something was skipped and worth comparing against it. For a single room  prefer `PUT api/2.0/files/rooms/{id}/share`, which also invites members by email.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [SecurityInfoRequestDto] :security_info_request_dto 
    # @return [FileShareArrayWrapper]
    def set_security_info(opts = {})
      data, _status_code, _headers = set_security_info_with_http_info(opts)
      data
    end

    # Set sharing rights in batch
    # Grants, changes or withdraws the access of the listed accounts and groups on every file and folder named in  the request at once, and returns the resulting rights. Entry identifiers come from a listing operation, and  the accounts and groups come from the portal's own account and group lists; an access of `None` withdraws the  rights instead of granting them. The caller must be allowed to change the access of every listed entry - the  creator of the room, a member with the rights to manage it, or a portal administrator - and a read-only member  or a guest is refused even when the payload changes nothing. A subject the caller is not allowed to share  with, such as a guest that belongs to another member, is skipped without an error, and an empty `share`  collection makes the call do nothing and answer with an empty list. Repeating the same request leaves the same  rights in place. The answer holds one record per listed subject for each entry that was actually processed, so  it is shorter than the request when something was skipped and worth comparing against it. For a single room  prefer `PUT api/2.0/files/rooms/{id}/share`, which also invites members by email.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [SecurityInfoRequestDto] :security_info_request_dto 
    # @return [Array<(FileShareArrayWrapper, Integer, Hash)>] FileShareArrayWrapper data, response status code and response headers
    def set_security_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SharingApi.set_security_info ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/share'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'security_info_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SharingApi.set_security_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SharingApi#set_security_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

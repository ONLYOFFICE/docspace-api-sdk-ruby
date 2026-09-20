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
    class OperationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Abort an upload session
    # Cancels a chunked upload opened with `POST api/2.0/files/{folderId}/session` and discards the parts already  received, so nothing of it reaches the folder. The session is found by the id in the path alone: the folder  segment is not matched against it, and neither is the account that opened it, which makes the id the only  secret protecting the transfer. The call is destructive and is not safe to repeat, because the record is gone  afterwards: a second attempt, a session already closed by  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize` and a session that expired after twelve hours of  silence all fail rather than answer as missing. Finalizing removes the session too, so there is nothing left  to abort once the file exists. The answer carries no body. An upload that is simply abandoned needs no call at  all, since the session and its buffered parts are dropped when it expires.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session/
    # @param session_id [String] The session to cancel, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.
    # @param folder_id [Integer] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def abort_upload_session(session_id, folder_id, opts = {})
      abort_upload_session_with_http_info(session_id, folder_id, opts)
      nil
    end

    # Abort an upload session
    # Cancels a chunked upload opened with `POST api/2.0/files/{folderId}/session` and discards the parts already  received, so nothing of it reaches the folder. The session is found by the id in the path alone: the folder  segment is not matched against it, and neither is the account that opened it, which makes the id the only  secret protecting the transfer. The call is destructive and is not safe to repeat, because the record is gone  afterwards: a second attempt, a session already closed by  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize` and a session that expired after twelve hours of  silence all fail rather than answer as missing. Finalizing removes the session too, so there is nothing left  to abort once the file exists. The answer carries no body. An upload that is simply abandoned needs no call at  all, since the session and its buffered parts are dropped when it expires.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session/
    # @param session_id [String] The session to cancel, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.
    # @param folder_id [Integer] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def abort_upload_session_with_http_info(session_id, folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.abort_upload_session ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling Files::OperationsApi.abort_upload_session"
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::OperationsApi.abort_upload_session"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/session/{sessionId}'.sub('{' + 'sessionId' + '}', CGI.escape(session_id.to_s)).sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
        :operation => :"Files::OperationsApi.abort_upload_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#abort_upload_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Abort an upload session (third-party storage)
    # Cancels a chunked upload opened with `POST api/2.0/files/{folderId}/session` and discards the parts already  received, so nothing of it reaches the folder. The session is found by the id in the path alone: the folder  segment is not matched against it, and neither is the account that opened it, which makes the id the only  secret protecting the transfer. The call is destructive and is not safe to repeat, because the record is gone  afterwards: a second attempt, a session already closed by  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize` and a session that expired after twelve hours of  silence all fail rather than answer as missing. Finalizing removes the session too, so there is nothing left  to abort once the file exists. The answer carries no body. An upload that is simply abandoned needs no call at  all, since the session and its buffered parts are dropped when it expires.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session-third-party/
    # @param session_id [String] The session to cancel, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.
    # @param folder_id [String] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def abort_upload_session_third_party(session_id, folder_id, opts = {})
      abort_upload_session_third_party_with_http_info(session_id, folder_id, opts)
      nil
    end

    # Abort an upload session (third-party storage)
    # Cancels a chunked upload opened with `POST api/2.0/files/{folderId}/session` and discards the parts already  received, so nothing of it reaches the folder. The session is found by the id in the path alone: the folder  segment is not matched against it, and neither is the account that opened it, which makes the id the only  secret protecting the transfer. The call is destructive and is not safe to repeat, because the record is gone  afterwards: a second attempt, a session already closed by  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize` and a session that expired after twelve hours of  silence all fail rather than answer as missing. Finalizing removes the session too, so there is nothing left  to abort once the file exists. The answer carries no body. An upload that is simply abandoned needs no call at  all, since the session and its buffered parts are dropped when it expires.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session-third-party/
    # @param session_id [String] The session to cancel, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.
    # @param folder_id [String] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def abort_upload_session_third_party_with_http_info(session_id, folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.abort_upload_session_third_party ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling Files::OperationsApi.abort_upload_session_third_party"
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::OperationsApi.abort_upload_session_third_party"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/session/{sessionId}'.sub('{' + 'sessionId' + '}', CGI.escape(session_id.to_s)).sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
        :operation => :"Files::OperationsApi.abort_upload_session_third_party",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#abort_upload_session_third_party\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add favorite files and folders
    # Marks the listed files and folders as favorites for the calling account. The favorite list is personal:  nothing changes for other members, and the entries stay where they are stored. Read access to each item is  enough, so a room member with view-only rights and a guest may call it. Items the caller cannot read, ids that  do not exist and encrypted files of a private room are skipped without a word, and the answer is `true` even  when nothing was marked, so read the outcome back from `GET api/2.0/files/@favorites` instead of trusting it.  Numeric ids address entries stored in the portal itself, string ids entries on a connected third-party  account, and both kinds may be sent in one request. The call is mutating but safe to repeat: an item already  marked stays listed once. An entry moved to the Trash keeps its mark and is left out of the listing until it  is restored. `returnSingleOperation` arrives with the shared body and does nothing here. Use  `DELETE api/2.0/files/favorites` to undo, or `GET api/2.0/files/favorites/{fileId}` for a single file.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-favorites/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [BooleanWrapper]
    def add_favorites(opts = {})
      data, _status_code, _headers = add_favorites_with_http_info(opts)
      data
    end

    # Add favorite files and folders
    # Marks the listed files and folders as favorites for the calling account. The favorite list is personal:  nothing changes for other members, and the entries stay where they are stored. Read access to each item is  enough, so a room member with view-only rights and a guest may call it. Items the caller cannot read, ids that  do not exist and encrypted files of a private room are skipped without a word, and the answer is `true` even  when nothing was marked, so read the outcome back from `GET api/2.0/files/@favorites` instead of trusting it.  Numeric ids address entries stored in the portal itself, string ids entries on a connected third-party  account, and both kinds may be sent in one request. The call is mutating but safe to repeat: an item already  marked stays listed once. An entry moved to the Trash keeps its mark and is left out of the listing until it  is restored. `returnSingleOperation` arrives with the shared body and does nothing here. Use  `DELETE api/2.0/files/favorites` to undo, or `GET api/2.0/files/favorites/{fileId}` for a single file.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-favorites/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def add_favorites_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.add_favorites ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/favorites'

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
        :operation => :"Files::OperationsApi.add_favorites",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#add_favorites\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Bulk download
    # Queues a background job that packs the requested files and folders into a single archive, and answers with the  caller's download operations, including the one just started. The archive is not ready when the response  arrives: poll `GET api/2.0/files/fileops` until the operation reports `finished`, then take the address of the  archive from its `url`. Items listed in `fileConvertIds` are converted to the format named there before they  are packed, while the items of `fileIds` are packed as they are. Read access to every listed item is required:  an item the caller may not read fails the whole call with 403, and an id that resolves to nothing is answered  as missing, so filter the selection beforehand. Only one download at a time is allowed per caller, and a  second call made while the first is still running is refused with 403 as well. An empty selection queues  nothing and simply answers with the operations that are already there. An anonymous caller may use the call  for the items covered by the external link they hold.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/bulk-download/
    # @param [Hash] opts the optional parameters
    # @option opts [DownloadRequestDto] :download_request_dto 
    # @return [FileOperationArrayWrapper]
    def bulk_download(opts = {})
      data, _status_code, _headers = bulk_download_with_http_info(opts)
      data
    end

    # Bulk download
    # Queues a background job that packs the requested files and folders into a single archive, and answers with the  caller's download operations, including the one just started. The archive is not ready when the response  arrives: poll `GET api/2.0/files/fileops` until the operation reports `finished`, then take the address of the  archive from its `url`. Items listed in `fileConvertIds` are converted to the format named there before they  are packed, while the items of `fileIds` are packed as they are. Read access to every listed item is required:  an item the caller may not read fails the whole call with 403, and an id that resolves to nothing is answered  as missing, so filter the selection beforehand. Only one download at a time is allowed per caller, and a  second call made while the first is still running is refused with 403 as well. An empty selection queues  nothing and simply answers with the operations that are already there. An anonymous caller may use the call  for the items covered by the external link they hold.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/bulk-download/
    # @param [Hash] opts the optional parameters
    # @option opts [DownloadRequestDto] :download_request_dto 
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def bulk_download_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.bulk_download ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/bulkdownload'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'download_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.bulk_download",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#bulk_download\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get conversion status
    # Reports how far the conversion of a file has got, as a list that holds one entry while the portal still knows  about that conversion and nothing once it is over. Read `progress`, which counts from 0 to 100, `error` for  the reason a conversion failed, and `file`, which carries the converted file as soon as it exists. Queue the  conversion with `PUT api/2.0/files/file/{fileId}/checkconversion` and poll this operation until the entry  reaches 100 or disappears: a finished entry is handed out once and then dropped, and an entry whose conversion  stopped is discarded a few minutes later, so an empty list means either already reported or never started  rather than an error. The same empty list is the answer for an identifier no file matches. Passing  `start=true` starts the conversion as well, with the format from the portal settings and no password, which  makes that one flag mutating; without it the operation is read-only. The caller needs read access to the file,  and anyone else is refused.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/
    # @param file_id [Integer] The file whose conversion is asked about.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :start Whether to start the conversion as well: `true` queues it with the default output format and no password,  `false` only reports what the portal already knows.
    # @return [ConversationResultArrayWrapper]
    def check_conversion_status(file_id, opts = {})
      data, _status_code, _headers = check_conversion_status_with_http_info(file_id, opts)
      data
    end

    # Get conversion status
    # Reports how far the conversion of a file has got, as a list that holds one entry while the portal still knows  about that conversion and nothing once it is over. Read `progress`, which counts from 0 to 100, `error` for  the reason a conversion failed, and `file`, which carries the converted file as soon as it exists. Queue the  conversion with `PUT api/2.0/files/file/{fileId}/checkconversion` and poll this operation until the entry  reaches 100 or disappears: a finished entry is handed out once and then dropped, and an entry whose conversion  stopped is discarded a few minutes later, so an empty list means either already reported or never started  rather than an error. The same empty list is the answer for an identifier no file matches. Passing  `start=true` starts the conversion as well, with the format from the portal settings and no password, which  makes that one flag mutating; without it the operation is read-only. The caller needs read access to the file,  and anyone else is refused.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/
    # @param file_id [Integer] The file whose conversion is asked about.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :start Whether to start the conversion as well: `true` queues it with the default output format and no password,  `false` only reports what the portal already knows.
    # @return [Array<(ConversationResultArrayWrapper, Integer, Hash)>] ConversationResultArrayWrapper data, response status code and response headers
    def check_conversion_status_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.check_conversion_status ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::OperationsApi.check_conversion_status"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/checkconversion'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConversationResultArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.check_conversion_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#check_conversion_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get conversion status (third-party storage)
    # Reports how far the conversion of a file has got, as a list that holds one entry while the portal still knows  about that conversion and nothing once it is over. Read `progress`, which counts from 0 to 100, `error` for  the reason a conversion failed, and `file`, which carries the converted file as soon as it exists. Queue the  conversion with `PUT api/2.0/files/file/{fileId}/checkconversion` and poll this operation until the entry  reaches 100 or disappears: a finished entry is handed out once and then dropped, and an entry whose conversion  stopped is discarded a few minutes later, so an empty list means either already reported or never started  rather than an error. The same empty list is the answer for an identifier no file matches. Passing  `start=true` starts the conversion as well, with the format from the portal settings and no password, which  makes that one flag mutating; without it the operation is read-only. The caller needs read access to the file,  and anyone else is refused.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status-third-party/
    # @param file_id [String] The file whose conversion is asked about.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :start Whether to start the conversion as well: `true` queues it with the default output format and no password,  `false` only reports what the portal already knows.
    # @return [ConversationResultArrayWrapper]
    def check_conversion_status_third_party(file_id, opts = {})
      data, _status_code, _headers = check_conversion_status_third_party_with_http_info(file_id, opts)
      data
    end

    # Get conversion status (third-party storage)
    # Reports how far the conversion of a file has got, as a list that holds one entry while the portal still knows  about that conversion and nothing once it is over. Read `progress`, which counts from 0 to 100, `error` for  the reason a conversion failed, and `file`, which carries the converted file as soon as it exists. Queue the  conversion with `PUT api/2.0/files/file/{fileId}/checkconversion` and poll this operation until the entry  reaches 100 or disappears: a finished entry is handed out once and then dropped, and an entry whose conversion  stopped is discarded a few minutes later, so an empty list means either already reported or never started  rather than an error. The same empty list is the answer for an identifier no file matches. Passing  `start=true` starts the conversion as well, with the format from the portal settings and no password, which  makes that one flag mutating; without it the operation is read-only. The caller needs read access to the file,  and anyone else is refused.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status-third-party/
    # @param file_id [String] The file whose conversion is asked about.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :start Whether to start the conversion as well: `true` queues it with the default output format and no password,  `false` only reports what the portal already knows.
    # @return [Array<(ConversationResultArrayWrapper, Integer, Hash)>] ConversationResultArrayWrapper data, response status code and response headers
    def check_conversion_status_third_party_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.check_conversion_status_third_party ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::OperationsApi.check_conversion_status_third_party"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/checkconversion'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConversationResultArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.check_conversion_status_third_party",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#check_conversion_status_third_party\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check move or copy conflicts
    # Reports which of the requested files and folders already have a same-named entry in `destFolderId`, so that  the clash can be settled before the move or the copy is started. Nothing is moved, copied or changed by the  call, although the address is shared with `PUT api/2.0/files/fileops/move`: the answer is the part of the  request that clashes, and an empty array means the batch would go through without one. The  `conflictResolveType` of the request is not taken into account — clashing items are reported whatever it says  — and encrypted files are left out of the report. A source id that resolves to nothing is not an error and is  passed over. The caller needs create access to the destination: an archived room and a room the caller cannot  write to are refused with 403, a destination that does not exist is answered as missing, and a request without  `destFolderId` is rejected as an invalid request. To learn whether the destination accepts the files at all  use `GET api/2.0/files/fileops/checkdestfolder`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :in_dto The files and folders to move or copy, the folder they go to, and the way name clashes are settled.
    # @return [FileEntryBaseArrayWrapper]
    def check_move_or_copy_batch_items(opts = {})
      data, _status_code, _headers = check_move_or_copy_batch_items_with_http_info(opts)
      data
    end

    # Check move or copy conflicts
    # Reports which of the requested files and folders already have a same-named entry in `destFolderId`, so that  the clash can be settled before the move or the copy is started. Nothing is moved, copied or changed by the  call, although the address is shared with `PUT api/2.0/files/fileops/move`: the answer is the part of the  request that clashes, and an empty array means the batch would go through without one. The  `conflictResolveType` of the request is not taken into account — clashing items are reported whatever it says  — and encrypted files are left out of the report. A source id that resolves to nothing is not an error and is  passed over. The caller needs create access to the destination: an archived room and a room the caller cannot  write to are refused with 403, a destination that does not exist is answered as missing, and a request without  `destFolderId` is rejected as an invalid request. To learn whether the destination accepts the files at all  use `GET api/2.0/files/fileops/checkdestfolder`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :in_dto The files and folders to move or copy, the folder they go to, and the way name clashes are settled.
    # @return [Array<(FileEntryBaseArrayWrapper, Integer, Hash)>] FileEntryBaseArrayWrapper data, response status code and response headers
    def check_move_or_copy_batch_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.check_move_or_copy_batch_items ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/move'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inDto'] = opts[:'in_dto'] if !opts[:'in_dto'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileEntryBaseArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.check_move_or_copy_batch_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#check_move_or_copy_batch_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the destination folder
    # Reports whether the destination folder accepts the listed files, before a move or a copy is started. Only  `fileIds` and `destFolderId` are read from the request: `result` says whether all of the files are accepted,  only some of them or none, and `files` names the ones that are. The check is about what the destination allows  to be stored in it rather than about name clashes — everywhere except a form-filling room every file is  accepted, while a form-filling room accepts only PDF forms, so a text document offered to one comes back as  none accepted. The caller needs create access to the destination, so a room the caller cannot write to and an  archived room are refused with 403, a destination that does not exist is answered as missing, and a request  without `destFolderId` is rejected as an invalid request. Folder ids and the copying options of the request  play no part here. The call changes nothing; for same-named entries at the destination use  `GET api/2.0/files/fileops/move`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-dest-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :in_dto The files and folders to move or copy, the folder they go to, and the way name clashes are settled.
    # @return [CheckDestFolderWrapper]
    def check_move_or_copy_dest_folder(opts = {})
      data, _status_code, _headers = check_move_or_copy_dest_folder_with_http_info(opts)
      data
    end

    # Check the destination folder
    # Reports whether the destination folder accepts the listed files, before a move or a copy is started. Only  `fileIds` and `destFolderId` are read from the request: `result` says whether all of the files are accepted,  only some of them or none, and `files` names the ones that are. The check is about what the destination allows  to be stored in it rather than about name clashes — everywhere except a form-filling room every file is  accepted, while a form-filling room accepts only PDF forms, so a text document offered to one comes back as  none accepted. The caller needs create access to the destination, so a room the caller cannot write to and an  archived room are refused with 403, a destination that does not exist is answered as missing, and a request  without `destFolderId` is rejected as an invalid request. Folder ids and the copying options of the request  play no part here. The call changes nothing; for same-named entries at the destination use  `GET api/2.0/files/fileops/move`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-dest-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :in_dto The files and folders to move or copy, the folder they go to, and the way name clashes are settled.
    # @return [Array<(CheckDestFolderWrapper, Integer, Hash)>] CheckDestFolderWrapper data, response status code and response headers
    def check_move_or_copy_dest_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.check_move_or_copy_dest_folder ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/checkdestfolder'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inDto'] = opts[:'in_dto'] if !opts[:'in_dto'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CheckDestFolderWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.check_move_or_copy_dest_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#check_move_or_copy_dest_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Copy files and folders
    # Queues a background job that copies the requested files and folders into `destFolderId`, leaving the originals  where they are, and answers with the caller's move and copy operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`; its `files` and `folders` then name what  was produced. Before starting, `GET api/2.0/files/fileops/move` reports which items already have a same-named  entry at the destination and `conflictResolveType` decides what happens to them, while  `GET api/2.0/files/fileops/checkdestfolder` reports whether the destination accepts the files at all. The  caller needs create access to the destination — room manager or content-creator rights inside a room — and  read access to every source item; anything less is refused with 403. With `content=true` each listed folder is  replaced by its own files and subfolders, so the folder itself is not recreated at the destination. An empty  selection queues nothing and answers with the operations that are already there. To remove the originals  instead use `PUT api/2.0/files/fileops/move`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :batch_request_dto 
    # @return [FileOperationArrayWrapper]
    def copy_batch_items(opts = {})
      data, _status_code, _headers = copy_batch_items_with_http_info(opts)
      data
    end

    # Copy files and folders
    # Queues a background job that copies the requested files and folders into `destFolderId`, leaving the originals  where they are, and answers with the caller's move and copy operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`; its `files` and `folders` then name what  was produced. Before starting, `GET api/2.0/files/fileops/move` reports which items already have a same-named  entry at the destination and `conflictResolveType` decides what happens to them, while  `GET api/2.0/files/fileops/checkdestfolder` reports whether the destination accepts the files at all. The  caller needs create access to the destination — room manager or content-creator rights inside a room — and  read access to every source item; anything less is refused with 403. With `content=true` each listed folder is  replaced by its own files and subfolders, so the folder itself is not recreated at the destination. An empty  selection queues nothing and answers with the operations that are already there. To remove the originals  instead use `PUT api/2.0/files/fileops/move`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :batch_request_dto 
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def copy_batch_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.copy_batch_items ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/copy'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'batch_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.copy_batch_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#copy_batch_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Chunked upload
    # Deprecated in favour of `POST api/2.0/files/{folderId}/session`, which opens the same session and returns it  without the success envelope used here; new callers should go there. Reserves a chunked upload of a file in  the folder named by the path: the title comes from `fileName`, the declared payload size from `fileSize`, and  the answer carries the session id every later call quotes, the address of the standalone chunk handler, the  moment an idle session is dropped and the reserved byte count. No content is stored yet. Send the payload as  multipart parts to `POST api/2.0/files/{folderId}/session/{sessionId}/upload`, keeping each part within  `chunkUploadSize` from `GET api/2.0/files/settings`, then close the session with  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller needs the right to add content to the  target folder, which room managers and content creators have and readers, editors and guests do not: they get  403, as does a section root such as Rooms or Archive, while an unknown folder is answered as missing. A  payload above the portal limit for chunked uploads is refused before the session exists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/
    # @param folder_id [Integer] The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
    # @param session_request [SessionRequest] The file the session is opened for, and how a clash with an existing name is settled.
    # @param [Hash] opts the optional parameters
    # @return [ChunkedUploadSessionResponseWrapperWrapper]
    def create_upload_session(folder_id, session_request, opts = {})
      data, _status_code, _headers = create_upload_session_with_http_info(folder_id, session_request, opts)
      data
    end

    # Chunked upload
    # Deprecated in favour of `POST api/2.0/files/{folderId}/session`, which opens the same session and returns it  without the success envelope used here; new callers should go there. Reserves a chunked upload of a file in  the folder named by the path: the title comes from `fileName`, the declared payload size from `fileSize`, and  the answer carries the session id every later call quotes, the address of the standalone chunk handler, the  moment an idle session is dropped and the reserved byte count. No content is stored yet. Send the payload as  multipart parts to `POST api/2.0/files/{folderId}/session/{sessionId}/upload`, keeping each part within  `chunkUploadSize` from `GET api/2.0/files/settings`, then close the session with  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller needs the right to add content to the  target folder, which room managers and content creators have and readers, editors and guests do not: they get  403, as does a section root such as Rooms or Archive, while an unknown folder is answered as missing. A  payload above the portal limit for chunked uploads is refused before the session exists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/
    # @param folder_id [Integer] The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
    # @param session_request [SessionRequest] The file the session is opened for, and how a clash with an existing name is settled.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChunkedUploadSessionResponseWrapperWrapper, Integer, Hash)>] ChunkedUploadSessionResponseWrapperWrapper data, response status code and response headers
    def create_upload_session_with_http_info(folder_id, session_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.create_upload_session ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::OperationsApi.create_upload_session"
      end
      # verify the required parameter 'session_request' is set
      if @api_client.config.client_side_validation && session_request.nil?
        fail ArgumentError, "Missing the required parameter 'session_request' when calling Files::OperationsApi.create_upload_session"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/upload/create_session'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(session_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ChunkedUploadSessionResponseWrapperWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.create_upload_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#create_upload_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Chunked upload (third-party storage)
    # Deprecated in favour of `POST api/2.0/files/{folderId}/session`, which opens the same session and returns it  without the success envelope used here; new callers should go there. Reserves a chunked upload of a file in  the folder named by the path: the title comes from `fileName`, the declared payload size from `fileSize`, and  the answer carries the session id every later call quotes, the address of the standalone chunk handler, the  moment an idle session is dropped and the reserved byte count. No content is stored yet. Send the payload as  multipart parts to `POST api/2.0/files/{folderId}/session/{sessionId}/upload`, keeping each part within  `chunkUploadSize` from `GET api/2.0/files/settings`, then close the session with  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller needs the right to add content to the  target folder, which room managers and content creators have and readers, editors and guests do not: they get  403, as does a section root such as Rooms or Archive, while an unknown folder is answered as missing. A  payload above the portal limit for chunked uploads is refused before the session exists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-third-party/
    # @param folder_id [String] The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
    # @param session_request [SessionRequest] The file the session is opened for, and how a clash with an existing name is settled.
    # @param [Hash] opts the optional parameters
    # @return [ThirdPartyChunkedUploadSessionResponseWrapperWrapper]
    def create_upload_session_third_party(folder_id, session_request, opts = {})
      data, _status_code, _headers = create_upload_session_third_party_with_http_info(folder_id, session_request, opts)
      data
    end

    # Chunked upload (third-party storage)
    # Deprecated in favour of `POST api/2.0/files/{folderId}/session`, which opens the same session and returns it  without the success envelope used here; new callers should go there. Reserves a chunked upload of a file in  the folder named by the path: the title comes from `fileName`, the declared payload size from `fileSize`, and  the answer carries the session id every later call quotes, the address of the standalone chunk handler, the  moment an idle session is dropped and the reserved byte count. No content is stored yet. Send the payload as  multipart parts to `POST api/2.0/files/{folderId}/session/{sessionId}/upload`, keeping each part within  `chunkUploadSize` from `GET api/2.0/files/settings`, then close the session with  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller needs the right to add content to the  target folder, which room managers and content creators have and readers, editors and guests do not: they get  403, as does a section root such as Rooms or Archive, while an unknown folder is answered as missing. A  payload above the portal limit for chunked uploads is refused before the session exists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-third-party/
    # @param folder_id [String] The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
    # @param session_request [SessionRequest] The file the session is opened for, and how a clash with an existing name is settled.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ThirdPartyChunkedUploadSessionResponseWrapperWrapper, Integer, Hash)>] ThirdPartyChunkedUploadSessionResponseWrapperWrapper data, response status code and response headers
    def create_upload_session_third_party_with_http_info(folder_id, session_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.create_upload_session_third_party ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::OperationsApi.create_upload_session_third_party"
      end
      # verify the required parameter 'session_request' is set
      if @api_client.config.client_side_validation && session_request.nil?
        fail ArgumentError, "Missing the required parameter 'session_request' when calling Files::OperationsApi.create_upload_session_third_party"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/upload/create_session'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(session_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ThirdPartyChunkedUploadSessionResponseWrapperWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.create_upload_session_third_party",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#create_upload_session_third_party\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an upload session
    # Opens a chunked upload session for a file in the folder named by the path and returns the session itself,  which is the difference from the deprecated `POST api/2.0/files/{folderId}/upload/create_session` and its  success envelope. The answer gives `id`, quoted by every later call, `location` for the standalone chunk  handler used by clients that bypass this API, `expired`, and `bytes_total` echoing the reserved size. Whether  parts are really needed follows from `fileSize`: below `chunkUploadSize` from `GET api/2.0/files/settings` the  whole payload goes in one `POST api/2.0/files/{folderId}/session/{sessionId}`, which stores the file and  answers 201, and above it the parts go one by one to  `POST api/2.0/files/{folderId}/session/{sessionId}/upload` and the file appears only after  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller must be allowed to add content to the  folder, so readers, editors and guests are refused, a section root is refused as well, and an unknown folder  is answered as missing. Nothing is written until the parts arrive, and an abandoned session disappears twelve  hours later.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder/
    # @param folder_id [Integer] The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
    # @param session_request [SessionRequest] The file the session is opened for, and how a clash with an existing name is settled.
    # @param [Hash] opts the optional parameters
    # @return [ChunkedUploadSessionResponseResponseWrapper]
    def create_upload_session_in_folder(folder_id, session_request, opts = {})
      data, _status_code, _headers = create_upload_session_in_folder_with_http_info(folder_id, session_request, opts)
      data
    end

    # Create an upload session
    # Opens a chunked upload session for a file in the folder named by the path and returns the session itself,  which is the difference from the deprecated `POST api/2.0/files/{folderId}/upload/create_session` and its  success envelope. The answer gives `id`, quoted by every later call, `location` for the standalone chunk  handler used by clients that bypass this API, `expired`, and `bytes_total` echoing the reserved size. Whether  parts are really needed follows from `fileSize`: below `chunkUploadSize` from `GET api/2.0/files/settings` the  whole payload goes in one `POST api/2.0/files/{folderId}/session/{sessionId}`, which stores the file and  answers 201, and above it the parts go one by one to  `POST api/2.0/files/{folderId}/session/{sessionId}/upload` and the file appears only after  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller must be allowed to add content to the  folder, so readers, editors and guests are refused, a section root is refused as well, and an unknown folder  is answered as missing. Nothing is written until the parts arrive, and an abandoned session disappears twelve  hours later.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder/
    # @param folder_id [Integer] The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
    # @param session_request [SessionRequest] The file the session is opened for, and how a clash with an existing name is settled.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChunkedUploadSessionResponseResponseWrapper, Integer, Hash)>] ChunkedUploadSessionResponseResponseWrapper data, response status code and response headers
    def create_upload_session_in_folder_with_http_info(folder_id, session_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.create_upload_session_in_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::OperationsApi.create_upload_session_in_folder"
      end
      # verify the required parameter 'session_request' is set
      if @api_client.config.client_side_validation && session_request.nil?
        fail ArgumentError, "Missing the required parameter 'session_request' when calling Files::OperationsApi.create_upload_session_in_folder"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/session'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(session_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ChunkedUploadSessionResponseResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.create_upload_session_in_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#create_upload_session_in_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an upload session (third-party storage)
    # Opens a chunked upload session for a file in the folder named by the path and returns the session itself,  which is the difference from the deprecated `POST api/2.0/files/{folderId}/upload/create_session` and its  success envelope. The answer gives `id`, quoted by every later call, `location` for the standalone chunk  handler used by clients that bypass this API, `expired`, and `bytes_total` echoing the reserved size. Whether  parts are really needed follows from `fileSize`: below `chunkUploadSize` from `GET api/2.0/files/settings` the  whole payload goes in one `POST api/2.0/files/{folderId}/session/{sessionId}`, which stores the file and  answers 201, and above it the parts go one by one to  `POST api/2.0/files/{folderId}/session/{sessionId}/upload` and the file appears only after  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller must be allowed to add content to the  folder, so readers, editors and guests are refused, a section root is refused as well, and an unknown folder  is answered as missing. Nothing is written until the parts arrive, and an abandoned session disappears twelve  hours later.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder-third-party/
    # @param folder_id [String] The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
    # @param session_request [SessionRequest] The file the session is opened for, and how a clash with an existing name is settled.
    # @param [Hash] opts the optional parameters
    # @return [ThirdPartyChunkedUploadSessionResponseResponseWrapper]
    def create_upload_session_in_folder_third_party(folder_id, session_request, opts = {})
      data, _status_code, _headers = create_upload_session_in_folder_third_party_with_http_info(folder_id, session_request, opts)
      data
    end

    # Create an upload session (third-party storage)
    # Opens a chunked upload session for a file in the folder named by the path and returns the session itself,  which is the difference from the deprecated `POST api/2.0/files/{folderId}/upload/create_session` and its  success envelope. The answer gives `id`, quoted by every later call, `location` for the standalone chunk  handler used by clients that bypass this API, `expired`, and `bytes_total` echoing the reserved size. Whether  parts are really needed follows from `fileSize`: below `chunkUploadSize` from `GET api/2.0/files/settings` the  whole payload goes in one `POST api/2.0/files/{folderId}/session/{sessionId}`, which stores the file and  answers 201, and above it the parts go one by one to  `POST api/2.0/files/{folderId}/session/{sessionId}/upload` and the file appears only after  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller must be allowed to add content to the  folder, so readers, editors and guests are refused, a section root is refused as well, and an unknown folder  is answered as missing. Nothing is written until the parts arrive, and an abandoned session disappears twelve  hours later.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder-third-party/
    # @param folder_id [String] The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
    # @param session_request [SessionRequest] The file the session is opened for, and how a clash with an existing name is settled.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ThirdPartyChunkedUploadSessionResponseResponseWrapper, Integer, Hash)>] ThirdPartyChunkedUploadSessionResponseResponseWrapper data, response status code and response headers
    def create_upload_session_in_folder_third_party_with_http_info(folder_id, session_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.create_upload_session_in_folder_third_party ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::OperationsApi.create_upload_session_in_folder_third_party"
      end
      # verify the required parameter 'session_request' is set
      if @api_client.config.client_side_validation && session_request.nil?
        fail ArgumentError, "Missing the required parameter 'session_request' when calling Files::OperationsApi.create_upload_session_in_folder_third_party"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/session'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(session_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ThirdPartyChunkedUploadSessionResponseResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.create_upload_session_in_folder_third_party",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#create_upload_session_in_folder_third_party\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete files and folders
    # Queues a background job that deletes the requested files and folders, and answers with the caller's delete  operations, including the one just started. Poll `GET api/2.0/files/fileops` until the operation reports  `finished`, and read its `error`: a failure on a single item is reported there rather than as a status code.  With `immediately=false` the items are moved to the caller's Trash and can be restored from it, while  `immediately=true` removes them at once and for good; deleting a folder takes everything inside it either way.  The call is destructive and it is not a no-op on repetition — a second call with the same ids deletes whatever  has been restored in the meantime. Access is checked before the job is queued: deleting from a room requires  room manager or content-creator rights, editing or read rights are refused with 403, and an id that resolves  to nothing is answered as missing. An empty selection queues nothing and answers with the operations that are  already there. To clear the Trash itself use `PUT api/2.0/files/fileops/emptytrash`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [DeleteBatchRequestDto] :delete_batch_request_dto 
    # @return [FileOperationArrayWrapper]
    def delete_batch_items(opts = {})
      data, _status_code, _headers = delete_batch_items_with_http_info(opts)
      data
    end

    # Delete files and folders
    # Queues a background job that deletes the requested files and folders, and answers with the caller's delete  operations, including the one just started. Poll `GET api/2.0/files/fileops` until the operation reports  `finished`, and read its `error`: a failure on a single item is reported there rather than as a status code.  With `immediately=false` the items are moved to the caller's Trash and can be restored from it, while  `immediately=true` removes them at once and for good; deleting a folder takes everything inside it either way.  The call is destructive and it is not a no-op on repetition — a second call with the same ids deletes whatever  has been restored in the meantime. Access is checked before the job is queued: deleting from a room requires  room manager or content-creator rights, editing or read rights are refused with 403, and an id that resolves  to nothing is answered as missing. An empty selection queues nothing and answers with the operations that are  already there. To clear the Trash itself use `PUT api/2.0/files/fileops/emptytrash`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [DeleteBatchRequestDto] :delete_batch_request_dto 
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def delete_batch_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.delete_batch_items ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/delete'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'delete_batch_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.delete_batch_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#delete_batch_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete favorite files and folders
    # Removes the favorite mark from the listed files and folders for the calling account. Nothing is deleted from  storage: the entries keep their place, their content and their sharing, and only disappear from  `GET api/2.0/files/@favorites`; to delete the entries themselves call `PUT api/2.0/files/fileops/delete`  instead. Marks of other members are untouched, and read access to each item is enough to call it. The ids go  into the JSON body documented here; the same route also accepts them as repeated `fileIds` and `folderIds`  query parameters, but only in a request that carries no JSON body at all. Numeric ids address entries stored  in the portal itself, string ids entries on a connected third-party account. The answer is `true` whenever the  request was understood, which an empty request, an id that does not exist and an item that was never marked  all achieve, so it does not report how many marks were dropped. `returnSingleOperation` arrives with the  shared body and does nothing here. Repeating the call is safe. Use `POST api/2.0/files/favorites` to mark  entries again.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-favorites-from-body/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [BooleanWrapper]
    def delete_favorites_from_body(opts = {})
      data, _status_code, _headers = delete_favorites_from_body_with_http_info(opts)
      data
    end

    # Delete favorite files and folders
    # Removes the favorite mark from the listed files and folders for the calling account. Nothing is deleted from  storage: the entries keep their place, their content and their sharing, and only disappear from  `GET api/2.0/files/@favorites`; to delete the entries themselves call `PUT api/2.0/files/fileops/delete`  instead. Marks of other members are untouched, and read access to each item is enough to call it. The ids go  into the JSON body documented here; the same route also accepts them as repeated `fileIds` and `folderIds`  query parameters, but only in a request that carries no JSON body at all. Numeric ids address entries stored  in the portal itself, string ids entries on a connected third-party account. The answer is `true` whenever the  request was understood, which an empty request, an id that does not exist and an item that was never marked  all achieve, so it does not report how many marks were dropped. `returnSingleOperation` arrives with the  shared body and does nothing here. Repeating the call is safe. Use `POST api/2.0/files/favorites` to mark  entries again.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-favorites-from-body/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def delete_favorites_from_body_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.delete_favorites_from_body ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/favorites'

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
        :operation => :"Files::OperationsApi.delete_favorites_from_body",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#delete_favorites_from_body\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete file versions
    # Queues a background job that removes the listed versions from the history of one file, and answers with the  caller's delete operations, including the one just started. Poll `GET api/2.0/files/fileops` until the  operation reports `finished`; a failure met while the job runs is reported in its `error` rather than as a  status code. Removal is permanent — deleted versions do not travel through Trash and cannot be restored, while  the file itself stays in place with the versions that are left. Send the numbers that  `GET api/2.0/files/file/{fileId}/history` reports, and send at least one: an empty list is not an empty  request, it deletes the whole file instead. The number of the current version is refused before anything is  queued, while numbers that no longer exist are passed over without a complaint. The caller needs the rights  that deleting the file itself would need, so a member with read-only rights is refused, as are a file in an  archived room and a file that is already in Trash, and a file that does not exist is answered as missing. To  delete the file itself use `PUT api/2.0/files/fileops/delete`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file-versions/
    # @param [Hash] opts the optional parameters
    # @option opts [DeleteVersionBatchRequestDto] :delete_version_batch_request_dto 
    # @return [FileOperationArrayWrapper]
    def delete_file_versions(opts = {})
      data, _status_code, _headers = delete_file_versions_with_http_info(opts)
      data
    end

    # Delete file versions
    # Queues a background job that removes the listed versions from the history of one file, and answers with the  caller's delete operations, including the one just started. Poll `GET api/2.0/files/fileops` until the  operation reports `finished`; a failure met while the job runs is reported in its `error` rather than as a  status code. Removal is permanent — deleted versions do not travel through Trash and cannot be restored, while  the file itself stays in place with the versions that are left. Send the numbers that  `GET api/2.0/files/file/{fileId}/history` reports, and send at least one: an empty list is not an empty  request, it deletes the whole file instead. The number of the current version is refused before anything is  queued, while numbers that no longer exist are passed over without a complaint. The caller needs the rights  that deleting the file itself would need, so a member with read-only rights is refused, as are a file in an  archived room and a file that is already in Trash, and a file that does not exist is answered as missing. To  delete the file itself use `PUT api/2.0/files/fileops/delete`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file-versions/
    # @param [Hash] opts the optional parameters
    # @option opts [DeleteVersionBatchRequestDto] :delete_version_batch_request_dto 
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def delete_file_versions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.delete_file_versions ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/deleteversion'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'delete_version_batch_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.delete_file_versions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#delete_file_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Duplicate files and folders
    # Queues a background job that copies each requested file and folder next to itself, into the folder where it  already is, and answers with the caller's duplicate operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`. The copies keep the name of the original  with a numeric suffix, so nothing is overwritten and every repetition adds one more copy; duplicating a folder  duplicates its content as well. No destination is taken — to place a copy somewhere else use  `PUT api/2.0/files/fileops/copy`. The caller needs the rights that creating an item in that folder would need,  which inside a room means room manager or content-creator rights: read or editing rights, and an item the  caller has no access to at all, are refused with 403. An empty selection queues nothing and answers with the  operations that are already there.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/duplicate-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [DuplicateRequestDto] :duplicate_request_dto 
    # @return [FileOperationArrayWrapper]
    def duplicate_batch_items(opts = {})
      data, _status_code, _headers = duplicate_batch_items_with_http_info(opts)
      data
    end

    # Duplicate files and folders
    # Queues a background job that copies each requested file and folder next to itself, into the folder where it  already is, and answers with the caller's duplicate operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`. The copies keep the name of the original  with a numeric suffix, so nothing is overwritten and every repetition adds one more copy; duplicating a folder  duplicates its content as well. No destination is taken — to place a copy somewhere else use  `PUT api/2.0/files/fileops/copy`. The caller needs the rights that creating an item in that folder would need,  which inside a room means room manager or content-creator rights: read or editing rights, and an item the  caller has no access to at all, are refused with 403. An empty selection queues nothing and answers with the  operations that are already there.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/duplicate-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [DuplicateRequestDto] :duplicate_request_dto 
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def duplicate_batch_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.duplicate_batch_items ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/duplicate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'duplicate_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.duplicate_batch_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#duplicate_batch_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Empty the Trash folder
    # Queues a background job that permanently removes the content of the caller's own Trash, and answers with the  caller's delete operations, including the one just started. Poll `GET api/2.0/files/fileops` until the  operation reports `finished`. Every authenticated account may empty its own Trash and only its own: no  per-item access check takes place because nothing outside the caller's Trash is touched. With `folderType` the  sweep is narrowed to the items that were originally stored in sections and rooms of the named types, so  clearing what came from personal documents leaves what came from rooms untouched; without the parameter the  whole Trash is emptied. What is removed here cannot be restored afterwards, which is the difference from  `PUT api/2.0/files/fileops/delete`, where `immediately=false` puts items into Trash in the first place.  Calling it on an already empty Trash queues nothing and answers with the operations that are already there.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/empty-trash/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :single Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every delete operation that the caller has running or unread.
    # @option opts [Array<Integer>] :folder_type Limits the sweep to the items whose original location was inside a section or a room of one of the named  types, leaving the rest of the Trash untouched; without the parameter the whole Trash is emptied. `5` covers  what was deleted from personal documents, `14` what was deleted from rooms.
    # @return [FileOperationArrayWrapper]
    def empty_trash(opts = {})
      data, _status_code, _headers = empty_trash_with_http_info(opts)
      data
    end

    # Empty the Trash folder
    # Queues a background job that permanently removes the content of the caller's own Trash, and answers with the  caller's delete operations, including the one just started. Poll `GET api/2.0/files/fileops` until the  operation reports `finished`. Every authenticated account may empty its own Trash and only its own: no  per-item access check takes place because nothing outside the caller's Trash is touched. With `folderType` the  sweep is narrowed to the items that were originally stored in sections and rooms of the named types, so  clearing what came from personal documents leaves what came from rooms untouched; without the parameter the  whole Trash is emptied. What is removed here cannot be restored afterwards, which is the difference from  `PUT api/2.0/files/fileops/delete`, where `immediately=false` puts items into Trash in the first place.  Calling it on an already empty Trash queues nothing and answers with the operations that are already there.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/empty-trash/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :single Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every delete operation that the caller has running or unread.
    # @option opts [Array<Integer>] :folder_type Limits the sweep to the items whose original location was inside a section or a room of one of the named  types, leaving the rest of the Trash untouched; without the parameter the whole Trash is emptied. `5` covers  what was deleted from personal documents, `14` what was deleted from rooms.
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def empty_trash_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.empty_trash ...'
      end
      allowable_values = [0, 1, 2, 3, 5, 6, 8, 10, 11, 12, 13, 14, 15, 16, 19, 20, 21, 22, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]
      if @api_client.config.client_side_validation && opts[:'folder_type'] && !opts[:'folder_type'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"folder_type\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/emptytrash'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'Single'] = opts[:'single'] if !opts[:'single'].nil?
      query_params[:'folderType'] = @api_client.build_collection_param(opts[:'folder_type'], :multi) if !opts[:'folder_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.empty_trash",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#empty_trash\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Finalize an upload session
    # Assembles the parts received so far into the file the session was opened for and closes the session. What  comes out depends on how the session started: one opened against an existing file through  `POST api/2.0/files/file/{fileId}/edit_session` replaces that content in place and keeps the version number,  while one opened against a folder either creates the file or, when a file of the same name was taken over,  stores the content as its next version. A form loses its filling state on the way in. The answer arrives with  201 and carries the identifiers of the file together with the file itself. The call ends the session: the  record and the buffered parts are removed, so it cannot be repeated and there is nothing left to abort  afterwards. Running it before all the declared bytes have arrived assembles whatever is there, so read the  progress from the chunk calls first. An unknown, already closed or expired session id fails instead of  answering as missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session/
    # @param folder_id [Integer] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param session_id [String] The session to assemble, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.
    # @param [Hash] opts the optional parameters
    # @return [UploadSessionResponseWrapper]
    def finalize_session(folder_id, session_id, opts = {})
      data, _status_code, _headers = finalize_session_with_http_info(folder_id, session_id, opts)
      data
    end

    # Finalize an upload session
    # Assembles the parts received so far into the file the session was opened for and closes the session. What  comes out depends on how the session started: one opened against an existing file through  `POST api/2.0/files/file/{fileId}/edit_session` replaces that content in place and keeps the version number,  while one opened against a folder either creates the file or, when a file of the same name was taken over,  stores the content as its next version. A form loses its filling state on the way in. The answer arrives with  201 and carries the identifiers of the file together with the file itself. The call ends the session: the  record and the buffered parts are removed, so it cannot be repeated and there is nothing left to abort  afterwards. Running it before all the declared bytes have arrived assembles whatever is there, so read the  progress from the chunk calls first. An unknown, already closed or expired session id fails instead of  answering as missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session/
    # @param folder_id [Integer] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param session_id [String] The session to assemble, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UploadSessionResponseWrapper, Integer, Hash)>] UploadSessionResponseWrapper data, response status code and response headers
    def finalize_session_with_http_info(folder_id, session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.finalize_session ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::OperationsApi.finalize_session"
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling Files::OperationsApi.finalize_session"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/session/{sessionId}/finalize'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s)).sub('{' + 'sessionId' + '}', CGI.escape(session_id.to_s))

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
      return_type = opts[:debug_return_type] || 'UploadSessionResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.finalize_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#finalize_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Finalize an upload session (third-party storage)
    # Assembles the parts received so far into the file the session was opened for and closes the session. What  comes out depends on how the session started: one opened against an existing file through  `POST api/2.0/files/file/{fileId}/edit_session` replaces that content in place and keeps the version number,  while one opened against a folder either creates the file or, when a file of the same name was taken over,  stores the content as its next version. A form loses its filling state on the way in. The answer arrives with  201 and carries the identifiers of the file together with the file itself. The call ends the session: the  record and the buffered parts are removed, so it cannot be repeated and there is nothing left to abort  afterwards. Running it before all the declared bytes have arrived assembles whatever is there, so read the  progress from the chunk calls first. An unknown, already closed or expired session id fails instead of  answering as missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session-third-party/
    # @param folder_id [String] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param session_id [String] The session to assemble, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.
    # @param [Hash] opts the optional parameters
    # @return [ThirdPartyUploadSessionResponseWrapper]
    def finalize_session_third_party(folder_id, session_id, opts = {})
      data, _status_code, _headers = finalize_session_third_party_with_http_info(folder_id, session_id, opts)
      data
    end

    # Finalize an upload session (third-party storage)
    # Assembles the parts received so far into the file the session was opened for and closes the session. What  comes out depends on how the session started: one opened against an existing file through  `POST api/2.0/files/file/{fileId}/edit_session` replaces that content in place and keeps the version number,  while one opened against a folder either creates the file or, when a file of the same name was taken over,  stores the content as its next version. A form loses its filling state on the way in. The answer arrives with  201 and carries the identifiers of the file together with the file itself. The call ends the session: the  record and the buffered parts are removed, so it cannot be repeated and there is nothing left to abort  afterwards. Running it before all the declared bytes have arrived assembles whatever is there, so read the  progress from the chunk calls first. An unknown, already closed or expired session id fails instead of  answering as missing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session-third-party/
    # @param folder_id [String] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param session_id [String] The session to assemble, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ThirdPartyUploadSessionResponseWrapper, Integer, Hash)>] ThirdPartyUploadSessionResponseWrapper data, response status code and response headers
    def finalize_session_third_party_with_http_info(folder_id, session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.finalize_session_third_party ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::OperationsApi.finalize_session_third_party"
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling Files::OperationsApi.finalize_session_third_party"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/session/{sessionId}/finalize'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s)).sub('{' + 'sessionId' + '}', CGI.escape(session_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ThirdPartyUploadSessionResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.finalize_session_third_party",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#finalize_session_third_party\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get active file operations
    # Returns the background file operations of the caller that are still running or whose finished result has not  been read yet, grouped by kind: duplications first, then moves and copies, deletions, downloads and  mark-as-read. This is the polling target for every operation in this section — an operation appears here as  soon as it is queued and carries `progress` from 0 to 100, `finished`, the `error` of a failed item and, for a  download, the address of the archive in `url`. A record is dropped once its finished state has been handed  out, so a completed operation is reported once and an empty array means there is nothing left to report rather  than that the work failed. Pass `id` to follow a single operation; an id that is not among the caller's  operations gives an empty array. Operations are private to the account that started them, an anonymous caller  being scoped to the session of the external link. The call changes nothing. To follow one kind only use  `GET api/2.0/files/fileops/{operationType}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The operation to report on, as returned in `id` when it was started; without it every operation of the caller  is reported. An id that is not among the caller's operations gives an empty answer rather than an error.
    # @return [FileOperationArrayWrapper]
    def get_operation_statuses(opts = {})
      data, _status_code, _headers = get_operation_statuses_with_http_info(opts)
      data
    end

    # Get active file operations
    # Returns the background file operations of the caller that are still running or whose finished result has not  been read yet, grouped by kind: duplications first, then moves and copies, deletions, downloads and  mark-as-read. This is the polling target for every operation in this section — an operation appears here as  soon as it is queued and carries `progress` from 0 to 100, `finished`, the `error` of a failed item and, for a  download, the address of the archive in `url`. A record is dropped once its finished state has been handed  out, so a completed operation is reported once and an empty array means there is nothing left to report rather  than that the work failed. Pass `id` to follow a single operation; an id that is not among the caller's  operations gives an empty array. Operations are private to the account that started them, an anonymous caller  being scoped to the session of the external link. The call changes nothing. To follow one kind only use  `GET api/2.0/files/fileops/{operationType}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The operation to report on, as returned in `id` when it was started; without it every operation of the caller  is reported. An id that is not among the caller's operations gives an empty answer rather than an error.
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def get_operation_statuses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.get_operation_statuses ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.get_operation_statuses",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#get_operation_statuses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file operations by type
    # Returns the background file operations of the caller that are of one kind, named by the number in the route:  `1` for a copy, `2` for a deletion, `3` for a download, `4` for a mark-as-read and `7` for a duplication. The  answer carries the same records as `GET api/2.0/files/fileops`, with the same rule that a finished operation  is reported once and then dropped, and `id` narrows it further to a single operation. Moves, kind `0`, cannot  be read through this route: the address `api/2.0/files/fileops/move` belongs to another operation, so read  moves from `GET api/2.0/files/fileops` and pick the records whose `operation` is `0`. A kind that has no queue  of its own — `5` for an import, `6` for a conversion — is accepted and answers with an empty array, while a  number outside the operation type is rejected as an invalid request. The call changes nothing and never shows  another account's operations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses-by-type/
    # @param operation_type [FileOperationType] The kind of operation the answer is limited to. Only the kinds that have a queue of their own ever carry  records — a copy, a deletion, a download, a mark-as-read and a duplication — and moves cannot be read through  this route at all, because its address belongs to another operation.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The operation to report on, as returned in `id` when it was started; without it every operation of the caller  is reported. An id that is not among the caller's operations gives an empty answer rather than an error.
    # @return [FileOperationArrayWrapper]
    def get_operation_statuses_by_type(operation_type, opts = {})
      data, _status_code, _headers = get_operation_statuses_by_type_with_http_info(operation_type, opts)
      data
    end

    # Get file operations by type
    # Returns the background file operations of the caller that are of one kind, named by the number in the route:  `1` for a copy, `2` for a deletion, `3` for a download, `4` for a mark-as-read and `7` for a duplication. The  answer carries the same records as `GET api/2.0/files/fileops`, with the same rule that a finished operation  is reported once and then dropped, and `id` narrows it further to a single operation. Moves, kind `0`, cannot  be read through this route: the address `api/2.0/files/fileops/move` belongs to another operation, so read  moves from `GET api/2.0/files/fileops` and pick the records whose `operation` is `0`. A kind that has no queue  of its own — `5` for an import, `6` for a conversion — is accepted and answers with an empty array, while a  number outside the operation type is rejected as an invalid request. The call changes nothing and never shows  another account's operations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses-by-type/
    # @param operation_type [FileOperationType] The kind of operation the answer is limited to. Only the kinds that have a queue of their own ever carry  records — a copy, a deletion, a download, a mark-as-read and a duplication — and moves cannot be read through  this route at all, because its address belongs to another operation.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The operation to report on, as returned in `id` when it was started; without it every operation of the caller  is reported. An id that is not among the caller's operations gives an empty answer rather than an error.
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def get_operation_statuses_by_type_with_http_info(operation_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.get_operation_statuses_by_type ...'
      end
      # verify the required parameter 'operation_type' is set
      if @api_client.config.client_side_validation && operation_type.nil?
        fail ArgumentError, "Missing the required parameter 'operation_type' when calling Files::OperationsApi.get_operation_statuses_by_type"
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/{operationType}'.sub('{' + 'operationType' + '}', CGI.escape(operation_type.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.get_operation_statuses_by_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#get_operation_statuses_by_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark files and folders as read
    # Queues a background job that clears the new-item badge from the requested files and folders for the calling  account, and answers with the caller's mark-as-read operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`. Marking a folder clears the badges of  everything inside it as well. Items the caller cannot read are passed over in silence rather than refused, so  the call succeeds even when the whole selection is inaccessible, and an empty selection queues nothing and  answers with the operations that are already there. Repeating the call on items that are already read changes  nothing, and nothing is opened, moved or modified by it — only the caller's own badges are affected, while  other members keep theirs. To see what is currently marked as new use `GET api/2.0/files/{folderId}/news` for  one folder and `GET api/2.0/files/rooms/news` for the rooms of the caller.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-as-read/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [FileOperationArrayWrapper]
    def mark_as_read(opts = {})
      data, _status_code, _headers = mark_as_read_with_http_info(opts)
      data
    end

    # Mark files and folders as read
    # Queues a background job that clears the new-item badge from the requested files and folders for the calling  account, and answers with the caller's mark-as-read operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`. Marking a folder clears the badges of  everything inside it as well. Items the caller cannot read are passed over in silence rather than refused, so  the call succeeds even when the whole selection is inaccessible, and an empty selection queues nothing and  answers with the operations that are already there. Repeating the call on items that are already read changes  nothing, and nothing is opened, moved or modified by it — only the caller's own badges are affected, while  other members keep theirs. To see what is currently marked as new use `GET api/2.0/files/{folderId}/news` for  one folder and `GET api/2.0/files/rooms/news` for the rooms of the caller.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-as-read/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def mark_as_read_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.mark_as_read ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/markasread'

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
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.mark_as_read",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#mark_as_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Move files and folders
    # Queues a background job that moves the requested files and folders into `destFolderId`, removing them from  where they were, and answers with the caller's move and copy operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`. Before starting,  `GET api/2.0/files/fileops/move` reports which items already have a same-named entry at the destination and  `conflictResolveType` decides what happens to them, while `GET api/2.0/files/fileops/checkdestfolder` reports  whether the destination accepts the files at all. The caller needs create access to the destination and the  right to take the items out of their source, which is why room members with editing or review rights are  refused with 403, and why content-creator rights inside a room allow copying an item out of it but not moving  it. A room cannot be moved this way — use `PUT api/2.0/files/rooms/{id}/archive` instead. To keep the  originals use `PUT api/2.0/files/fileops/copy`. An empty selection queues nothing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/move-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :batch_request_dto 
    # @return [FileOperationArrayWrapper]
    def move_batch_items(opts = {})
      data, _status_code, _headers = move_batch_items_with_http_info(opts)
      data
    end

    # Move files and folders
    # Queues a background job that moves the requested files and folders into `destFolderId`, removing them from  where they were, and answers with the caller's move and copy operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`. Before starting,  `GET api/2.0/files/fileops/move` reports which items already have a same-named entry at the destination and  `conflictResolveType` decides what happens to them, while `GET api/2.0/files/fileops/checkdestfolder` reports  whether the destination accepts the files at all. The caller needs create access to the destination and the  right to take the items out of their source, which is why room members with editing or review rights are  refused with 403, and why content-creator rights inside a room allow copying an item out of it but not moving  it. A room cannot be moved this way — use `PUT api/2.0/files/rooms/{id}/archive` instead. To keep the  originals use `PUT api/2.0/files/fileops/copy`. An empty selection queues nothing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/move-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :batch_request_dto 
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def move_batch_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.move_batch_items ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/move'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'batch_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.move_batch_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#move_batch_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start file conversion
    # Queues the conversion of a file into the portal's own editable format and answers with the conversion entry  the caller is to poll. The whole body may be omitted, in which case the defaults apply. `outputType` names the  target format and, left empty, the portal's default for that kind of document is used; `password` unlocks a  protected source file; `version` converts an older version instead of the current one. `createNewIfExist`  decides where the result goes: with `true` a new file is created beside the source, while with `false`, the  default, the converted file that already exists is replaced. `sync=true` converts inside the request and  answers with the finished result instead of a queue entry, which is only sensible for small documents.  Otherwise poll `GET api/2.0/files/file/{fileId}/checkconversion` until `progress` reaches 100 and take the  converted file from `file`. Only formats the portal has to convert are accepted; anything already editable,  and anything it cannot convert, is answered without work being queued or rejected as an invalid request. The  caller needs read access to the file. The call is mutating and not idempotent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/
    # @param file_id [Integer] The file to convert.
    # @param [Hash] opts the optional parameters
    # @option opts [CheckConversionRequestDto] :check_conversion_request_dto The parameters of the conversion. The whole body may be omitted, in which case the defaults of the portal  apply.
    # @return [ConversationResultArrayWrapper]
    def start_file_conversion(file_id, opts = {})
      data, _status_code, _headers = start_file_conversion_with_http_info(file_id, opts)
      data
    end

    # Start file conversion
    # Queues the conversion of a file into the portal's own editable format and answers with the conversion entry  the caller is to poll. The whole body may be omitted, in which case the defaults apply. `outputType` names the  target format and, left empty, the portal's default for that kind of document is used; `password` unlocks a  protected source file; `version` converts an older version instead of the current one. `createNewIfExist`  decides where the result goes: with `true` a new file is created beside the source, while with `false`, the  default, the converted file that already exists is replaced. `sync=true` converts inside the request and  answers with the finished result instead of a queue entry, which is only sensible for small documents.  Otherwise poll `GET api/2.0/files/file/{fileId}/checkconversion` until `progress` reaches 100 and take the  converted file from `file`. Only formats the portal has to convert are accepted; anything already editable,  and anything it cannot convert, is answered without work being queued or rejected as an invalid request. The  caller needs read access to the file. The call is mutating and not idempotent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/
    # @param file_id [Integer] The file to convert.
    # @param [Hash] opts the optional parameters
    # @option opts [CheckConversionRequestDto] :check_conversion_request_dto The parameters of the conversion. The whole body may be omitted, in which case the defaults of the portal  apply.
    # @return [Array<(ConversationResultArrayWrapper, Integer, Hash)>] ConversationResultArrayWrapper data, response status code and response headers
    def start_file_conversion_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.start_file_conversion ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::OperationsApi.start_file_conversion"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/checkconversion'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'check_conversion_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'ConversationResultArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.start_file_conversion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#start_file_conversion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start file conversion (third-party storage)
    # Queues the conversion of a file into the portal's own editable format and answers with the conversion entry  the caller is to poll. The whole body may be omitted, in which case the defaults apply. `outputType` names the  target format and, left empty, the portal's default for that kind of document is used; `password` unlocks a  protected source file; `version` converts an older version instead of the current one. `createNewIfExist`  decides where the result goes: with `true` a new file is created beside the source, while with `false`, the  default, the converted file that already exists is replaced. `sync=true` converts inside the request and  answers with the finished result instead of a queue entry, which is only sensible for small documents.  Otherwise poll `GET api/2.0/files/file/{fileId}/checkconversion` until `progress` reaches 100 and take the  converted file from `file`. Only formats the portal has to convert are accepted; anything already editable,  and anything it cannot convert, is answered without work being queued or rejected as an invalid request. The  caller needs read access to the file. The call is mutating and not idempotent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion-third-party/
    # @param file_id [String] The file to convert.
    # @param [Hash] opts the optional parameters
    # @option opts [ThirdPartyCheckConversionRequestDto] :third_party_check_conversion_request_dto The parameters of the conversion. The whole body may be omitted, in which case the defaults of the portal  apply.
    # @return [ConversationResultArrayWrapper]
    def start_file_conversion_third_party(file_id, opts = {})
      data, _status_code, _headers = start_file_conversion_third_party_with_http_info(file_id, opts)
      data
    end

    # Start file conversion (third-party storage)
    # Queues the conversion of a file into the portal's own editable format and answers with the conversion entry  the caller is to poll. The whole body may be omitted, in which case the defaults apply. `outputType` names the  target format and, left empty, the portal's default for that kind of document is used; `password` unlocks a  protected source file; `version` converts an older version instead of the current one. `createNewIfExist`  decides where the result goes: with `true` a new file is created beside the source, while with `false`, the  default, the converted file that already exists is replaced. `sync=true` converts inside the request and  answers with the finished result instead of a queue entry, which is only sensible for small documents.  Otherwise poll `GET api/2.0/files/file/{fileId}/checkconversion` until `progress` reaches 100 and take the  converted file from `file`. Only formats the portal has to convert are accepted; anything already editable,  and anything it cannot convert, is answered without work being queued or rejected as an invalid request. The  caller needs read access to the file. The call is mutating and not idempotent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion-third-party/
    # @param file_id [String] The file to convert.
    # @param [Hash] opts the optional parameters
    # @option opts [ThirdPartyCheckConversionRequestDto] :third_party_check_conversion_request_dto The parameters of the conversion. The whole body may be omitted, in which case the defaults of the portal  apply.
    # @return [Array<(ConversationResultArrayWrapper, Integer, Hash)>] ConversationResultArrayWrapper data, response status code and response headers
    def start_file_conversion_third_party_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.start_file_conversion_third_party ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::OperationsApi.start_file_conversion_third_party"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/checkconversion'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'third_party_check_conversion_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'ConversationResultArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.start_file_conversion_third_party",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#start_file_conversion_third_party\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel file operations
    # Cancels a background file operation of the caller and answers with the operations that are left. Pass the `id`  that was reported when the operation started to stop that one; a call that leaves the trailing route segment  out stops every operation the caller has running, of every kind. Cancelling stops the job where it stands and  does not undo it: what has already been copied, moved or deleted stays that way, so a cancelled batch can  leave part of itself at the destination and part of it at the source, and the result has to be read back  rather than assumed. The cancelled record is dropped from `GET api/2.0/files/fileops` at once, which is why  the answer here is usually empty. An id that is not among the caller's operations cancels nothing and is not  an error. Operations are private to the account that started them, an anonymous caller being scoped to the  session of the external link, so the call can never reach an operation of anyone else.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tasks/
    # @param id [String] The operation to cancel, as returned in `id` when it was started. A call that leaves the route segment out  cancels every operation of the caller, and an id that is not among their operations cancels nothing without  being an error.
    # @param [Hash] opts the optional parameters
    # @return [FileOperationArrayWrapper]
    def terminate_tasks(id, opts = {})
      data, _status_code, _headers = terminate_tasks_with_http_info(id, opts)
      data
    end

    # Cancel file operations
    # Cancels a background file operation of the caller and answers with the operations that are left. Pass the `id`  that was reported when the operation started to stop that one; a call that leaves the trailing route segment  out stops every operation the caller has running, of every kind. Cancelling stops the job where it stands and  does not undo it: what has already been copied, moved or deleted stays that way, so a cancelled batch can  leave part of itself at the destination and part of it at the source, and the result has to be read back  rather than assumed. The cancelled record is dropped from `GET api/2.0/files/fileops` at once, which is why  the answer here is usually empty. An id that is not among the caller's operations cancels nothing and is not  an error. Operations are private to the account that started them, an anonymous caller being scoped to the  session of the external link, so the call can never reach an operation of anyone else.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tasks/
    # @param id [String] The operation to cancel, as returned in `id` when it was started. A call that leaves the route segment out  cancels every operation of the caller, and an id that is not among their operations cancels nothing without  being an error.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def terminate_tasks_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.terminate_tasks ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::OperationsApi.terminate_tasks"
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/terminate/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.terminate_tasks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#terminate_tasks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a comment
    # Replaces the comment stored on one version of a file - the note that explains what changed in it - and answers  with the comment as it was stored, which is the text cut to the length the portal keeps. `version` names the  version and has to be an existing one: a version that does not exist is rejected as an invalid request, while  a file that does not exist at all is answered as not found. Sending an empty comment clears the note. The  caller needs the right to edit the history of the file, which the room admin, a DocSpace admin acting as room  manager and a member with content-creator rights have; a member with editing access to somebody else's file,  read-only access, a guest and an anonymous caller are all refused. A file that is locked by somebody else or  lies in Trash is refused as well. The call is mutating and idempotent - repeating it with the same text leaves  the same comment. The comments of all versions come back with `GET api/2.0/files/file/{fileId}/edit/history`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/
    # @param file_id [Integer] The file whose version comment is replaced.
    # @param update_comment [UpdateComment] The version and the comment to store on it.
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def update_file_comment(file_id, update_comment, opts = {})
      data, _status_code, _headers = update_file_comment_with_http_info(file_id, update_comment, opts)
      data
    end

    # Update a comment
    # Replaces the comment stored on one version of a file - the note that explains what changed in it - and answers  with the comment as it was stored, which is the text cut to the length the portal keeps. `version` names the  version and has to be an existing one: a version that does not exist is rejected as an invalid request, while  a file that does not exist at all is answered as not found. Sending an empty comment clears the note. The  caller needs the right to edit the history of the file, which the room admin, a DocSpace admin acting as room  manager and a member with content-creator rights have; a member with editing access to somebody else's file,  read-only access, a guest and an anonymous caller are all refused. A file that is locked by somebody else or  lies in Trash is refused as well. The call is mutating and idempotent - repeating it with the same text leaves  the same comment. The comments of all versions come back with `GET api/2.0/files/file/{fileId}/edit/history`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/
    # @param file_id [Integer] The file whose version comment is replaced.
    # @param update_comment [UpdateComment] The version and the comment to store on it.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def update_file_comment_with_http_info(file_id, update_comment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.update_file_comment ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::OperationsApi.update_file_comment"
      end
      # verify the required parameter 'update_comment' is set
      if @api_client.config.client_side_validation && update_comment.nil?
        fail ArgumentError, "Missing the required parameter 'update_comment' when calling Files::OperationsApi.update_file_comment"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/comment'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_comment)

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.update_file_comment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#update_file_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a comment (third-party storage)
    # Replaces the comment stored on one version of a file - the note that explains what changed in it - and answers  with the comment as it was stored, which is the text cut to the length the portal keeps. `version` names the  version and has to be an existing one: a version that does not exist is rejected as an invalid request, while  a file that does not exist at all is answered as not found. Sending an empty comment clears the note. The  caller needs the right to edit the history of the file, which the room admin, a DocSpace admin acting as room  manager and a member with content-creator rights have; a member with editing access to somebody else's file,  read-only access, a guest and an anonymous caller are all refused. A file that is locked by somebody else or  lies in Trash is refused as well. The call is mutating and idempotent - repeating it with the same text leaves  the same comment. The comments of all versions come back with `GET api/2.0/files/file/{fileId}/edit/history`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment-third-party/
    # @param file_id [String] The file whose version comment is replaced.
    # @param update_comment [UpdateComment] The version and the comment to store on it.
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def update_file_comment_third_party(file_id, update_comment, opts = {})
      data, _status_code, _headers = update_file_comment_third_party_with_http_info(file_id, update_comment, opts)
      data
    end

    # Update a comment (third-party storage)
    # Replaces the comment stored on one version of a file - the note that explains what changed in it - and answers  with the comment as it was stored, which is the text cut to the length the portal keeps. `version` names the  version and has to be an existing one: a version that does not exist is rejected as an invalid request, while  a file that does not exist at all is answered as not found. Sending an empty comment clears the note. The  caller needs the right to edit the history of the file, which the room admin, a DocSpace admin acting as room  manager and a member with content-creator rights have; a member with editing access to somebody else's file,  read-only access, a guest and an anonymous caller are all refused. A file that is locked by somebody else or  lies in Trash is refused as well. The call is mutating and idempotent - repeating it with the same text leaves  the same comment. The comments of all versions come back with `GET api/2.0/files/file/{fileId}/edit/history`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment-third-party/
    # @param file_id [String] The file whose version comment is replaced.
    # @param update_comment [UpdateComment] The version and the comment to store on it.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def update_file_comment_third_party_with_http_info(file_id, update_comment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.update_file_comment_third_party ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::OperationsApi.update_file_comment_third_party"
      end
      # verify the required parameter 'update_comment' is set
      if @api_client.config.client_side_validation && update_comment.nil?
        fail ArgumentError, "Missing the required parameter 'update_comment' when calling Files::OperationsApi.update_file_comment_third_party"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/comment'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_comment)

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.update_file_comment_third_party",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#update_file_comment_third_party\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a numbered chunk
    # Stores one part of a file under the number given in `chunkNumber`, which is what the ordinary chunked flow  uses: parts are kept by their number rather than by arrival, so a part that failed can be resent under the  same number without restarting the session. Numbering starts at 1, and leaving the number out makes the server  count the parts itself. The answer is always the session, never the file, and this call never completes the  upload: the file appears only after `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. Use  `POST api/2.0/files/{folderId}/session/{sessionId}` instead when the parts go strictly in order and the upload  should complete by itself. A part bigger than `chunkUploadSize` from `GET api/2.0/files/settings` is refused,  so that value is also the size to split the payload by. The first part of a PDF is inspected, and a PDF that  is not a fillable form is refused when the session targets a form-filling room. The session is found by its id  alone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session/
    # @param folder_id [Integer] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param session_id [String] The session this part belongs to, as returned in `id` when it was created; a 32-character hexadecimal string.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :chunk_number The position of this part in the file, counted from 1. Sending the same number again replaces that part  instead of adding one, which is how a failed part is retried; leaving the number out makes the server count  the parts itself.
    # @option opts [File] :file The part of the file to store, sent as the multipart field of the same name. It is kept under the number given  beside it, and a part larger than the portal chunk size is refused.
    # @return [ChunkedUploadSessionResponseResponseWrapper]
    def upload_async_session(folder_id, session_id, opts = {})
      data, _status_code, _headers = upload_async_session_with_http_info(folder_id, session_id, opts)
      data
    end

    # Upload a numbered chunk
    # Stores one part of a file under the number given in `chunkNumber`, which is what the ordinary chunked flow  uses: parts are kept by their number rather than by arrival, so a part that failed can be resent under the  same number without restarting the session. Numbering starts at 1, and leaving the number out makes the server  count the parts itself. The answer is always the session, never the file, and this call never completes the  upload: the file appears only after `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. Use  `POST api/2.0/files/{folderId}/session/{sessionId}` instead when the parts go strictly in order and the upload  should complete by itself. A part bigger than `chunkUploadSize` from `GET api/2.0/files/settings` is refused,  so that value is also the size to split the payload by. The first part of a PDF is inspected, and a PDF that  is not a fillable form is refused when the session targets a form-filling room. The session is found by its id  alone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session/
    # @param folder_id [Integer] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param session_id [String] The session this part belongs to, as returned in `id` when it was created; a 32-character hexadecimal string.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :chunk_number The position of this part in the file, counted from 1. Sending the same number again replaces that part  instead of adding one, which is how a failed part is retried; leaving the number out makes the server count  the parts itself.
    # @option opts [File] :file The part of the file to store, sent as the multipart field of the same name. It is kept under the number given  beside it, and a part larger than the portal chunk size is refused.
    # @return [Array<(ChunkedUploadSessionResponseResponseWrapper, Integer, Hash)>] ChunkedUploadSessionResponseResponseWrapper data, response status code and response headers
    def upload_async_session_with_http_info(folder_id, session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.upload_async_session ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::OperationsApi.upload_async_session"
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling Files::OperationsApi.upload_async_session"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/session/{sessionId}/upload'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s)).sub('{' + 'sessionId' + '}', CGI.escape(session_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ChunkNumber'] = opts[:'chunk_number'] if !opts[:'chunk_number'].nil?

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
      return_type = opts[:debug_return_type] || 'ChunkedUploadSessionResponseResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.upload_async_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#upload_async_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a numbered chunk (third-party storage)
    # Stores one part of a file under the number given in `chunkNumber`, which is what the ordinary chunked flow  uses: parts are kept by their number rather than by arrival, so a part that failed can be resent under the  same number without restarting the session. Numbering starts at 1, and leaving the number out makes the server  count the parts itself. The answer is always the session, never the file, and this call never completes the  upload: the file appears only after `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. Use  `POST api/2.0/files/{folderId}/session/{sessionId}` instead when the parts go strictly in order and the upload  should complete by itself. A part bigger than `chunkUploadSize` from `GET api/2.0/files/settings` is refused,  so that value is also the size to split the payload by. The first part of a PDF is inspected, and a PDF that  is not a fillable form is refused when the session targets a form-filling room. The session is found by its id  alone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session-third-party/
    # @param folder_id [String] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param session_id [String] The session this part belongs to, as returned in `id` when it was created; a 32-character hexadecimal string.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :chunk_number The position of this part in the file, counted from 1. Sending the same number again replaces that part  instead of adding one, which is how a failed part is retried; leaving the number out makes the server count  the parts itself.
    # @option opts [File] :file The part of the file to store, sent as the multipart field of the same name. It is kept under the number given  beside it, and a part larger than the portal chunk size is refused.
    # @return [ThirdPartyChunkedUploadSessionResponseResponseWrapper]
    def upload_async_session_third_party(folder_id, session_id, opts = {})
      data, _status_code, _headers = upload_async_session_third_party_with_http_info(folder_id, session_id, opts)
      data
    end

    # Upload a numbered chunk (third-party storage)
    # Stores one part of a file under the number given in `chunkNumber`, which is what the ordinary chunked flow  uses: parts are kept by their number rather than by arrival, so a part that failed can be resent under the  same number without restarting the session. Numbering starts at 1, and leaving the number out makes the server  count the parts itself. The answer is always the session, never the file, and this call never completes the  upload: the file appears only after `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. Use  `POST api/2.0/files/{folderId}/session/{sessionId}` instead when the parts go strictly in order and the upload  should complete by itself. A part bigger than `chunkUploadSize` from `GET api/2.0/files/settings` is refused,  so that value is also the size to split the payload by. The first part of a PDF is inspected, and a PDF that  is not a fillable form is refused when the session targets a form-filling room. The session is found by its id  alone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session-third-party/
    # @param folder_id [String] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param session_id [String] The session this part belongs to, as returned in `id` when it was created; a 32-character hexadecimal string.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :chunk_number The position of this part in the file, counted from 1. Sending the same number again replaces that part  instead of adding one, which is how a failed part is retried; leaving the number out makes the server count  the parts itself.
    # @option opts [File] :file The part of the file to store, sent as the multipart field of the same name. It is kept under the number given  beside it, and a part larger than the portal chunk size is refused.
    # @return [Array<(ThirdPartyChunkedUploadSessionResponseResponseWrapper, Integer, Hash)>] ThirdPartyChunkedUploadSessionResponseResponseWrapper data, response status code and response headers
    def upload_async_session_third_party_with_http_info(folder_id, session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.upload_async_session_third_party ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::OperationsApi.upload_async_session_third_party"
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling Files::OperationsApi.upload_async_session_third_party"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/session/{sessionId}/upload'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s)).sub('{' + 'sessionId' + '}', CGI.escape(session_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ChunkNumber'] = opts[:'chunk_number'] if !opts[:'chunk_number'].nil?

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
      return_type = opts[:debug_return_type] || 'ThirdPartyChunkedUploadSessionResponseResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.upload_async_session_third_party",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#upload_async_session_third_party\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload the next chunk
    # Sends the next part of a file into the session opened for it, as the multipart `File` field, and lets the  server keep count: parts are appended in the order they arrive, so two of these calls must never run in  parallel on one session. While bytes are still missing the answer describes the session and `uploaded` is  false; when the last part completes the declared size the file is written, its upload links are cleared, it is  marked as new for the room, and the answer comes back with 201, `uploaded` true and the whole file in `file`.  A session created for a payload smaller than `chunkUploadSize` from `GET api/2.0/files/settings` finishes on  the first such call and needs no separate finalize step. A part larger than that limit is refused. The first  part of a PDF is inspected, and a PDF that is not a fillable form is refused when the session targets a  form-filling room. The session is addressed by its id, and the folder in the path is not matched against it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session/
    # @param folder_id [Integer] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param session_id [String] The session this part belongs to, as returned in `id` when it was created; the parts of one session must be  sent one after another, not in parallel.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The next part of the file, sent as the multipart field of the same name. Parts are appended in the order they  arrive, and a part larger than the portal chunk size is refused.
    # @return [UploadSessionResponseWrapper]
    def upload_session(folder_id, session_id, opts = {})
      data, _status_code, _headers = upload_session_with_http_info(folder_id, session_id, opts)
      data
    end

    # Upload the next chunk
    # Sends the next part of a file into the session opened for it, as the multipart `File` field, and lets the  server keep count: parts are appended in the order they arrive, so two of these calls must never run in  parallel on one session. While bytes are still missing the answer describes the session and `uploaded` is  false; when the last part completes the declared size the file is written, its upload links are cleared, it is  marked as new for the room, and the answer comes back with 201, `uploaded` true and the whole file in `file`.  A session created for a payload smaller than `chunkUploadSize` from `GET api/2.0/files/settings` finishes on  the first such call and needs no separate finalize step. A part larger than that limit is refused. The first  part of a PDF is inspected, and a PDF that is not a fillable form is refused when the session targets a  form-filling room. The session is addressed by its id, and the folder in the path is not matched against it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session/
    # @param folder_id [Integer] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param session_id [String] The session this part belongs to, as returned in `id` when it was created; the parts of one session must be  sent one after another, not in parallel.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The next part of the file, sent as the multipart field of the same name. Parts are appended in the order they  arrive, and a part larger than the portal chunk size is refused.
    # @return [Array<(UploadSessionResponseWrapper, Integer, Hash)>] UploadSessionResponseWrapper data, response status code and response headers
    def upload_session_with_http_info(folder_id, session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.upload_session ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::OperationsApi.upload_session"
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling Files::OperationsApi.upload_session"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/session/{sessionId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s)).sub('{' + 'sessionId' + '}', CGI.escape(session_id.to_s))

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
      return_type = opts[:debug_return_type] || 'UploadSessionResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.upload_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#upload_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload the next chunk (third-party storage)
    # Sends the next part of a file into the session opened for it, as the multipart `File` field, and lets the  server keep count: parts are appended in the order they arrive, so two of these calls must never run in  parallel on one session. While bytes are still missing the answer describes the session and `uploaded` is  false; when the last part completes the declared size the file is written, its upload links are cleared, it is  marked as new for the room, and the answer comes back with 201, `uploaded` true and the whole file in `file`.  A session created for a payload smaller than `chunkUploadSize` from `GET api/2.0/files/settings` finishes on  the first such call and needs no separate finalize step. A part larger than that limit is refused. The first  part of a PDF is inspected, and a PDF that is not a fillable form is refused when the session targets a  form-filling room. The session is addressed by its id, and the folder in the path is not matched against it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session-third-party/
    # @param folder_id [String] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param session_id [String] The session this part belongs to, as returned in `id` when it was created; the parts of one session must be  sent one after another, not in parallel.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The next part of the file, sent as the multipart field of the same name. Parts are appended in the order they  arrive, and a part larger than the portal chunk size is refused.
    # @return [ThirdPartyUploadSessionResponseWrapper]
    def upload_session_third_party(folder_id, session_id, opts = {})
      data, _status_code, _headers = upload_session_third_party_with_http_info(folder_id, session_id, opts)
      data
    end

    # Upload the next chunk (third-party storage)
    # Sends the next part of a file into the session opened for it, as the multipart `File` field, and lets the  server keep count: parts are appended in the order they arrive, so two of these calls must never run in  parallel on one session. While bytes are still missing the answer describes the session and `uploaded` is  false; when the last part completes the declared size the file is written, its upload links are cleared, it is  marked as new for the room, and the answer comes back with 201, `uploaded` true and the whole file in `file`.  A session created for a payload smaller than `chunkUploadSize` from `GET api/2.0/files/settings` finishes on  the first such call and needs no separate finalize step. A part larger than that limit is refused. The first  part of a PDF is inspected, and a PDF that is not a fillable form is refused when the session targets a  form-filling room. The session is addressed by its id, and the folder in the path is not matched against it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session-third-party/
    # @param folder_id [String] The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
    # @param session_id [String] The session this part belongs to, as returned in `id` when it was created; the parts of one session must be  sent one after another, not in parallel.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The next part of the file, sent as the multipart field of the same name. Parts are appended in the order they  arrive, and a part larger than the portal chunk size is refused.
    # @return [Array<(ThirdPartyUploadSessionResponseWrapper, Integer, Hash)>] ThirdPartyUploadSessionResponseWrapper data, response status code and response headers
    def upload_session_third_party_with_http_info(folder_id, session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.upload_session_third_party ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::OperationsApi.upload_session_third_party"
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling Files::OperationsApi.upload_session_third_party"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/session/{sessionId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s)).sub('{' + 'sessionId' + '}', CGI.escape(session_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ThirdPartyUploadSessionResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::OperationsApi.upload_session_third_party",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::OperationsApi#upload_session_third_party\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

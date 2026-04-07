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
    # Aborts an in-progress file upload session.
    # This method allows users to cancel an ongoing upload session identified by the session ID.  Once the session is aborted, the associated resources will be cleaned up, and the session will no longer accept further uploads.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session/
    # @param session_id [String] The session ID.
    # @param folder_id [Integer] The folder ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def abort_upload_session(session_id, folder_id, opts = {})
      abort_upload_session_with_http_info(session_id, folder_id, opts)
      nil
    end

    # Aborts an in-progress file upload session.
    # This method allows users to cancel an ongoing upload session identified by the session ID.  Once the session is aborted, the associated resources will be cleaned up, and the session will no longer accept further uploads.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session/
    # @param session_id [String] The session ID.
    # @param folder_id [Integer] The folder ID.
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

    # Add favorite files and folders
    # Adds files and folders with the IDs specified in the request to the favorite list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-favorites/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [BooleanWrapper]
    def add_favorites(opts = {})
      data, _status_code, _headers = add_favorites_with_http_info(opts)
      data
    end

    # Add favorite files and folders
    # Adds files and folders with the IDs specified in the request to the favorite list.
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
    # Starts the download process of files and folders with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/bulk-download/
    # @param [Hash] opts the optional parameters
    # @option opts [DownloadRequestDto] :download_request_dto 
    # @return [FileOperationArrayWrapper]
    def bulk_download(opts = {})
      data, _status_code, _headers = bulk_download_with_http_info(opts)
      data
    end

    # Bulk download
    # Starts the download process of files and folders with the IDs specified in the request.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Checks the conversion status of a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/
    # @param file_id [Integer] The file ID to check conversion status.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :start Specifies whether a conversion operation is started or not.
    # @return [ConversationResultArrayWrapper]
    def check_conversion_status(file_id, opts = {})
      data, _status_code, _headers = check_conversion_status_with_http_info(file_id, opts)
      data
    end

    # Get conversion status
    # Checks the conversion status of a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/
    # @param file_id [Integer] The file ID to check conversion status.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :start Specifies whether a conversion operation is started or not.
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

    # Move or copy files to a folder
    # Checks if files or folders can be moved or copied to the specified folder, moves or copies them, and returns their information.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :in_dto The request parameters for copying/moving files.
    # @return [FileEntryBaseArrayWrapper]
    def check_move_or_copy_batch_items(opts = {})
      data, _status_code, _headers = check_move_or_copy_batch_items_with_http_info(opts)
      data
    end

    # Move or copy files to a folder
    # Checks if files or folders can be moved or copied to the specified folder, moves or copies them, and returns their information.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :in_dto The request parameters for copying/moving files.
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

    # Check for moving or copying files to a folder
    # Checks if files can be moved or copied to the specified folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-dest-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :in_dto The request parameters for copying/moving files.
    # @return [CheckDestFolderWrapper]
    def check_move_or_copy_dest_folder(opts = {})
      data, _status_code, _headers = check_move_or_copy_dest_folder_with_http_info(opts)
      data
    end

    # Check for moving or copying files to a folder
    # Checks if files can be moved or copied to the specified folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-dest-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :in_dto The request parameters for copying/moving files.
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

    # Copy to the folder
    # Copies all the selected files and folders to the folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :batch_request_dto 
    # @return [FileOperationArrayWrapper]
    def copy_batch_items(opts = {})
      data, _status_code, _headers = copy_batch_items_with_http_info(opts)
      data
    end

    # Copy to the folder
    # Copies all the selected files and folders to the folder with the ID specified in the request.
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
    # Creates the session to upload large files in multiple chunks to the folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/
    # @param folder_id [Integer] The session folder ID.
    # @param session_request [SessionRequest] The session parameters.
    # @param [Hash] opts the optional parameters
    # @return [ChunkedUploadSessionResponseWrapperIntegerWrapper]
    def create_upload_session(folder_id, session_request, opts = {})
      data, _status_code, _headers = create_upload_session_with_http_info(folder_id, session_request, opts)
      data
    end

    # Chunked upload
    # Creates the session to upload large files in multiple chunks to the folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/
    # @param folder_id [Integer] The session folder ID.
    # @param session_request [SessionRequest] The session parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChunkedUploadSessionResponseWrapperIntegerWrapper, Integer, Hash)>] ChunkedUploadSessionResponseWrapperIntegerWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'ChunkedUploadSessionResponseWrapperIntegerWrapper'

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

    # Creates a session for uploading a file to a specific folder in chunks.
    # The session allows the user to upload a file in smaller chunks to the folder identified by its ID.  The file information, such as name, size, and additional metadata, must be provided in the request.  This method facilitates large file upload scenarios by enabling chunked file uploads.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder/
    # @param folder_id [Integer] The session folder ID.
    # @param session_request [SessionRequest] The session parameters.
    # @param [Hash] opts the optional parameters
    # @return [ChunkedUploadSessionResponseIntegerWrapper]
    def create_upload_session_in_folder(folder_id, session_request, opts = {})
      data, _status_code, _headers = create_upload_session_in_folder_with_http_info(folder_id, session_request, opts)
      data
    end

    # Creates a session for uploading a file to a specific folder in chunks.
    # The session allows the user to upload a file in smaller chunks to the folder identified by its ID.  The file information, such as name, size, and additional metadata, must be provided in the request.  This method facilitates large file upload scenarios by enabling chunked file uploads.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder/
    # @param folder_id [Integer] The session folder ID.
    # @param session_request [SessionRequest] The session parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChunkedUploadSessionResponseIntegerWrapper, Integer, Hash)>] ChunkedUploadSessionResponseIntegerWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'ChunkedUploadSessionResponseIntegerWrapper'

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

    # Delete files and folders
    # Deletes the files and folders with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [DeleteBatchRequestDto] :delete_batch_request_dto 
    # @return [FileOperationArrayWrapper]
    def delete_batch_items(opts = {})
      data, _status_code, _headers = delete_batch_items_with_http_info(opts)
      data
    end

    # Delete files and folders
    # Deletes the files and folders with the IDs specified in the request.
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

    # Delete favorite files and folders (using body parameters)
    # Removes files and folders with the IDs specified in the request from the favorite list. This method uses the body parameters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-favorites-from-body/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [BooleanWrapper]
    def delete_favorites_from_body(opts = {})
      data, _status_code, _headers = delete_favorites_from_body_with_http_info(opts)
      data
    end

    # Delete favorite files and folders (using body parameters)
    # Removes files and folders with the IDs specified in the request from the favorite list. This method uses the body parameters.
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
    # Deletes the file versions with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file-versions/
    # @param [Hash] opts the optional parameters
    # @option opts [DeleteVersionBatchRequestDto] :delete_version_batch_request_dto 
    # @return [FileOperationWrapper]
    def delete_file_versions(opts = {})
      data, _status_code, _headers = delete_file_versions_with_http_info(opts)
      data
    end

    # Delete file versions
    # Deletes the file versions with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file-versions/
    # @param [Hash] opts the optional parameters
    # @option opts [DeleteVersionBatchRequestDto] :delete_version_batch_request_dto 
    # @return [Array<(FileOperationWrapper, Integer, Hash)>] FileOperationWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'FileOperationWrapper'

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
    # Duplicates all the selected files and folders.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/duplicate-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [DuplicateRequestDto] :duplicate_request_dto 
    # @return [FileOperationArrayWrapper]
    def duplicate_batch_items(opts = {})
      data, _status_code, _headers = duplicate_batch_items_with_http_info(opts)
      data
    end

    # Duplicate files and folders
    # Duplicates all the selected files and folders.
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
    # Deletes all the files and folders from the Trash folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/empty-trash/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :single Specifies whether to return only the current operation
    # @return [FileOperationArrayWrapper]
    def empty_trash(opts = {})
      data, _status_code, _headers = empty_trash_with_http_info(opts)
      data
    end

    # Empty the Trash folder
    # Deletes all the files and folders from the Trash folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/empty-trash/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :single Specifies whether to return only the current operation
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def empty_trash_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::OperationsApi.empty_trash ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/fileops/emptytrash'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'Single'] = opts[:'single'] if !opts[:'single'].nil?

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
    # Finalizes the upload session by processing the uploaded file chunks and marking the upload as complete.  This method consolidates chunked uploads into a complete file if required, sends notifications about the upload event,  and performs any additional cleanup or related actions, such as socket updates and webhook publishing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session/
    # @param folder_id [Integer] The folder ID.
    # @param session_id [String] The session ID.
    # @param [Hash] opts the optional parameters
    # @return [UploadSessionResponseIntegerWrapper]
    def finalize_session(folder_id, session_id, opts = {})
      data, _status_code, _headers = finalize_session_with_http_info(folder_id, session_id, opts)
      data
    end

    # Finalize an upload session
    # Finalizes the upload session by processing the uploaded file chunks and marking the upload as complete.  This method consolidates chunked uploads into a complete file if required, sends notifications about the upload event,  and performs any additional cleanup or related actions, such as socket updates and webhook publishing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session/
    # @param folder_id [Integer] The folder ID.
    # @param session_id [String] The session ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UploadSessionResponseIntegerWrapper, Integer, Hash)>] UploadSessionResponseIntegerWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'UploadSessionResponseIntegerWrapper'

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

    # Get active file operations
    # Returns a list of all the active file operations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The ID of the file operation.
    # @return [FileOperationArrayWrapper]
    def get_operation_statuses(opts = {})
      data, _status_code, _headers = get_operation_statuses_with_http_info(opts)
      data
    end

    # Get active file operations
    # Returns a list of all the active file operations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The ID of the file operation.
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
      auth_names = opts[:debug_auth_names] || []

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

    # Get file operation statuses
    # Retrieves the statuses of operations filtered by the specified operation type.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses-by-type/
    # @param operation_type [FileOperationType] Specifies the type of file operation to be retrieved.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The ID of the file operation.
    # @return [FileOperationArrayWrapper]
    def get_operation_statuses_by_type(operation_type, opts = {})
      data, _status_code, _headers = get_operation_statuses_by_type_with_http_info(operation_type, opts)
      data
    end

    # Get file operation statuses
    # Retrieves the statuses of operations filtered by the specified operation type.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses-by-type/
    # @param operation_type [FileOperationType] Specifies the type of file operation to be retrieved.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The ID of the file operation.
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
      auth_names = opts[:debug_auth_names] || []

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

    # Mark as read
    # Marks the files and folders with the IDs specified in the request as read.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-as-read/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [FileOperationArrayWrapper]
    def mark_as_read(opts = {})
      data, _status_code, _headers = mark_as_read_with_http_info(opts)
      data
    end

    # Mark as read
    # Marks the files and folders with the IDs specified in the request as read.
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

    # Move or copy to a folder
    # Moves or copies all the selected files and folders to the folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/move-batch-items/
    # @param [Hash] opts the optional parameters
    # @option opts [BatchRequestDto] :batch_request_dto 
    # @return [FileOperationArrayWrapper]
    def move_batch_items(opts = {})
      data, _status_code, _headers = move_batch_items_with_http_info(opts)
      data
    end

    # Move or copy to a folder
    # Moves or copies all the selected files and folders to the folder with the ID specified in the request.
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
    # Starts a conversion operation of a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/
    # @param file_id [Integer] The file ID to start conversion proccess.
    # @param [Hash] opts the optional parameters
    # @option opts [CheckConversionRequestDtoInteger] :check_conversion_request_dto_integer The parameters for checking file conversion.
    # @return [ConversationResultArrayWrapper]
    def start_file_conversion(file_id, opts = {})
      data, _status_code, _headers = start_file_conversion_with_http_info(file_id, opts)
      data
    end

    # Start file conversion
    # Starts a conversion operation of a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/
    # @param file_id [Integer] The file ID to start conversion proccess.
    # @param [Hash] opts the optional parameters
    # @option opts [CheckConversionRequestDtoInteger] :check_conversion_request_dto_integer The parameters for checking file conversion.
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'check_conversion_request_dto_integer'])

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

    # Finish active operations
    # Finishes an operation with the ID specified in the request or all the active operations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tasks/
    # @param id [String] The operation unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FileOperationArrayWrapper]
    def terminate_tasks(id, opts = {})
      data, _status_code, _headers = terminate_tasks_with_http_info(id, opts)
      data
    end

    # Finish active operations
    # Finishes an operation with the ID specified in the request or all the active operations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tasks/
    # @param id [String] The operation unique identifier.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Updates a comment in a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/
    # @param file_id [Integer] The file ID where the comment is located.
    # @param update_comment [UpdateComment] The parameters for updating a comment.
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def update_file_comment(file_id, update_comment, opts = {})
      data, _status_code, _headers = update_file_comment_with_http_info(file_id, update_comment, opts)
      data
    end

    # Update a comment
    # Updates a comment in a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/
    # @param file_id [Integer] The file ID where the comment is located.
    # @param update_comment [UpdateComment] The parameters for updating a comment.
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

    # Handles the upload of a chunk for an existing upload session.
    # This method allows the caller to upload a specific chunk of a file to an ongoing upload session.  The session is identified by the session ID provided in the request. The chunk can be of any size  within the limits allowed during the session initialization. Each chunk must be uploaded in the  correct order for the server to process it appropriately.  The server updates the upload session status and stores the progress information after processing  each chunk. The updated session details are returned in the response.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session/
    # @param folder_id [Integer] The folder ID.
    # @param session_id [String] The upload session ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :chunk_number The chunk number.
    # @option opts [File] :file The file chunk to be uploaded as part of the multipart/form-data request.  This property represents the uploaded file chunk content from the HTTP request form for chunked upload operations.  The file chunk is accessed via the IFormFile interface which provides access to the chunk content and length.
    # @return [ChunkedUploadSessionResponseIntegerWrapper]
    def upload_async_session(folder_id, session_id, opts = {})
      data, _status_code, _headers = upload_async_session_with_http_info(folder_id, session_id, opts)
      data
    end

    # Handles the upload of a chunk for an existing upload session.
    # This method allows the caller to upload a specific chunk of a file to an ongoing upload session.  The session is identified by the session ID provided in the request. The chunk can be of any size  within the limits allowed during the session initialization. Each chunk must be uploaded in the  correct order for the server to process it appropriately.  The server updates the upload session status and stores the progress information after processing  each chunk. The updated session details are returned in the response.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session/
    # @param folder_id [Integer] The folder ID.
    # @param session_id [String] The upload session ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :chunk_number The chunk number.
    # @option opts [File] :file The file chunk to be uploaded as part of the multipart/form-data request.  This property represents the uploaded file chunk content from the HTTP request form for chunked upload operations.  The file chunk is accessed via the IFormFile interface which provides access to the chunk content and length.
    # @return [Array<(ChunkedUploadSessionResponseIntegerWrapper, Integer, Hash)>] ChunkedUploadSessionResponseIntegerWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'ChunkedUploadSessionResponseIntegerWrapper'

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

    # Resumes an ongoing file upload session for uploading additional chunks of data.
    # This method allows continuing an interrupted or partially completed file upload session by uploading subsequent data chunks.  The server will validate each uploaded chunk, update the session state, and respond with the status of the current upload. Once  the total bytes uploaded match the total file size, the file upload process is finalized and related events are triggered.  If the file is newly uploaded, the server responds with a 201 Created status upon completion. If it overwrites an existing file,  versioning information is updated accordingly. The method also triggers associated webhooks and socket notifications to reflect  the updated file state.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session/
    # @param folder_id [Integer] The folder ID.
    # @param session_id [String] The upload session ID.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The file to be uploaded as part of the multipart/form-data request.  This property represents the uploaded file content from the HTTP request form.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream.
    # @return [UploadSessionResponseIntegerWrapper]
    def upload_session(folder_id, session_id, opts = {})
      data, _status_code, _headers = upload_session_with_http_info(folder_id, session_id, opts)
      data
    end

    # Resumes an ongoing file upload session for uploading additional chunks of data.
    # This method allows continuing an interrupted or partially completed file upload session by uploading subsequent data chunks.  The server will validate each uploaded chunk, update the session state, and respond with the status of the current upload. Once  the total bytes uploaded match the total file size, the file upload process is finalized and related events are triggered.  If the file is newly uploaded, the server responds with a 201 Created status upon completion. If it overwrites an existing file,  versioning information is updated accordingly. The method also triggers associated webhooks and socket notifications to reflect  the updated file state.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session/
    # @param folder_id [Integer] The folder ID.
    # @param session_id [String] The upload session ID.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The file to be uploaded as part of the multipart/form-data request.  This property represents the uploaded file content from the HTTP request form.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream.
    # @return [Array<(UploadSessionResponseIntegerWrapper, Integer, Hash)>] UploadSessionResponseIntegerWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'UploadSessionResponseIntegerWrapper'

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
    end
  end
end

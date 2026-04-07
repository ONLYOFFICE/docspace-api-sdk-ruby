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
    class FoldersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check file uploads
    # Checks the file uploads to the folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-upload/
    # @param folder_id [Integer] The folder ID.
    # @param check_upload_request [CheckUploadRequest] The request parameters for checking file uploads.
    # @param [Hash] opts the optional parameters
    # @return [STRINGArrayWrapper]
    def check_upload(folder_id, check_upload_request, opts = {})
      data, _status_code, _headers = check_upload_with_http_info(folder_id, check_upload_request, opts)
      data
    end

    # Check file uploads
    # Checks the file uploads to the folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-upload/
    # @param folder_id [Integer] The folder ID.
    # @param check_upload_request [CheckUploadRequest] The request parameters for checking file uploads.
    # @param [Hash] opts the optional parameters
    # @return [Array<(STRINGArrayWrapper, Integer, Hash)>] STRINGArrayWrapper data, response status code and response headers
    def check_upload_with_http_info(folder_id, check_upload_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.check_upload ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.check_upload"
      end
      # verify the required parameter 'check_upload_request' is set
      if @api_client.config.client_side_validation && check_upload_request.nil?
        fail ArgumentError, "Missing the required parameter 'check_upload_request' when calling Files::FoldersApi.check_upload"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/upload/check'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(check_upload_request)

      # return_type
      return_type = opts[:debug_return_type] || 'STRINGArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.check_upload",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#check_upload\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a folder
    # Creates a new folder with the title specified in the request. The parent folder ID can be also specified.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder/
    # @param folder_id [Integer] The folder ID for the folder creation.
    # @param create_folder [CreateFolder] The parameters for creating a folder.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def create_folder(folder_id, create_folder, opts = {})
      data, _status_code, _headers = create_folder_with_http_info(folder_id, create_folder, opts)
      data
    end

    # Create a folder
    # Creates a new folder with the title specified in the request. The parent folder ID can be also specified.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder/
    # @param folder_id [Integer] The folder ID for the folder creation.
    # @param create_folder [CreateFolder] The parameters for creating a folder.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def create_folder_with_http_info(folder_id, create_folder, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.create_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.create_folder"
      end
      # verify the required parameter 'create_folder' is set
      if @api_client.config.client_side_validation && create_folder.nil?
        fail ArgumentError, "Missing the required parameter 'create_folder' when calling Files::FoldersApi.create_folder"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_folder)

      # return_type
      return_type = opts[:debug_return_type] || 'FolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.create_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#create_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create primary external link
    # Creates a primary external link by the identifier specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder-primary-external-link/
    # @param id [Integer] The folder ID.
    # @param folder_link_request [FolderLinkRequest] The folder link parameters.
    # @param [Hash] opts the optional parameters
    # @return [FileShareWrapper]
    def create_folder_primary_external_link(id, folder_link_request, opts = {})
      data, _status_code, _headers = create_folder_primary_external_link_with_http_info(id, folder_link_request, opts)
      data
    end

    # Create primary external link
    # Creates a primary external link by the identifier specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder-primary-external-link/
    # @param id [Integer] The folder ID.
    # @param folder_link_request [FolderLinkRequest] The folder link parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileShareWrapper, Integer, Hash)>] FileShareWrapper data, response status code and response headers
    def create_folder_primary_external_link_with_http_info(id, folder_link_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.create_folder_primary_external_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FoldersApi.create_folder_primary_external_link"
      end
      # verify the required parameter 'folder_link_request' is set
      if @api_client.config.client_side_validation && folder_link_request.nil?
        fail ArgumentError, "Missing the required parameter 'folder_link_request' when calling Files::FoldersApi.create_folder_primary_external_link"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{id}/link'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(folder_link_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.create_folder_primary_external_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#create_folder_primary_external_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generates folder history
    # Generates the activity history of a folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-report-folder-history/
    # @param folder_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def create_report_folder_history(folder_id, opts = {})
      data, _status_code, _headers = create_report_folder_history_with_http_info(folder_id, opts)
      data
    end

    # Generates folder history
    # Generates the activity history of a folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-report-folder-history/
    # @param folder_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def create_report_folder_history_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.create_report_folder_history ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.create_report_folder_history"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/log/report'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.create_report_folder_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#create_report_folder_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a folder
    # Deletes a folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-folder/
    # @param folder_id [Integer] The folder ID to delete.
    # @param delete_folder [DeleteFolder] The parameters for deleting a folder.
    # @param [Hash] opts the optional parameters
    # @return [FileOperationArrayWrapper]
    def delete_folder(folder_id, delete_folder, opts = {})
      data, _status_code, _headers = delete_folder_with_http_info(folder_id, delete_folder, opts)
      data
    end

    # Delete a folder
    # Deletes a folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-folder/
    # @param folder_id [Integer] The folder ID to delete.
    # @param delete_folder [DeleteFolder] The parameters for deleting a folder.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def delete_folder_with_http_info(folder_id, delete_folder, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.delete_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.delete_folder"
      end
      # verify the required parameter 'delete_folder' is set
      if @api_client.config.client_side_validation && delete_folder.nil?
        fail ArgumentError, "Missing the required parameter 'delete_folder' when calling Files::FoldersApi.delete_folder"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_folder)

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.delete_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#delete_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate XLSX report by folder
    # Triggers asynchronous XLSX report generation for the specified form results folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx-by-folder/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerWrapper]
    def generate_xlsx_by_folder(folder_id, opts = {})
      data, _status_code, _headers = generate_xlsx_by_folder_with_http_info(folder_id, opts)
      data
    end

    # Generate XLSX report by folder
    # Triggers asynchronous XLSX report generation for the specified form results folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx-by-folder/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def generate_xlsx_by_folder_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.generate_xlsx_by_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.generate_xlsx_by_folder"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/xlsx'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.generate_xlsx_by_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#generate_xlsx_by_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the Favorites section
    # Returns the detailed list of files and folders located in the Favorites section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-favorites-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [Integer] :count The maximum number of items to retrieve in the request.
    # @option opts [Integer] :start_index The zero-based index of the first item to retrieve in a paginated list.
    # @option opts [String] :sort_by Specifies the field by which the folder content should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used as a filter or search criterion for folder content queries.
    # @return [FolderContentIntegerWrapper]
    def get_favorites_folder(opts = {})
      data, _status_code, _headers = get_favorites_folder_with_http_info(opts)
      data
    end

    # Get the Favorites section
    # Returns the detailed list of files and folders located in the Favorites section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-favorites-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [Integer] :count The maximum number of items to retrieve in the request.
    # @option opts [Integer] :start_index The zero-based index of the first item to retrieve in a paginated list.
    # @option opts [String] :sort_by Specifies the field by which the folder content should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used as a filter or search criterion for folder content queries.
    # @return [Array<(FolderContentIntegerWrapper, Integer, Hash)>] FolderContentIntegerWrapper data, response status code and response headers
    def get_favorites_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_favorites_folder ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_favorites_folder, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_favorites_folder, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/@favorites'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
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
      return_type = opts[:debug_return_type] || 'FolderContentIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_favorites_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_favorites_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get used space of files
    # Returns the used space of files in the root folders.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-used-space/
    # @param [Hash] opts the optional parameters
    # @return [FilesStatisticsResultWrapper]
    def get_files_used_space(opts = {})
      data, _status_code, _headers = get_files_used_space_with_http_info(opts)
      data
    end

    # Get used space of files
    # Returns the used space of files in the root folders.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-used-space/
    # @param [Hash] opts the optional parameters
    # @return [Array<(FilesStatisticsResultWrapper, Integer, Hash)>] FilesStatisticsResultWrapper data, response status code and response headers
    def get_files_used_space_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_files_used_space ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/filesusedspace'

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
      return_type = opts[:debug_return_type] || 'FilesStatisticsResultWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_files_used_space",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_files_used_space\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get folder form filter
    # Returns the form filter of a folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FormsItemArrayWrapper]
    def get_folder(folder_id, opts = {})
      data, _status_code, _headers = get_folder_with_http_info(folder_id, opts)
      data
    end

    # Get folder form filter
    # Returns the form filter of a folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FormsItemArrayWrapper, Integer, Hash)>] FormsItemArrayWrapper data, response status code and response headers
    def get_folder_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_folder"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/formfilter'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FormsItemArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a folder by ID
    # Returns the detailed list of files and folders located in the folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-by-folder-id/
    # @param folder_id [Integer] The folder ID.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [String] :shared_by The identifier of the user who shared the folder or file.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [Integer] :room_id The room ID.
    # @option opts [Boolean] :exclude_subject Specifies whether to exclude search by user or group ID.
    # @option opts [ApplyFilterOption] :apply_filter_option Specifies whether to return only files, only folders, or all elements from the specified folder.
    # @option opts [String] :extension Specifies whether to search for the specific file extension.
    # @option opts [SearchArea] :search_area The search area.
    # @option opts [String] :forms_item_key The forms item key.
    # @option opts [String] :forms_item_type The forms item type.
    # @option opts [Integer] :count The maximum number of items to retrieve in the request.
    # @option opts [Integer] :start_index The zero-based index of the first item to retrieve in a paginated request.
    # @option opts [String] :sort_by The property used for sorting the folder request results.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text value used as a filter parameter for folder content queries.
    # @option opts [Location] :location The location context of the request, specifying the area  where the operation is performed, such as a room, documents, or a link.
    # @return [FolderContentIntegerWrapper]
    def get_folder_by_folder_id(folder_id, opts = {})
      data, _status_code, _headers = get_folder_by_folder_id_with_http_info(folder_id, opts)
      data
    end

    # Get a folder by ID
    # Returns the detailed list of files and folders located in the folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-by-folder-id/
    # @param folder_id [Integer] The folder ID.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [String] :shared_by The identifier of the user who shared the folder or file.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [Integer] :room_id The room ID.
    # @option opts [Boolean] :exclude_subject Specifies whether to exclude search by user or group ID.
    # @option opts [ApplyFilterOption] :apply_filter_option Specifies whether to return only files, only folders, or all elements from the specified folder.
    # @option opts [String] :extension Specifies whether to search for the specific file extension.
    # @option opts [SearchArea] :search_area The search area.
    # @option opts [String] :forms_item_key The forms item key.
    # @option opts [String] :forms_item_type The forms item type.
    # @option opts [Integer] :count The maximum number of items to retrieve in the request.
    # @option opts [Integer] :start_index The zero-based index of the first item to retrieve in a paginated request.
    # @option opts [String] :sort_by The property used for sorting the folder request results.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text value used as a filter parameter for folder content queries.
    # @option opts [Location] :location The location context of the request, specifying the area  where the operation is performed, such as a room, documents, or a link.
    # @return [Array<(FolderContentIntegerWrapper, Integer, Hash)>] FolderContentIntegerWrapper data, response status code and response headers
    def get_folder_by_folder_id_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder_by_folder_id ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_folder_by_folder_id"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_folder_by_folder_id, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_folder_by_folder_id, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'sharedBy'] = opts[:'shared_by'] if !opts[:'shared_by'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'roomId'] = opts[:'room_id'] if !opts[:'room_id'].nil?
      query_params[:'excludeSubject'] = opts[:'exclude_subject'] if !opts[:'exclude_subject'].nil?
      query_params[:'applyFilterOption'] = opts[:'apply_filter_option'] if !opts[:'apply_filter_option'].nil?
      query_params[:'extension'] = opts[:'extension'] if !opts[:'extension'].nil?
      query_params[:'searchArea'] = opts[:'search_area'] if !opts[:'search_area'].nil?
      query_params[:'formsItemKey'] = opts[:'forms_item_key'] if !opts[:'forms_item_key'].nil?
      query_params[:'formsItemType'] = opts[:'forms_item_type'] if !opts[:'forms_item_type'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'filterValue'] = opts[:'filter_value'] if !opts[:'filter_value'].nil?
      query_params[:'Location'] = opts[:'location'] if !opts[:'location'].nil?

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
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder_by_folder_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder_by_folder_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get folder history
    # Returns the activity history of a folder with a specified identifier.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-history/
    # @param folder_id [Integer] The folder ID of the history request.
    # @param [Hash] opts the optional parameters
    # @option opts [ApiDateTime] :from_date The start date of the history request.
    # @option opts [ApiDateTime] :to_date The end date of the history request.
    # @option opts [Integer] :count The number of records to retrieve for the folder history.
    # @option opts [Integer] :start_index The starting index from which the history records are retrieved in the request.
    # @return [HistoryArrayWrapper]
    def get_folder_history(folder_id, opts = {})
      data, _status_code, _headers = get_folder_history_with_http_info(folder_id, opts)
      data
    end

    # Get folder history
    # Returns the activity history of a folder with a specified identifier.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-history/
    # @param folder_id [Integer] The folder ID of the history request.
    # @param [Hash] opts the optional parameters
    # @option opts [ApiDateTime] :from_date The start date of the history request.
    # @option opts [ApiDateTime] :to_date The end date of the history request.
    # @option opts [Integer] :count The number of records to retrieve for the folder history.
    # @option opts [Integer] :start_index The starting index from which the history records are retrieved in the request.
    # @return [Array<(HistoryArrayWrapper, Integer, Hash)>] HistoryArrayWrapper data, response status code and response headers
    def get_folder_history_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder_history ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_folder_history"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_folder_history, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_folder_history, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/log'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fromDate'] = opts[:'from_date'] if !opts[:'from_date'].nil?
      query_params[:'toDate'] = opts[:'to_date'] if !opts[:'to_date'].nil?
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
      return_type = opts[:debug_return_type] || 'HistoryArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get folder information
    # Returns the detailed information about a folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-info/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def get_folder_info(folder_id, opts = {})
      data, _status_code, _headers = get_folder_info_with_http_info(folder_id, opts)
      data
    end

    # Get folder information
    # Returns the detailed information about a folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-info/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def get_folder_info_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder_info ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_folder_info"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
        :operation => :"Files::FoldersApi.get_folder_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the folder links
    # Returns the links of the folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-links/
    # @param id [Integer] The folder ID.
    # @param [Hash] opts the optional parameters
    # @return [FileShareArrayWrapper]
    def get_folder_links(id, opts = {})
      data, _status_code, _headers = get_folder_links_with_http_info(id, opts)
      data
    end

    # Get the folder links
    # Returns the links of the folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-links/
    # @param id [Integer] The folder ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileShareArrayWrapper, Integer, Hash)>] FileShareArrayWrapper data, response status code and response headers
    def get_folder_links_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder_links ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FoldersApi.get_folder_links"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{id}/links'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileShareArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder_links",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder_links\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the folder path
    # Returns a path to the folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-path/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FileEntryBaseArrayWrapper]
    def get_folder_path(folder_id, opts = {})
      data, _status_code, _headers = get_folder_path_with_http_info(folder_id, opts)
      data
    end

    # Get the folder path
    # Returns a path to the folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-path/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileEntryBaseArrayWrapper, Integer, Hash)>] FileEntryBaseArrayWrapper data, response status code and response headers
    def get_folder_path_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder_path ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_folder_path"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/path'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileEntryBaseArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder_path",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get primary external link
    # Returns the primary external link by the identifier specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-primary-external-link/
    # @param id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to retrieve in the request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @return [FileShareWrapper]
    def get_folder_primary_external_link(id, opts = {})
      data, _status_code, _headers = get_folder_primary_external_link_with_http_info(id, opts)
      data
    end

    # Get primary external link
    # Returns the primary external link by the identifier specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-primary-external-link/
    # @param id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to retrieve in the request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @return [Array<(FileShareWrapper, Integer, Hash)>] FileShareWrapper data, response status code and response headers
    def get_folder_primary_external_link_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder_primary_external_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FoldersApi.get_folder_primary_external_link"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_folder_primary_external_link, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_folder_primary_external_link, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/folder/{id}/link'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileShareWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder_primary_external_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder_primary_external_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get subfolders
    # Returns a list of all the subfolders from a folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folders/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FileEntryBaseArrayWrapper]
    def get_folders(folder_id, opts = {})
      data, _status_code, _headers = get_folders_with_http_info(folder_id, opts)
      data
    end

    # Get subfolders
    # Returns a list of all the subfolders from a folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folders/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileEntryBaseArrayWrapper, Integer, Hash)>] FileEntryBaseArrayWrapper data, response status code and response headers
    def get_folders_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folders ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_folders"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/subfolders'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileEntryBaseArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the My documents section
    # Returns the detailed list of files and folders located in the My documents section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-my-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [ApplyFilterOption] :apply_filter_option Specifies whether to return only files, only folders or all elements.
    # @option opts [Integer] :count The maximum number of items to retrieve in the response.
    # @option opts [Integer] :start_index The starting position of the items to be retrieved.
    # @option opts [String] :sort_by The property used to specify the sorting criteria for folder contents.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used for filtering or searching folder contents.
    # @return [FolderContentIntegerWrapper]
    def get_my_folder(opts = {})
      data, _status_code, _headers = get_my_folder_with_http_info(opts)
      data
    end

    # Get the My documents section
    # Returns the detailed list of files and folders located in the My documents section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-my-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [ApplyFilterOption] :apply_filter_option Specifies whether to return only files, only folders or all elements.
    # @option opts [Integer] :count The maximum number of items to retrieve in the response.
    # @option opts [Integer] :start_index The starting position of the items to be retrieved.
    # @option opts [String] :sort_by The property used to specify the sorting criteria for folder contents.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used for filtering or searching folder contents.
    # @return [Array<(FolderContentIntegerWrapper, Integer, Hash)>] FolderContentIntegerWrapper data, response status code and response headers
    def get_my_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_my_folder ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_my_folder, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_my_folder, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/@my'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'applyFilterOption'] = opts[:'apply_filter_option'] if !opts[:'apply_filter_option'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
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
      return_type = opts[:debug_return_type] || 'FolderContentIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_my_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_my_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get new folder items
    # Returns a list of all the new items from a folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-folder-items/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FileEntryBaseArrayWrapper]
    def get_new_folder_items(folder_id, opts = {})
      data, _status_code, _headers = get_new_folder_items_with_http_info(folder_id, opts)
      data
    end

    # Get new folder items
    # Returns a list of all the new items from a folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-folder-items/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileEntryBaseArrayWrapper, Integer, Hash)>] FileEntryBaseArrayWrapper data, response status code and response headers
    def get_new_folder_items_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_new_folder_items ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_new_folder_items"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/news'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileEntryBaseArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_new_folder_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_new_folder_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the Private Room section
    # Returns the detailed list of files and folders located in the Private Room section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-privacy-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [Integer] :count The maximum number of items to retrieve in the request.
    # @option opts [Integer] :start_index The zero-based index of the first item to retrieve in a paginated list.
    # @option opts [String] :sort_by Specifies the field by which the folder content should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used as a filter or search criterion for folder content queries.
    # @return [FolderContentIntegerWrapper]
    def get_privacy_folder(opts = {})
      data, _status_code, _headers = get_privacy_folder_with_http_info(opts)
      data
    end

    # Get the Private Room section
    # Returns the detailed list of files and folders located in the Private Room section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-privacy-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [Integer] :count The maximum number of items to retrieve in the request.
    # @option opts [Integer] :start_index The zero-based index of the first item to retrieve in a paginated list.
    # @option opts [String] :sort_by Specifies the field by which the folder content should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used as a filter or search criterion for folder content queries.
    # @return [Array<(FolderContentIntegerWrapper, Integer, Hash)>] FolderContentIntegerWrapper data, response status code and response headers
    def get_privacy_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_privacy_folder ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_privacy_folder, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_privacy_folder, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/@privacy'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
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
      return_type = opts[:debug_return_type] || 'FolderContentIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_privacy_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_privacy_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the Recent section
    # Returns the detailed list of files located in the Recent section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-recent-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [Boolean] :exclude_subject Specifies whether to exclude search by user or group ID.
    # @option opts [ApplyFilterOption] :apply_filter_option Specifies whether to return only files, only folders or all elements.
    # @option opts [SearchArea] :search_area The search area.
    # @option opts [Array<String>] :extension Specifies whether to search for a specific file extension in the Recent folder.
    # @option opts [Integer] :count The maximum number of items to return.
    # @option opts [Integer] :start_index The starting position of the results to be returned in the query response.
    # @option opts [String] :sort_by Specifies the sorting criteria for the folder request.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used for filtering or searching folder contents.
    # @return [FolderContentIntegerWrapper]
    def get_recent_folder(opts = {})
      data, _status_code, _headers = get_recent_folder_with_http_info(opts)
      data
    end

    # Get the Recent section
    # Returns the detailed list of files located in the Recent section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-recent-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [Boolean] :exclude_subject Specifies whether to exclude search by user or group ID.
    # @option opts [ApplyFilterOption] :apply_filter_option Specifies whether to return only files, only folders or all elements.
    # @option opts [SearchArea] :search_area The search area.
    # @option opts [Array<String>] :extension Specifies whether to search for a specific file extension in the Recent folder.
    # @option opts [Integer] :count The maximum number of items to return.
    # @option opts [Integer] :start_index The starting position of the results to be returned in the query response.
    # @option opts [String] :sort_by Specifies the sorting criteria for the folder request.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used for filtering or searching folder contents.
    # @return [Array<(FolderContentIntegerWrapper, Integer, Hash)>] FolderContentIntegerWrapper data, response status code and response headers
    def get_recent_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_recent_folder ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_recent_folder, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_recent_folder, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/recent'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'excludeSubject'] = opts[:'exclude_subject'] if !opts[:'exclude_subject'].nil?
      query_params[:'applyFilterOption'] = opts[:'apply_filter_option'] if !opts[:'apply_filter_option'].nil?
      query_params[:'searchArea'] = opts[:'search_area'] if !opts[:'search_area'].nil?
      query_params[:'extension'] = @api_client.build_collection_param(opts[:'extension'], :csv) if !opts[:'extension'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
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
      return_type = opts[:debug_return_type] || 'FolderContentIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_recent_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_recent_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get filtered sections
    # Returns all the sections matching the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-root-folders/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [Boolean] :without_trash Specifies whether to return the Trash section or not.
    # @option opts [Integer] :count The maximum number of items to retrieve in the response.
    # @option opts [Integer] :start_index The starting position of the items to be retrieved.
    # @option opts [String] :sort_by Specifies the field by which the folder content should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used as a filter for searching or retrieving folder contents.
    # @return [FolderContentIntegerArrayWrapper]
    def get_root_folders(opts = {})
      data, _status_code, _headers = get_root_folders_with_http_info(opts)
      data
    end

    # Get filtered sections
    # Returns all the sections matching the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-root-folders/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [Boolean] :without_trash Specifies whether to return the Trash section or not.
    # @option opts [Integer] :count The maximum number of items to retrieve in the response.
    # @option opts [Integer] :start_index The starting position of the items to be retrieved.
    # @option opts [String] :sort_by Specifies the field by which the folder content should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used as a filter for searching or retrieving folder contents.
    # @return [Array<(FolderContentIntegerArrayWrapper, Integer, Hash)>] FolderContentIntegerArrayWrapper data, response status code and response headers
    def get_root_folders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_root_folders ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_root_folders, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_root_folders, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/@root'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'withoutTrash'] = opts[:'without_trash'] if !opts[:'without_trash'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
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
      return_type = opts[:debug_return_type] || 'FolderContentIntegerArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_root_folders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_root_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the Trash section
    # Returns the detailed list of files and folders located in the Trash section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-trash-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [ApplyFilterOption] :apply_filter_option Specifies whether to return only files, only folders or all elements.
    # @option opts [Integer] :count The maximum number of items to retrieve in the response.
    # @option opts [Integer] :start_index The starting position of the items to be retrieved.
    # @option opts [String] :sort_by The property used to specify the sorting criteria for folder contents.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used for filtering or searching folder contents.
    # @return [FolderContentIntegerWrapper]
    def get_trash_folder(opts = {})
      data, _status_code, _headers = get_trash_folder_with_http_info(opts)
      data
    end

    # Get the Trash section
    # Returns the detailed list of files and folders located in the Trash section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-trash-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id The user or group ID.
    # @option opts [FilterType] :filter_type The filter type.
    # @option opts [ApplyFilterOption] :apply_filter_option Specifies whether to return only files, only folders or all elements.
    # @option opts [Integer] :count The maximum number of items to retrieve in the response.
    # @option opts [Integer] :start_index The starting position of the items to be retrieved.
    # @option opts [String] :sort_by The property used to specify the sorting criteria for folder contents.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_value The text used for filtering or searching folder contents.
    # @return [Array<(FolderContentIntegerWrapper, Integer, Hash)>] FolderContentIntegerWrapper data, response status code and response headers
    def get_trash_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_trash_folder ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_trash_folder, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_trash_folder, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/@trash'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'applyFilterOption'] = opts[:'apply_filter_option'] if !opts[:'apply_filter_option'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
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
      return_type = opts[:debug_return_type] || 'FolderContentIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_trash_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_trash_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert a file
    # Inserts a file specified in the request to the selected folder by single file uploading.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file/
    # @param folder_id [Integer] The folder ID for inserting a file.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :insert_file_file The file to be inserted.
    # @option opts [String] :insert_file_title The file title to be inserted.
    # @option opts [Boolean] :insert_file_create_new_if_exist Specifies whether to create a new file if it already exists or not.
    # @option opts [Boolean] :insert_file_keep_convert_status Specifies whether to keep the file converting status or not.
    # @option opts [Boolean] :insert_file_stream_can_read 
    # @option opts [Boolean] :insert_file_stream_can_write 
    # @option opts [Boolean] :insert_file_stream_can_seek 
    # @option opts [Boolean] :insert_file_stream_can_timeout 
    # @option opts [Integer] :insert_file_stream_length 
    # @option opts [Integer] :insert_file_stream_position 
    # @option opts [Integer] :insert_file_stream_read_timeout 
    # @option opts [Integer] :insert_file_stream_write_timeout 
    # @return [FileIntegerWrapper]
    def insert_file(folder_id, opts = {})
      data, _status_code, _headers = insert_file_with_http_info(folder_id, opts)
      data
    end

    # Insert a file
    # Inserts a file specified in the request to the selected folder by single file uploading.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file/
    # @param folder_id [Integer] The folder ID for inserting a file.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :insert_file_file The file to be inserted.
    # @option opts [String] :insert_file_title The file title to be inserted.
    # @option opts [Boolean] :insert_file_create_new_if_exist Specifies whether to create a new file if it already exists or not.
    # @option opts [Boolean] :insert_file_keep_convert_status Specifies whether to keep the file converting status or not.
    # @option opts [Boolean] :insert_file_stream_can_read 
    # @option opts [Boolean] :insert_file_stream_can_write 
    # @option opts [Boolean] :insert_file_stream_can_seek 
    # @option opts [Boolean] :insert_file_stream_can_timeout 
    # @option opts [Integer] :insert_file_stream_length 
    # @option opts [Integer] :insert_file_stream_position 
    # @option opts [Integer] :insert_file_stream_read_timeout 
    # @option opts [Integer] :insert_file_stream_write_timeout 
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def insert_file_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.insert_file ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.insert_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/insert'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      form_params['InsertFile.File'] = opts[:'insert_file_file'] if !opts[:'insert_file_file'].nil?
      form_params['InsertFile.Title'] = opts[:'insert_file_title'] if !opts[:'insert_file_title'].nil?
      form_params['InsertFile.CreateNewIfExist'] = opts[:'insert_file_create_new_if_exist'] if !opts[:'insert_file_create_new_if_exist'].nil?
      form_params['InsertFile.KeepConvertStatus'] = opts[:'insert_file_keep_convert_status'] if !opts[:'insert_file_keep_convert_status'].nil?
      form_params['InsertFile.Stream.CanRead'] = opts[:'insert_file_stream_can_read'] if !opts[:'insert_file_stream_can_read'].nil?
      form_params['InsertFile.Stream.CanWrite'] = opts[:'insert_file_stream_can_write'] if !opts[:'insert_file_stream_can_write'].nil?
      form_params['InsertFile.Stream.CanSeek'] = opts[:'insert_file_stream_can_seek'] if !opts[:'insert_file_stream_can_seek'].nil?
      form_params['InsertFile.Stream.CanTimeout'] = opts[:'insert_file_stream_can_timeout'] if !opts[:'insert_file_stream_can_timeout'].nil?
      form_params['InsertFile.Stream.Length'] = opts[:'insert_file_stream_length'] if !opts[:'insert_file_stream_length'].nil?
      form_params['InsertFile.Stream.Position'] = opts[:'insert_file_stream_position'] if !opts[:'insert_file_stream_position'].nil?
      form_params['InsertFile.Stream.ReadTimeout'] = opts[:'insert_file_stream_read_timeout'] if !opts[:'insert_file_stream_read_timeout'].nil?
      form_params['InsertFile.Stream.WriteTimeout'] = opts[:'insert_file_stream_write_timeout'] if !opts[:'insert_file_stream_write_timeout'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.insert_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#insert_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert a file to the My documents section
    # Inserts a file specified in the request to the My documents section by single file uploading.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file-to-my-from-body/
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The file to be inserted.
    # @option opts [String] :title The file title to be inserted.
    # @option opts [Boolean] :create_new_if_exist Specifies whether to create a new file if it already exists or not.
    # @option opts [Boolean] :keep_convert_status Specifies whether to keep the file converting status or not.
    # @option opts [Boolean] :stream_can_read 
    # @option opts [Boolean] :stream_can_write 
    # @option opts [Boolean] :stream_can_seek 
    # @option opts [Boolean] :stream_can_timeout 
    # @option opts [Integer] :stream_length 
    # @option opts [Integer] :stream_position 
    # @option opts [Integer] :stream_read_timeout 
    # @option opts [Integer] :stream_write_timeout 
    # @return [FileIntegerWrapper]
    def insert_file_to_my_from_body(opts = {})
      data, _status_code, _headers = insert_file_to_my_from_body_with_http_info(opts)
      data
    end

    # Insert a file to the My documents section
    # Inserts a file specified in the request to the My documents section by single file uploading.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file-to-my-from-body/
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The file to be inserted.
    # @option opts [String] :title The file title to be inserted.
    # @option opts [Boolean] :create_new_if_exist Specifies whether to create a new file if it already exists or not.
    # @option opts [Boolean] :keep_convert_status Specifies whether to keep the file converting status or not.
    # @option opts [Boolean] :stream_can_read 
    # @option opts [Boolean] :stream_can_write 
    # @option opts [Boolean] :stream_can_seek 
    # @option opts [Boolean] :stream_can_timeout 
    # @option opts [Integer] :stream_length 
    # @option opts [Integer] :stream_position 
    # @option opts [Integer] :stream_read_timeout 
    # @option opts [Integer] :stream_write_timeout 
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def insert_file_to_my_from_body_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.insert_file_to_my_from_body ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/@my/insert'

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
      form_params['Title'] = opts[:'title'] if !opts[:'title'].nil?
      form_params['CreateNewIfExist'] = opts[:'create_new_if_exist'] if !opts[:'create_new_if_exist'].nil?
      form_params['KeepConvertStatus'] = opts[:'keep_convert_status'] if !opts[:'keep_convert_status'].nil?
      form_params['Stream.CanRead'] = opts[:'stream_can_read'] if !opts[:'stream_can_read'].nil?
      form_params['Stream.CanWrite'] = opts[:'stream_can_write'] if !opts[:'stream_can_write'].nil?
      form_params['Stream.CanSeek'] = opts[:'stream_can_seek'] if !opts[:'stream_can_seek'].nil?
      form_params['Stream.CanTimeout'] = opts[:'stream_can_timeout'] if !opts[:'stream_can_timeout'].nil?
      form_params['Stream.Length'] = opts[:'stream_length'] if !opts[:'stream_length'].nil?
      form_params['Stream.Position'] = opts[:'stream_position'] if !opts[:'stream_position'].nil?
      form_params['Stream.ReadTimeout'] = opts[:'stream_read_timeout'] if !opts[:'stream_read_timeout'].nil?
      form_params['Stream.WriteTimeout'] = opts[:'stream_write_timeout'] if !opts[:'stream_write_timeout'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.insert_file_to_my_from_body",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#insert_file_to_my_from_body\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rename a folder
    # Renames the selected folder with a new title specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-folder/
    # @param folder_id [Integer] The folder ID for the folder creation.
    # @param create_folder [CreateFolder] The parameters for creating a folder.
    # @param [Hash] opts the optional parameters
    # @return [FolderIntegerWrapper]
    def rename_folder(folder_id, create_folder, opts = {})
      data, _status_code, _headers = rename_folder_with_http_info(folder_id, create_folder, opts)
      data
    end

    # Rename a folder
    # Renames the selected folder with a new title specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-folder/
    # @param folder_id [Integer] The folder ID for the folder creation.
    # @param create_folder [CreateFolder] The parameters for creating a folder.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def rename_folder_with_http_info(folder_id, create_folder, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.rename_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.rename_folder"
      end
      # verify the required parameter 'create_folder' is set
      if @api_client.config.client_side_validation && create_folder.nil?
        fail ArgumentError, "Missing the required parameter 'create_folder' when calling Files::FoldersApi.rename_folder"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_folder)

      # return_type
      return_type = opts[:debug_return_type] || 'FolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.rename_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#rename_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set folder order
    # Sets the order of a folder with ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-order/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [OrderRequestDto] :order_request_dto The folder order information.
    # @return [FolderIntegerWrapper]
    def set_folder_order(folder_id, opts = {})
      data, _status_code, _headers = set_folder_order_with_http_info(folder_id, opts)
      data
    end

    # Set folder order
    # Sets the order of a folder with ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-order/
    # @param folder_id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [OrderRequestDto] :order_request_dto The folder order information.
    # @return [Array<(FolderIntegerWrapper, Integer, Hash)>] FolderIntegerWrapper data, response status code and response headers
    def set_folder_order_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.set_folder_order ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.set_folder_order"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/order'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'order_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FolderIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.set_folder_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#set_folder_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the folder external link
    # Sets the folder external link with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-primary-external-link/
    # @param id [Integer] The folder ID.
    # @param folder_link_request [FolderLinkRequest] The folder link parameters.
    # @param [Hash] opts the optional parameters
    # @return [FileShareWrapper]
    def set_folder_primary_external_link(id, folder_link_request, opts = {})
      data, _status_code, _headers = set_folder_primary_external_link_with_http_info(id, folder_link_request, opts)
      data
    end

    # Set the folder external link
    # Sets the folder external link with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-primary-external-link/
    # @param id [Integer] The folder ID.
    # @param folder_link_request [FolderLinkRequest] The folder link parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileShareWrapper, Integer, Hash)>] FileShareWrapper data, response status code and response headers
    def set_folder_primary_external_link_with_http_info(id, folder_link_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.set_folder_primary_external_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FoldersApi.set_folder_primary_external_link"
      end
      # verify the required parameter 'folder_link_request' is set
      if @api_client.config.client_side_validation && folder_link_request.nil?
        fail ArgumentError, "Missing the required parameter 'folder_link_request' when calling Files::FoldersApi.set_folder_primary_external_link"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{id}/links'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(folder_link_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.set_folder_primary_external_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#set_folder_primary_external_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a file
    # Uploads a file specified in the request to the selected folder by single file uploading or standart multipart/form-data method.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file/
    # @param folder_id [Integer] The folder ID to upload a file.
    # @param [Hash] opts the optional parameters
    # @option opts [UploadRequestDto] :upload_request_dto The request parameters for uploading a file.
    # @return [ObjectWrapper]
    def upload_file(folder_id, opts = {})
      data, _status_code, _headers = upload_file_with_http_info(folder_id, opts)
      data
    end

    # Upload a file
    # Uploads a file specified in the request to the selected folder by single file uploading or standart multipart/form-data method.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file/
    # @param folder_id [Integer] The folder ID to upload a file.
    # @param [Hash] opts the optional parameters
    # @option opts [UploadRequestDto] :upload_request_dto The request parameters for uploading a file.
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
    def upload_file_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.upload_file ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.upload_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/upload'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'upload_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'ObjectWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.upload_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#upload_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a file to the My documents section
    # Uploads a file specified in the request to the My documents section by single file uploading or standart multipart/form-data method.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file-to-my/
    # @param [Hash] opts the optional parameters
    # @option opts [UploadRequestDto] :in_dto The request parameters for uploading a file.
    # @return [ObjectWrapper]
    def upload_file_to_my(opts = {})
      data, _status_code, _headers = upload_file_to_my_with_http_info(opts)
      data
    end

    # Upload a file to the My documents section
    # Uploads a file specified in the request to the My documents section by single file uploading or standart multipart/form-data method.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file-to-my/
    # @param [Hash] opts the optional parameters
    # @option opts [UploadRequestDto] :in_dto The request parameters for uploading a file.
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
    def upload_file_to_my_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.upload_file_to_my ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/@my/upload'

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
      return_type = opts[:debug_return_type] || 'ObjectWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.upload_file_to_my",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#upload_file_to_my\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

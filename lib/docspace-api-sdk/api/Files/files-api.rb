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
    class FilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a file to the Recent section
    # Adds a file with the ID specified in the request to the Recent section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-file-to-recent/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerWrapper]
    def add_file_to_recent(file_id, opts = {})
      data, _status_code, _headers = add_file_to_recent_with_http_info(file_id, opts)
      data
    end

    # Add a file to the Recent section
    # Adds a file with the ID specified in the request to the Recent section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-file-to-recent/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def add_file_to_recent_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.add_file_to_recent ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.add_file_to_recent"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/recent'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
        :operation => :"Files::FilesApi.add_file_to_recent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#add_file_to_recent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add template files
    # Adds files with the IDs specified in the request to the template list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-templates/
    # @param [Hash] opts the optional parameters
    # @option opts [TemplatesRequestDto] :templates_request_dto 
    # @return [BooleanWrapper]
    def add_templates(opts = {})
      data, _status_code, _headers = add_templates_with_http_info(opts)
      data
    end

    # Add template files
    # Adds files with the IDs specified in the request to the template list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-templates/
    # @param [Hash] opts the optional parameters
    # @option opts [TemplatesRequestDto] :templates_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def add_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.add_templates ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/templates'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'templates_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.add_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#add_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change version history
    # Changes the version history of a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-version-history/
    # @param file_id [Integer] The file Id to change its version history.
    # @param change_history [ChangeHistory] The parameters for changing version history.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerArrayWrapper]
    def change_version_history(file_id, change_history, opts = {})
      data, _status_code, _headers = change_version_history_with_http_info(file_id, change_history, opts)
      data
    end

    # Change version history
    # Changes the version history of a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-version-history/
    # @param file_id [Integer] The file Id to change its version history.
    # @param change_history [ChangeHistory] The parameters for changing version history.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerArrayWrapper, Integer, Hash)>] FileIntegerArrayWrapper data, response status code and response headers
    def change_version_history_with_http_info(file_id, change_history, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.change_version_history ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.change_version_history"
      end
      # verify the required parameter 'change_history' is set
      if @api_client.config.client_side_validation && change_history.nil?
        fail ArgumentError, "Missing the required parameter 'change_history' when calling Files::FilesApi.change_version_history"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/history'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(change_history)

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.change_version_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#change_version_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the form draft filling
    # Checks if the current file is a form draft which can be filled out.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-fill-form-draft/
    # @param file_id [Integer] The file ID of the form draft.
    # @param check_fill_form_draft [CheckFillFormDraft] The parameters for checking the form draft filling.
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def check_fill_form_draft(file_id, check_fill_form_draft, opts = {})
      data, _status_code, _headers = check_fill_form_draft_with_http_info(file_id, check_fill_form_draft, opts)
      data
    end

    # Check the form draft filling
    # Checks if the current file is a form draft which can be filled out.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-fill-form-draft/
    # @param file_id [Integer] The file ID of the form draft.
    # @param check_fill_form_draft [CheckFillFormDraft] The parameters for checking the form draft filling.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def check_fill_form_draft_with_http_info(file_id, check_fill_form_draft, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.check_fill_form_draft ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.check_fill_form_draft"
      end
      # verify the required parameter 'check_fill_form_draft' is set
      if @api_client.config.client_side_validation && check_fill_form_draft.nil?
        fail ArgumentError, "Missing the required parameter 'check_fill_form_draft' when calling Files::FilesApi.check_fill_form_draft"
      end
      # resource path
      local_var_path = '/api/2.0/files/masterform/{fileId}/checkfillformdraft'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(check_fill_form_draft)

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FilesApi.check_fill_form_draft",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#check_fill_form_draft\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Copy a file
    # Copies (and converts if possible) an existing file to the specified folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-file-as/
    # @param file_id [Integer] The file ID to copy.
    # @param copy_as_json_element [CopyAsJsonElement] The parameters for copying a file.
    # @param [Hash] opts the optional parameters
    # @return [FileEntryBaseWrapper]
    def copy_file_as(file_id, copy_as_json_element, opts = {})
      data, _status_code, _headers = copy_file_as_with_http_info(file_id, copy_as_json_element, opts)
      data
    end

    # Copy a file
    # Copies (and converts if possible) an existing file to the specified folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-file-as/
    # @param file_id [Integer] The file ID to copy.
    # @param copy_as_json_element [CopyAsJsonElement] The parameters for copying a file.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileEntryBaseWrapper, Integer, Hash)>] FileEntryBaseWrapper data, response status code and response headers
    def copy_file_as_with_http_info(file_id, copy_as_json_element, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.copy_file_as ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.copy_file_as"
      end
      # verify the required parameter 'copy_as_json_element' is set
      if @api_client.config.client_side_validation && copy_as_json_element.nil?
        fail ArgumentError, "Missing the required parameter 'copy_as_json_element' when calling Files::FilesApi.copy_file_as"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/copyas'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(copy_as_json_element)

      # return_type
      return_type = opts[:debug_return_type] || 'FileEntryBaseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.copy_file_as",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#copy_file_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create the editing session
    # Creates a session to edit the existing file with multiple chunks (needed for WebDAV).
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-edit-session/
    # @param file_id [Integer] The file ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :file_size The file size in bytes.
    # @return [ChunkedUploadSessionResponseWrapperIntegerWrapper]
    def create_edit_session(file_id, opts = {})
      data, _status_code, _headers = create_edit_session_with_http_info(file_id, opts)
      data
    end

    # Create the editing session
    # Creates a session to edit the existing file with multiple chunks (needed for WebDAV).
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-edit-session/
    # @param file_id [Integer] The file ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :file_size The file size in bytes.
    # @return [Array<(ChunkedUploadSessionResponseWrapperIntegerWrapper, Integer, Hash)>] ChunkedUploadSessionResponseWrapperIntegerWrapper data, response status code and response headers
    def create_edit_session_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.create_edit_session ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.create_edit_session"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/edit_session'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fileSize'] = opts[:'file_size'] if !opts[:'file_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ChunkedUploadSessionResponseWrapperIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.create_edit_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#create_edit_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a file
    # Creates a new file in the specified folder with the title specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file/
    # @param folder_id [Integer] The folder ID for the file creation.
    # @param create_file_json_element [CreateFileJsonElement] The parameters for creating a file.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerWrapper]
    def create_file(folder_id, create_file_json_element, opts = {})
      data, _status_code, _headers = create_file_with_http_info(folder_id, create_file_json_element, opts)
      data
    end

    # Create a file
    # Creates a new file in the specified folder with the title specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file/
    # @param folder_id [Integer] The folder ID for the file creation.
    # @param create_file_json_element [CreateFileJsonElement] The parameters for creating a file.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def create_file_with_http_info(folder_id, create_file_json_element, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.create_file ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FilesApi.create_file"
      end
      # verify the required parameter 'create_file_json_element' is set
      if @api_client.config.client_side_validation && create_file_json_element.nil?
        fail ArgumentError, "Missing the required parameter 'create_file_json_element' when calling Files::FilesApi.create_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/file'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_file_json_element)

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.create_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#create_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a file in the My documents section
    # Creates a new file in the My documents section with the title specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-in-my-documents/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateFileJsonElement] :create_file_json_element 
    # @return [FileIntegerWrapper]
    def create_file_in_my_documents(opts = {})
      data, _status_code, _headers = create_file_in_my_documents_with_http_info(opts)
      data
    end

    # Create a file in the My documents section
    # Creates a new file in the My documents section with the title specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-in-my-documents/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateFileJsonElement] :create_file_json_element 
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def create_file_in_my_documents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.create_file_in_my_documents ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/@my/file'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_file_json_element'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.create_file_in_my_documents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#create_file_in_my_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create primary external link
    # Creates a primary external link by the identifier specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-primary-external-link/
    # @param id [Integer] The file ID.
    # @param file_link_request [FileLinkRequest] The file external link parameters.
    # @param [Hash] opts the optional parameters
    # @return [FileShareWrapper]
    def create_file_primary_external_link(id, file_link_request, opts = {})
      data, _status_code, _headers = create_file_primary_external_link_with_http_info(id, file_link_request, opts)
      data
    end

    # Create primary external link
    # Creates a primary external link by the identifier specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-primary-external-link/
    # @param id [Integer] The file ID.
    # @param file_link_request [FileLinkRequest] The file external link parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileShareWrapper, Integer, Hash)>] FileShareWrapper data, response status code and response headers
    def create_file_primary_external_link_with_http_info(id, file_link_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.create_file_primary_external_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FilesApi.create_file_primary_external_link"
      end
      # verify the required parameter 'file_link_request' is set
      if @api_client.config.client_side_validation && file_link_request.nil?
        fail ArgumentError, "Missing the required parameter 'file_link_request' when calling Files::FilesApi.create_file_primary_external_link"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{id}/link'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(file_link_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.create_file_primary_external_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#create_file_primary_external_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an HTML file
    # Creates an HTML (.html) file in the selected folder with the title and contents specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file/
    # @param folder_id [Integer] The folder ID to create the text or HTML file.
    # @param create_text_or_html_file [CreateTextOrHtmlFile] The parameters for creating an HTML or text file.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerWrapper]
    def create_html_file(folder_id, create_text_or_html_file, opts = {})
      data, _status_code, _headers = create_html_file_with_http_info(folder_id, create_text_or_html_file, opts)
      data
    end

    # Create an HTML file
    # Creates an HTML (.html) file in the selected folder with the title and contents specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file/
    # @param folder_id [Integer] The folder ID to create the text or HTML file.
    # @param create_text_or_html_file [CreateTextOrHtmlFile] The parameters for creating an HTML or text file.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def create_html_file_with_http_info(folder_id, create_text_or_html_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.create_html_file ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FilesApi.create_html_file"
      end
      # verify the required parameter 'create_text_or_html_file' is set
      if @api_client.config.client_side_validation && create_text_or_html_file.nil?
        fail ArgumentError, "Missing the required parameter 'create_text_or_html_file' when calling Files::FilesApi.create_html_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/html'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_text_or_html_file)

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.create_html_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#create_html_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an HTML file in the My documents section
    # Creates an HTML (.html) file in the My documents section with the title and contents specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file-in-my-documents/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTextOrHtmlFile] :create_text_or_html_file 
    # @return [FileIntegerWrapper]
    def create_html_file_in_my_documents(opts = {})
      data, _status_code, _headers = create_html_file_in_my_documents_with_http_info(opts)
      data
    end

    # Create an HTML file in the My documents section
    # Creates an HTML (.html) file in the My documents section with the title and contents specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file-in-my-documents/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTextOrHtmlFile] :create_text_or_html_file 
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def create_html_file_in_my_documents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.create_html_file_in_my_documents ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/@my/html'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_text_or_html_file'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.create_html_file_in_my_documents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#create_html_file_in_my_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a text file
    # Creates a text (.txt) file in the selected folder with the title and contents specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file/
    # @param folder_id [Integer] The folder ID to create the text or HTML file.
    # @param create_text_or_html_file [CreateTextOrHtmlFile] The parameters for creating an HTML or text file.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerWrapper]
    def create_text_file(folder_id, create_text_or_html_file, opts = {})
      data, _status_code, _headers = create_text_file_with_http_info(folder_id, create_text_or_html_file, opts)
      data
    end

    # Create a text file
    # Creates a text (.txt) file in the selected folder with the title and contents specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file/
    # @param folder_id [Integer] The folder ID to create the text or HTML file.
    # @param create_text_or_html_file [CreateTextOrHtmlFile] The parameters for creating an HTML or text file.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def create_text_file_with_http_info(folder_id, create_text_or_html_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.create_text_file ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FilesApi.create_text_file"
      end
      # verify the required parameter 'create_text_or_html_file' is set
      if @api_client.config.client_side_validation && create_text_or_html_file.nil?
        fail ArgumentError, "Missing the required parameter 'create_text_or_html_file' when calling Files::FilesApi.create_text_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/text'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_text_or_html_file)

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.create_text_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#create_text_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a text file in the My documents section
    # Creates a text (.txt) file in the My documents section with the title and contents specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file-in-my-documents/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTextOrHtmlFile] :create_text_or_html_file 
    # @return [FileIntegerWrapper]
    def create_text_file_in_my_documents(opts = {})
      data, _status_code, _headers = create_text_file_in_my_documents_with_http_info(opts)
      data
    end

    # Create a text file in the My documents section
    # Creates a text (.txt) file in the My documents section with the title and contents specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file-in-my-documents/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTextOrHtmlFile] :create_text_or_html_file 
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def create_text_file_in_my_documents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.create_text_file_in_my_documents ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/@my/text'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_text_or_html_file'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.create_text_file_in_my_documents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#create_text_file_in_my_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create file thumbnails
    # Creates thumbnails for the files with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-thumbnails/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [ObjectArrayWrapper]
    def create_thumbnails(opts = {})
      data, _status_code, _headers = create_thumbnails_with_http_info(opts)
      data
    end

    # Create file thumbnails
    # Creates thumbnails for the files with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-thumbnails/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [Array<(ObjectArrayWrapper, Integer, Hash)>] ObjectArrayWrapper data, response status code and response headers
    def create_thumbnails_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.create_thumbnails ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/thumbnails'

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
      return_type = opts[:debug_return_type] || 'ObjectArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FilesApi.create_thumbnails",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#create_thumbnails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a file
    # Deletes a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file/
    # @param file_id [Integer] The file ID to delete.
    # @param delete [Delete] The parameters for deleting a file.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :return_single_operation Specifies whether to return only the current operation
    # @return [FileOperationArrayWrapper]
    def delete_file(file_id, delete, opts = {})
      data, _status_code, _headers = delete_file_with_http_info(file_id, delete, opts)
      data
    end

    # Delete a file
    # Deletes a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file/
    # @param file_id [Integer] The file ID to delete.
    # @param delete [Delete] The parameters for deleting a file.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :return_single_operation Specifies whether to return only the current operation
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def delete_file_with_http_info(file_id, delete, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.delete_file ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.delete_file"
      end
      # verify the required parameter 'delete' is set
      if @api_client.config.client_side_validation && delete.nil?
        fail ArgumentError, "Missing the required parameter 'delete' when calling Files::FilesApi.delete_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ReturnSingleOperation'] = opts[:'return_single_operation'] if !opts[:'return_single_operation'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete)

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.delete_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#delete_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete recent files
    # Removes files with the IDs specified in the request from the Recent section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-recent/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [NoContentResultWrapper]
    def delete_recent(opts = {})
      data, _status_code, _headers = delete_recent_with_http_info(opts)
      data
    end

    # Delete recent files
    # Removes files with the IDs specified in the request from the Recent section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-recent/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [Array<(NoContentResultWrapper, Integer, Hash)>] NoContentResultWrapper data, response status code and response headers
    def delete_recent_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.delete_recent ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/recent'

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
      return_type = opts[:debug_return_type] || 'NoContentResultWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.delete_recent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#delete_recent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete template files
    # Removes files with the IDs specified in the request from the template list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-templates/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :request_body The file IDs.
    # @return [BooleanWrapper]
    def delete_templates(opts = {})
      data, _status_code, _headers = delete_templates_with_http_info(opts)
      data
    end

    # Delete template files
    # Removes files with the IDs specified in the request from the template list.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-templates/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :request_body The file IDs.
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def delete_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.delete_templates ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/templates'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.delete_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#delete_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate XLSX report
    # Triggers asynchronous XLSX report generation for the specified form file.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerWrapper]
    def generate_xlsx(file_id, opts = {})
      data, _status_code, _headers = generate_xlsx_with_http_info(file_id, opts)
      data
    end

    # Generate XLSX report
    # Triggers asynchronous XLSX report generation for the specified form file.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def generate_xlsx_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.generate_xlsx ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.generate_xlsx"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/xlsx'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
        :operation => :"Files::FilesApi.generate_xlsx",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#generate_xlsx\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get form roles
    # Returns all roles for the specified form.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-form-roles/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FormRoleArrayWrapper]
    def get_all_form_roles(file_id, opts = {})
      data, _status_code, _headers = get_all_form_roles_with_http_info(file_id, opts)
      data
    end

    # Get form roles
    # Returns all roles for the specified form.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-form-roles/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FormRoleArrayWrapper, Integer, Hash)>] FormRoleArrayWrapper data, response status code and response headers
    def get_all_form_roles_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_all_form_roles ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.get_all_form_roles"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/formroles'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FormRoleArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.get_all_form_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_all_form_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get changes URL
    # Returns a URL to the changes of a file version specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-diff-url/
    # @param file_id [Integer] The file ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :version The file version.
    # @return [EditHistoryDataWrapper]
    def get_edit_diff_url(file_id, opts = {})
      data, _status_code, _headers = get_edit_diff_url_with_http_info(file_id, opts)
      data
    end

    # Get changes URL
    # Returns a URL to the changes of a file version specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-diff-url/
    # @param file_id [Integer] The file ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :version The file version.
    # @return [Array<(EditHistoryDataWrapper, Integer, Hash)>] EditHistoryDataWrapper data, response status code and response headers
    def get_edit_diff_url_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_edit_diff_url ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.get_edit_diff_url"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/edit/diff'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EditHistoryDataWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FilesApi.get_edit_diff_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_edit_diff_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get version history
    # Returns the version history of a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-history/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [EditHistoryArrayWrapper]
    def get_edit_history(file_id, opts = {})
      data, _status_code, _headers = get_edit_history_with_http_info(file_id, opts)
      data
    end

    # Get version history
    # Returns the version history of a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-history/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EditHistoryArrayWrapper, Integer, Hash)>] EditHistoryArrayWrapper data, response status code and response headers
    def get_edit_history_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_edit_history ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.get_edit_history"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/edit/history'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'EditHistoryArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FilesApi.get_edit_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_edit_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file history
    # Returns the list of actions performed on the file with the specified identifier.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-history/
    # @param file_id [Integer] The file ID of the history request.
    # @param [Hash] opts the optional parameters
    # @option opts [ApiDateTime] :from_date The start date of the history.
    # @option opts [ApiDateTime] :to_date The end date of the history.
    # @option opts [Integer] :count The number of history entries to retrieve for the file log.
    # @option opts [Integer] :start_index The starting index for retrieving a subset of file history entries.
    # @return [HistoryArrayWrapper]
    def get_file_history(file_id, opts = {})
      data, _status_code, _headers = get_file_history_with_http_info(file_id, opts)
      data
    end

    # Get file history
    # Returns the list of actions performed on the file with the specified identifier.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-history/
    # @param file_id [Integer] The file ID of the history request.
    # @param [Hash] opts the optional parameters
    # @option opts [ApiDateTime] :from_date The start date of the history.
    # @option opts [ApiDateTime] :to_date The end date of the history.
    # @option opts [Integer] :count The number of history entries to retrieve for the file log.
    # @option opts [Integer] :start_index The starting index for retrieving a subset of file history entries.
    # @return [Array<(HistoryArrayWrapper, Integer, Hash)>] HistoryArrayWrapper data, response status code and response headers
    def get_file_history_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_file_history ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.get_file_history"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FilesApi.get_file_history, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FilesApi.get_file_history, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/log'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
        :operation => :"Files::FilesApi.get_file_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_file_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file information
    # Returns the detailed information about a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-info/
    # @param file_id [Integer] The file ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :version The file version.
    # @return [FileIntegerWrapper]
    def get_file_info(file_id, opts = {})
      data, _status_code, _headers = get_file_info_with_http_info(file_id, opts)
      data
    end

    # Get file information
    # Returns the detailed information about a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-info/
    # @param file_id [Integer] The file ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :version The file version.
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def get_file_info_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_file_info ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.get_file_info"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?

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
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FilesApi.get_file_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_file_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file external links
    # Returns the external links of a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-links/
    # @param id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to retrieve in the request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @return [FileShareArrayWrapper]
    def get_file_links(id, opts = {})
      data, _status_code, _headers = get_file_links_with_http_info(id, opts)
      data
    end

    # Get file external links
    # Returns the external links of a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-links/
    # @param id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to retrieve in the request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @return [Array<(FileShareArrayWrapper, Integer, Hash)>] FileShareArrayWrapper data, response status code and response headers
    def get_file_links_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_file_links ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FilesApi.get_file_links"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FilesApi.get_file_links, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FilesApi.get_file_links, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/file/{id}/links'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"Files::FilesApi.get_file_links",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_file_links\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get primary external link
    # Returns the primary external link by the identifier specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-primary-external-link/
    # @param id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to retrieve in the request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @return [FileShareWrapper]
    def get_file_primary_external_link(id, opts = {})
      data, _status_code, _headers = get_file_primary_external_link_with_http_info(id, opts)
      data
    end

    # Get primary external link
    # Returns the primary external link by the identifier specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-primary-external-link/
    # @param id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to retrieve in the request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @return [Array<(FileShareWrapper, Integer, Hash)>] FileShareWrapper data, response status code and response headers
    def get_file_primary_external_link_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_file_primary_external_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FilesApi.get_file_primary_external_link"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FilesApi.get_file_primary_external_link, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FilesApi.get_file_primary_external_link, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/file/{id}/link'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"Files::FilesApi.get_file_primary_external_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_file_primary_external_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file versions
    # Returns the detailed information about all the available file versions with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-version-info/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerArrayWrapper]
    def get_file_version_info(file_id, opts = {})
      data, _status_code, _headers = get_file_version_info_with_http_info(file_id, opts)
      data
    end

    # Get file versions
    # Returns the detailed information about all the available file versions with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-version-info/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerArrayWrapper, Integer, Hash)>] FileIntegerArrayWrapper data, response status code and response headers
    def get_file_version_info_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_file_version_info ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.get_file_version_info"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/history'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileIntegerArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FilesApi.get_file_version_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_file_version_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get form-filling result
    # Retrieves the result of a form-filling session.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-fill-result/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filling_session_id The form-filling session ID.
    # @return [FillingFormResultIntegerWrapper]
    def get_fill_result(opts = {})
      data, _status_code, _headers = get_fill_result_with_http_info(opts)
      data
    end

    # Get form-filling result
    # Retrieves the result of a form-filling session.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-fill-result/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filling_session_id The form-filling session ID.
    # @return [Array<(FillingFormResultIntegerWrapper, Integer, Hash)>] FillingFormResultIntegerWrapper data, response status code and response headers
    def get_fill_result_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_fill_result ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/file/fillresult'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fillingSessionId'] = opts[:'filling_session_id'] if !opts[:'filling_session_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FillingFormResultIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FilesApi.get_fill_result",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_fill_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get form submission results
    # Returns the results of form submissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-form-submissions/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FormSubmissionsWrapper]
    def get_form_submissions(file_id, opts = {})
      data, _status_code, _headers = get_form_submissions_with_http_info(file_id, opts)
      data
    end

    # Get form submission results
    # Returns the results of form submissions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-form-submissions/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FormSubmissionsWrapper, Integer, Hash)>] FormSubmissionsWrapper data, response status code and response headers
    def get_form_submissions_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_form_submissions ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.get_form_submissions"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/submissions'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FormSubmissionsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.get_form_submissions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_form_submissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file download link asynchronously
    # Returns a link to download a file with the ID specified in the request asynchronously.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-file-uri/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [FileLinkWrapper]
    def get_presigned_file_uri(file_id, opts = {})
      data, _status_code, _headers = get_presigned_file_uri_with_http_info(file_id, opts)
      data
    end

    # Get file download link asynchronously
    # Returns a link to download a file with the ID specified in the request asynchronously.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-file-uri/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileLinkWrapper, Integer, Hash)>] FileLinkWrapper data, response status code and response headers
    def get_presigned_file_uri_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_presigned_file_uri ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.get_presigned_file_uri"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/presigned'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileLinkWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.get_presigned_file_uri",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_presigned_file_uri\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file download link
    # Returns a pre-signed URL to download a file with the specified ID.  This temporary link provides secure access to the file.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-uri/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def get_presigned_uri(file_id, opts = {})
      data, _status_code, _headers = get_presigned_uri_with_http_info(file_id, opts)
      data
    end

    # Get file download link
    # Returns a pre-signed URL to download a file with the specified ID.  This temporary link provides secure access to the file.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-uri/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def get_presigned_uri_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_presigned_uri ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.get_presigned_uri"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/presigneduri'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
        :operation => :"Files::FilesApi.get_presigned_uri",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_presigned_uri\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get users access rights to the protected file
    # Returns a list of users with their access rights to the protected file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-protected-file-users/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [MentionWrapperArrayWrapper]
    def get_protected_file_users(file_id, opts = {})
      data, _status_code, _headers = get_protected_file_users_with_http_info(file_id, opts)
      data
    end

    # Get users access rights to the protected file
    # Returns a list of users with their access rights to the protected file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-protected-file-users/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MentionWrapperArrayWrapper, Integer, Hash)>] MentionWrapperArrayWrapper data, response status code and response headers
    def get_protected_file_users_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_protected_file_users ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.get_protected_file_users"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/protectusers'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
        :operation => :"Files::FilesApi.get_protected_file_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_protected_file_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get reference data
    # Returns the reference data to uniquely identify a file in its system and check the availability of insering data into the destination spreadsheet by the external link.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reference-data/
    # @param [Hash] opts the optional parameters
    # @option opts [GetReferenceDataDtoInteger] :get_reference_data_dto_integer 
    # @return [FileReferenceWrapper]
    def get_reference_data(opts = {})
      data, _status_code, _headers = get_reference_data_with_http_info(opts)
      data
    end

    # Get reference data
    # Returns the reference data to uniquely identify a file in its system and check the availability of insering data into the destination spreadsheet by the external link.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reference-data/
    # @param [Hash] opts the optional parameters
    # @option opts [GetReferenceDataDtoInteger] :get_reference_data_dto_integer 
    # @return [Array<(FileReferenceWrapper, Integer, Hash)>] FileReferenceWrapper data, response status code and response headers
    def get_reference_data_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.get_reference_data ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/file/referencedata'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'get_reference_data_dto_integer'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileReferenceWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.get_reference_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#get_reference_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the PDF file
    # Checks if the PDF file is a form or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/is-form-pdf/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def is_form_pdf(file_id, opts = {})
      data, _status_code, _headers = is_form_pdf_with_http_info(file_id, opts)
      data
    end

    # Check the PDF file
    # Checks if the PDF file is a form or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/is-form-pdf/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def is_form_pdf_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.is_form_pdf ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.is_form_pdf"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/isformpdf'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
        :operation => :"Files::FilesApi.is_form_pdf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#is_form_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lock a file
    # Locks a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/lock-file/
    # @param file_id [Integer] The file ID for locking.
    # @param lock_file_parameters [LockFileParameters] The parameters for locking a file.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerWrapper]
    def lock_file(file_id, lock_file_parameters, opts = {})
      data, _status_code, _headers = lock_file_with_http_info(file_id, lock_file_parameters, opts)
      data
    end

    # Lock a file
    # Locks a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/lock-file/
    # @param file_id [Integer] The file ID for locking.
    # @param lock_file_parameters [LockFileParameters] The parameters for locking a file.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def lock_file_with_http_info(file_id, lock_file_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.lock_file ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.lock_file"
      end
      # verify the required parameter 'lock_file_parameters' is set
      if @api_client.config.client_side_validation && lock_file_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'lock_file_parameters' when calling Files::FilesApi.lock_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/lock'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lock_file_parameters)

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.lock_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#lock_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform form filling action
    # Performs the specified form filling action.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/manage-form-filling/
    # @param file_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [ManageFormFillingDtoInteger] :manage_form_filling_dto_integer 
    # @return [nil]
    def manage_form_filling(file_id, opts = {})
      manage_form_filling_with_http_info(file_id, opts)
      nil
    end

    # Perform form filling action
    # Performs the specified form filling action.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/manage-form-filling/
    # @param file_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [ManageFormFillingDtoInteger] :manage_form_filling_dto_integer 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def manage_form_filling_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.manage_form_filling ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.manage_form_filling"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/manageformfilling'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'manage_form_filling_dto_integer'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.manage_form_filling",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#manage_form_filling\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Open a file configuration
    # Returns the initialization configuration of a file to open it in the editor.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/open-edit-file/
    # @param file_id [Integer] The file ID to open.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :version The file version to open.
    # @option opts [Boolean] :view Specifies if the document will be opened for viewing only or not.
    # @option opts [EditorType] :editor_type The editor type to open the file.
    # @option opts [Boolean] :edit Specifies if the document is opened in the editing mode or not.
    # @option opts [Boolean] :fill Specifies if the document is opened in the form-filling mode or not.
    # @return [ConfigurationIntegerWrapper]
    def open_edit_file(file_id, opts = {})
      data, _status_code, _headers = open_edit_file_with_http_info(file_id, opts)
      data
    end

    # Open a file configuration
    # Returns the initialization configuration of a file to open it in the editor.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/open-edit-file/
    # @param file_id [Integer] The file ID to open.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :version The file version to open.
    # @option opts [Boolean] :view Specifies if the document will be opened for viewing only or not.
    # @option opts [EditorType] :editor_type The editor type to open the file.
    # @option opts [Boolean] :edit Specifies if the document is opened in the editing mode or not.
    # @option opts [Boolean] :fill Specifies if the document is opened in the form-filling mode or not.
    # @return [Array<(ConfigurationIntegerWrapper, Integer, Hash)>] ConfigurationIntegerWrapper data, response status code and response headers
    def open_edit_file_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.open_edit_file ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.open_edit_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/openedit'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?
      query_params[:'view'] = opts[:'view'] if !opts[:'view'].nil?
      query_params[:'editorType'] = opts[:'editor_type'] if !opts[:'editor_type'].nil?
      query_params[:'edit'] = opts[:'edit'] if !opts[:'edit'].nil?
      query_params[:'fill'] = opts[:'fill'] if !opts[:'fill'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConfigurationIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FilesApi.open_edit_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#open_edit_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Restore a file version
    # Restores a file version specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-file-version/
    # @param file_id [Integer] The file ID of the restore version.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :version The file version of the restore.
    # @option opts [String] :url The file version URL of the restore.
    # @return [EditHistoryArrayWrapper]
    def restore_file_version(file_id, opts = {})
      data, _status_code, _headers = restore_file_version_with_http_info(file_id, opts)
      data
    end

    # Restore a file version
    # Restores a file version specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-file-version/
    # @param file_id [Integer] The file ID of the restore version.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :version The file version of the restore.
    # @option opts [String] :url The file version URL of the restore.
    # @return [Array<(EditHistoryArrayWrapper, Integer, Hash)>] EditHistoryArrayWrapper data, response status code and response headers
    def restore_file_version_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.restore_file_version ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.restore_file_version"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/restoreversion'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?
      query_params[:'url'] = opts[:'url'] if !opts[:'url'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EditHistoryArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FilesApi.restore_file_version",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#restore_file_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save file edits
    # Saves edits to a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-editing-file-from-form/
    # @param file_id [Integer] The editing file ID from the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :download_uri The URI to download the editing file.
    # @option opts [String] :file_extension The editing file extension from the request.
    # @option opts [File] :file The edited file to be saved, uploaded as part of the multipart/form-data request.  This property represents the modified file content from the HTTP request form after editing operations.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream.
    # @option opts [Boolean] :forcesave Specifies whether to force save the file or not.
    # @return [FileIntegerWrapper]
    def save_editing_file_from_form(file_id, opts = {})
      data, _status_code, _headers = save_editing_file_from_form_with_http_info(file_id, opts)
      data
    end

    # Save file edits
    # Saves edits to a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-editing-file-from-form/
    # @param file_id [Integer] The editing file ID from the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :download_uri The URI to download the editing file.
    # @option opts [String] :file_extension The editing file extension from the request.
    # @option opts [File] :file The edited file to be saved, uploaded as part of the multipart/form-data request.  This property represents the modified file content from the HTTP request form after editing operations.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream.
    # @option opts [Boolean] :forcesave Specifies whether to force save the file or not.
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def save_editing_file_from_form_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.save_editing_file_from_form ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.save_editing_file_from_form"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/saveediting'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'DownloadUri'] = opts[:'download_uri'] if !opts[:'download_uri'].nil?

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
      form_params['FileExtension'] = opts[:'file_extension'] if !opts[:'file_extension'].nil?
      form_params['File'] = opts[:'file'] if !opts[:'file'].nil?
      form_params['Forcesave'] = opts[:'forcesave'] if !opts[:'forcesave'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.save_editing_file_from_form",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#save_editing_file_from_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save a file as PDF
    # Saves a file with the identifier specified in the request as a PDF document.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-file-as-pdf/
    # @param id [Integer] The file ID to save as PDF.
    # @param save_as_pdf_integer [SaveAsPdfInteger] The parameters for saving the file as PDF.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerWrapper]
    def save_file_as_pdf(id, save_as_pdf_integer, opts = {})
      data, _status_code, _headers = save_file_as_pdf_with_http_info(id, save_as_pdf_integer, opts)
      data
    end

    # Save a file as PDF
    # Saves a file with the identifier specified in the request as a PDF document.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-file-as-pdf/
    # @param id [Integer] The file ID to save as PDF.
    # @param save_as_pdf_integer [SaveAsPdfInteger] The parameters for saving the file as PDF.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def save_file_as_pdf_with_http_info(id, save_as_pdf_integer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.save_file_as_pdf ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FilesApi.save_file_as_pdf"
      end
      # verify the required parameter 'save_as_pdf_integer' is set
      if @api_client.config.client_side_validation && save_as_pdf_integer.nil?
        fail ArgumentError, "Missing the required parameter 'save_as_pdf_integer' when calling Files::FilesApi.save_file_as_pdf"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{id}/saveaspdf'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_as_pdf_integer)

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.save_file_as_pdf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#save_file_as_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save form role mapping
    # Saves the form role mapping.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-form-role-mapping/
    # @param file_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SaveFormRoleMappingDtoInteger] :save_form_role_mapping_dto_integer 
    # @return [nil]
    def save_form_role_mapping(file_id, opts = {})
      save_form_role_mapping_with_http_info(file_id, opts)
      nil
    end

    # Save form role mapping
    # Saves the form role mapping.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-form-role-mapping/
    # @param file_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SaveFormRoleMappingDtoInteger] :save_form_role_mapping_dto_integer 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def save_form_role_mapping_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.save_form_role_mapping ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.save_form_role_mapping"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/formrolemapping'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'save_form_role_mapping_dto_integer'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.save_form_role_mapping",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#save_form_role_mapping\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the Custom Filter editing mode
    # Sets the Custom Filter editing mode to a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-custom-filter-tag/
    # @param file_id [Integer] The file ID.
    # @param custom_filter_parameters [CustomFilterParameters] The parameters for setting the Custom Filter editing mode.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerWrapper]
    def set_custom_filter_tag(file_id, custom_filter_parameters, opts = {})
      data, _status_code, _headers = set_custom_filter_tag_with_http_info(file_id, custom_filter_parameters, opts)
      data
    end

    # Set the Custom Filter editing mode
    # Sets the Custom Filter editing mode to a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-custom-filter-tag/
    # @param file_id [Integer] The file ID.
    # @param custom_filter_parameters [CustomFilterParameters] The parameters for setting the Custom Filter editing mode.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def set_custom_filter_tag_with_http_info(file_id, custom_filter_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.set_custom_filter_tag ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.set_custom_filter_tag"
      end
      # verify the required parameter 'custom_filter_parameters' is set
      if @api_client.config.client_side_validation && custom_filter_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'custom_filter_parameters' when calling Files::FilesApi.set_custom_filter_tag"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/customfilter'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(custom_filter_parameters)

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.set_custom_filter_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#set_custom_filter_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set an external link
    # Sets an external link to a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-external-link/
    # @param id [Integer] The file ID.
    # @param file_link_request [FileLinkRequest] The file external link parameters.
    # @param [Hash] opts the optional parameters
    # @return [FileShareWrapper]
    def set_file_external_link(id, file_link_request, opts = {})
      data, _status_code, _headers = set_file_external_link_with_http_info(id, file_link_request, opts)
      data
    end

    # Set an external link
    # Sets an external link to a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-external-link/
    # @param id [Integer] The file ID.
    # @param file_link_request [FileLinkRequest] The file external link parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileShareWrapper, Integer, Hash)>] FileShareWrapper data, response status code and response headers
    def set_file_external_link_with_http_info(id, file_link_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.set_file_external_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FilesApi.set_file_external_link"
      end
      # verify the required parameter 'file_link_request' is set
      if @api_client.config.client_side_validation && file_link_request.nil?
        fail ArgumentError, "Missing the required parameter 'file_link_request' when calling Files::FilesApi.set_file_external_link"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{id}/links'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(file_link_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.set_file_external_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#set_file_external_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set file order
    # Sets the order of the file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-order/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [OrderRequestDto] :order_request_dto The file order information.
    # @return [FileIntegerWrapper]
    def set_file_order(file_id, opts = {})
      data, _status_code, _headers = set_file_order_with_http_info(file_id, opts)
      data
    end

    # Set file order
    # Sets the order of the file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-order/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [OrderRequestDto] :order_request_dto The file order information.
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def set_file_order_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.set_file_order ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.set_file_order"
      end
      # resource path
      local_var_path = '/api/2.0/files/{fileId}/order'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.set_file_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#set_file_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set order of files
    # Sets the order of the files specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-files-order/
    # @param [Hash] opts the optional parameters
    # @option opts [OrdersRequestDtoInteger] :orders_request_dto_integer 
    # @return [FileEntryIntegerArrayWrapper]
    def set_files_order(opts = {})
      data, _status_code, _headers = set_files_order_with_http_info(opts)
      data
    end

    # Set order of files
    # Sets the order of the files specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-files-order/
    # @param [Hash] opts the optional parameters
    # @option opts [OrdersRequestDtoInteger] :orders_request_dto_integer 
    # @return [Array<(FileEntryIntegerArrayWrapper, Integer, Hash)>] FileEntryIntegerArrayWrapper data, response status code and response headers
    def set_files_order_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.set_files_order ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/order'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'orders_request_dto_integer'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileEntryIntegerArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FilesApi.set_files_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#set_files_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start file editing
    # Informs about opening a file with the ID specified in the request for editing, locking it from being deleted or moved (this method is called by the mobile editors).
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-edit-file/
    # @param file_id [Integer] The file ID to start editing.
    # @param start_edit [StartEdit] The file parameters to start editing.
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def start_edit_file(file_id, start_edit, opts = {})
      data, _status_code, _headers = start_edit_file_with_http_info(file_id, start_edit, opts)
      data
    end

    # Start file editing
    # Informs about opening a file with the ID specified in the request for editing, locking it from being deleted or moved (this method is called by the mobile editors).
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-edit-file/
    # @param file_id [Integer] The file ID to start editing.
    # @param start_edit [StartEdit] The file parameters to start editing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def start_edit_file_with_http_info(file_id, start_edit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.start_edit_file ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.start_edit_file"
      end
      # verify the required parameter 'start_edit' is set
      if @api_client.config.client_side_validation && start_edit.nil?
        fail ArgumentError, "Missing the required parameter 'start_edit' when calling Files::FilesApi.start_edit_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/startedit'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(start_edit)

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FilesApi.start_edit_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#start_edit_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start file filling
    # Starts filling a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-filling-file/
    # @param file_id [Integer] The file ID to start filling.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerWrapper]
    def start_filling_file(file_id, opts = {})
      data, _status_code, _headers = start_filling_file_with_http_info(file_id, opts)
      data
    end

    # Start file filling
    # Starts filling a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-filling-file/
    # @param file_id [Integer] The file ID to start filling.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def start_filling_file_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.start_filling_file ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.start_filling_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/startfilling'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
        :operation => :"Files::FilesApi.start_filling_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#start_filling_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the file favorite status
    # Changes the favorite status of the file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/toggle-file-favorite/
    # @param file_id [Integer] The file ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :favorite Specifies if the file is marked as favorite or not.
    # @return [BooleanWrapper]
    def toggle_file_favorite(file_id, opts = {})
      data, _status_code, _headers = toggle_file_favorite_with_http_info(file_id, opts)
      data
    end

    # Change the file favorite status
    # Changes the favorite status of the file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/toggle-file-favorite/
    # @param file_id [Integer] The file ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :favorite Specifies if the file is marked as favorite or not.
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def toggle_file_favorite_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.toggle_file_favorite ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.toggle_file_favorite"
      end
      # resource path
      local_var_path = '/api/2.0/files/favorites/{fileId}'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'favorite'] = opts[:'favorite'] if !opts[:'favorite'].nil?

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
        :operation => :"Files::FilesApi.toggle_file_favorite",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#toggle_file_favorite\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Track file editing
    # Tracks file changes when editing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/track-edit-file/
    # @param file_id [Integer] The file ID to track editing changes.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tab_id The tab ID to track editing changes.
    # @option opts [String] :doc_key_for_track The document key for tracking changes.
    # @option opts [Boolean] :is_finish Specifies whether to finish file tracking or not.
    # @return [KeyValuePairBooleanStringWrapper]
    def track_edit_file(file_id, opts = {})
      data, _status_code, _headers = track_edit_file_with_http_info(file_id, opts)
      data
    end

    # Track file editing
    # Tracks file changes when editing.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/track-edit-file/
    # @param file_id [Integer] The file ID to track editing changes.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tab_id The tab ID to track editing changes.
    # @option opts [String] :doc_key_for_track The document key for tracking changes.
    # @option opts [Boolean] :is_finish Specifies whether to finish file tracking or not.
    # @return [Array<(KeyValuePairBooleanStringWrapper, Integer, Hash)>] KeyValuePairBooleanStringWrapper data, response status code and response headers
    def track_edit_file_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.track_edit_file ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.track_edit_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}/trackeditfile'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tabId'] = opts[:'tab_id'] if !opts[:'tab_id'].nil?
      query_params[:'docKeyForTrack'] = opts[:'doc_key_for_track'] if !opts[:'doc_key_for_track'].nil?
      query_params[:'isFinish'] = opts[:'is_finish'] if !opts[:'is_finish'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'KeyValuePairBooleanStringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FilesApi.track_edit_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#track_edit_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a file
    # Updates the information of the selected file with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file/
    # @param file_id [Integer] The file ID to update.
    # @param update_file [UpdateFile] The parameters for updating a file.
    # @param [Hash] opts the optional parameters
    # @return [FileIntegerWrapper]
    def update_file(file_id, update_file, opts = {})
      data, _status_code, _headers = update_file_with_http_info(file_id, update_file, opts)
      data
    end

    # Update a file
    # Updates the information of the selected file with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file/
    # @param file_id [Integer] The file ID to update.
    # @param update_file [UpdateFile] The parameters for updating a file.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileIntegerWrapper, Integer, Hash)>] FileIntegerWrapper data, response status code and response headers
    def update_file_with_http_info(file_id, update_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FilesApi.update_file ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::FilesApi.update_file"
      end
      # verify the required parameter 'update_file' is set
      if @api_client.config.client_side_validation && update_file.nil?
        fail ArgumentError, "Missing the required parameter 'update_file' when calling Files::FilesApi.update_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/file/{fileId}'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_file)

      # return_type
      return_type = opts[:debug_return_type] || 'FileIntegerWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::FilesApi.update_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FilesApi#update_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

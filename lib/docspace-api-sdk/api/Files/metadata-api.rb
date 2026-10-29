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
    class MetadataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Assign templates to a file
    # Assigns one or more metadata templates to a file, so its fields can be filled with  `PUT api/2.0/files/metadata/file/{fileId}/values`. The caller needs the right to edit the file. The assignment writes  no values and is idempotent: a template the file already carries is skipped, the others are added, an empty list  changes nothing. The call finishes in the request, nothing runs in the background. A template a cascading folder above  the file already provides stays inherited. A file the caller cannot edit is answered with 403; a file, or a template,  that does not exist with 404. To take a template off the file use  `DELETE api/2.0/files/metadata/file/{fileId}/templates/{templateId}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/assign-file-templates/
    # @param file_id [Integer] The file ID.
    # @param assign_metadata_templates [AssignMetadataTemplates] The parameters for assigning templates.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def assign_file_templates(file_id, assign_metadata_templates, opts = {})
      assign_file_templates_with_http_info(file_id, assign_metadata_templates, opts)
      nil
    end

    # Assign templates to a file
    # Assigns one or more metadata templates to a file, so its fields can be filled with  `PUT api/2.0/files/metadata/file/{fileId}/values`. The caller needs the right to edit the file. The assignment writes  no values and is idempotent: a template the file already carries is skipped, the others are added, an empty list  changes nothing. The call finishes in the request, nothing runs in the background. A template a cascading folder above  the file already provides stays inherited. A file the caller cannot edit is answered with 403; a file, or a template,  that does not exist with 404. To take a template off the file use  `DELETE api/2.0/files/metadata/file/{fileId}/templates/{templateId}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/assign-file-templates/
    # @param file_id [Integer] The file ID.
    # @param assign_metadata_templates [AssignMetadataTemplates] The parameters for assigning templates.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def assign_file_templates_with_http_info(file_id, assign_metadata_templates, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.assign_file_templates ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::MetadataApi.assign_file_templates"
      end
      # verify the required parameter 'assign_metadata_templates' is set
      if @api_client.config.client_side_validation && assign_metadata_templates.nil?
        fail ArgumentError, "Missing the required parameter 'assign_metadata_templates' when calling Files::MetadataApi.assign_file_templates"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/file/{fileId}/templates'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(assign_metadata_templates)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.assign_file_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#assign_file_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Assign templates to a folder
    # Assigns one or more metadata templates to a folder or a room and, with `cascade` set, propagates them to every  folder and file below it. The caller needs the right to create in the folder (a room manager or a content  creator); for a room that is its manager. The assignment itself finishes in the request and writes no values. The  cascade is asynchronous: a pass is queued that assigns the templates to the whole subtree and copies the values the  folder holds, and the answer is that pass with the `templateIds` it propagates. Poll  `GET api/2.0/files/metadata/folder/{folderId}/templates/progress` until `isCompleted` is true; a failed pass  reports its `error` there. The `conflictResolveType` decides what happens to a value an entry already holds: `Skip`  keeps it, `Overwrite` replaces it with the folder's value. A folder inside the subtree that cascades the same  template keeps its own values for its content. Without a cascade the answer is a completed operation without an identifier;  a template that already cascades keeps cascading, it is turned off with  `PUT api/2.0/files/metadata/folder/{folderId}/templates/{templateId}`. A caller without the right to create in the  folder is answered with 403; a folder, or a template, that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/assign-folder-templates/
    # @param folder_id [Integer] The folder ID.
    # @param assign_metadata_templates [AssignMetadataTemplates] The parameters for assigning templates.
    # @param [Hash] opts the optional parameters
    # @return [MetadataOperationWrapper]
    def assign_folder_templates(folder_id, assign_metadata_templates, opts = {})
      data, _status_code, _headers = assign_folder_templates_with_http_info(folder_id, assign_metadata_templates, opts)
      data
    end

    # Assign templates to a folder
    # Assigns one or more metadata templates to a folder or a room and, with `cascade` set, propagates them to every  folder and file below it. The caller needs the right to create in the folder (a room manager or a content  creator); for a room that is its manager. The assignment itself finishes in the request and writes no values. The  cascade is asynchronous: a pass is queued that assigns the templates to the whole subtree and copies the values the  folder holds, and the answer is that pass with the `templateIds` it propagates. Poll  `GET api/2.0/files/metadata/folder/{folderId}/templates/progress` until `isCompleted` is true; a failed pass  reports its `error` there. The `conflictResolveType` decides what happens to a value an entry already holds: `Skip`  keeps it, `Overwrite` replaces it with the folder's value. A folder inside the subtree that cascades the same  template keeps its own values for its content. Without a cascade the answer is a completed operation without an identifier;  a template that already cascades keeps cascading, it is turned off with  `PUT api/2.0/files/metadata/folder/{folderId}/templates/{templateId}`. A caller without the right to create in the  folder is answered with 403; a folder, or a template, that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/assign-folder-templates/
    # @param folder_id [Integer] The folder ID.
    # @param assign_metadata_templates [AssignMetadataTemplates] The parameters for assigning templates.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataOperationWrapper, Integer, Hash)>] MetadataOperationWrapper data, response status code and response headers
    def assign_folder_templates_with_http_info(folder_id, assign_metadata_templates, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.assign_folder_templates ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::MetadataApi.assign_folder_templates"
      end
      # verify the required parameter 'assign_metadata_templates' is set
      if @api_client.config.client_side_validation && assign_metadata_templates.nil?
        fail ArgumentError, "Missing the required parameter 'assign_metadata_templates' when calling Files::MetadataApi.assign_folder_templates"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/folder/{folderId}/templates'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(assign_metadata_templates)

      # return_type
      return_type = opts[:debug_return_type] || 'MetadataOperationWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.assign_folder_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#assign_folder_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a metadata field
    # Adds a field to an existing metadata template. Only a DocSpace admin can change templates. The field name must be  unique within the template regardless of case and at most 255 characters, the type must be one of the published ones,  a choice field needs at least one option and unique option values, a field of another type takes no options. A  field without `order` is placed after the last field of the template. The entries the template is already  assigned to get the field without a value: nothing is written on them and no cascade runs. The answer is the  created field with its generated option identifiers. A template that does not exist is answered with 404, an  invalid field with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-field/
    # @param template_id [Integer] The template ID.
    # @param metadata_field_request [MetadataFieldRequest] The parameters of the field.
    # @param [Hash] opts the optional parameters
    # @return [MetadataFieldWrapper]
    def create_field(template_id, metadata_field_request, opts = {})
      data, _status_code, _headers = create_field_with_http_info(template_id, metadata_field_request, opts)
      data
    end

    # Add a metadata field
    # Adds a field to an existing metadata template. Only a DocSpace admin can change templates. The field name must be  unique within the template regardless of case and at most 255 characters, the type must be one of the published ones,  a choice field needs at least one option and unique option values, a field of another type takes no options. A  field without `order` is placed after the last field of the template. The entries the template is already  assigned to get the field without a value: nothing is written on them and no cascade runs. The answer is the  created field with its generated option identifiers. A template that does not exist is answered with 404, an  invalid field with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-field/
    # @param template_id [Integer] The template ID.
    # @param metadata_field_request [MetadataFieldRequest] The parameters of the field.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataFieldWrapper, Integer, Hash)>] MetadataFieldWrapper data, response status code and response headers
    def create_field_with_http_info(template_id, metadata_field_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.create_field ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling Files::MetadataApi.create_field"
      end
      # verify the required parameter 'metadata_field_request' is set
      if @api_client.config.client_side_validation && metadata_field_request.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_field_request' when calling Files::MetadataApi.create_field"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/templates/{templateId}/fields'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(metadata_field_request)

      # return_type
      return_type = opts[:debug_return_type] || 'MetadataFieldWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.create_field",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#create_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a metadata template
    # Creates a metadata template for the whole portal, optionally with its fields in one call. Only a DocSpace admin can  create templates. The template name must be unique on the portal regardless of case, at most 255 characters, and the  name `System` is reserved. Every field needs a name unique within the template and a type from the published set; a  choice field requires at least one option and the options must be unique, a field of another type takes no options.  A field without `order` is placed after the fields that have one, in the order of the request. The template and  its fields are stored together: an invalid field rejects the whole request and nothing is created.  The answer is the created template with its fields and the generated option identifiers, which the values written  with `PUT api/2.0/files/metadata/file/{fileId}/values` refer to. A name already in use or an invalid field is  answered with 400; the request of a member who is not a DocSpace admin with 403.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-template/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateMetadataTemplateRequestDto] :create_metadata_template_request_dto 
    # @return [MetadataTemplateWrapper]
    def create_template(opts = {})
      data, _status_code, _headers = create_template_with_http_info(opts)
      data
    end

    # Create a metadata template
    # Creates a metadata template for the whole portal, optionally with its fields in one call. Only a DocSpace admin can  create templates. The template name must be unique on the portal regardless of case, at most 255 characters, and the  name `System` is reserved. Every field needs a name unique within the template and a type from the published set; a  choice field requires at least one option and the options must be unique, a field of another type takes no options.  A field without `order` is placed after the fields that have one, in the order of the request. The template and  its fields are stored together: an invalid field rejects the whole request and nothing is created.  The answer is the created template with its fields and the generated option identifiers, which the values written  with `PUT api/2.0/files/metadata/file/{fileId}/values` refer to. A name already in use or an invalid field is  answered with 400; the request of a member who is not a DocSpace admin with 403.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-template/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateMetadataTemplateRequestDto] :create_metadata_template_request_dto 
    # @return [Array<(MetadataTemplateWrapper, Integer, Hash)>] MetadataTemplateWrapper data, response status code and response headers
    def create_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.create_template ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/templates'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_metadata_template_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'MetadataTemplateWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.create_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#create_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a metadata field
    # Deletes a metadata field from its template together with every value written for it on any file, folder or room of  the portal. Only a DocSpace admin can change templates. The deletion is irreversible: the affected entries lose the  value at once, their search documents are rebuilt and the clients viewing them are told to refresh. The template and  its other fields stay as they are. A field that does not exist, or that belongs to another template than the one in  the route, is answered with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-field/
    # @param template_id [Integer] The template ID.
    # @param field_id [Integer] The field ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_field(template_id, field_id, opts = {})
      delete_field_with_http_info(template_id, field_id, opts)
      nil
    end

    # Delete a metadata field
    # Deletes a metadata field from its template together with every value written for it on any file, folder or room of  the portal. Only a DocSpace admin can change templates. The deletion is irreversible: the affected entries lose the  value at once, their search documents are rebuilt and the clients viewing them are told to refresh. The template and  its other fields stay as they are. A field that does not exist, or that belongs to another template than the one in  the route, is answered with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-field/
    # @param template_id [Integer] The template ID.
    # @param field_id [Integer] The field ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_field_with_http_info(template_id, field_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.delete_field ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling Files::MetadataApi.delete_field"
      end
      # verify the required parameter 'field_id' is set
      if @api_client.config.client_side_validation && field_id.nil?
        fail ArgumentError, "Missing the required parameter 'field_id' when calling Files::MetadataApi.delete_field"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/templates/{templateId}/fields/{fieldId}'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s)).sub('{' + 'fieldId' + '}', CGI.escape(field_id.to_s))

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
        :operation => :"Files::MetadataApi.delete_field",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#delete_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a metadata template
    # Deletes a metadata template together with its fields, its assignments and every value written for its fields on any  file, folder or room of the portal. Only a DocSpace admin can delete templates. The deletion is irreversible and there  is no confirmation: the affected entries lose the template at once, their search documents are rebuilt and the clients  viewing them are told to refresh. A template that does not exist, or was already deleted, is answered with 404.  To take the template off a single entry and keep it for the others use  `DELETE api/2.0/files/metadata/file/{fileId}/templates/{templateId}` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-template/
    # @param template_id [Integer] The template ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_template(template_id, opts = {})
      delete_template_with_http_info(template_id, opts)
      nil
    end

    # Delete a metadata template
    # Deletes a metadata template together with its fields, its assignments and every value written for its fields on any  file, folder or room of the portal. Only a DocSpace admin can delete templates. The deletion is irreversible and there  is no confirmation: the affected entries lose the template at once, their search documents are rebuilt and the clients  viewing them are told to refresh. A template that does not exist, or was already deleted, is answered with 404.  To take the template off a single entry and keep it for the others use  `DELETE api/2.0/files/metadata/file/{fileId}/templates/{templateId}` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-template/
    # @param template_id [Integer] The template ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.delete_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling Files::MetadataApi.delete_template"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/templates/{templateId}'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

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
        :operation => :"Files::MetadataApi.delete_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#delete_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get cascade progress
    # Reports the cascade pass of a folder started by `PUT api/2.0/files/metadata/folder/{folderId}/templates` or by  `PUT api/2.0/files/metadata/folder/{folderId}/templates/{templateId}`: the running one, otherwise the most recent  one. The caller needs read access to the folder, the call is read-only. `templateIds` names the templates the pass  propagates, so a client can show the progress next to the right template; `progress` is the share of the subtree  processed, `isCompleted` tells the pass is over and `error` carries the reason of a failed one; a completed pass  without an error has written every template and value it was asked for. A folder that never cascaded, or whose  passes were already dropped, is answered with a completed operation without an identifier and with empty  `templateIds` rather than with an error. A folder that does not exist is answered with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-cascade-progress/
    # @param folder_id [Integer] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [MetadataOperationWrapper]
    def get_cascade_progress(folder_id, opts = {})
      data, _status_code, _headers = get_cascade_progress_with_http_info(folder_id, opts)
      data
    end

    # Get cascade progress
    # Reports the cascade pass of a folder started by `PUT api/2.0/files/metadata/folder/{folderId}/templates` or by  `PUT api/2.0/files/metadata/folder/{folderId}/templates/{templateId}`: the running one, otherwise the most recent  one. The caller needs read access to the folder, the call is read-only. `templateIds` names the templates the pass  propagates, so a client can show the progress next to the right template; `progress` is the share of the subtree  processed, `isCompleted` tells the pass is over and `error` carries the reason of a failed one; a completed pass  without an error has written every template and value it was asked for. A folder that never cascaded, or whose  passes were already dropped, is answered with a completed operation without an identifier and with empty  `templateIds` rather than with an error. A folder that does not exist is answered with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-cascade-progress/
    # @param folder_id [Integer] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataOperationWrapper, Integer, Hash)>] MetadataOperationWrapper data, response status code and response headers
    def get_cascade_progress_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.get_cascade_progress ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::MetadataApi.get_cascade_progress"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/folder/{folderId}/templates/progress'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'MetadataOperationWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.get_cascade_progress",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#get_cascade_progress\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file metadata
    # Returns the metadata of a file: the templates assigned to it, directly or inherited from a cascading folder above  it, each with its fields, and the custom text fields set on the file. The caller needs read access to the file: a  member of the portal, or an anonymous caller through an external link that grants access to the file or to a  folder above it, with the link key in the `Request-Token` header or in the `share` query parameter. The call is  read-only. A field carries its value inside it; a field the file holds no value for comes without a `value`.  A file never cascades, so every template reports `cascade` false and no `conflictResolveType`; whether it was  inherited from a folder above is not told apart from a direct assignment. The custom fields are name and value  pairs and are not part of any template. A file without metadata is answered with empty lists, not with an error.  The same shape is returned by `PUT api/2.0/files/metadata/file/{fileId}/values` after a write. A request with  neither a session nor a link key is answered with 401; a file the caller cannot read with 403, a file that does  not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-metadata/
    # @param file_id [Integer] The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
    # @param [Hash] opts the optional parameters
    # @return [EntryMetadataWrapper]
    def get_file_metadata(file_id, opts = {})
      data, _status_code, _headers = get_file_metadata_with_http_info(file_id, opts)
      data
    end

    # Get file metadata
    # Returns the metadata of a file: the templates assigned to it, directly or inherited from a cascading folder above  it, each with its fields, and the custom text fields set on the file. The caller needs read access to the file: a  member of the portal, or an anonymous caller through an external link that grants access to the file or to a  folder above it, with the link key in the `Request-Token` header or in the `share` query parameter. The call is  read-only. A field carries its value inside it; a field the file holds no value for comes without a `value`.  A file never cascades, so every template reports `cascade` false and no `conflictResolveType`; whether it was  inherited from a folder above is not told apart from a direct assignment. The custom fields are name and value  pairs and are not part of any template. A file without metadata is answered with empty lists, not with an error.  The same shape is returned by `PUT api/2.0/files/metadata/file/{fileId}/values` after a write. A request with  neither a session nor a link key is answered with 401; a file the caller cannot read with 403, a file that does  not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-metadata/
    # @param file_id [Integer] The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EntryMetadataWrapper, Integer, Hash)>] EntryMetadataWrapper data, response status code and response headers
    def get_file_metadata_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.get_file_metadata ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::MetadataApi.get_file_metadata"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/file/{fileId}'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'EntryMetadataWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.get_file_metadata",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#get_file_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get folder metadata
    # Returns the metadata of a folder or a room: the templates assigned to it, directly or inherited from a cascading  folder above it, each with its fields, and the custom text fields set on it. The caller needs read access to the  folder: a member of the portal, or an anonymous caller through an external link to the folder or to a folder  above it, with the link key in the `Request-Token` header or in the `share` query parameter. The call is  read-only. A field carries its value inside it; a field without a value on the folder comes without `value`. Each  template reports whether this folder cascades it to its content in `cascade`, with the rule of that cascade in  `conflictResolveType`, absent while it does not; an inherited template reports false unless this folder cascades it  on its own. The custom fields are name and value pairs outside any template. A folder without metadata is answered  with empty lists. The cascade is changed with `PUT api/2.0/files/metadata/folder/{folderId}/templates/{templateId}`.  A request with neither a session nor a link key is answered with 401; a folder the caller cannot read with 403, a  folder that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-metadata/
    # @param folder_id [Integer] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [EntryMetadataWrapper]
    def get_folder_metadata(folder_id, opts = {})
      data, _status_code, _headers = get_folder_metadata_with_http_info(folder_id, opts)
      data
    end

    # Get folder metadata
    # Returns the metadata of a folder or a room: the templates assigned to it, directly or inherited from a cascading  folder above it, each with its fields, and the custom text fields set on it. The caller needs read access to the  folder: a member of the portal, or an anonymous caller through an external link to the folder or to a folder  above it, with the link key in the `Request-Token` header or in the `share` query parameter. The call is  read-only. A field carries its value inside it; a field without a value on the folder comes without `value`. Each  template reports whether this folder cascades it to its content in `cascade`, with the rule of that cascade in  `conflictResolveType`, absent while it does not; an inherited template reports false unless this folder cascades it  on its own. The custom fields are name and value pairs outside any template. A folder without metadata is answered  with empty lists. The cascade is changed with `PUT api/2.0/files/metadata/folder/{folderId}/templates/{templateId}`.  A request with neither a session nor a link key is answered with 401; a folder the caller cannot read with 403, a  folder that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-metadata/
    # @param folder_id [Integer] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EntryMetadataWrapper, Integer, Hash)>] EntryMetadataWrapper data, response status code and response headers
    def get_folder_metadata_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.get_folder_metadata ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::MetadataApi.get_folder_metadata"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/folder/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'EntryMetadataWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.get_folder_metadata",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#get_folder_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a metadata template
    # Returns one metadata template with its fields, in their display order, and the options of its choice fields. Any  member of the portal can read a template, the call is read-only. Use it to resolve the template identifiers a file or  a folder reports in `assignedMetadataTemplates` into names and fields. A template that does not exist is answered  with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-template/
    # @param template_id [Integer] The template ID.
    # @param [Hash] opts the optional parameters
    # @return [MetadataTemplateWrapper]
    def get_template(template_id, opts = {})
      data, _status_code, _headers = get_template_with_http_info(template_id, opts)
      data
    end

    # Get a metadata template
    # Returns one metadata template with its fields, in their display order, and the options of its choice fields. Any  member of the portal can read a template, the call is read-only. Use it to resolve the template identifiers a file or  a folder reports in `assignedMetadataTemplates` into names and fields. A template that does not exist is answered  with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-template/
    # @param template_id [Integer] The template ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataTemplateWrapper, Integer, Hash)>] MetadataTemplateWrapper data, response status code and response headers
    def get_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.get_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling Files::MetadataApi.get_template"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/templates/{templateId}'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

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
      return_type = opts[:debug_return_type] || 'MetadataTemplateWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.get_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#get_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get metadata templates
    # Lists the metadata templates of the portal with their fields, the dictionary a file, a folder or a room is described  with. Any member of the portal can read it, the list is the same for everyone. The call is read-only. The templates  come back ordered by their creation, each with its fields in their display order and the choice options of the choice  fields; the `visible` parameter narrows the list to the templates shown in the pickers or to the hidden ones, without  it both are returned. The author and the last editor of a template come as user objects with the display name and  the avatar, so a list needs no lookup of its own per author. An empty list means the portal has no templates yet.  The custom text fields set on the entries are not templates and are not listed here: read them on the entry with  `GET api/2.0/files/metadata/file/{fileId}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-templates/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :visible Filters the templates by their visibility.
    # @return [MetadataTemplateArrayWrapper]
    def get_templates(opts = {})
      data, _status_code, _headers = get_templates_with_http_info(opts)
      data
    end

    # Get metadata templates
    # Lists the metadata templates of the portal with their fields, the dictionary a file, a folder or a room is described  with. Any member of the portal can read it, the list is the same for everyone. The call is read-only. The templates  come back ordered by their creation, each with its fields in their display order and the choice options of the choice  fields; the `visible` parameter narrows the list to the templates shown in the pickers or to the hidden ones, without  it both are returned. The author and the last editor of a template come as user objects with the display name and  the avatar, so a list needs no lookup of its own per author. An empty list means the portal has no templates yet.  The custom text fields set on the entries are not templates and are not listed here: read them on the entry with  `GET api/2.0/files/metadata/file/{fileId}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-templates/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :visible Filters the templates by their visibility.
    # @return [Array<(MetadataTemplateArrayWrapper, Integer, Hash)>] MetadataTemplateArrayWrapper data, response status code and response headers
    def get_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.get_templates ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/templates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'visible'] = opts[:'visible'] if !opts[:'visible'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MetadataTemplateArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.get_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#get_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set file custom fields
    # Sets the custom text fields of a file: free-form name and value pairs that need no template. The caller needs the  right to edit the file. A field is addressed by its name regardless of case: a listed name gets the value, a null or  empty value removes the field from the file, the names not listed are left alone, so a partial request is safe. A name  the portal has not seen yet creates the field for the whole portal, and a name no entry holds a value for any more is  dropped, so the set of names follows the values. A name is at most 255 characters, a value at most 8000, a name may  be listed once and a file holds at most 50 custom fields. The write finishes in the request; the values take part in  the free text search and in the `metadataFilters` of the listings. The answer is the custom fields of the file  after the write. An empty list, a blank, repeated or over-long name, an over-long value or more than 50 fields is  answered with 400; a file the caller cannot edit with 403; a file that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-custom-fields/
    # @param file_id [Integer] The file ID.
    # @param set_custom_fields [SetCustomFields] The custom fields to set.
    # @param [Hash] opts the optional parameters
    # @return [CustomFieldValueArrayWrapper]
    def set_file_custom_fields(file_id, set_custom_fields, opts = {})
      data, _status_code, _headers = set_file_custom_fields_with_http_info(file_id, set_custom_fields, opts)
      data
    end

    # Set file custom fields
    # Sets the custom text fields of a file: free-form name and value pairs that need no template. The caller needs the  right to edit the file. A field is addressed by its name regardless of case: a listed name gets the value, a null or  empty value removes the field from the file, the names not listed are left alone, so a partial request is safe. A name  the portal has not seen yet creates the field for the whole portal, and a name no entry holds a value for any more is  dropped, so the set of names follows the values. A name is at most 255 characters, a value at most 8000, a name may  be listed once and a file holds at most 50 custom fields. The write finishes in the request; the values take part in  the free text search and in the `metadataFilters` of the listings. The answer is the custom fields of the file  after the write. An empty list, a blank, repeated or over-long name, an over-long value or more than 50 fields is  answered with 400; a file the caller cannot edit with 403; a file that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-custom-fields/
    # @param file_id [Integer] The file ID.
    # @param set_custom_fields [SetCustomFields] The custom fields to set.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomFieldValueArrayWrapper, Integer, Hash)>] CustomFieldValueArrayWrapper data, response status code and response headers
    def set_file_custom_fields_with_http_info(file_id, set_custom_fields, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.set_file_custom_fields ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::MetadataApi.set_file_custom_fields"
      end
      # verify the required parameter 'set_custom_fields' is set
      if @api_client.config.client_side_validation && set_custom_fields.nil?
        fail ArgumentError, "Missing the required parameter 'set_custom_fields' when calling Files::MetadataApi.set_file_custom_fields"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/file/{fileId}/customfields'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_custom_fields)

      # return_type
      return_type = opts[:debug_return_type] || 'CustomFieldValueArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.set_file_custom_fields",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#set_file_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set file metadata values
    # Writes the values of metadata fields on a file. The caller needs the right to edit the file: a member with editing  access, or an anonymous caller through an external link that grants editing, with the link key in the  `Request-Token` header or in the `share` query parameter; a link that grants viewing, commenting, reviewing or  form filling only is refused. Every field must belong to a template the file carries, assigned with  `PUT api/2.0/files/metadata/file/{fileId}/templates` or inherited from a cascading folder, and a field may be  listed once. A value carries exactly the member of its type: `stringValue` for a text field of at most 8000  characters, `numberValue` for a whole number of at most 2^53-1 in magnitude (the largest integer a JSON client  reads exactly), `dateValue` for a date, `optionIds` for a choice field, a single option for a single choice; an  empty value clears the field. A date without a time zone offset is read as UTC. The write  finishes in the request, the file is re-indexed for the metadata filters at once. The custom text fields are not  written here: use `PUT api/2.0/files/metadata/file/{fileId}/customFields`. The answer is the whole metadata of the  file after the write, the same shape `GET api/2.0/files/metadata/file/{fileId}` returns. A value of the wrong type or beyond the number limit,  a field of a template the file does not carry, a field listed twice or a custom field is answered with 400; a  request with neither a session nor a link key with 401; a file the caller cannot edit with 403; a file or a field  that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-values/
    # @param file_id [Integer] The file ID.
    # @param set_metadata_values [SetMetadataValues] The parameters for setting values.
    # @param [Hash] opts the optional parameters
    # @return [EntryMetadataWrapper]
    def set_file_values(file_id, set_metadata_values, opts = {})
      data, _status_code, _headers = set_file_values_with_http_info(file_id, set_metadata_values, opts)
      data
    end

    # Set file metadata values
    # Writes the values of metadata fields on a file. The caller needs the right to edit the file: a member with editing  access, or an anonymous caller through an external link that grants editing, with the link key in the  `Request-Token` header or in the `share` query parameter; a link that grants viewing, commenting, reviewing or  form filling only is refused. Every field must belong to a template the file carries, assigned with  `PUT api/2.0/files/metadata/file/{fileId}/templates` or inherited from a cascading folder, and a field may be  listed once. A value carries exactly the member of its type: `stringValue` for a text field of at most 8000  characters, `numberValue` for a whole number of at most 2^53-1 in magnitude (the largest integer a JSON client  reads exactly), `dateValue` for a date, `optionIds` for a choice field, a single option for a single choice; an  empty value clears the field. A date without a time zone offset is read as UTC. The write  finishes in the request, the file is re-indexed for the metadata filters at once. The custom text fields are not  written here: use `PUT api/2.0/files/metadata/file/{fileId}/customFields`. The answer is the whole metadata of the  file after the write, the same shape `GET api/2.0/files/metadata/file/{fileId}` returns. A value of the wrong type or beyond the number limit,  a field of a template the file does not carry, a field listed twice or a custom field is answered with 400; a  request with neither a session nor a link key with 401; a file the caller cannot edit with 403; a file or a field  that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-values/
    # @param file_id [Integer] The file ID.
    # @param set_metadata_values [SetMetadataValues] The parameters for setting values.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EntryMetadataWrapper, Integer, Hash)>] EntryMetadataWrapper data, response status code and response headers
    def set_file_values_with_http_info(file_id, set_metadata_values, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.set_file_values ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::MetadataApi.set_file_values"
      end
      # verify the required parameter 'set_metadata_values' is set
      if @api_client.config.client_side_validation && set_metadata_values.nil?
        fail ArgumentError, "Missing the required parameter 'set_metadata_values' when calling Files::MetadataApi.set_file_values"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/file/{fileId}/values'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_metadata_values)

      # return_type
      return_type = opts[:debug_return_type] || 'EntryMetadataWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.set_file_values",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#set_file_values\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set folder custom fields
    # Sets the custom text fields of a folder or a room: free-form name and value pairs that need no template. The  caller needs the right to create in the folder (a room manager or a content creator); for a room that is its  manager. A field is addressed by its name regardless of case: a listed name gets the value, a null or empty value  removes the field, the names not listed are left alone. A new name creates the field for the whole portal, and a  name no entry holds a value for any more is dropped. A name is at most 255 characters, a value at most 8000, a name  may be listed once and a folder holds at most 50 custom fields. The custom fields never cascade to the content of  the folder. The write finishes in the request. The answer is the custom fields of the folder after the write. An empty list, a  blank, repeated or over-long name, an over-long value or more than 50 fields is answered with 400; a caller  without the right to create in the folder with 403; a folder that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-custom-fields/
    # @param folder_id [Integer] The folder ID.
    # @param set_custom_fields [SetCustomFields] The custom fields to set.
    # @param [Hash] opts the optional parameters
    # @return [CustomFieldValueArrayWrapper]
    def set_folder_custom_fields(folder_id, set_custom_fields, opts = {})
      data, _status_code, _headers = set_folder_custom_fields_with_http_info(folder_id, set_custom_fields, opts)
      data
    end

    # Set folder custom fields
    # Sets the custom text fields of a folder or a room: free-form name and value pairs that need no template. The  caller needs the right to create in the folder (a room manager or a content creator); for a room that is its  manager. A field is addressed by its name regardless of case: a listed name gets the value, a null or empty value  removes the field, the names not listed are left alone. A new name creates the field for the whole portal, and a  name no entry holds a value for any more is dropped. A name is at most 255 characters, a value at most 8000, a name  may be listed once and a folder holds at most 50 custom fields. The custom fields never cascade to the content of  the folder. The write finishes in the request. The answer is the custom fields of the folder after the write. An empty list, a  blank, repeated or over-long name, an over-long value or more than 50 fields is answered with 400; a caller  without the right to create in the folder with 403; a folder that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-custom-fields/
    # @param folder_id [Integer] The folder ID.
    # @param set_custom_fields [SetCustomFields] The custom fields to set.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomFieldValueArrayWrapper, Integer, Hash)>] CustomFieldValueArrayWrapper data, response status code and response headers
    def set_folder_custom_fields_with_http_info(folder_id, set_custom_fields, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.set_folder_custom_fields ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::MetadataApi.set_folder_custom_fields"
      end
      # verify the required parameter 'set_custom_fields' is set
      if @api_client.config.client_side_validation && set_custom_fields.nil?
        fail ArgumentError, "Missing the required parameter 'set_custom_fields' when calling Files::MetadataApi.set_folder_custom_fields"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/folder/{folderId}/customfields'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_custom_fields)

      # return_type
      return_type = opts[:debug_return_type] || 'CustomFieldValueArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.set_folder_custom_fields",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#set_folder_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set folder metadata values
    # Writes the values of metadata fields on a folder or a room. The caller needs the right to create in the folder (a  room manager or a content creator); for a room that is its manager. Every field must belong to a template the  folder carries, assigned with `PUT api/2.0/files/metadata/folder/{folderId}/templates` or inherited from a  cascading folder, and a field may be listed once. A value carries exactly the member of its type: `stringValue` for  a text field of at most 8000 characters, `numberValue` for a whole number of at most 2^53-1 in magnitude (the  largest integer a JSON client reads exactly), `dateValue` for a date, `optionIds` for a choice field; an empty  value clears the field. The write finishes in the request and touches the folder only: to  push the new values down a cascading folder run the cascade again with `Overwrite`. The custom text fields are written with  `PUT api/2.0/files/metadata/folder/{folderId}/customFields`. The answer is the whole metadata of the folder after  the write. A value of the wrong type or beyond the number limit, a field listed twice, a custom field or a field of a template the folder  does not carry is answered with 400; a caller without the right to create in the folder with 403; a folder or a  field that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-values/
    # @param folder_id [Integer] The folder ID.
    # @param set_metadata_values [SetMetadataValues] The parameters for setting values.
    # @param [Hash] opts the optional parameters
    # @return [EntryMetadataWrapper]
    def set_folder_values(folder_id, set_metadata_values, opts = {})
      data, _status_code, _headers = set_folder_values_with_http_info(folder_id, set_metadata_values, opts)
      data
    end

    # Set folder metadata values
    # Writes the values of metadata fields on a folder or a room. The caller needs the right to create in the folder (a  room manager or a content creator); for a room that is its manager. Every field must belong to a template the  folder carries, assigned with `PUT api/2.0/files/metadata/folder/{folderId}/templates` or inherited from a  cascading folder, and a field may be listed once. A value carries exactly the member of its type: `stringValue` for  a text field of at most 8000 characters, `numberValue` for a whole number of at most 2^53-1 in magnitude (the  largest integer a JSON client reads exactly), `dateValue` for a date, `optionIds` for a choice field; an empty  value clears the field. The write finishes in the request and touches the folder only: to  push the new values down a cascading folder run the cascade again with `Overwrite`. The custom text fields are written with  `PUT api/2.0/files/metadata/folder/{folderId}/customFields`. The answer is the whole metadata of the folder after  the write. A value of the wrong type or beyond the number limit, a field listed twice, a custom field or a field of a template the folder  does not carry is answered with 400; a caller without the right to create in the folder with 403; a folder or a  field that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-values/
    # @param folder_id [Integer] The folder ID.
    # @param set_metadata_values [SetMetadataValues] The parameters for setting values.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EntryMetadataWrapper, Integer, Hash)>] EntryMetadataWrapper data, response status code and response headers
    def set_folder_values_with_http_info(folder_id, set_metadata_values, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.set_folder_values ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::MetadataApi.set_folder_values"
      end
      # verify the required parameter 'set_metadata_values' is set
      if @api_client.config.client_side_validation && set_metadata_values.nil?
        fail ArgumentError, "Missing the required parameter 'set_metadata_values' when calling Files::MetadataApi.set_folder_values"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/folder/{folderId}/values'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_metadata_values)

      # return_type
      return_type = opts[:debug_return_type] || 'EntryMetadataWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.set_folder_values",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#set_folder_values\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unassign a template from a file
    # Removes a metadata template from a file together with the values of its fields. The caller needs the right to edit  the file. The removal is irreversible for the values, the template itself stays on the portal and on the other  entries. It applies to a directly assigned template and to one inherited from a cascading folder alike; a later  cascade from that folder assigns it again. A file the caller cannot edit is answered with 403; a file, or a template,  that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unassign-file-template/
    # @param file_id [Integer] The file ID.
    # @param template_id [Integer] The template ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unassign_file_template(file_id, template_id, opts = {})
      unassign_file_template_with_http_info(file_id, template_id, opts)
      nil
    end

    # Unassign a template from a file
    # Removes a metadata template from a file together with the values of its fields. The caller needs the right to edit  the file. The removal is irreversible for the values, the template itself stays on the portal and on the other  entries. It applies to a directly assigned template and to one inherited from a cascading folder alike; a later  cascade from that folder assigns it again. A file the caller cannot edit is answered with 403; a file, or a template,  that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unassign-file-template/
    # @param file_id [Integer] The file ID.
    # @param template_id [Integer] The template ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def unassign_file_template_with_http_info(file_id, template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.unassign_file_template ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling Files::MetadataApi.unassign_file_template"
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling Files::MetadataApi.unassign_file_template"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/file/{fileId}/templates/{templateId}'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s)).sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

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
        :operation => :"Files::MetadataApi.unassign_file_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#unassign_file_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unassign a template from a folder
    # Removes a metadata template from a folder or a room together with the values of its fields. The caller needs the  right to create content in the folder, that is a room manager or a content creator; for a room that is its  manager. When the template was cascaded from this folder, the  cascade stops here: the folders and files below keep the template and their values as a direct assignment of their  own, and there is no bulk rollback. To take the template off them as well, remove it entry by entry with  `DELETE api/2.0/files/metadata/file/{fileId}/templates/{templateId}`. A pass of the cascade still running is stopped  for this template. To stop the cascade and keep the template and its values on the folder use  `PUT api/2.0/files/metadata/folder/{folderId}/templates/{templateId}` with `cascade` false instead. A caller  without the right to create in the folder is answered with 403; a folder, or a template, that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unassign-folder-template/
    # @param folder_id [Integer] The folder ID.
    # @param template_id [Integer] The template ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unassign_folder_template(folder_id, template_id, opts = {})
      unassign_folder_template_with_http_info(folder_id, template_id, opts)
      nil
    end

    # Unassign a template from a folder
    # Removes a metadata template from a folder or a room together with the values of its fields. The caller needs the  right to create content in the folder, that is a room manager or a content creator; for a room that is its  manager. When the template was cascaded from this folder, the  cascade stops here: the folders and files below keep the template and their values as a direct assignment of their  own, and there is no bulk rollback. To take the template off them as well, remove it entry by entry with  `DELETE api/2.0/files/metadata/file/{fileId}/templates/{templateId}`. A pass of the cascade still running is stopped  for this template. To stop the cascade and keep the template and its values on the folder use  `PUT api/2.0/files/metadata/folder/{folderId}/templates/{templateId}` with `cascade` false instead. A caller  without the right to create in the folder is answered with 403; a folder, or a template, that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unassign-folder-template/
    # @param folder_id [Integer] The folder ID.
    # @param template_id [Integer] The template ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def unassign_folder_template_with_http_info(folder_id, template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.unassign_folder_template ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::MetadataApi.unassign_folder_template"
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling Files::MetadataApi.unassign_folder_template"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/folder/{folderId}/templates/{templateId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s)).sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

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
        :operation => :"Files::MetadataApi.unassign_folder_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#unassign_folder_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a metadata field
    # Changes the name, the type, the options or the display order of a metadata field. Only a DocSpace admin can change  templates. The request is partial: a property left out keeps its value. The type can be changed only while no entry  holds a value for the field, and an option can be removed only while no entry has selected it; a new option is sent  without an identifier and gets one in the answer. A new name must be unique within the template regardless of case.  The values already written are left as they are. The field is addressed through its own template: a field reached  through another template's route is answered with 404, the same as a field that does not exist. A conflicting name,  a type change on a field with values or the removal of an option in use is answered with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-field/
    # @param template_id [Integer] The template ID.
    # @param field_id [Integer] The field ID.
    # @param update_metadata_field_request [UpdateMetadataFieldRequest] The parameters of the field update.
    # @param [Hash] opts the optional parameters
    # @return [MetadataFieldWrapper]
    def update_field(template_id, field_id, update_metadata_field_request, opts = {})
      data, _status_code, _headers = update_field_with_http_info(template_id, field_id, update_metadata_field_request, opts)
      data
    end

    # Update a metadata field
    # Changes the name, the type, the options or the display order of a metadata field. Only a DocSpace admin can change  templates. The request is partial: a property left out keeps its value. The type can be changed only while no entry  holds a value for the field, and an option can be removed only while no entry has selected it; a new option is sent  without an identifier and gets one in the answer. A new name must be unique within the template regardless of case.  The values already written are left as they are. The field is addressed through its own template: a field reached  through another template's route is answered with 404, the same as a field that does not exist. A conflicting name,  a type change on a field with values or the removal of an option in use is answered with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-field/
    # @param template_id [Integer] The template ID.
    # @param field_id [Integer] The field ID.
    # @param update_metadata_field_request [UpdateMetadataFieldRequest] The parameters of the field update.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataFieldWrapper, Integer, Hash)>] MetadataFieldWrapper data, response status code and response headers
    def update_field_with_http_info(template_id, field_id, update_metadata_field_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.update_field ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling Files::MetadataApi.update_field"
      end
      # verify the required parameter 'field_id' is set
      if @api_client.config.client_side_validation && field_id.nil?
        fail ArgumentError, "Missing the required parameter 'field_id' when calling Files::MetadataApi.update_field"
      end
      # verify the required parameter 'update_metadata_field_request' is set
      if @api_client.config.client_side_validation && update_metadata_field_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_metadata_field_request' when calling Files::MetadataApi.update_field"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/templates/{templateId}/fields/{fieldId}'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s)).sub('{' + 'fieldId' + '}', CGI.escape(field_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_metadata_field_request)

      # return_type
      return_type = opts[:debug_return_type] || 'MetadataFieldWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.update_field",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#update_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a template assignment on a folder
    # Turns the cascade of a metadata template the folder or the room already carries on or off, without taking the  template off the folder. The template must be assigned first, with `PUT api/2.0/files/metadata/folder/{folderId}/templates`  or inherited from a folder above. The caller needs the right to create in the folder (a room manager  or a content creator); for a room that is its manager. With `cascade` true the template is marked as cascading with  the given `conflictResolveType`, an inherited assignment becomes the folder's own, and the pass the assignment runs  is queued, also when the cascade was already on: the answer is that pass, poll  `GET api/2.0/files/metadata/folder/{folderId}/templates/progress` until `isCompleted` is true. With `cascade` false  the folder keeps the template and its values, the entries below keep them as their own, entries created later no  longer inherit the template from this folder, a running pass stops at its next batch, and the answer is a completed  operation without an identifier; `conflictResolveType` is ignored and a cascade already off stays so. A caller  without the right to create in the folder is answered with 403; a folder or a template that does not exist, or a  template the folder does not carry, with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-folder-template/
    # @param folder_id [Integer] The folder ID.
    # @param template_id [Integer] The ID of a template the folder already carries.
    # @param update_folder_metadata_template_request [UpdateFolderMetadataTemplateRequest] The new state of the assignment.
    # @param [Hash] opts the optional parameters
    # @return [MetadataOperationWrapper]
    def update_folder_template(folder_id, template_id, update_folder_metadata_template_request, opts = {})
      data, _status_code, _headers = update_folder_template_with_http_info(folder_id, template_id, update_folder_metadata_template_request, opts)
      data
    end

    # Update a template assignment on a folder
    # Turns the cascade of a metadata template the folder or the room already carries on or off, without taking the  template off the folder. The template must be assigned first, with `PUT api/2.0/files/metadata/folder/{folderId}/templates`  or inherited from a folder above. The caller needs the right to create in the folder (a room manager  or a content creator); for a room that is its manager. With `cascade` true the template is marked as cascading with  the given `conflictResolveType`, an inherited assignment becomes the folder's own, and the pass the assignment runs  is queued, also when the cascade was already on: the answer is that pass, poll  `GET api/2.0/files/metadata/folder/{folderId}/templates/progress` until `isCompleted` is true. With `cascade` false  the folder keeps the template and its values, the entries below keep them as their own, entries created later no  longer inherit the template from this folder, a running pass stops at its next batch, and the answer is a completed  operation without an identifier; `conflictResolveType` is ignored and a cascade already off stays so. A caller  without the right to create in the folder is answered with 403; a folder or a template that does not exist, or a  template the folder does not carry, with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-folder-template/
    # @param folder_id [Integer] The folder ID.
    # @param template_id [Integer] The ID of a template the folder already carries.
    # @param update_folder_metadata_template_request [UpdateFolderMetadataTemplateRequest] The new state of the assignment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataOperationWrapper, Integer, Hash)>] MetadataOperationWrapper data, response status code and response headers
    def update_folder_template_with_http_info(folder_id, template_id, update_folder_metadata_template_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.update_folder_template ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::MetadataApi.update_folder_template"
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling Files::MetadataApi.update_folder_template"
      end
      # verify the required parameter 'update_folder_metadata_template_request' is set
      if @api_client.config.client_side_validation && update_folder_metadata_template_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_folder_metadata_template_request' when calling Files::MetadataApi.update_folder_template"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/folder/{folderId}/templates/{templateId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s)).sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_folder_metadata_template_request)

      # return_type
      return_type = opts[:debug_return_type] || 'MetadataOperationWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.update_folder_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#update_folder_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a metadata template
    # Renames a metadata template or changes whether it is shown in the pickers. Only a DocSpace admin can change  templates. The request is partial: a property left out keeps its value, the fields are not touched here and are  changed with `PUT api/2.0/files/metadata/templates/{templateId}/fields/{fieldId}`. The new name follows the rules  of the creation: unique on the portal regardless of case and at most 255 characters. The answer is the whole template  with its fields. A template that does not exist is answered with 404, a name already in use or too long with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-template/
    # @param template_id [Integer] The template ID.
    # @param update_metadata_template [UpdateMetadataTemplate] The parameters for updating the template.
    # @param [Hash] opts the optional parameters
    # @return [MetadataTemplateWrapper]
    def update_template(template_id, update_metadata_template, opts = {})
      data, _status_code, _headers = update_template_with_http_info(template_id, update_metadata_template, opts)
      data
    end

    # Update a metadata template
    # Renames a metadata template or changes whether it is shown in the pickers. Only a DocSpace admin can change  templates. The request is partial: a property left out keeps its value, the fields are not touched here and are  changed with `PUT api/2.0/files/metadata/templates/{templateId}/fields/{fieldId}`. The new name follows the rules  of the creation: unique on the portal regardless of case and at most 255 characters. The answer is the whole template  with its fields. A template that does not exist is answered with 404, a name already in use or too long with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-template/
    # @param template_id [Integer] The template ID.
    # @param update_metadata_template [UpdateMetadataTemplate] The parameters for updating the template.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataTemplateWrapper, Integer, Hash)>] MetadataTemplateWrapper data, response status code and response headers
    def update_template_with_http_info(template_id, update_metadata_template, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::MetadataApi.update_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling Files::MetadataApi.update_template"
      end
      # verify the required parameter 'update_metadata_template' is set
      if @api_client.config.client_side_validation && update_metadata_template.nil?
        fail ArgumentError, "Missing the required parameter 'update_metadata_template' when calling Files::MetadataApi.update_template"
      end
      # resource path
      local_var_path = '/api/2.0/files/metadata/templates/{templateId}'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_metadata_template)

      # return_type
      return_type = opts[:debug_return_type] || 'MetadataTemplateWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::MetadataApi.update_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::MetadataApi#update_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

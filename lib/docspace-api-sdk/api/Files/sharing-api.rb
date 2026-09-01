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
    # Apply external data password
    # Applies a password specified in the request to get the external data.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/apply-external-share-password/
    # @param key [String] The unique document identifier.
    # @param external_share_request_param [ExternalShareRequestParam] The external data share request parameters.
    # @param [Hash] opts the optional parameters
    # @return [ExternalShareWrapper]
    def apply_external_share_password(key, external_share_request_param, opts = {})
      data, _status_code, _headers = apply_external_share_password_with_http_info(key, external_share_request_param, opts)
      data
    end

    # Apply external data password
    # Applies a password specified in the request to get the external data.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/apply-external-share-password/
    # @param key [String] The unique document identifier.
    # @param external_share_request_param [ExternalShareRequestParam] The external data share request parameters.
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
      auth_names = opts[:debug_auth_names] || []

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

    # Change the file owner
    # Changes the owner of the file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-file-owner/
    # @param [Hash] opts the optional parameters
    # @option opts [ChangeOwnerRequestDto] :change_owner_request_dto 
    # @return [FileEntryBaseArrayWrapper]
    def change_file_owner(opts = {})
      data, _status_code, _headers = change_file_owner_with_http_info(opts)
      data
    end

    # Change the file owner
    # Changes the owner of the file with the ID specified in the request.
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
    # Returns the encryption keys to access a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-access/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [EncryptionKeyArrayWrapper]
    def get_encryption_access(file_id, opts = {})
      data, _status_code, _headers = get_encryption_access_with_http_info(file_id, opts)
      data
    end

    # Get file encryption keys
    # Returns the encryption keys to access a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-access/
    # @param file_id [Integer] The file unique identifier.
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

    # Get the external data
    # Returns the external data by the key specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-share-data/
    # @param key [String] The unique key of the external shared data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_id The unique document identifier.
    # @option opts [String] :folder_id The unique folder identifier.
    # @return [ExternalShareWrapper]
    def get_external_share_data(key, opts = {})
      data, _status_code, _headers = get_external_share_data_with_http_info(key, opts)
      data
    end

    # Get the external data
    # Returns the external data by the key specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-share-data/
    # @param key [String] The unique key of the external shared data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_id The unique document identifier.
    # @option opts [String] :folder_id The unique folder identifier.
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
      auth_names = opts[:debug_auth_names] || []

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

    # Get the shared file information
    # Returns the detailed information about the shared file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/
    # @param id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to retrieve in the request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @return [FileShareArrayWrapper]
    def get_file_security_info(id, opts = {})
      data, _status_code, _headers = get_file_security_info_with_http_info(id, opts)
      data
    end

    # Get the shared file information
    # Returns the detailed information about the shared file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/
    # @param id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to retrieve in the request.
    # @option opts [Integer] :start_index The starting index for the query results.
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

    # Get the shared folder information
    # Returns the detailed information about the shared folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/
    # @param id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to retrieve in the request.
    # @option opts [Integer] :start_index The starting index for the query results.
    # @return [FileShareArrayWrapper]
    def get_folder_security_info(id, opts = {})
      data, _status_code, _headers = get_folder_security_info_with_http_info(id, opts)
      data
    end

    # Get the shared folder information
    # Returns the detailed information about the shared folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/
    # @param id [Integer] The folder unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to retrieve in the request.
    # @option opts [Integer] :start_index The starting index for the query results.
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

    # Get file group members with security information
    # Returns the group members with their file security information.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/
    # @param file_id [Integer] The file ID.
    # @param group_id [String] The group ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to be retrieved in the current query.
    # @option opts [Integer] :start_index The starting index for the query result set.
    # @option opts [String] :filter_value The filter value used for searching or querying group members based on text input.
    # @return [GroupMemberSecurityRequestArrayWrapper]
    def get_groups_members_with_file_security(file_id, group_id, opts = {})
      data, _status_code, _headers = get_groups_members_with_file_security_with_http_info(file_id, group_id, opts)
      data
    end

    # Get file group members with security information
    # Returns the group members with their file security information.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/
    # @param file_id [Integer] The file ID.
    # @param group_id [String] The group ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to be retrieved in the current query.
    # @option opts [Integer] :start_index The starting index for the query result set.
    # @option opts [String] :filter_value The filter value used for searching or querying group members based on text input.
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

    # Get folder group members with security information
    # Returns the group members with their folder security information.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/
    # @param folder_id [Integer] The folder ID.
    # @param group_id [String] The group ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to be retrieved in the current query.
    # @option opts [Integer] :start_index The starting index for the query result set.
    # @option opts [String] :filter_value The filter value used for searching or querying group members based on text input.
    # @return [GroupMemberSecurityRequestArrayWrapper]
    def get_groups_members_with_folder_security(folder_id, group_id, opts = {})
      data, _status_code, _headers = get_groups_members_with_folder_security_with_http_info(folder_id, group_id, opts)
      data
    end

    # Get folder group members with security information
    # Returns the group members with their folder security information.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/
    # @param folder_id [Integer] The folder ID.
    # @param group_id [String] The group ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of items to be retrieved in the current query.
    # @option opts [Integer] :start_index The starting index for the query result set.
    # @option opts [String] :filter_value The filter value used for searching or querying group members based on text input.
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

    # Get the sharing rights
    # Returns the sharing rights for all the files and folders specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [FileShareArrayWrapper]
    def get_security_info(opts = {})
      data, _status_code, _headers = get_security_info_with_http_info(opts)
      data
    end

    # Get the sharing rights
    # Returns the sharing rights for all the files and folders specified in the request.
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

    # Get user access rights by file ID
    # Returns a list of users with their access rights to the file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/
    # @param file_id [Integer] The file unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [MentionWrapperArrayWrapper]
    def get_shared_users(file_id, opts = {})
      data, _status_code, _headers = get_shared_users_with_http_info(file_id, opts)
      data
    end

    # Get user access rights by file ID
    # Returns a list of users with their access rights to the file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/
    # @param file_id [Integer] The file unique identifier.
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

    # Remove the sharing rights
    # Removes the sharing rights from all the files and folders specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [BaseBatchRequestDto] :base_batch_request_dto 
    # @return [BooleanWrapper]
    def remove_security_info(opts = {})
      data, _status_code, _headers = remove_security_info_with_http_info(opts)
      data
    end

    # Remove the sharing rights
    # Removes the sharing rights from all the files and folders specified in the request.
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

    # Send the mention message
    # Sends a message to the users who are mentioned in the file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/
    # @param file_id [Integer] The file ID with the mention message.
    # @param [Hash] opts the optional parameters
    # @option opts [MentionMessageWrapper] :mention_message_wrapper The mention message.
    # @return [AceShortWrapperArrayWrapper]
    def send_editor_notify(file_id, opts = {})
      data, _status_code, _headers = send_editor_notify_with_http_info(file_id, opts)
      data
    end

    # Send the mention message
    # Sends a message to the users who are mentioned in the file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/
    # @param file_id [Integer] The file ID with the mention message.
    # @param [Hash] opts the optional parameters
    # @option opts [MentionMessageWrapper] :mention_message_wrapper The mention message.
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
    # Sets the sharing settings to a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/
    # @param id [Integer] The file ID.
    # @param security_info_simple_request_dto [SecurityInfoSimpleRequestDto] The parameters of the security information simple request.
    # @param [Hash] opts the optional parameters
    # @return [FileShareArrayWrapper]
    def set_file_security_info(id, security_info_simple_request_dto, opts = {})
      data, _status_code, _headers = set_file_security_info_with_http_info(id, security_info_simple_request_dto, opts)
      data
    end

    # Share a file
    # Sets the sharing settings to a file with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/
    # @param id [Integer] The file ID.
    # @param security_info_simple_request_dto [SecurityInfoSimpleRequestDto] The parameters of the security information simple request.
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
    # Sets the sharing settings to a folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/
    # @param id [Integer] The folder ID.
    # @param security_info_simple_request_dto [SecurityInfoSimpleRequestDto] The parameters of the security information simple request.
    # @param [Hash] opts the optional parameters
    # @return [FileShareArrayWrapper]
    def set_folder_security_info(id, security_info_simple_request_dto, opts = {})
      data, _status_code, _headers = set_folder_security_info_with_http_info(id, security_info_simple_request_dto, opts)
      data
    end

    # Share a folder
    # Sets the sharing settings to a folder with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/
    # @param id [Integer] The folder ID.
    # @param security_info_simple_request_dto [SecurityInfoSimpleRequestDto] The parameters of the security information simple request.
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

    # Set the sharing rights
    # Sets the sharing rights to all the files and folders specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [SecurityInfoRequestDto] :security_info_request_dto 
    # @return [FileShareArrayWrapper]
    def set_security_info(opts = {})
      data, _status_code, _headers = set_security_info_with_http_info(opts)
      data
    end

    # Set the sharing rights
    # Sets the sharing rights to all the files and folders specified in the request.
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

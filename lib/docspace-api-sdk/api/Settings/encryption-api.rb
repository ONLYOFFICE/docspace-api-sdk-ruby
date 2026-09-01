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
  module Settings
    class EncryptionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the storage encryption progress
    # Returns the storage encryption progress.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-encryption-progress/
    # @param [Hash] opts the optional parameters
    # @return [DoubleNullableWrapper]
    def get_storage_encryption_progress(opts = {})
      data, _status_code, _headers = get_storage_encryption_progress_with_http_info(opts)
      data
    end

    # Get the storage encryption progress
    # Returns the storage encryption progress.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-encryption-progress/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DoubleNullableWrapper, Integer, Hash)>] DoubleNullableWrapper data, response status code and response headers
    def get_storage_encryption_progress_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::EncryptionApi.get_storage_encryption_progress ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/encryption/progress'

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
      return_type = opts[:debug_return_type] || 'DoubleNullableWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::EncryptionApi.get_storage_encryption_progress",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::EncryptionApi#get_storage_encryption_progress\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the storage encryption settings
    # Returns the storage encryption settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-encryption-settings/
    # @param [Hash] opts the optional parameters
    # @return [EncryptionSettingsWrapper]
    def get_storage_encryption_settings(opts = {})
      data, _status_code, _headers = get_storage_encryption_settings_with_http_info(opts)
      data
    end

    # Get the storage encryption settings
    # Returns the storage encryption settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-encryption-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(EncryptionSettingsWrapper, Integer, Hash)>] EncryptionSettingsWrapper data, response status code and response headers
    def get_storage_encryption_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::EncryptionApi.get_storage_encryption_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/encryption/settings'

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
      return_type = opts[:debug_return_type] || 'EncryptionSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::EncryptionApi.get_storage_encryption_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::EncryptionApi#get_storage_encryption_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start the storage encryption process
    # Starts the storage encryption process.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-storage-encryption/
    # @param [Hash] opts the optional parameters
    # @option opts [StorageEncryptionRequestsDto] :storage_encryption_requests_dto 
    # @return [BooleanWrapper]
    def start_storage_encryption(opts = {})
      data, _status_code, _headers = start_storage_encryption_with_http_info(opts)
      data
    end

    # Start the storage encryption process
    # Starts the storage encryption process.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-storage-encryption/
    # @param [Hash] opts the optional parameters
    # @option opts [StorageEncryptionRequestsDto] :storage_encryption_requests_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def start_storage_encryption_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::EncryptionApi.start_storage_encryption ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/encryption/start'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'storage_encryption_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::EncryptionApi.start_storage_encryption",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::EncryptionApi#start_storage_encryption\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

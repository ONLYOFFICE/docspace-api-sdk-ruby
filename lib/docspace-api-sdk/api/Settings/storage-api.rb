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
    class StorageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the backup storages
    # Returns a list of all the backup storages.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-backup-storages/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Indicates whether the operation should perform a dump of backup storage data.  This property is used as a parameter in backup-related API requests to specify  if additional details or data dumping is required during the process.
    # @return [StorageArrayWrapper]
    def get_all_backup_storages(opts = {})
      data, _status_code, _headers = get_all_backup_storages_with_http_info(opts)
      data
    end

    # Get the backup storages
    # Returns a list of all the backup storages.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-backup-storages/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :dump Indicates whether the operation should perform a dump of backup storage data.  This property is used as a parameter in backup-related API requests to specify  if additional details or data dumping is required during the process.
    # @return [Array<(StorageArrayWrapper, Integer, Hash)>] StorageArrayWrapper data, response status code and response headers
    def get_all_backup_storages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::StorageApi.get_all_backup_storages ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/storage/backup'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'Dump'] = opts[:'dump'] if !opts[:'dump'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StorageArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::StorageApi.get_all_backup_storages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::StorageApi#get_all_backup_storages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the CDN storages
    # Returns a list of all the CDN storages.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-cdn-storages/
    # @param [Hash] opts the optional parameters
    # @return [StorageArrayWrapper]
    def get_all_cdn_storages(opts = {})
      data, _status_code, _headers = get_all_cdn_storages_with_http_info(opts)
      data
    end

    # Get the CDN storages
    # Returns a list of all the CDN storages.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-cdn-storages/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StorageArrayWrapper, Integer, Hash)>] StorageArrayWrapper data, response status code and response headers
    def get_all_cdn_storages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::StorageApi.get_all_cdn_storages ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/storage/cdn'

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
      return_type = opts[:debug_return_type] || 'StorageArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::StorageApi.get_all_cdn_storages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::StorageApi#get_all_cdn_storages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get storages
    # Returns a list of all the portal storages.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-storages/
    # @param [Hash] opts the optional parameters
    # @return [StorageArrayWrapper]
    def get_all_storages(opts = {})
      data, _status_code, _headers = get_all_storages_with_http_info(opts)
      data
    end

    # Get storages
    # Returns a list of all the portal storages.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-storages/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StorageArrayWrapper, Integer, Hash)>] StorageArrayWrapper data, response status code and response headers
    def get_all_storages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::StorageApi.get_all_storages ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/storage'

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
      return_type = opts[:debug_return_type] || 'StorageArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::StorageApi.get_all_storages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::StorageApi#get_all_storages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Amazon regions
    # Returns a list of all Amazon regions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-amazon-s3-regions/
    # @param [Hash] opts the optional parameters
    # @return [ObjectWrapper]
    def get_amazon_s3_regions(opts = {})
      data, _status_code, _headers = get_amazon_s3_regions_with_http_info(opts)
      data
    end

    # Get Amazon regions
    # Returns a list of all Amazon regions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-amazon-s3-regions/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
    def get_amazon_s3_regions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::StorageApi.get_amazon_s3_regions ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/storage/s3/regions'

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
      return_type = opts[:debug_return_type] || 'ObjectWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::StorageApi.get_amazon_s3_regions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::StorageApi#get_amazon_s3_regions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the storage progress
    # Returns the storage progress.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-progress/
    # @param [Hash] opts the optional parameters
    # @return [DoubleWrapper]
    def get_storage_progress(opts = {})
      data, _status_code, _headers = get_storage_progress_with_http_info(opts)
      data
    end

    # Get the storage progress
    # Returns the storage progress.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-progress/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DoubleWrapper, Integer, Hash)>] DoubleWrapper data, response status code and response headers
    def get_storage_progress_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::StorageApi.get_storage_progress ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/storage/progress'

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
      return_type = opts[:debug_return_type] || 'DoubleWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::StorageApi.get_storage_progress",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::StorageApi#get_storage_progress\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset the CDN storage settings
    # Resets the CDN storage settings to the default parameters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-cdn-to-default/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def reset_cdn_to_default(opts = {})
      reset_cdn_to_default_with_http_info(opts)
      nil
    end

    # Reset the CDN storage settings
    # Resets the CDN storage settings to the default parameters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-cdn-to-default/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def reset_cdn_to_default_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::StorageApi.reset_cdn_to_default ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/storage/cdn'

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
        :operation => :"Settings::StorageApi.reset_cdn_to_default",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::StorageApi#reset_cdn_to_default\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset the storage settings
    # Resets the storage settings to the default parameters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-storage-to-default/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def reset_storage_to_default(opts = {})
      reset_storage_to_default_with_http_info(opts)
      nil
    end

    # Reset the storage settings
    # Resets the storage settings to the default parameters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-storage-to-default/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def reset_storage_to_default_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::StorageApi.reset_storage_to_default ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/storage'

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
        :operation => :"Settings::StorageApi.reset_storage_to_default",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::StorageApi#reset_storage_to_default\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the CDN storage
    # Updates the CDN storage with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-cdn-storage/
    # @param [Hash] opts the optional parameters
    # @option opts [StorageRequestsDto] :storage_requests_dto 
    # @return [CdnStorageSettingsWrapper]
    def update_cdn_storage(opts = {})
      data, _status_code, _headers = update_cdn_storage_with_http_info(opts)
      data
    end

    # Update the CDN storage
    # Updates the CDN storage with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-cdn-storage/
    # @param [Hash] opts the optional parameters
    # @option opts [StorageRequestsDto] :storage_requests_dto 
    # @return [Array<(CdnStorageSettingsWrapper, Integer, Hash)>] CdnStorageSettingsWrapper data, response status code and response headers
    def update_cdn_storage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::StorageApi.update_cdn_storage ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/storage/cdn'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'storage_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'CdnStorageSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::StorageApi.update_cdn_storage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::StorageApi#update_cdn_storage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a storage
    # Updates a storage with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-storage/
    # @param [Hash] opts the optional parameters
    # @option opts [StorageRequestsDto] :storage_requests_dto 
    # @return [StorageSettingsWrapper]
    def update_storage(opts = {})
      data, _status_code, _headers = update_storage_with_http_info(opts)
      data
    end

    # Update a storage
    # Updates a storage with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-storage/
    # @param [Hash] opts the optional parameters
    # @option opts [StorageRequestsDto] :storage_requests_dto 
    # @return [Array<(StorageSettingsWrapper, Integer, Hash)>] StorageSettingsWrapper data, response status code and response headers
    def update_storage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::StorageApi.update_storage ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/storage'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'storage_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StorageSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::StorageApi.update_storage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::StorageApi#update_storage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

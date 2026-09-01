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
  module ApiKeys
    class ApiKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a user API key
    # Creates a user API key with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-api-key/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateApiKeyRequestDto] :create_api_key_request_dto 
    # @return [ApiKeyResponseWrapper]
    def create_api_key(opts = {})
      data, _status_code, _headers = create_api_key_with_http_info(opts)
      data
    end

    # Create a user API key
    # Creates a user API key with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-api-key/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateApiKeyRequestDto] :create_api_key_request_dto 
    # @return [Array<(ApiKeyResponseWrapper, Integer, Hash)>] ApiKeyResponseWrapper data, response status code and response headers
    def create_api_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiKeys::ApiKeysApi.create_api_key ...'
      end
      # resource path
      local_var_path = '/api/2.0/keys'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_api_key_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiKeyResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"ApiKeys::ApiKeysApi.create_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiKeys::ApiKeysApi#create_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a user API key
    # Deletes a user API key by its ID.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-api-key/
    # @param key_id [String] The API key ID.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def delete_api_key(key_id, opts = {})
      data, _status_code, _headers = delete_api_key_with_http_info(key_id, opts)
      data
    end

    # Delete a user API key
    # Deletes a user API key by its ID.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-api-key/
    # @param key_id [String] The API key ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def delete_api_key_with_http_info(key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiKeys::ApiKeysApi.delete_api_key ...'
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling ApiKeys::ApiKeysApi.delete_api_key"
      end
      # resource path
      local_var_path = '/api/2.0/keys/{keyId}'.sub('{' + 'keyId' + '}', CGI.escape(key_id.to_s))

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
        :operation => :"ApiKeys::ApiKeysApi.delete_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiKeys::ApiKeysApi#delete_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get API key permissions
    # Returns a list of all available permissions for the API key.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-permissions/
    # @param [Hash] opts the optional parameters
    # @return [STRINGArrayWrapper]
    def get_all_permissions(opts = {})
      data, _status_code, _headers = get_all_permissions_with_http_info(opts)
      data
    end

    # Get API key permissions
    # Returns a list of all available permissions for the API key.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-permissions/
    # @param [Hash] opts the optional parameters
    # @return [Array<(STRINGArrayWrapper, Integer, Hash)>] STRINGArrayWrapper data, response status code and response headers
    def get_all_permissions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiKeys::ApiKeysApi.get_all_permissions ...'
      end
      # resource path
      local_var_path = '/api/2.0/keys/permissions'

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
      return_type = opts[:debug_return_type] || 'STRINGArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"ApiKeys::ApiKeysApi.get_all_permissions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiKeys::ApiKeysApi#get_all_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get current user's API key
    # Returns information about the current user's API key.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-api-key/
    # @param [Hash] opts the optional parameters
    # @return [ApiKeyResponseWrapper]
    def get_api_key(opts = {})
      data, _status_code, _headers = get_api_key_with_http_info(opts)
      data
    end

    # Get current user's API key
    # Returns information about the current user's API key.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-api-key/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiKeyResponseWrapper, Integer, Hash)>] ApiKeyResponseWrapper data, response status code and response headers
    def get_api_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiKeys::ApiKeysApi.get_api_key ...'
      end
      # resource path
      local_var_path = '/api/2.0/keys/@self'

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
      return_type = opts[:debug_return_type] || 'ApiKeyResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"ApiKeys::ApiKeysApi.get_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiKeys::ApiKeysApi#get_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get current user's API keys
    # Returns a list of all API keys for the current user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-api-keys/
    # @param [Hash] opts the optional parameters
    # @return [ApiKeyResponseArrayWrapper]
    def get_api_keys(opts = {})
      data, _status_code, _headers = get_api_keys_with_http_info(opts)
      data
    end

    # Get current user's API keys
    # Returns a list of all API keys for the current user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-api-keys/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiKeyResponseArrayWrapper, Integer, Hash)>] ApiKeyResponseArrayWrapper data, response status code and response headers
    def get_api_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiKeys::ApiKeysApi.get_api_keys ...'
      end
      # resource path
      local_var_path = '/api/2.0/keys'

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
      return_type = opts[:debug_return_type] || 'ApiKeyResponseArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"ApiKeys::ApiKeysApi.get_api_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiKeys::ApiKeysApi#get_api_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an API key
    # Updates an existing API key changing its name, permissions, and status.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-api-key/
    # @param key_id [String] The unique identifier of the API key to update.
    # @param update_api_key_request [UpdateApiKeyRequest] The request parameters for updating an existing API key.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def update_api_key(key_id, update_api_key_request, opts = {})
      data, _status_code, _headers = update_api_key_with_http_info(key_id, update_api_key_request, opts)
      data
    end

    # Update an API key
    # Updates an existing API key changing its name, permissions, and status.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-api-key/
    # @param key_id [String] The unique identifier of the API key to update.
    # @param update_api_key_request [UpdateApiKeyRequest] The request parameters for updating an existing API key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def update_api_key_with_http_info(key_id, update_api_key_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiKeys::ApiKeysApi.update_api_key ...'
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling ApiKeys::ApiKeysApi.update_api_key"
      end
      # verify the required parameter 'update_api_key_request' is set
      if @api_client.config.client_side_validation && update_api_key_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_api_key_request' when calling ApiKeys::ApiKeysApi.update_api_key"
      end
      # resource path
      local_var_path = '/api/2.0/keys/{keyId}'.sub('{' + 'keyId' + '}', CGI.escape(key_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_api_key_request)

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"ApiKeys::ApiKeysApi.update_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiKeys::ApiKeysApi#update_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

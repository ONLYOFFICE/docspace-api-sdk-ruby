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
    class ThirdPartyIntegrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Remove a third-party account
    # Removes the third-party storage service account with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-third-party/
    # @param provider_id [Integer] The provider ID.
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def delete_third_party(provider_id, opts = {})
      data, _status_code, _headers = delete_third_party_with_http_info(provider_id, opts)
      data
    end

    # Remove a third-party account
    # Removes the third-party storage service account with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-third-party/
    # @param provider_id [Integer] The provider ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def delete_third_party_with_http_info(provider_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::ThirdPartyIntegrationApi.delete_third_party ...'
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling Files::ThirdPartyIntegrationApi.delete_third_party"
      end
      # resource path
      local_var_path = '/api/2.0/files/thirdparty/{providerId}'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s))

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
        :operation => :"Files::ThirdPartyIntegrationApi.delete_third_party",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::ThirdPartyIntegrationApi#delete_third_party\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all providers
    # Returns a list of all providers.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-providers/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :excludewebdav Specifies whether WebDAV resources should be excluded from the result..
    # @return [ProviderArrayWrapper]
    def get_all_providers(opts = {})
      data, _status_code, _headers = get_all_providers_with_http_info(opts)
      data
    end

    # Get all providers
    # Returns a list of all providers.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-providers/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :excludewebdav Specifies whether WebDAV resources should be excluded from the result..
    # @return [Array<(ProviderArrayWrapper, Integer, Hash)>] ProviderArrayWrapper data, response status code and response headers
    def get_all_providers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::ThirdPartyIntegrationApi.get_all_providers ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/thirdparty/providers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'excludewebdav'] = opts[:'excludewebdav'] if !opts[:'excludewebdav'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::ThirdPartyIntegrationApi.get_all_providers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::ThirdPartyIntegrationApi#get_all_providers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a third-party account backup
    # Returns a backup of the connected third-party account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-third-party-account/
    # @param [Hash] opts the optional parameters
    # @return [FolderStringWrapper]
    def get_backup_third_party_account(opts = {})
      data, _status_code, _headers = get_backup_third_party_account_with_http_info(opts)
      data
    end

    # Get a third-party account backup
    # Returns a backup of the connected third-party account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-third-party-account/
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderStringWrapper, Integer, Hash)>] FolderStringWrapper data, response status code and response headers
    def get_backup_third_party_account_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::ThirdPartyIntegrationApi.get_backup_third_party_account ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/thirdparty/backup'

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
      return_type = opts[:debug_return_type] || 'FolderStringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::ThirdPartyIntegrationApi.get_backup_third_party_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::ThirdPartyIntegrationApi#get_backup_third_party_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get providers
    # Returns the list of the available providers.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-capabilities/
    # @param [Hash] opts the optional parameters
    # @return [ArrayArrayWrapper]
    def get_capabilities(opts = {})
      data, _status_code, _headers = get_capabilities_with_http_info(opts)
      data
    end

    # Get providers
    # Returns the list of the available providers.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-capabilities/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ArrayArrayWrapper, Integer, Hash)>] ArrayArrayWrapper data, response status code and response headers
    def get_capabilities_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::ThirdPartyIntegrationApi.get_capabilities ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/thirdparty/capabilities'

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
      return_type = opts[:debug_return_type] || 'ArrayArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::ThirdPartyIntegrationApi.get_capabilities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::ThirdPartyIntegrationApi#get_capabilities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the common third-party services
    # Returns a list of the third-party services connected to the Common section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-common-third-party-folders/
    # @param [Hash] opts the optional parameters
    # @return [FolderStringArrayWrapper]
    def get_common_third_party_folders(opts = {})
      data, _status_code, _headers = get_common_third_party_folders_with_http_info(opts)
      data
    end

    # Get the common third-party services
    # Returns a list of the third-party services connected to the Common section.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-common-third-party-folders/
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderStringArrayWrapper, Integer, Hash)>] FolderStringArrayWrapper data, response status code and response headers
    def get_common_third_party_folders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::ThirdPartyIntegrationApi.get_common_third_party_folders ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/thirdparty/common'

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
      return_type = opts[:debug_return_type] || 'FolderStringArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::ThirdPartyIntegrationApi.get_common_third_party_folders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::ThirdPartyIntegrationApi#get_common_third_party_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the third-party accounts
    # Returns a list of all the connected third-party accounts.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-accounts/
    # @param [Hash] opts the optional parameters
    # @return [ThirdPartyParamsArrayWrapper]
    def get_third_party_accounts(opts = {})
      data, _status_code, _headers = get_third_party_accounts_with_http_info(opts)
      data
    end

    # Get the third-party accounts
    # Returns a list of all the connected third-party accounts.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-accounts/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ThirdPartyParamsArrayWrapper, Integer, Hash)>] ThirdPartyParamsArrayWrapper data, response status code and response headers
    def get_third_party_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::ThirdPartyIntegrationApi.get_third_party_accounts ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/thirdparty'

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
      return_type = opts[:debug_return_type] || 'ThirdPartyParamsArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::ThirdPartyIntegrationApi.get_third_party_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::ThirdPartyIntegrationApi#get_third_party_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save a third-party account
    # Saves the third-party storage service account. For WebDav, Yandex, kDrive and SharePoint, the login and password are used for authentication. For other providers, the authentication is performed using a token received via OAuth 2.0.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party/
    # @param [Hash] opts the optional parameters
    # @option opts [ThirdPartyRequestDto] :third_party_request_dto 
    # @return [FolderStringWrapper]
    def save_third_party(opts = {})
      data, _status_code, _headers = save_third_party_with_http_info(opts)
      data
    end

    # Save a third-party account
    # Saves the third-party storage service account. For WebDav, Yandex, kDrive and SharePoint, the login and password are used for authentication. For other providers, the authentication is performed using a token received via OAuth 2.0.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party/
    # @param [Hash] opts the optional parameters
    # @option opts [ThirdPartyRequestDto] :third_party_request_dto 
    # @return [Array<(FolderStringWrapper, Integer, Hash)>] FolderStringWrapper data, response status code and response headers
    def save_third_party_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::ThirdPartyIntegrationApi.save_third_party ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/thirdparty'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'third_party_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FolderStringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::ThirdPartyIntegrationApi.save_third_party",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::ThirdPartyIntegrationApi#save_third_party\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save a third-party account backup
    # Saves a backup of the connected third-party account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party-backup/
    # @param [Hash] opts the optional parameters
    # @option opts [ThirdPartyBackupRequestDto] :third_party_backup_request_dto 
    # @return [FolderStringWrapper]
    def save_third_party_backup(opts = {})
      data, _status_code, _headers = save_third_party_backup_with_http_info(opts)
      data
    end

    # Save a third-party account backup
    # Saves a backup of the connected third-party account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party-backup/
    # @param [Hash] opts the optional parameters
    # @option opts [ThirdPartyBackupRequestDto] :third_party_backup_request_dto 
    # @return [Array<(FolderStringWrapper, Integer, Hash)>] FolderStringWrapper data, response status code and response headers
    def save_third_party_backup_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::ThirdPartyIntegrationApi.save_third_party_backup ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/thirdparty/backup'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'third_party_backup_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'FolderStringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::ThirdPartyIntegrationApi.save_third_party_backup",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::ThirdPartyIntegrationApi#save_third_party_backup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

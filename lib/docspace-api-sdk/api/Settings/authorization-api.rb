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
    class AuthorizationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the authorization services
    # Returns the catalogue of third-party storage and authorization providers DocSpace can integrate with (for  example Amazon S3, Dropbox, Google, or Telegram), including whichever keys were last saved for each one that  currently has any configured. Requires Owner or DocSpaceAdmin (the EditPortalSettings permission). This is a  read-only, idempotent call, and the list is not paginated; entries are ordered by the provider's configured  display order. Only providers that expose at least one manageable key are included, so a provider with nothing  to configure is omitted entirely. Save or change a provider's keys with `POST api/2.0/settings/authservice`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-auth-services/
    # @param [Hash] opts the optional parameters
    # @return [AuthServiceRequestsArrayWrapper]
    def get_auth_services(opts = {})
      data, _status_code, _headers = get_auth_services_with_http_info(opts)
      data
    end

    # Get the authorization services
    # Returns the catalogue of third-party storage and authorization providers DocSpace can integrate with (for  example Amazon S3, Dropbox, Google, or Telegram), including whichever keys were last saved for each one that  currently has any configured. Requires Owner or DocSpaceAdmin (the EditPortalSettings permission). This is a  read-only, idempotent call, and the list is not paginated; entries are ordered by the provider's configured  display order. Only providers that expose at least one manageable key are included, so a provider with nothing  to configure is omitted entirely. Save or change a provider's keys with `POST api/2.0/settings/authservice`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-auth-services/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthServiceRequestsArrayWrapper, Integer, Hash)>] AuthServiceRequestsArrayWrapper data, response status code and response headers
    def get_auth_services_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::AuthorizationApi.get_auth_services ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/authservice'

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
      return_type = opts[:debug_return_type] || 'AuthServiceRequestsArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::AuthorizationApi.get_auth_services",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::AuthorizationApi#get_auth_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the authorization keys
    # Saves the authorization keys for one third-party storage or authorization provider, identified by name, or  clears them when every submitted key is left empty. Requires Owner or DocSpaceAdmin (the EditPortalSettings  permission); a provider that does not allow its keys to be changed from the API rejects the call outright. A  provider that is only available on a paid plan additionally requires the portal's tariff to include  third-party storage, or Standalone licensing, before the call is accepted. Keys that fail the provider's own  validation are cleared and the call is rejected rather than left partially applied. This is a mutating,  idempotent call: resaving identical keys succeeds and reports no change. It returns whether the keys actually  changed, not the keys themselves; connecting Telegram or an external database through this call also triggers  the matching real-time connection update.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-auth-keys/
    # @param [Hash] opts the optional parameters
    # @option opts [AuthServiceRequestsDto] :auth_service_requests_dto 
    # @return [BooleanWrapper]
    def save_auth_keys(opts = {})
      data, _status_code, _headers = save_auth_keys_with_http_info(opts)
      data
    end

    # Save the authorization keys
    # Saves the authorization keys for one third-party storage or authorization provider, identified by name, or  clears them when every submitted key is left empty. Requires Owner or DocSpaceAdmin (the EditPortalSettings  permission); a provider that does not allow its keys to be changed from the API rejects the call outright. A  provider that is only available on a paid plan additionally requires the portal's tariff to include  third-party storage, or Standalone licensing, before the call is accepted. Keys that fail the provider's own  validation are cleared and the call is rejected rather than left partially applied. This is a mutating,  idempotent call: resaving identical keys succeeds and reports no change. It returns whether the keys actually  changed, not the keys themselves; connecting Telegram or an external database through this call also triggers  the matching real-time connection update.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-auth-keys/
    # @param [Hash] opts the optional parameters
    # @option opts [AuthServiceRequestsDto] :auth_service_requests_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def save_auth_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::AuthorizationApi.save_auth_keys ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/authservice'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'auth_service_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::AuthorizationApi.save_auth_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::AuthorizationApi#save_auth_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test external database connection
    # Probes connectivity to an external database using the settings supplied in the request, without saving them or  affecting the portal's own configuration. Requires Owner or DocSpaceAdmin (the EditPortalSettings permission).  SQLite is only accepted as a target on a Standalone (self-hosted) installation; requesting it on SaaS is  reported as a failed connection rather than an error. This is a read-only call, safe to retry. A failed  connection is not an HTTP error: the response always comes back as a normal success with `success=false` and  an `error` message describing what went wrong.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/test-external-database-connection/
    # @param [Hash] opts the optional parameters
    # @option opts [ExternalDatabaseSettings] :external_database_settings 
    # @return [ConnectionTestResultWrapper]
    def test_external_database_connection(opts = {})
      data, _status_code, _headers = test_external_database_connection_with_http_info(opts)
      data
    end

    # Test external database connection
    # Probes connectivity to an external database using the settings supplied in the request, without saving them or  affecting the portal's own configuration. Requires Owner or DocSpaceAdmin (the EditPortalSettings permission).  SQLite is only accepted as a target on a Standalone (self-hosted) installation; requesting it on SaaS is  reported as a failed connection rather than an error. This is a read-only call, safe to retry. A failed  connection is not an HTTP error: the response always comes back as a normal success with `success=false` and  an `error` message describing what went wrong.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/test-external-database-connection/
    # @param [Hash] opts the optional parameters
    # @option opts [ExternalDatabaseSettings] :external_database_settings 
    # @return [Array<(ConnectionTestResultWrapper, Integer, Hash)>] ConnectionTestResultWrapper data, response status code and response headers
    def test_external_database_connection_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::AuthorizationApi.test_external_database_connection ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/authservice/externaldb/test'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'external_database_settings'])

      # return_type
      return_type = opts[:debug_return_type] || 'ConnectionTestResultWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::AuthorizationApi.test_external_database_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::AuthorizationApi#test_external_database_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

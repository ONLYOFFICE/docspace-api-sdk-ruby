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
  module OAuth20
    class ClientManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Change client activation status
    # Activates or deactivates an OAuth2 client. When deactivated, the client cannot request new access tokens, but existing tokens will remain valid until they expire.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-activation/
    # @param client_id [String] ID of the client to change activation for
    # @param change_client_activation_request [ChangeClientActivationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def change_activation(client_id, change_client_activation_request, opts = {})
      data, _status_code, _headers = change_activation_with_http_info(client_id, change_client_activation_request, opts)
      data
    end

    # Change client activation status
    # Activates or deactivates an OAuth2 client. When deactivated, the client cannot request new access tokens, but existing tokens will remain valid until they expire.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-activation/
    # @param client_id [String] ID of the client to change activation for
    # @param change_client_activation_request [ChangeClientActivationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def change_activation_with_http_info(client_id, change_client_activation_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientManagementApi.change_activation ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling OAuth20::ClientManagementApi.change_activation"
      end
      if @api_client.config.client_side_validation && client_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_id" when calling OAuth20::ClientManagementApi.change_activation, the character length must be greater than or equal to 1.'
      end

      # verify the required parameter 'change_client_activation_request' is set
      if @api_client.config.client_side_validation && change_client_activation_request.nil?
        fail ArgumentError, "Missing the required parameter 'change_client_activation_request' when calling OAuth20::ClientManagementApi.change_activation"
      end
      # resource path
      local_var_path = '/api/2.0/clients/{clientId}/activation'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(change_client_activation_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientManagementApi.change_activation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientManagementApi#change_activation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new OAuth2 client
    # Creates a new OAuth2 client with the specified configuration. The client will be created with the provided scopes, redirect URIs, and other settings. Returns the created client details including the generated client ID.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-client/
    # @param create_client_request [CreateClientRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ClientResponse]
    def create_client(create_client_request, opts = {})
      data, _status_code, _headers = create_client_with_http_info(create_client_request, opts)
      data
    end

    # Create a new OAuth2 client
    # Creates a new OAuth2 client with the specified configuration. The client will be created with the provided scopes, redirect URIs, and other settings. Returns the created client details including the generated client ID.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-client/
    # @param create_client_request [CreateClientRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientResponse, Integer, Hash)>] ClientResponse data, response status code and response headers
    def create_client_with_http_info(create_client_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientManagementApi.create_client ...'
      end
      # verify the required parameter 'create_client_request' is set
      if @api_client.config.client_side_validation && create_client_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_client_request' when calling OAuth20::ClientManagementApi.create_client"
      end
      # resource path
      local_var_path = '/api/2.0/clients'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_client_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ClientResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientManagementApi.create_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientManagementApi#create_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an OAuth2 client
    # Permanently deletes an OAuth2 client and all associated data. This will invalidate all access tokens and refresh tokens issued to this client. This operation cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-client/
    # @param client_id [String] ID of the client to delete
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_client(client_id, opts = {})
      data, _status_code, _headers = delete_client_with_http_info(client_id, opts)
      data
    end

    # Delete an OAuth2 client
    # Permanently deletes an OAuth2 client and all associated data. This will invalidate all access tokens and refresh tokens issued to this client. This operation cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-client/
    # @param client_id [String] ID of the client to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_client_with_http_info(client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientManagementApi.delete_client ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling OAuth20::ClientManagementApi.delete_client"
      end
      if @api_client.config.client_side_validation && client_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_id" when calling OAuth20::ClientManagementApi.delete_client, the character length must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/clients/{clientId}'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientManagementApi.delete_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientManagementApi#delete_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all tenant OAuth2 clients
    # Permanently deletes tenant OAuth2 clients and all associated data. This will invalidate all access tokens and refresh tokens issued to this client. This operation cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-tenant-clients/
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_tenant_clients(opts = {})
      data, _status_code, _headers = delete_tenant_clients_with_http_info(opts)
      data
    end

    # Delete all tenant OAuth2 clients
    # Permanently deletes tenant OAuth2 clients and all associated data. This will invalidate all access tokens and refresh tokens issued to this client. This operation cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-tenant-clients/
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_tenant_clients_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientManagementApi.delete_tenant_clients ...'
      end
      # resource path
      local_var_path = '/api/2.0/clients/tenant'

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientManagementApi.delete_tenant_clients",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientManagementApi#delete_tenant_clients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all user OAuth2 clients
    # Permanently deletes user OAuth2 clients and all associated data. This will invalidate all access tokens and refresh tokens issued to this client. This operation cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-user-clients/
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_user_clients(opts = {})
      data, _status_code, _headers = delete_user_clients_with_http_info(opts)
      data
    end

    # Delete all user OAuth2 clients
    # Permanently deletes user OAuth2 clients and all associated data. This will invalidate all access tokens and refresh tokens issued to this client. This operation cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-user-clients/
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_user_clients_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientManagementApi.delete_user_clients ...'
      end
      # resource path
      local_var_path = '/api/2.0/clients'

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientManagementApi.delete_user_clients",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientManagementApi#delete_user_clients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Regenerate client secret
    # Generates a new client secret for the specified OAuth2 client. The old secret will be immediately invalidated. This operation should be used with caution as it requires updating the secret in all client applications.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/regenerate-secret/
    # @param client_id [String] ID of the client to regenerate secret for
    # @param [Hash] opts the optional parameters
    # @return [ClientSecretResponse]
    def regenerate_secret(client_id, opts = {})
      data, _status_code, _headers = regenerate_secret_with_http_info(client_id, opts)
      data
    end

    # Regenerate client secret
    # Generates a new client secret for the specified OAuth2 client. The old secret will be immediately invalidated. This operation should be used with caution as it requires updating the secret in all client applications.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/regenerate-secret/
    # @param client_id [String] ID of the client to regenerate secret for
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientSecretResponse, Integer, Hash)>] ClientSecretResponse data, response status code and response headers
    def regenerate_secret_with_http_info(client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientManagementApi.regenerate_secret ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling OAuth20::ClientManagementApi.regenerate_secret"
      end
      if @api_client.config.client_side_validation && client_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_id" when calling OAuth20::ClientManagementApi.regenerate_secret, the character length must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/clients/{clientId}/regenerate'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ClientSecretResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientManagementApi.regenerate_secret",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientManagementApi#regenerate_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke client consent
    # Revokes all user consents for the specified OAuth2 client. This will invalidate all access tokens and refresh tokens issued to this client for the current user. The user will need to re-authorize the client to access their resources.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/revoke-user-client/
    # @param client_id [String] ID of the client to revoke consent for
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def revoke_user_client(client_id, opts = {})
      data, _status_code, _headers = revoke_user_client_with_http_info(client_id, opts)
      data
    end

    # Revoke client consent
    # Revokes all user consents for the specified OAuth2 client. This will invalidate all access tokens and refresh tokens issued to this client for the current user. The user will need to re-authorize the client to access their resources.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/revoke-user-client/
    # @param client_id [String] ID of the client to revoke consent for
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def revoke_user_client_with_http_info(client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientManagementApi.revoke_user_client ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling OAuth20::ClientManagementApi.revoke_user_client"
      end
      if @api_client.config.client_side_validation && client_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_id" when calling OAuth20::ClientManagementApi.revoke_user_client, the character length must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/clients/{clientId}/revoke'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientManagementApi.revoke_user_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientManagementApi#revoke_user_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing OAuth2 client
    # Updates the configuration of an existing OAuth2 client. Allows modification of client name, description, redirect URIs, and other settings. The client ID cannot be modified.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-client/
    # @param client_id [String] ID of the client to update
    # @param update_client_request [UpdateClientRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def update_client(client_id, update_client_request, opts = {})
      data, _status_code, _headers = update_client_with_http_info(client_id, update_client_request, opts)
      data
    end

    # Update an existing OAuth2 client
    # Updates the configuration of an existing OAuth2 client. Allows modification of client name, description, redirect URIs, and other settings. The client ID cannot be modified.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-client/
    # @param client_id [String] ID of the client to update
    # @param update_client_request [UpdateClientRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_client_with_http_info(client_id, update_client_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientManagementApi.update_client ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling OAuth20::ClientManagementApi.update_client"
      end
      if @api_client.config.client_side_validation && client_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_id" when calling OAuth20::ClientManagementApi.update_client, the character length must be greater than or equal to 1.'
      end

      # verify the required parameter 'update_client_request' is set
      if @api_client.config.client_side_validation && update_client_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_client_request' when calling OAuth20::ClientManagementApi.update_client"
      end
      # resource path
      local_var_path = '/api/2.0/clients/{clientId}'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_client_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientManagementApi.update_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientManagementApi#update_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

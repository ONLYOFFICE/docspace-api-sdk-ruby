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
    # Enables or disables an existing client and answers 200 with an empty body. A disabled client can no longer obtain new tokens, but the tokens and consents it already holds stay valid until they expire on their own: disable a client to stop new authorizations, delete it to end the existing ones. An administrator may change any client of the tenant, a plain user only the clients they created. The body carries the single activation flag, and a client the caller may not see is reported as not found rather than as forbidden.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-activation/
    # @param client_id [String] ID of the client to change activation for
    # @param change_client_activation_request [ChangeClientActivationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def change_activation(client_id, change_client_activation_request, opts = {})
      change_activation_with_http_info(client_id, change_client_activation_request, opts)
      nil
    end

    # Change client activation status
    # Enables or disables an existing client and answers 200 with an empty body. A disabled client can no longer obtain new tokens, but the tokens and consents it already holds stay valid until they expire on their own: disable a client to stop new authorizations, delete it to end the existing ones. An administrator may change any client of the tenant, a plain user only the clients they created. The body carries the single activation flag, and a client the caller may not see is reported as not found rather than as forbidden.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-activation/
    # @param client_id [String] ID of the client to change activation for
    # @param change_client_activation_request [ChangeClientActivationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
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
      local_var_path = '/api/2.0/oauth2/clients/{clientId}/activation'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
      return_type = opts[:debug_return_type]

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
    # Registers a new OAuth2 client in the caller's tenant and returns it. The body must carry a name, a description, a logo and at least one redirect URI, allowed origin and scope, and every scope named must already exist in the tenant's scope catalogue. Administrators and users may both register clients; the caller is recorded as the creator, which is what later restricts a plain user to the clients they created. The response is the stored client with its generated client ID and secret, and it is the first place either value can be read. Some deployments cap how many clients one tenant may hold, and reaching that cap is reported as 400 together with the validation failures.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-client/
    # @param create_client_request [CreateClientRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ClientResponse]
    def create_client(create_client_request, opts = {})
      data, _status_code, _headers = create_client_with_http_info(create_client_request, opts)
      data
    end

    # Create a new OAuth2 client
    # Registers a new OAuth2 client in the caller's tenant and returns it. The body must carry a name, a description, a logo and at least one redirect URI, allowed origin and scope, and every scope named must already exist in the tenant's scope catalogue. Administrators and users may both register clients; the caller is recorded as the creator, which is what later restricts a plain user to the clients they created. The response is the stored client with its generated client ID and secret, and it is the first place either value can be read. Some deployments cap how many clients one tenant may hold, and reaching that cap is reported as 400 together with the validation failures.
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
      local_var_path = '/api/2.0/oauth2/clients'

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
    # Deletes one client from the tenant permanently and answers 200 with an empty body. An administrator may delete any client of the tenant, a plain user only the clients they created, and a client the caller may not see is reported as not found rather than as forbidden. The authorizations and consents issued for the client are removed too, but that cleanup is driven by a message and completes on the authorization service after this call has already returned. A delete that removes no row answers 400. The operation cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-client/
    # @param client_id [String] ID of the client to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_client(client_id, opts = {})
      delete_client_with_http_info(client_id, opts)
      nil
    end

    # Delete an OAuth2 client
    # Deletes one client from the tenant permanently and answers 200 with an empty body. An administrator may delete any client of the tenant, a plain user only the clients they created, and a client the caller may not see is reported as not found rather than as forbidden. The authorizations and consents issued for the client are removed too, but that cleanup is driven by a message and completes on the authorization service after this call has already returned. A delete that removes no row answers 400. The operation cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-client/
    # @param client_id [String] ID of the client to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
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
      local_var_path = '/api/2.0/oauth2/clients/{clientId}'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
    # Deletes every client registered in the current tenant and answers 200 with an empty body. Only an administrator may call it - for a plain user or a guest it is refused with 403 - and it removes the clients of all users of the tenant, not only those of the caller. The authorizations and consents of the deleted clients are cleaned up asynchronously on the authorization service, and the tenant's client cache is dropped as part of the call. Concurrent modification that survives the retries is reported as 400. The operation cannot be undone, and the response does not say how many clients were removed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-tenant-clients/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tenant_clients(opts = {})
      delete_tenant_clients_with_http_info(opts)
      nil
    end

    # Delete all tenant OAuth2 clients
    # Deletes every client registered in the current tenant and answers 200 with an empty body. Only an administrator may call it - for a plain user or a guest it is refused with 403 - and it removes the clients of all users of the tenant, not only those of the caller. The authorizations and consents of the deleted clients are cleaned up asynchronously on the authorization service, and the tenant's client cache is dropped as part of the call. Concurrent modification that survives the retries is reported as 400. The operation cannot be undone, and the response does not say how many clients were removed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-tenant-clients/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_tenant_clients_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientManagementApi.delete_tenant_clients ...'
      end
      # resource path
      local_var_path = '/api/2.0/oauth2/clients/tenant'

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
    # Deletes every client the calling user created in the current tenant and answers 200 with an empty body. The caller's own identity always selects the set, so this never reaches clients created by somebody else, not even for an administrator. The authorizations and consents of the deleted clients are cleaned up asynchronously on the authorization service, and the tenant's client cache is dropped as part of the call. Concurrent modification that survives the retries is reported as 400. The operation cannot be undone, and the response does not say how many clients were removed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-user-clients/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_user_clients(opts = {})
      delete_user_clients_with_http_info(opts)
      nil
    end

    # Delete all user OAuth2 clients
    # Deletes every client the calling user created in the current tenant and answers 200 with an empty body. The caller's own identity always selects the set, so this never reaches clients created by somebody else, not even for an administrator. The authorizations and consents of the deleted clients are cleaned up asynchronously on the authorization service, and the tenant's client cache is dropped as part of the call. Concurrent modification that survives the retries is reported as 400. The operation cannot be undone, and the response does not say how many clients were removed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-user-clients/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_user_clients_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientManagementApi.delete_user_clients ...'
      end
      # resource path
      local_var_path = '/api/2.0/oauth2/clients'

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
    # Issues a new secret for the client and returns it. The previous secret stops working as soon as this call succeeds, there is no grace period and no way to recover it, so every deployed copy of the client has to be updated with the value returned here. An administrator may do this for any client of the tenant, a plain user only for the clients they created. Tokens already issued to the client keep working; only future client authentication is affected. The response carries the new secret and nothing else.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/regenerate-secret/
    # @param client_id [String] ID of the client to regenerate secret for
    # @param [Hash] opts the optional parameters
    # @return [ClientSecretResponse]
    def regenerate_secret(client_id, opts = {})
      data, _status_code, _headers = regenerate_secret_with_http_info(client_id, opts)
      data
    end

    # Regenerate client secret
    # Issues a new secret for the client and returns it. The previous secret stops working as soon as this call succeeds, there is no grace period and no way to recover it, so every deployed copy of the client has to be updated with the value returned here. An administrator may do this for any client of the tenant, a plain user only for the clients they created. Tokens already issued to the client keep working; only future client authentication is affected. The response carries the new secret and nothing else.
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
      local_var_path = '/api/2.0/oauth2/clients/{clientId}/regenerate'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
    # Revokes the calling user's own consent for one client and answers 200 with an empty body. It touches only the caller's grant: other users keep their consents and the client itself stays registered. Guests may call it as well as users and administrators, because it can never reach anyone else's data. The revocation is carried out by the authorization service over gRPC, so a service that reports nothing was revoked produces 400 and a service that cannot be reached produces 503. Once it succeeds the user has to authorize the client again before it can act on their behalf.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/revoke-user-client/
    # @param client_id [String] ID of the client to revoke consent for
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def revoke_user_client(client_id, opts = {})
      revoke_user_client_with_http_info(client_id, opts)
      nil
    end

    # Revoke client consent
    # Revokes the calling user's own consent for one client and answers 200 with an empty body. It touches only the caller's grant: other users keep their consents and the client itself stays registered. Guests may call it as well as users and administrators, because it can never reach anyone else's data. The revocation is carried out by the authorization service over gRPC, so a service that reports nothing was revoked produces 400 and a service that cannot be reached produces 503. Once it succeeds the user has to authorize the client again before it can act on their behalf.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/revoke-user-client/
    # @param client_id [String] ID of the client to revoke consent for
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
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
      local_var_path = '/api/2.0/oauth2/clients/{clientId}/revoke'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
    # Updates the mutable settings of an existing client and answers 200 with an empty body. Only the fields carried in the request body change; the client ID, the secret, the tenant and the creator cannot be changed this way. An administrator may update any client of the tenant, a plain user only the clients they created, and a client the caller may not see is reported as not found rather than as forbidden. The write runs under optimistic locking and is retried a few times, so a request that still loses the race is rejected with 400 instead of silently overwriting a concurrent change. Nothing is returned in the body - read the client back to see the stored result.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-client/
    # @param client_id [String] ID of the client to update
    # @param update_client_request [UpdateClientRequest] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_client(client_id, update_client_request, opts = {})
      update_client_with_http_info(client_id, update_client_request, opts)
      nil
    end

    # Update an existing OAuth2 client
    # Updates the mutable settings of an existing client and answers 200 with an empty body. Only the fields carried in the request body change; the client ID, the secret, the tenant and the creator cannot be changed this way. An administrator may update any client of the tenant, a plain user only the clients they created, and a client the caller may not see is reported as not found rather than as forbidden. The write runs under optimistic locking and is retried a few times, so a request that still loses the race is rejected with 400 instead of silently overwriting a concurrent change. Nothing is returned in the body - read the client back to see the stored result.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-client/
    # @param client_id [String] ID of the client to update
    # @param update_client_request [UpdateClientRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
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
      local_var_path = '/api/2.0/oauth2/clients/{clientId}'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
      return_type = opts[:debug_return_type]

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

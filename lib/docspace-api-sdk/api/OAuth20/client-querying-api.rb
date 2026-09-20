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
    class ClientQueryingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get client details
    # Returns the whole stored record of one client: its name and description, its secret, scopes, redirect URIs, allowed origins, logout redirect URIs and audit fields. An administrator sees any client of the tenant, a plain user only the clients they created, and a guest none of them. Whatever the caller may not see is reported as 404 rather than 403, so absence and lack of access are deliberately indistinguishable, and an identifier that is not a valid client ID is reported the same way. The response is a single object, not a collection.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client/
    # @param client_id [String] ID of the client to retrieve
    # @param [Hash] opts the optional parameters
    # @return [ClientResponse]
    def get_client(client_id, opts = {})
      data, _status_code, _headers = get_client_with_http_info(client_id, opts)
      data
    end

    # Get client details
    # Returns the whole stored record of one client: its name and description, its secret, scopes, redirect URIs, allowed origins, logout redirect URIs and audit fields. An administrator sees any client of the tenant, a plain user only the clients they created, and a guest none of them. Whatever the caller may not see is reported as 404 rather than 403, so absence and lack of access are deliberately indistinguishable, and an identifier that is not a valid client ID is reported the same way. The response is a single object, not a collection.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client/
    # @param client_id [String] ID of the client to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientResponse, Integer, Hash)>] ClientResponse data, response status code and response headers
    def get_client_with_http_info(client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientQueryingApi.get_client ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling OAuth20::ClientQueryingApi.get_client"
      end
      if @api_client.config.client_side_validation && client_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_id" when calling OAuth20::ClientQueryingApi.get_client, the character length must be greater than or equal to 1.'
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
      return_type = opts[:debug_return_type] || 'ClientResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientQueryingApi.get_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientQueryingApi#get_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get client info
    # Retrieves the detailed information for a client with the ID specified in the request. It returns the consent-facing subset of the client - name, description, logo, the website, terms and policy URLs, authentication methods and scopes - and deliberately omits the secret, the redirect URIs and the allowed origins, which is what makes it safe to render on a consent screen. An administrator sees any client of the tenant, a plain user only the clients they created, and a guest none of them. A client the caller may not see is reported as 404, exactly like an unknown one.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client-info/
    # @param client_id [String] ID of the client to retrieve
    # @param [Hash] opts the optional parameters
    # @return [ClientInfoResponse]
    def get_client_info(client_id, opts = {})
      data, _status_code, _headers = get_client_info_with_http_info(client_id, opts)
      data
    end

    # Get client info
    # Retrieves the detailed information for a client with the ID specified in the request. It returns the consent-facing subset of the client - name, description, logo, the website, terms and policy URLs, authentication methods and scopes - and deliberately omits the secret, the redirect URIs and the allowed origins, which is what makes it safe to render on a consent screen. An administrator sees any client of the tenant, a plain user only the clients they created, and a guest none of them. A client the caller may not see is reported as 404, exactly like an unknown one.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client-info/
    # @param client_id [String] ID of the client to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientInfoResponse, Integer, Hash)>] ClientInfoResponse data, response status code and response headers
    def get_client_info_with_http_info(client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientQueryingApi.get_client_info ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling OAuth20::ClientQueryingApi.get_client_info"
      end
      if @api_client.config.client_side_validation && client_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_id" when calling OAuth20::ClientQueryingApi.get_client_info, the character length must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/oauth2/clients/{clientId}/info'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ClientInfoResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientQueryingApi.get_client_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientQueryingApi#get_client_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List clients
    # Returns one page of the tenant's clients, newest first, each in the same full form as the single-client read. An administrator sees every client of the tenant, a plain user only the clients they created. Paging is keyset-based rather than offset-based: limit sets the page size, and last_client_id and last_created_on are carried over from the previous page to ask for the next one. The limit defaults to 30 and has to lie between 1 and 50; a value outside that range, or a last_created_on that cannot be parsed as a date, is rejected with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many entries to return, between 1 and 50. Defaults to 30 when omitted. (default to 30)
    # @option opts [String] :last_client_id ID of the last retrieved client
    # @option opts [Time] :last_created_on Date of the last retrieved client
    # @return [PageableClientResponse]
    def get_clients(opts = {})
      data, _status_code, _headers = get_clients_with_http_info(opts)
      data
    end

    # List clients
    # Returns one page of the tenant's clients, newest first, each in the same full form as the single-client read. An administrator sees every client of the tenant, a plain user only the clients they created. Paging is keyset-based rather than offset-based: limit sets the page size, and last_client_id and last_created_on are carried over from the previous page to ask for the next one. The limit defaults to 30 and has to lie between 1 and 50; a value outside that range, or a last_created_on that cannot be parsed as a date, is rejected with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many entries to return, between 1 and 50. Defaults to 30 when omitted. (default to 30)
    # @option opts [String] :last_client_id ID of the last retrieved client
    # @option opts [Time] :last_created_on Date of the last retrieved client
    # @return [Array<(PageableClientResponse, Integer, Hash)>] PageableClientResponse data, response status code and response headers
    def get_clients_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientQueryingApi.get_clients ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 50
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OAuth20::ClientQueryingApi.get_clients, must be smaller than or equal to 50.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OAuth20::ClientQueryingApi.get_clients, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/oauth2/clients'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'last_client_id'] = opts[:'last_client_id'] if !opts[:'last_client_id'].nil?
      query_params[:'last_created_on'] = opts[:'last_created_on'] if !opts[:'last_created_on'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PageableClientResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientQueryingApi.get_clients",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientQueryingApi#get_clients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List client info
    # Retrieves a paginated list of information for all clients, each in the same consent-facing form as the single-client info read. An administrator sees every client of the tenant, a plain user only the clients they created. Paging is keyset-based: limit sets the page size, and last_client_id and last_created_on are carried over from the previous page. Unlike the full client listing, limit has no default here - it has to be supplied on every call and has to lie between 1 and 50, and a missing or out-of-range value is rejected with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients-info/
    # @param limit [Integer] How many entries to return, between 1 and 50. It has no default and has to be sent on every call.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :last_client_id ID of the last retrieved client
    # @option opts [Time] :last_created_on Date of the last retrieved client
    # @return [PageableClientInfoResponse]
    def get_clients_info(limit, opts = {})
      data, _status_code, _headers = get_clients_info_with_http_info(limit, opts)
      data
    end

    # List client info
    # Retrieves a paginated list of information for all clients, each in the same consent-facing form as the single-client info read. An administrator sees every client of the tenant, a plain user only the clients they created. Paging is keyset-based: limit sets the page size, and last_client_id and last_created_on are carried over from the previous page. Unlike the full client listing, limit has no default here - it has to be supplied on every call and has to lie between 1 and 50, and a missing or out-of-range value is rejected with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients-info/
    # @param limit [Integer] How many entries to return, between 1 and 50. It has no default and has to be sent on every call.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :last_client_id ID of the last retrieved client
    # @option opts [Time] :last_created_on Date of the last retrieved client
    # @return [Array<(PageableClientInfoResponse, Integer, Hash)>] PageableClientInfoResponse data, response status code and response headers
    def get_clients_info_with_http_info(limit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientQueryingApi.get_clients_info ...'
      end
      # verify the required parameter 'limit' is set
      if @api_client.config.client_side_validation && limit.nil?
        fail ArgumentError, "Missing the required parameter 'limit' when calling OAuth20::ClientQueryingApi.get_clients_info"
      end
      if @api_client.config.client_side_validation && limit > 50
        fail ArgumentError, 'invalid value for "limit" when calling OAuth20::ClientQueryingApi.get_clients_info, must be smaller than or equal to 50.'
      end

      if @api_client.config.client_side_validation && limit < 1
        fail ArgumentError, 'invalid value for "limit" when calling OAuth20::ClientQueryingApi.get_clients_info, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/oauth2/clients/info'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = limit
      query_params[:'last_client_id'] = opts[:'last_client_id'] if !opts[:'last_client_id'].nil?
      query_params[:'last_created_on'] = opts[:'last_created_on'] if !opts[:'last_created_on'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PageableClientInfoResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientQueryingApi.get_clients_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientQueryingApi#get_clients_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List user consents
    # Retrieves a paginated list of user consents: the clients the calling user has authorized, each with the scopes granted, the moment the consent was last changed and the client's consent-facing details. It always reports the caller's own consents and nothing else - there is no role check on this endpoint, so guests may call it too, and no parameter widens it to another user. The consents are read from the authorization service over gRPC, so an authorization service that cannot be reached surfaces as 503. Paging is keyset-based on last_modified_on, and limit has no default: it has to be supplied on every call and has to lie between 1 and 50.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-consents/
    # @param limit [Integer] How many entries to return, between 1 and 50. It has no default and has to be sent on every call.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :last_modified_on Date of the last retrieved consent
    # @return [PageableModificationResponse]
    def get_consents(limit, opts = {})
      data, _status_code, _headers = get_consents_with_http_info(limit, opts)
      data
    end

    # List user consents
    # Retrieves a paginated list of user consents: the clients the calling user has authorized, each with the scopes granted, the moment the consent was last changed and the client's consent-facing details. It always reports the caller's own consents and nothing else - there is no role check on this endpoint, so guests may call it too, and no parameter widens it to another user. The consents are read from the authorization service over gRPC, so an authorization service that cannot be reached surfaces as 503. Paging is keyset-based on last_modified_on, and limit has no default: it has to be supplied on every call and has to lie between 1 and 50.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-consents/
    # @param limit [Integer] How many entries to return, between 1 and 50. It has no default and has to be sent on every call.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :last_modified_on Date of the last retrieved consent
    # @return [Array<(PageableModificationResponse, Integer, Hash)>] PageableModificationResponse data, response status code and response headers
    def get_consents_with_http_info(limit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientQueryingApi.get_consents ...'
      end
      # verify the required parameter 'limit' is set
      if @api_client.config.client_side_validation && limit.nil?
        fail ArgumentError, "Missing the required parameter 'limit' when calling OAuth20::ClientQueryingApi.get_consents"
      end
      if @api_client.config.client_side_validation && limit > 50
        fail ArgumentError, 'invalid value for "limit" when calling OAuth20::ClientQueryingApi.get_consents, must be smaller than or equal to 50.'
      end

      if @api_client.config.client_side_validation && limit < 1
        fail ArgumentError, 'invalid value for "limit" when calling OAuth20::ClientQueryingApi.get_consents, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/oauth2/clients/consents'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = limit
      query_params[:'last_modified_on'] = opts[:'last_modified_on'] if !opts[:'last_modified_on'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PageableModificationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientQueryingApi.get_consents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientQueryingApi#get_consents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get public client info
    # Returns the same consent-facing client information as the signed read, but without requiring a portal signature. It is meant for a login or consent page that has to render the client before the user is known, so it resolves the client by ID alone: there is no authentication, no tenant scoping and no creator check, and any caller who knows a client ID can read that client's public details. It still exposes no secret, no redirect URIs and no allowed origins. Being unauthenticated it is rate-limited on a separate, tighter budget than the signed endpoints. An unknown client ID, and an identifier that is not a client ID at all, are both reported as 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-client-info/
    # @param client_id [String] ID of the client to retrieve
    # @param [Hash] opts the optional parameters
    # @return [ClientInfoResponse]
    def get_public_client_info(client_id, opts = {})
      data, _status_code, _headers = get_public_client_info_with_http_info(client_id, opts)
      data
    end

    # Get public client info
    # Returns the same consent-facing client information as the signed read, but without requiring a portal signature. It is meant for a login or consent page that has to render the client before the user is known, so it resolves the client by ID alone: there is no authentication, no tenant scoping and no creator check, and any caller who knows a client ID can read that client's public details. It still exposes no secret, no redirect URIs and no allowed origins. Being unauthenticated it is rate-limited on a separate, tighter budget than the signed endpoints. An unknown client ID, and an identifier that is not a client ID at all, are both reported as 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-client-info/
    # @param client_id [String] ID of the client to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientInfoResponse, Integer, Hash)>] ClientInfoResponse data, response status code and response headers
    def get_public_client_info_with_http_info(client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientQueryingApi.get_public_client_info ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling OAuth20::ClientQueryingApi.get_public_client_info"
      end
      if @api_client.config.client_side_validation && client_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_id" when calling OAuth20::ClientQueryingApi.get_public_client_info, the character length must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/oauth2/clients/{clientId}/public/info'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ClientInfoResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"OAuth20::ClientQueryingApi.get_public_client_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ClientQueryingApi#get_public_client_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

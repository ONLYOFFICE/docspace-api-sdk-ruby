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
    # Retrieves detailed information about a specific OAuth2 client including its name, description, redirect URIs, and scopes.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client/
    # @param client_id [String] ID of the client to retrieve
    # @param [Hash] opts the optional parameters
    # @return [ClientResponse]
    def get_client(client_id, opts = {})
      data, _status_code, _headers = get_client_with_http_info(client_id, opts)
      data
    end

    # Get client details
    # Retrieves detailed information about a specific OAuth2 client including its name, description, redirect URIs, and scopes.
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

    # Retrieves detailed information for a specific client
    # Retrieves the detailed information for a client with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client-info/
    # @param client_id [String] ID of the client to retrieve
    # @param [Hash] opts the optional parameters
    # @return [ClientInfoResponse]
    def get_client_info(client_id, opts = {})
      data, _status_code, _headers = get_client_info_with_http_info(client_id, opts)
      data
    end

    # Retrieves detailed information for a specific client
    # Retrieves the detailed information for a client with the ID specified in the request.
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
      local_var_path = '/api/2.0/clients/{clientId}/info'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
    # Retrieves a paginated list of OAuth2 clients. The results can be paginated using the limit parameter and last seen client ID/creation date.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients/
    # @param limit [Integer] Pagination limit
    # @param [Hash] opts the optional parameters
    # @option opts [String] :last_client_id ID of the last retrieved client
    # @option opts [Time] :last_created_on Date of the last retrieved client
    # @return [PageableResponse]
    def get_clients(limit, opts = {})
      data, _status_code, _headers = get_clients_with_http_info(limit, opts)
      data
    end

    # List clients
    # Retrieves a paginated list of OAuth2 clients. The results can be paginated using the limit parameter and last seen client ID/creation date.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients/
    # @param limit [Integer] Pagination limit
    # @param [Hash] opts the optional parameters
    # @option opts [String] :last_client_id ID of the last retrieved client
    # @option opts [Time] :last_created_on Date of the last retrieved client
    # @return [Array<(PageableResponse, Integer, Hash)>] PageableResponse data, response status code and response headers
    def get_clients_with_http_info(limit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ClientQueryingApi.get_clients ...'
      end
      # verify the required parameter 'limit' is set
      if @api_client.config.client_side_validation && limit.nil?
        fail ArgumentError, "Missing the required parameter 'limit' when calling OAuth20::ClientQueryingApi.get_clients"
      end
      if @api_client.config.client_side_validation && limit > 50
        fail ArgumentError, 'invalid value for "limit" when calling OAuth20::ClientQueryingApi.get_clients, must be smaller than or equal to 50.'
      end

      if @api_client.config.client_side_validation && limit < 1
        fail ArgumentError, 'invalid value for "limit" when calling OAuth20::ClientQueryingApi.get_clients, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/clients'

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
      return_type = opts[:debug_return_type] || 'PageableResponse'

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

    # Retrieves a pageable list of client information
    # Retrieves a paginated list of information for all clients.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients-info/
    # @param limit [Integer] Pagination limit
    # @param [Hash] opts the optional parameters
    # @option opts [String] :last_client_id ID of the last retrieved client
    # @option opts [Time] :last_created_on Date of the last retrieved client
    # @return [PageableResponseClientInfoResponse]
    def get_clients_info(limit, opts = {})
      data, _status_code, _headers = get_clients_info_with_http_info(limit, opts)
      data
    end

    # Retrieves a pageable list of client information
    # Retrieves a paginated list of information for all clients.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients-info/
    # @param limit [Integer] Pagination limit
    # @param [Hash] opts the optional parameters
    # @option opts [String] :last_client_id ID of the last retrieved client
    # @option opts [Time] :last_created_on Date of the last retrieved client
    # @return [Array<(PageableResponseClientInfoResponse, Integer, Hash)>] PageableResponseClientInfoResponse data, response status code and response headers
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
      local_var_path = '/api/2.0/clients/info'

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
      return_type = opts[:debug_return_type] || 'PageableResponseClientInfoResponse'

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

    # Retrieves a pageable list of consents
    # Retrieves a paginated list of user consents.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-consents/
    # @param limit [Integer] Pagination limit
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :last_modified_on Date of the last retrieved consent
    # @return [PageableModificationResponse]
    def get_consents(limit, opts = {})
      data, _status_code, _headers = get_consents_with_http_info(limit, opts)
      data
    end

    # Retrieves a pageable list of consents
    # Retrieves a paginated list of user consents.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-consents/
    # @param limit [Integer] Pagination limit
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
      local_var_path = '/api/2.0/clients/consents'

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

    # Handles the GET request for public client information
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-client-info/
    # @param client_id [String] ID of the client to retrieve
    # @param [Hash] opts the optional parameters
    # @return [ClientInfoResponse]
    def get_public_client_info(client_id, opts = {})
      data, _status_code, _headers = get_public_client_info_with_http_info(client_id, opts)
      data
    end

    # Handles the GET request for public client information
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
      local_var_path = '/api/2.0/clients/{clientId}/public/info'.sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
      auth_names = opts[:debug_auth_names] || []

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

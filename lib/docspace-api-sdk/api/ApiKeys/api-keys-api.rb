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
    # Creates an API key that authenticates requests as the calling account, and is the only operation that ever  returns the secret.  Any portal member except a guest may create one; when the portal limits developer tools to administrators,  only a DocSpace administrator may call it.  The call is not idempotent - every call issues a new key - and it is throttled, so a client that retries on a  timeout can end up with several keys.  The answer carries the full secret in `key`: it is shown here and never again, later reads expose only the  last four characters in `keyPostfix`, so store it now.  Pass the scopes the key may use in `permissions`, taking the values from  `GET api/2.0/keys/permissions`; pass `*` or omit the field to record a key without scope restrictions, and set  `expiresInDays` to make it expire, otherwise it stays valid until it is deleted.  An empty `permissions` array and an unknown scope are both rejected with 400.  Send the key in the `Authorization` header as `Bearer sk-...` to use it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-api-key/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateApiKeyRequestDto] :create_api_key_request_dto 
    # @return [ApiKeyResponseWrapper]
    def create_api_key(opts = {})
      data, _status_code, _headers = create_api_key_with_http_info(opts)
      data
    end

    # Create a user API key
    # Creates an API key that authenticates requests as the calling account, and is the only operation that ever  returns the secret.  Any portal member except a guest may create one; when the portal limits developer tools to administrators,  only a DocSpace administrator may call it.  The call is not idempotent - every call issues a new key - and it is throttled, so a client that retries on a  timeout can end up with several keys.  The answer carries the full secret in `key`: it is shown here and never again, later reads expose only the  last four characters in `keyPostfix`, so store it now.  Pass the scopes the key may use in `permissions`, taking the values from  `GET api/2.0/keys/permissions`; pass `*` or omit the field to record a key without scope restrictions, and set  `expiresInDays` to make it expire, otherwise it stays valid until it is deleted.  An empty `permissions` array and an unknown scope are both rejected with 400.  Send the key in the `Authorization` header as `Bearer sk-...` to use it.
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

    # Delete an API key
    # Deletes the API key with the ID given in the route, so that it stops authenticating requests immediately.  The caller may delete a key they created themselves, and a DocSpace administrator may delete any key of the  portal.  The removal is permanent and cannot be undone: the secret was only ever readable at creation time, so a  deleted key cannot be restored and a new one has to be issued through `POST api/2.0/keys`.  To stop a key temporarily instead, set `isActive` to false through `PUT api/2.0/keys/{keyId}`.  The answer is a plain boolean reporting whether the key was removed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-api-key/
    # @param key_id [String] The ID of the key to delete, taken from the route. Read it from the `id` of an entry of  `GET api/2.0/keys` - it is not the secret and not the `keyPostfix`.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def delete_api_key(key_id, opts = {})
      data, _status_code, _headers = delete_api_key_with_http_info(key_id, opts)
      data
    end

    # Delete an API key
    # Deletes the API key with the ID given in the route, so that it stops authenticating requests immediately.  The caller may delete a key they created themselves, and a DocSpace administrator may delete any key of the  portal.  The removal is permanent and cannot be undone: the secret was only ever readable at creation time, so a  deleted key cannot be restored and a new one has to be issued through `POST api/2.0/keys`.  To stop a key temporarily instead, set `isActive` to false through `PUT api/2.0/keys/{keyId}`.  The answer is a plain boolean reporting whether the key was removed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-api-key/
    # @param key_id [String] The ID of the key to delete, taken from the route. Read it from the `id` of an entry of  `GET api/2.0/keys` - it is not the secret and not the `keyPostfix`.
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
    # Returns every scope value the portal accepts in the `permissions` array of an API key.  Read it before `POST api/2.0/keys` or `PUT api/2.0/keys/{keyId}`, because any other value is rejected with  400.  Any portal member except a guest may call it, and the call is read-only.  The answer is a flat list sorted alphabetically, holding the per-area scopes such as `accounts:read`,  `files:write` and `rooms:write`, the portal-wide `*:read` and `*:write`, and `*` which stands for a key  without scope restrictions.  The list is fixed for the portal and identical for every caller, so it can be cached by the client.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-permissions/
    # @param [Hash] opts the optional parameters
    # @return [STRINGArrayWrapper]
    def get_all_permissions(opts = {})
      data, _status_code, _headers = get_all_permissions_with_http_info(opts)
      data
    end

    # Get API key permissions
    # Returns every scope value the portal accepts in the `permissions` array of an API key.  Read it before `POST api/2.0/keys` or `PUT api/2.0/keys/{keyId}`, because any other value is rejected with  400.  Any portal member except a guest may call it, and the call is read-only.  The answer is a flat list sorted alphabetically, holding the per-area scopes such as `accounts:read`,  `files:write` and `rooms:write`, the portal-wide `*:read` and `*:write`, and `*` which stands for a key  without scope restrictions.  The list is fixed for the portal and identical for every caller, so it can be cached by the client.
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

    # Get the current API key
    # Returns the API key that authenticated this very request, letting the holder of a key find out what it is  allowed to do without knowing its ID.  The key is identified by the `Authorization` header of the call itself, so the request has to be sent as  `Bearer sk-...`; a session authenticated in any other way has no key to report and this operation is not  usable for it.  The call is read-only and returns one entry, with the same fields as `GET api/2.0/keys` and without the  secret - read `permissions` for the granted scopes, `expiresAt` for the expiry and `isActive` for the state.  To look at a key other than the one in use, call `GET api/2.0/keys` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-api-key/
    # @param [Hash] opts the optional parameters
    # @return [ApiKeyResponseWrapper]
    def get_api_key(opts = {})
      data, _status_code, _headers = get_api_key_with_http_info(opts)
      data
    end

    # Get the current API key
    # Returns the API key that authenticated this very request, letting the holder of a key find out what it is  allowed to do without knowing its ID.  The key is identified by the `Authorization` header of the call itself, so the request has to be sent as  `Bearer sk-...`; a session authenticated in any other way has no key to report and this operation is not  usable for it.  The call is read-only and returns one entry, with the same fields as `GET api/2.0/keys` and without the  secret - read `permissions` for the granted scopes, `expiresAt` for the expiry and `isActive` for the state.  To look at a key other than the one in use, call `GET api/2.0/keys` instead.
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

    # Get the API keys
    # Returns the API keys the caller is allowed to see, which is not the same set for everybody: a DocSpace  administrator gets every key of the portal, while any other member gets only the keys they created  themselves.  Any portal member except a guest may call it, and the call is read-only.  The secrets are not returned - each entry identifies its key by `id` and by the last four characters in  `keyPostfix`, and a secret can only be read once, at the moment `POST api/2.0/keys` creates it.  Expired and deactivated keys stay in the list, so check `expiresAt` against the current time and read  `isActive` before treating an entry as usable.  An empty list means the caller has created no keys, not that the portal has none.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-api-keys/
    # @param [Hash] opts the optional parameters
    # @return [ApiKeyResponseArrayWrapper]
    def get_api_keys(opts = {})
      data, _status_code, _headers = get_api_keys_with_http_info(opts)
      data
    end

    # Get the API keys
    # Returns the API keys the caller is allowed to see, which is not the same set for everybody: a DocSpace  administrator gets every key of the portal, while any other member gets only the keys they created  themselves.  Any portal member except a guest may call it, and the call is read-only.  The secrets are not returned - each entry identifies its key by `id` and by the last four characters in  `keyPostfix`, and a secret can only be read once, at the moment `POST api/2.0/keys` creates it.  Expired and deactivated keys stay in the list, so check `expiresAt` against the current time and read  `isActive` before treating an entry as usable.  An empty list means the caller has created no keys, not that the portal has none.
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
    # Renames an API key, replaces the scopes it may use, or activates and deactivates it, without changing the  secret.  The caller may update a key they created themselves, and a DocSpace administrator may update any key of the  portal.  Take the values for `permissions` from `GET api/2.0/keys/permissions`; an unknown scope or an empty array is  rejected with 400, and the fields that are left out keep their current values.  The answer is a plain boolean: true when the key was changed, and false when it was not - which is also what  an already expired key returns, because such a key is left untouched instead of being reported as an error.  Deactivating a key through `isActive` stops it from authenticating while keeping it in the list, so use it  when the key may be needed again and `DELETE api/2.0/keys/{keyId}` when it may not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-api-key/
    # @param key_id [String] The ID of the key to update, taken from the route. Read it from the `id` of an entry of  `GET api/2.0/keys` - it is not the secret and not the `keyPostfix`.
    # @param update_api_key_request [UpdateApiKeyRequest] The fields to change. Every field is optional and the ones that are left out keep their current values, so an  empty object changes nothing.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def update_api_key(key_id, update_api_key_request, opts = {})
      data, _status_code, _headers = update_api_key_with_http_info(key_id, update_api_key_request, opts)
      data
    end

    # Update an API key
    # Renames an API key, replaces the scopes it may use, or activates and deactivates it, without changing the  secret.  The caller may update a key they created themselves, and a DocSpace administrator may update any key of the  portal.  Take the values for `permissions` from `GET api/2.0/keys/permissions`; an unknown scope or an empty array is  rejected with 400, and the fields that are left out keep their current values.  The answer is a plain boolean: true when the key was changed, and false when it was not - which is also what  an already expired key returns, because such a key is left untouched instead of being reported as an error.  Deactivating a key through `isActive` stops it from authenticating while keeping it in the list, so use it  when the key may be needed again and `DELETE api/2.0/keys/{keyId}` when it may not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-api-key/
    # @param key_id [String] The ID of the key to update, taken from the route. Read it from the `id` of an entry of  `GET api/2.0/keys` - it is not the secret and not the `keyPostfix`.
    # @param update_api_key_request [UpdateApiKeyRequest] The fields to change. Every field is optional and the ones that are left out keep their current values, so an  empty object changes nothing.
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

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
  module Security
    class ActiveConnectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get active connections
    # Lists the connections the calling user currently has open on this portal - one item per successful sign-in  that is still active - so a client can show where the account is signed in and close what does not belong  there. Any signed-in user may call it, nothing has to be called first, and the answer always covers the caller  alone: the operation is read-only, idempotent and cannot show another user's connections. Items cover the last  year and are ordered newest sign-in first, with the caller's own connection moved to the top and its browser,  platform, IP address and location refreshed from the current request. `loginEvent` is the ID of that own  connection and is `0` when the request was authenticated with a token in the `Authorization` header instead of  the portal cookie; nothing is then marked as current, and a user with no stored connections gets a single item  describing the current request. `country` and `city` are resolved from the IP address and stay empty when it  cannot be located. Pass an item's `id` to `PUT api/2.0/security/activeconnections/logout/{loginEventId}` to  end that one connection.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-active-connections/
    # @param [Hash] opts the optional parameters
    # @return [ActiveConnectionsWrapper]
    def get_all_active_connections(opts = {})
      data, _status_code, _headers = get_all_active_connections_with_http_info(opts)
      data
    end

    # Get active connections
    # Lists the connections the calling user currently has open on this portal - one item per successful sign-in  that is still active - so a client can show where the account is signed in and close what does not belong  there. Any signed-in user may call it, nothing has to be called first, and the answer always covers the caller  alone: the operation is read-only, idempotent and cannot show another user's connections. Items cover the last  year and are ordered newest sign-in first, with the caller's own connection moved to the top and its browser,  platform, IP address and location refreshed from the current request. `loginEvent` is the ID of that own  connection and is `0` when the request was authenticated with a token in the `Authorization` header instead of  the portal cookie; nothing is then marked as current, and a user with no stored connections gets a single item  describing the current request. `country` and `city` are resolved from the IP address and stay empty when it  cannot be located. Pass an item's `id` to `PUT api/2.0/security/activeconnections/logout/{loginEventId}` to  end that one connection.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-active-connections/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActiveConnectionsWrapper, Integer, Hash)>] ActiveConnectionsWrapper data, response status code and response headers
    def get_all_active_connections_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::ActiveConnectionsApi.get_all_active_connections ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/activeconnections'

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
      return_type = opts[:debug_return_type] || 'ActiveConnectionsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::ActiveConnectionsApi.get_all_active_connections",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::ActiveConnectionsApi#get_all_active_connections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Log out one connection
    # Closes one active connection: the sign-in behind `loginEventId` is marked inactive, the token and cookie tied  to it stop working, the client holding it is disconnected and a logout entry is written to the portal audit  trail. Take `loginEventId` from the `id` of an item of `GET api/2.0/security/activeconnections`, which also  reports in `loginEvent` which connection the caller is using, so a client can avoid closing its own. A user  may close their own connections, while closing somebody else's requires a DocSpace administrator and any other  caller is refused with 403. The call is mutating, destructive for that one session and idempotent, and it  leaves every other connection of the user alone - `PUT api/2.0/security/activeconnections/logoutallexceptthis`  is the way to close the rest in one go. Only `true` means the connection was open and has just been closed;  `false` comes back when this portal has no such active connection, including one that was already closed, and  after any other failure.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-active-connection/
    # @param login_event_id [Integer] The sign-in to act on, by login event ID. Take it from the `id` of an item of  `GET api/2.0/security/activeconnections`, which also marks the connection the caller is using, so a client  can avoid picking its own.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def log_out_active_connection(login_event_id, opts = {})
      data, _status_code, _headers = log_out_active_connection_with_http_info(login_event_id, opts)
      data
    end

    # Log out one connection
    # Closes one active connection: the sign-in behind `loginEventId` is marked inactive, the token and cookie tied  to it stop working, the client holding it is disconnected and a logout entry is written to the portal audit  trail. Take `loginEventId` from the `id` of an item of `GET api/2.0/security/activeconnections`, which also  reports in `loginEvent` which connection the caller is using, so a client can avoid closing its own. A user  may close their own connections, while closing somebody else's requires a DocSpace administrator and any other  caller is refused with 403. The call is mutating, destructive for that one session and idempotent, and it  leaves every other connection of the user alone - `PUT api/2.0/security/activeconnections/logoutallexceptthis`  is the way to close the rest in one go. Only `true` means the connection was open and has just been closed;  `false` comes back when this portal has no such active connection, including one that was already closed, and  after any other failure.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-active-connection/
    # @param login_event_id [Integer] The sign-in to act on, by login event ID. Take it from the `id` of an item of  `GET api/2.0/security/activeconnections`, which also marks the connection the caller is using, so a client  can avoid picking its own.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def log_out_active_connection_with_http_info(login_event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::ActiveConnectionsApi.log_out_active_connection ...'
      end
      # verify the required parameter 'login_event_id' is set
      if @api_client.config.client_side_validation && login_event_id.nil?
        fail ArgumentError, "Missing the required parameter 'login_event_id' when calling Security::ActiveConnectionsApi.log_out_active_connection"
      end
      # resource path
      local_var_path = '/api/2.0/security/activeconnections/logout/{loginEventId}'.sub('{' + 'loginEventId' + '}', CGI.escape(login_event_id.to_s))

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
        :operation => :"Security::ActiveConnectionsApi.log_out_active_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::ActiveConnectionsApi#log_out_active_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Log out and reset password
    # Closes every active connection of the calling user and returns the link that user has to open to set a new  password - the answer to a suspicious sign-in seen in `GET api/2.0/security/activeconnections`. Any signed-in  user may call it for their own account and nothing has to be called first; the same clean-up for somebody else  is `PUT api/2.0/security/activeconnections/logoutall/{userId}`. The call is mutating and destructive for  sessions - every token and cookie issued to the user before it stops working and the clients holding them are  disconnected - and it is not idempotent: the request is written to the portal audit trail, which invalidates  the link any earlier call returned, and the caller's own client is handed a fresh cookie in the response and  stays signed in through a new connection. The password itself is not changed here, and the link is handed back  to the caller rather than mailed to the user: the URL carries a time-limited `PasswordChange` key, which the  confirmation page it opens - or `PUT api/2.0/people/{userid}/password` - needs to accept the new password. A  failure is swallowed instead of reported, so an empty body with status 200 means nothing was done and the call  has to be repeated.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-active-connections-change-password/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def log_out_all_active_connections_change_password(opts = {})
      data, _status_code, _headers = log_out_all_active_connections_change_password_with_http_info(opts)
      data
    end

    # Log out and reset password
    # Closes every active connection of the calling user and returns the link that user has to open to set a new  password - the answer to a suspicious sign-in seen in `GET api/2.0/security/activeconnections`. Any signed-in  user may call it for their own account and nothing has to be called first; the same clean-up for somebody else  is `PUT api/2.0/security/activeconnections/logoutall/{userId}`. The call is mutating and destructive for  sessions - every token and cookie issued to the user before it stops working and the clients holding them are  disconnected - and it is not idempotent: the request is written to the portal audit trail, which invalidates  the link any earlier call returned, and the caller's own client is handed a fresh cookie in the response and  stays signed in through a new connection. The password itself is not changed here, and the link is handed back  to the caller rather than mailed to the user: the URL carries a time-limited `PasswordChange` key, which the  confirmation page it opens - or `PUT api/2.0/people/{userid}/password` - needs to accept the new password. A  failure is swallowed instead of reported, so an empty body with status 200 means nothing was done and the call  has to be repeated.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-active-connections-change-password/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def log_out_all_active_connections_change_password_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::ActiveConnectionsApi.log_out_all_active_connections_change_password ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/activeconnections/logoutallchangepassword'

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
        :operation => :"Security::ActiveConnectionsApi.log_out_all_active_connections_change_password",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::ActiveConnectionsApi#log_out_all_active_connections_change_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Log out a user everywhere
    # Closes every active connection of one portal user: the connections are marked inactive, every token and cookie  issued to that user before the call stops working, the clients holding them are disconnected and a logout  entry is written to the portal audit trail. Nothing has to be called first; `userId` is the portal user ID  that `GET api/2.0/people` returns. A user may pass their own ID, while ending somebody else's connections  requires a DocSpace administrator and any other caller is refused with 403. The call is mutating, destructive  for those sessions and idempotent - a user with nothing open is not an error - and it returns no content, so  the state afterwards is read from `GET api/2.0/security/activeconnections`. A caller who ends their own  connections is handed a fresh cookie in the response and stays signed in through a new connection. Nothing  else about the user changes: the account stays enabled and the password stays valid, and to keep the current  connection alive instead use `PUT api/2.0/security/activeconnections/logoutallexceptthis`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-active-connections-for-user/
    # @param user_id [String] The portal account the operation acts on, by user ID as `GET api/2.0/people` reports it. Acting on an account  other than the caller's own generally needs administrator rights.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def log_out_all_active_connections_for_user(user_id, opts = {})
      log_out_all_active_connections_for_user_with_http_info(user_id, opts)
      nil
    end

    # Log out a user everywhere
    # Closes every active connection of one portal user: the connections are marked inactive, every token and cookie  issued to that user before the call stops working, the clients holding them are disconnected and a logout  entry is written to the portal audit trail. Nothing has to be called first; `userId` is the portal user ID  that `GET api/2.0/people` returns. A user may pass their own ID, while ending somebody else's connections  requires a DocSpace administrator and any other caller is refused with 403. The call is mutating, destructive  for those sessions and idempotent - a user with nothing open is not an error - and it returns no content, so  the state afterwards is read from `GET api/2.0/security/activeconnections`. A caller who ends their own  connections is handed a fresh cookie in the response and stays signed in through a new connection. Nothing  else about the user changes: the account stays enabled and the password stays valid, and to keep the current  connection alive instead use `PUT api/2.0/security/activeconnections/logoutallexceptthis`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-active-connections-for-user/
    # @param user_id [String] The portal account the operation acts on, by user ID as `GET api/2.0/people` reports it. Acting on an account  other than the caller's own generally needs administrator rights.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def log_out_all_active_connections_for_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::ActiveConnectionsApi.log_out_all_active_connections_for_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling Security::ActiveConnectionsApi.log_out_all_active_connections_for_user"
      end
      # resource path
      local_var_path = '/api/2.0/security/activeconnections/logoutall/{userId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::ActiveConnectionsApi.log_out_all_active_connections_for_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::ActiveConnectionsApi#log_out_all_active_connections_for_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Log out other connections
    # Closes every active connection of the calling user except the one this request was made with, so the current  client keeps working while every other browser and device is signed out. Any signed-in user may call it for  their own account and nothing has to be called first. The connection to keep is the one behind the portal  authentication cookie: a request authenticated with a token in the `Authorization` header has none, and then  every connection of the user is closed, including the one that token belongs to - read `loginEvent` from  `GET api/2.0/security/activeconnections` first to see which connection, if any, will survive. The call is  mutating and destructive for the other sessions, and idempotent: the tokens behind them stop working, their  clients are disconnected at once and a logout entry is written to the portal audit trail. It answers with the  display name of the calling user, while an empty answer with status 200 means the attempt failed and nothing  can be assumed about what was closed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-except-this-connection/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def log_out_all_except_this_connection(opts = {})
      data, _status_code, _headers = log_out_all_except_this_connection_with_http_info(opts)
      data
    end

    # Log out other connections
    # Closes every active connection of the calling user except the one this request was made with, so the current  client keeps working while every other browser and device is signed out. Any signed-in user may call it for  their own account and nothing has to be called first. The connection to keep is the one behind the portal  authentication cookie: a request authenticated with a token in the `Authorization` header has none, and then  every connection of the user is closed, including the one that token belongs to - read `loginEvent` from  `GET api/2.0/security/activeconnections` first to see which connection, if any, will survive. The call is  mutating and destructive for the other sessions, and idempotent: the tokens behind them stop working, their  clients are disconnected at once and a logout entry is written to the portal audit trail. It answers with the  display name of the calling user, while an empty answer with status 200 means the attempt failed and nothing  can be assumed about what was closed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-except-this-connection/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def log_out_all_except_this_connection_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::ActiveConnectionsApi.log_out_all_except_this_connection ...'
      end
      # resource path
      local_var_path = '/api/2.0/security/activeconnections/logoutallexceptthis'

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
        :operation => :"Security::ActiveConnectionsApi.log_out_all_except_this_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::ActiveConnectionsApi#log_out_all_except_this_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

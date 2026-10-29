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
  module Portal
    class ModuleEventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send a module event
    # Delivers one event from an integration module to the browsers of the portal named by the request host, over  the socket connection every open DocSpace page already keeps. No user session is needed: the caller  identifies itself with the module key in the `X-Module-Key` header, which the installation administrator  issues and allows for a list of portals. Set exactly one addressee - `user`, the e-mail of a portal user,  reaches only that user's open sessions without any subscription, and `room` reaches everyone in the portal  subscribed to `plugin-{module}-{room}`. Browsers receive `plugin:{module}:{event}` with `{ message }`, the  module name taken from the key, never from the body. The call only hands the event over: nothing is stored,  a user with no open session never sees it, and a repeated call delivers it again. Keep `message` a signal to  re-read, such as an unread count. The body is limited to 64 KB. A missing or unknown key fails with 401, a  portal the key is not allowed for with 403, an unknown or inactive user with 404, and invalid names or not  exactly one addressee with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-module-event/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_module_key The secret key the installation administrator issued to the module. It is not a user or portal credential:  the module the event belongs to is the one this key is configured for, so the key is the module's identity.
    # @option opts [SendModuleEventRequest] :send_module_event_request The event to deliver.
    # @return [nil]
    def send_module_event(opts = {})
      send_module_event_with_http_info(opts)
      nil
    end

    # Send a module event
    # Delivers one event from an integration module to the browsers of the portal named by the request host, over  the socket connection every open DocSpace page already keeps. No user session is needed: the caller  identifies itself with the module key in the `X-Module-Key` header, which the installation administrator  issues and allows for a list of portals. Set exactly one addressee - `user`, the e-mail of a portal user,  reaches only that user's open sessions without any subscription, and `room` reaches everyone in the portal  subscribed to `plugin-{module}-{room}`. Browsers receive `plugin:{module}:{event}` with `{ message }`, the  module name taken from the key, never from the body. The call only hands the event over: nothing is stored,  a user with no open session never sees it, and a repeated call delivers it again. Keep `message` a signal to  re-read, such as an unread count. The body is limited to 64 KB. A missing or unknown key fails with 401, a  portal the key is not allowed for with 403, an unknown or inactive user with 404, and invalid names or not  exactly one addressee with 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-module-event/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_module_key The secret key the installation administrator issued to the module. It is not a user or portal credential:  the module the event belongs to is the one this key is configured for, so the key is the module's identity.
    # @option opts [SendModuleEventRequest] :send_module_event_request The event to deliver.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def send_module_event_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::ModuleEventsApi.send_module_event ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/moduleevents'

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
      header_params[:'x-Module-Key'] = opts[:'x_module_key'] if !opts[:'x_module_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'send_module_event_request'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::ModuleEventsApi.send_module_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::ModuleEventsApi#send_module_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

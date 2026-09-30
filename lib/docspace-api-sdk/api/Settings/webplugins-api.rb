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
    class WebpluginsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a web plugin
    # Installs a web plugin into the current portal from an uploaded package, and switches the plugin on straight  away. The package is sent as `multipart/form-data` with exactly one file: a `.zip` archive holding a  `config.json` manifest and a `plugin.js` entry point, under the configured size cap of 5 MB by default.  Editing the portal settings is required, so a portal owner or administrator, and the installation has to have  web plugins and plugin uploading enabled in its configuration. Pass `system=true` to install the plugin for  every portal of the installation, which is accepted on standalone installations only. The call is mutating and  not idempotent: a package whose manifest name is already installed replaces the stored files and keeps the  settings saved for that name, and the domains the manifest declares are added to the portal Content Security  Policy. It returns the freshly installed plugin, enabled, with the `url` its script is served from. A portal  holds up to 100 plugins by default, the manifest name has to be lower-case letters, digits, `_`, `.` or `-`,  and the package is rejected when another installed plugin registers the same JavaScript object under a  different name. List what is installed with `GET api/2.0/settings/webplugins`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-web-plugin-from-file/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :system Whether the plugin is installed for every portal of the installation rather than only this one. It is  accepted on a self-hosted installation alone and refused with 403 elsewhere; an installation-wide plugin also  hides a portal plugin that carries the same name.
    # @return [WebPluginWrapper]
    def add_web_plugin_from_file(opts = {})
      data, _status_code, _headers = add_web_plugin_from_file_with_http_info(opts)
      data
    end

    # Add a web plugin
    # Installs a web plugin into the current portal from an uploaded package, and switches the plugin on straight  away. The package is sent as `multipart/form-data` with exactly one file: a `.zip` archive holding a  `config.json` manifest and a `plugin.js` entry point, under the configured size cap of 5 MB by default.  Editing the portal settings is required, so a portal owner or administrator, and the installation has to have  web plugins and plugin uploading enabled in its configuration. Pass `system=true` to install the plugin for  every portal of the installation, which is accepted on standalone installations only. The call is mutating and  not idempotent: a package whose manifest name is already installed replaces the stored files and keeps the  settings saved for that name, and the domains the manifest declares are added to the portal Content Security  Policy. It returns the freshly installed plugin, enabled, with the `url` its script is served from. A portal  holds up to 100 plugins by default, the manifest name has to be lower-case letters, digits, `_`, `.` or `-`,  and the package is rejected when another installed plugin registers the same JavaScript object under a  different name. List what is installed with `GET api/2.0/settings/webplugins`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-web-plugin-from-file/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :system Whether the plugin is installed for every portal of the installation rather than only this one. It is  accepted on a self-hosted installation alone and refused with 403 elsewhere; an installation-wide plugin also  hides a portal plugin that carries the same name.
    # @return [Array<(WebPluginWrapper, Integer, Hash)>] WebPluginWrapper data, response status code and response headers
    def add_web_plugin_from_file_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebpluginsApi.add_web_plugin_from_file ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webplugins'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'system'] = opts[:'system'] if !opts[:'system'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebPluginWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebpluginsApi.add_web_plugin_from_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebpluginsApi#add_web_plugin_from_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a web plugin
    # Removes a web plugin from the current portal and deletes the files of its package from storage. The `name` is  the manifest name published by `GET api/2.0/settings/webplugins`, matched without regard to case. Editing the  portal settings is required, so a portal owner or administrator, and the installation has to have web plugins  and plugin deletion enabled in its configuration. An installation-wide plugin, the one whose `system` field is  true, can be removed on standalone installations only. The call is destructive and cannot be undone: the state  and the settings stored for the plugin are dropped along with its files, the domains its manifest declares are  taken out of the portal Content Security Policy, and the connected clients are notified. Getting the plugin  back means uploading its package again with `POST api/2.0/settings/webplugins`, and the settings it had are  gone. Nothing is returned on success, and a repeated call on a name that is no longer installed is rejected as  not found instead of answered as success. To keep a plugin installed but inactive, switch it off with  `PUT api/2.0/settings/webplugins/{name}` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-web-plugin/
    # @param name [String] The plugin to act on, by the manifest name `GET api/2.0/settings/webplugins` publishes as `name`, matched  without regard to case. It is neither the localized display name nor the JavaScript object name in  `pluginName`; a name that is not installed answers 404.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_web_plugin(name, opts = {})
      delete_web_plugin_with_http_info(name, opts)
      nil
    end

    # Delete a web plugin
    # Removes a web plugin from the current portal and deletes the files of its package from storage. The `name` is  the manifest name published by `GET api/2.0/settings/webplugins`, matched without regard to case. Editing the  portal settings is required, so a portal owner or administrator, and the installation has to have web plugins  and plugin deletion enabled in its configuration. An installation-wide plugin, the one whose `system` field is  true, can be removed on standalone installations only. The call is destructive and cannot be undone: the state  and the settings stored for the plugin are dropped along with its files, the domains its manifest declares are  taken out of the portal Content Security Policy, and the connected clients are notified. Getting the plugin  back means uploading its package again with `POST api/2.0/settings/webplugins`, and the settings it had are  gone. Nothing is returned on success, and a repeated call on a name that is no longer installed is rejected as  not found instead of answered as success. To keep a plugin installed but inactive, switch it off with  `PUT api/2.0/settings/webplugins/{name}` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-web-plugin/
    # @param name [String] The plugin to act on, by the manifest name `GET api/2.0/settings/webplugins` publishes as `name`, matched  without regard to case. It is neither the localized display name nor the JavaScript object name in  `pluginName`; a name that is not installed answers 404.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_web_plugin_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebpluginsApi.delete_web_plugin ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling Settings::WebpluginsApi.delete_web_plugin"
      end
      # resource path
      local_var_path = '/api/2.0/settings/webplugins/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
        :operation => :"Settings::WebpluginsApi.delete_web_plugin",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebpluginsApi#delete_web_plugin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a web plugin by name
    # Returns one web plugin of the current portal by its manifest name, looked up over the same set as  `GET api/2.0/settings/webplugins`: the installation-wide plugins plus the portal's own. The `name` is the  manifest name published in the `name` field of that list, matched without regard to case; it is neither the  localized display name nor the JavaScript object name in `pluginName`, so it cannot be taken from the title  shown in the interface. Any authenticated portal member may call it, no settings permission needed, and the  installation has to have web plugins enabled in its configuration. The call is read-only and idempotent. The  response carries the manifest data along with the state the portal stored for that plugin: `enabled`, the  `settings` string, `system`, and the `url` and `cssUrl` a client loads it from. A name that is not installed  is rejected as not found, and 403 means web plugins are switched off for the installation. Change the state of  the plugin with `PUT api/2.0/settings/webplugins/{name}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugin/
    # @param name [String] The plugin to act on, by the manifest name `GET api/2.0/settings/webplugins` publishes as `name`, matched  without regard to case. It is neither the localized display name nor the JavaScript object name in  `pluginName`; a name that is not installed answers 404.
    # @param [Hash] opts the optional parameters
    # @return [WebPluginWrapper]
    def get_web_plugin(name, opts = {})
      data, _status_code, _headers = get_web_plugin_with_http_info(name, opts)
      data
    end

    # Get a web plugin by name
    # Returns one web plugin of the current portal by its manifest name, looked up over the same set as  `GET api/2.0/settings/webplugins`: the installation-wide plugins plus the portal's own. The `name` is the  manifest name published in the `name` field of that list, matched without regard to case; it is neither the  localized display name nor the JavaScript object name in `pluginName`, so it cannot be taken from the title  shown in the interface. Any authenticated portal member may call it, no settings permission needed, and the  installation has to have web plugins enabled in its configuration. The call is read-only and idempotent. The  response carries the manifest data along with the state the portal stored for that plugin: `enabled`, the  `settings` string, `system`, and the `url` and `cssUrl` a client loads it from. A name that is not installed  is rejected as not found, and 403 means web plugins are switched off for the installation. Change the state of  the plugin with `PUT api/2.0/settings/webplugins/{name}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugin/
    # @param name [String] The plugin to act on, by the manifest name `GET api/2.0/settings/webplugins` publishes as `name`, matched  without regard to case. It is neither the localized display name nor the JavaScript object name in  `pluginName`; a name that is not installed answers 404.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebPluginWrapper, Integer, Hash)>] WebPluginWrapper data, response status code and response headers
    def get_web_plugin_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebpluginsApi.get_web_plugin ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling Settings::WebpluginsApi.get_web_plugin"
      end
      # resource path
      local_var_path = '/api/2.0/settings/webplugins/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      return_type = opts[:debug_return_type] || 'WebPluginWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebpluginsApi.get_web_plugin",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebpluginsApi#get_web_plugin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get web plugins
    # Lists the web plugins available in the current portal: the plugins installed for the whole installation first,  then the portal's own, with a portal plugin dropped when an installation-wide plugin already uses its name.  Any authenticated portal member may call it, no settings permission needed, and the installation has to have  web plugins enabled in its configuration. The call is read-only and idempotent. Pass `enabled=true` or  `enabled=false` to keep only the plugins in that state, and leave the parameter out to get every plugin. Each  entry carries the manifest data together with the state the portal stored for that plugin: `enabled`, the  `settings` string, `system` for an installation-wide plugin, and the `url` and `cssUrl` a client loads the  plugin from. An empty list means nothing is installed for this portal, not that plugins are switched off,  which is refused with 403 instead. The list is capped at the configured maximum, 100 plugins by default, and  is not paginated. For one plugin by its manifest name use `GET api/2.0/settings/webplugins/{name}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugins/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :enabled Which plugins are kept: `true` the ones switched on, `false` the ones switched off. Omitting it lists every  installed plugin whatever its state.
    # @return [WebPluginArrayWrapper]
    def get_web_plugins(opts = {})
      data, _status_code, _headers = get_web_plugins_with_http_info(opts)
      data
    end

    # Get web plugins
    # Lists the web plugins available in the current portal: the plugins installed for the whole installation first,  then the portal's own, with a portal plugin dropped when an installation-wide plugin already uses its name.  Any authenticated portal member may call it, no settings permission needed, and the installation has to have  web plugins enabled in its configuration. The call is read-only and idempotent. Pass `enabled=true` or  `enabled=false` to keep only the plugins in that state, and leave the parameter out to get every plugin. Each  entry carries the manifest data together with the state the portal stored for that plugin: `enabled`, the  `settings` string, `system` for an installation-wide plugin, and the `url` and `cssUrl` a client loads the  plugin from. An empty list means nothing is installed for this portal, not that plugins are switched off,  which is refused with 403 instead. The list is capped at the configured maximum, 100 plugins by default, and  is not paginated. For one plugin by its manifest name use `GET api/2.0/settings/webplugins/{name}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugins/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :enabled Which plugins are kept: `true` the ones switched on, `false` the ones switched off. Omitting it lists every  installed plugin whatever its state.
    # @return [Array<(WebPluginArrayWrapper, Integer, Hash)>] WebPluginArrayWrapper data, response status code and response headers
    def get_web_plugins_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebpluginsApi.get_web_plugins ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webplugins'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'enabled'] = opts[:'enabled'] if !opts[:'enabled'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebPluginArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebpluginsApi.get_web_plugins",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebpluginsApi#get_web_plugins\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a web plugin
    # Switches a web plugin of the current portal on or off and stores the settings string the portal keeps for it.  The plugin has to be installed already, so upload its package with `POST api/2.0/settings/webplugins` first,  and `name` is its manifest name as published by `GET api/2.0/settings/webplugins`, matched without regard to  case. Editing the portal settings is required, so a portal owner or administrator, and the installation has to  have web plugins enabled in its configuration. The body replaces the stored state instead of merging into it,  which makes the call idempotent; `settings` is required, so send `{}` when there is nothing to keep, and it is  limited to 255 characters and stored encrypted for this portal alone. Switching the plugin on adds the domains  its manifest declares to the portal Content Security Policy and switching it off takes them away again, and  the connected clients are notified of the new state. Nothing is returned on success. A name that is not  installed is rejected as not found, and 403 means web plugins are switched off or the caller may not edit the  portal settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-web-plugin/
    # @param name [String] The plugin to change, by the manifest name `GET api/2.0/settings/webplugins` publishes as `name`, matched  without regard to case. It is neither the localized display name nor the JavaScript object name in  `pluginName`, so it cannot be read off the interface; a name that is not installed answers 404.
    # @param web_plugin_requests [WebPluginRequests] The whole state the plugin is to have afterwards. It replaces what was stored instead of merging into it, so  both the enabled flag and the settings have to be sent every time.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_web_plugin(name, web_plugin_requests, opts = {})
      update_web_plugin_with_http_info(name, web_plugin_requests, opts)
      nil
    end

    # Update a web plugin
    # Switches a web plugin of the current portal on or off and stores the settings string the portal keeps for it.  The plugin has to be installed already, so upload its package with `POST api/2.0/settings/webplugins` first,  and `name` is its manifest name as published by `GET api/2.0/settings/webplugins`, matched without regard to  case. Editing the portal settings is required, so a portal owner or administrator, and the installation has to  have web plugins enabled in its configuration. The body replaces the stored state instead of merging into it,  which makes the call idempotent; `settings` is required, so send `{}` when there is nothing to keep, and it is  limited to 255 characters and stored encrypted for this portal alone. Switching the plugin on adds the domains  its manifest declares to the portal Content Security Policy and switching it off takes them away again, and  the connected clients are notified of the new state. Nothing is returned on success. A name that is not  installed is rejected as not found, and 403 means web plugins are switched off or the caller may not edit the  portal settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-web-plugin/
    # @param name [String] The plugin to change, by the manifest name `GET api/2.0/settings/webplugins` publishes as `name`, matched  without regard to case. It is neither the localized display name nor the JavaScript object name in  `pluginName`, so it cannot be read off the interface; a name that is not installed answers 404.
    # @param web_plugin_requests [WebPluginRequests] The whole state the plugin is to have afterwards. It replaces what was stored instead of merging into it, so  both the enabled flag and the settings have to be sent every time.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_web_plugin_with_http_info(name, web_plugin_requests, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebpluginsApi.update_web_plugin ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling Settings::WebpluginsApi.update_web_plugin"
      end
      # verify the required parameter 'web_plugin_requests' is set
      if @api_client.config.client_side_validation && web_plugin_requests.nil?
        fail ArgumentError, "Missing the required parameter 'web_plugin_requests' when calling Settings::WebpluginsApi.update_web_plugin"
      end
      # resource path
      local_var_path = '/api/2.0/settings/webplugins/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(web_plugin_requests)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebpluginsApi.update_web_plugin",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebpluginsApi#update_web_plugin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

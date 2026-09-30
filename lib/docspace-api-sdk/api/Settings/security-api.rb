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
    class SecurityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get enabled modules
    # Lists the portal modules the calling user can currently open, each as an `id` holding the module's product  class name and a `title` holding its display name, both HTML-encoded. Any signed-in member may call this;  anonymous callers are not admitted. The operation is read-only and takes no parameters, and the list is  specific to the caller: modules hidden for this portal, and modules whose access rules exclude the caller, are  left out, and sub-modules nested under another module are never listed. Entries follow the portal's own module  order rather than an alphabetical one. An empty list means the installation registers no such modules at all -  the case on DocSpace, where the classic modules do not exist - and is not a failure. The identifiers here are  display-oriented class names, not the GUIDs the access-settings operations work with, so do not feed them to  `GET api/2.0/settings/security/{id}`, which expects a module GUID.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enabled-modules/
    # @param [Hash] opts the optional parameters
    # @return [EnabledModuleArrayWrapper]
    def get_enabled_modules(opts = {})
      data, _status_code, _headers = get_enabled_modules_with_http_info(opts)
      data
    end

    # Get enabled modules
    # Lists the portal modules the calling user can currently open, each as an `id` holding the module's product  class name and a `title` holding its display name, both HTML-encoded. Any signed-in member may call this;  anonymous callers are not admitted. The operation is read-only and takes no parameters, and the list is  specific to the caller: modules hidden for this portal, and modules whose access rules exclude the caller, are  left out, and sub-modules nested under another module are never listed. Entries follow the portal's own module  order rather than an alphabetical one. An empty list means the installation registers no such modules at all -  the case on DocSpace, where the classic modules do not exist - and is not a failure. The identifiers here are  display-oriented class names, not the GUIDs the access-settings operations work with, so do not feed them to  `GET api/2.0/settings/security/{id}`, which expects a module GUID.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enabled-modules/
    # @param [Hash] opts the optional parameters
    # @return [Array<(EnabledModuleArrayWrapper, Integer, Hash)>] EnabledModuleArrayWrapper data, response status code and response headers
    def get_enabled_modules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SecurityApi.get_enabled_modules ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/modules'

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
      return_type = opts[:debug_return_type] || 'EnabledModuleArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SecurityApi.get_enabled_modules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SecurityApi#get_enabled_modules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check product administrator
    # Reports whether one user administers one portal module, as the identifiers asked about plus an `administrator`  flag. Both `productid` and `userid` are query parameters and both are required; the all-zero product GUID asks  about the portal itself rather than about a single module. The caller needs the portal-settings right of a  DocSpace administrator, otherwise the call is refused. The operation is read-only. The flag is `true` when the  user belongs to the DocSpace administrator group or to the module's own group, so a portal-wide administrator  is reported as an administrator of every module, whatever the module identifier says. Identifiers that name no  user and no group are answered with `false` instead of a failure, so a `false` does not prove the user exists.  The verdict is read out of group membership alone and says nothing about whether the module is enabled for  this portal, which `GET api/2.0/settings/security/{id}` reports. Use  `GET api/2.0/settings/security/administrator/{productid}` to list everyone who administers a module, and  `PUT api/2.0/settings/security/administrator` to change the membership.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-product-administrator/
    # @param productid [String] The module being asked about, by module GUID. The all-zero GUID asks about the portal itself rather than a  single module.
    # @param userid [String] The account being asked about, by portal user ID. An ID that names no account is answered as a plain negative  rather than a failure, so a negative answer does not prove the account exists.
    # @param [Hash] opts the optional parameters
    # @return [ProductAdministratorWrapper]
    def get_is_product_administrator(productid, userid, opts = {})
      data, _status_code, _headers = get_is_product_administrator_with_http_info(productid, userid, opts)
      data
    end

    # Check product administrator
    # Reports whether one user administers one portal module, as the identifiers asked about plus an `administrator`  flag. Both `productid` and `userid` are query parameters and both are required; the all-zero product GUID asks  about the portal itself rather than about a single module. The caller needs the portal-settings right of a  DocSpace administrator, otherwise the call is refused. The operation is read-only. The flag is `true` when the  user belongs to the DocSpace administrator group or to the module's own group, so a portal-wide administrator  is reported as an administrator of every module, whatever the module identifier says. Identifiers that name no  user and no group are answered with `false` instead of a failure, so a `false` does not prove the user exists.  The verdict is read out of group membership alone and says nothing about whether the module is enabled for  this portal, which `GET api/2.0/settings/security/{id}` reports. Use  `GET api/2.0/settings/security/administrator/{productid}` to list everyone who administers a module, and  `PUT api/2.0/settings/security/administrator` to change the membership.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-product-administrator/
    # @param productid [String] The module being asked about, by module GUID. The all-zero GUID asks about the portal itself rather than a  single module.
    # @param userid [String] The account being asked about, by portal user ID. An ID that names no account is answered as a plain negative  rather than a failure, so a negative answer does not prove the account exists.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProductAdministratorWrapper, Integer, Hash)>] ProductAdministratorWrapper data, response status code and response headers
    def get_is_product_administrator_with_http_info(productid, userid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SecurityApi.get_is_product_administrator ...'
      end
      # verify the required parameter 'productid' is set
      if @api_client.config.client_side_validation && productid.nil?
        fail ArgumentError, "Missing the required parameter 'productid' when calling Settings::SecurityApi.get_is_product_administrator"
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling Settings::SecurityApi.get_is_product_administrator"
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/administrator'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'productid'] = productid
      query_params[:'userid'] = userid

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ProductAdministratorWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SecurityApi.get_is_product_administrator",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SecurityApi#get_is_product_administrator\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get password settings
    # Returns the password policy of the current portal: the minimum length together with the flags that demand an  uppercase letter, a digit and a special symbol, plus the regular expressions a client can check a password  against before sending it anywhere. Any signed-in member may read it, and it is also reachable with the  parameters of a confirmation link, so an invited user or one resetting a password can validate the new  password before having a session; a portal whose payment has lapsed still answers. The operation is read-only  and honours `If-Modified-Since`: send back the `Last-Modified` value of an earlier answer and an unchanged  policy comes back as an empty not-modified response rather than a body. A portal nobody has configured  requires 8 characters with all three flags off. Whatever the policy says, the portal refuses a password longer  than 30 characters, a ceiling this answer does not carry. Change the policy with  `PUT api/2.0/settings/security/password`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-password-settings/
    # @param [Hash] opts the optional parameters
    # @return [PasswordSettingsWrapper]
    def get_password_settings(opts = {})
      data, _status_code, _headers = get_password_settings_with_http_info(opts)
      data
    end

    # Get password settings
    # Returns the password policy of the current portal: the minimum length together with the flags that demand an  uppercase letter, a digit and a special symbol, plus the regular expressions a client can check a password  against before sending it anywhere. Any signed-in member may read it, and it is also reachable with the  parameters of a confirmation link, so an invited user or one resetting a password can validate the new  password before having a session; a portal whose payment has lapsed still answers. The operation is read-only  and honours `If-Modified-Since`: send back the `Last-Modified` value of an earlier answer and an unchanged  policy comes back as an empty not-modified response rather than a body. A portal nobody has configured  requires 8 characters with all three flags off. Whatever the policy says, the portal refuses a password longer  than 30 characters, a ceiling this answer does not carry. Change the policy with  `PUT api/2.0/settings/security/password`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-password-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(PasswordSettingsWrapper, Integer, Hash)>] PasswordSettingsWrapper data, response status code and response headers
    def get_password_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SecurityApi.get_password_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/password'

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
      return_type = opts[:debug_return_type] || 'PasswordSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SecurityApi.get_password_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SecurityApi#get_password_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get product administrators
    # Lists the users who administer the portal module identified by `productid` in the path. The all-zero GUID  stands for the portal itself: the answer then covers the DocSpace administrator group together with every  product group, and includes the portal owner, who administers everything by default. The caller needs the  portal-settings right of a DocSpace administrator, otherwise the call is refused. `productid` has to be a  GUID, and one that names no group is answered with an empty list rather than a failure. The operation is  read-only and returns whole user profiles, a heavier answer than a membership check, and a user who belongs to  more than one of the groups asked about is listed once per group. Entries arrive in group order, the DocSpace  administrator group first, the list is neither paged nor filterable, and a promotion made through the sibling  `PUT` shows up here at once. Use `GET api/2.0/settings/security/administrator` to test a single user against a  single module, and `PUT api/2.0/settings/security/administrator` to promote or demote somebody.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-product-administrators/
    # @param productid [String] The module the operation acts on, by module GUID. The all-zero GUID stands for the portal itself rather than  for a single module, and a GUID that names no module group is answered with an empty result instead of a  failure.
    # @param [Hash] opts the optional parameters
    # @return [EmployeeArrayWrapper]
    def get_product_administrators(productid, opts = {})
      data, _status_code, _headers = get_product_administrators_with_http_info(productid, opts)
      data
    end

    # Get product administrators
    # Lists the users who administer the portal module identified by `productid` in the path. The all-zero GUID  stands for the portal itself: the answer then covers the DocSpace administrator group together with every  product group, and includes the portal owner, who administers everything by default. The caller needs the  portal-settings right of a DocSpace administrator, otherwise the call is refused. `productid` has to be a  GUID, and one that names no group is answered with an empty list rather than a failure. The operation is  read-only and returns whole user profiles, a heavier answer than a membership check, and a user who belongs to  more than one of the groups asked about is listed once per group. Entries arrive in group order, the DocSpace  administrator group first, the list is neither paged nor filterable, and a promotion made through the sibling  `PUT` shows up here at once. Use `GET api/2.0/settings/security/administrator` to test a single user against a  single module, and `PUT api/2.0/settings/security/administrator` to promote or demote somebody.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-product-administrators/
    # @param productid [String] The module the operation acts on, by module GUID. The all-zero GUID stands for the portal itself rather than  for a single module, and a GUID that names no module group is answered with an empty result instead of a  failure.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmployeeArrayWrapper, Integer, Hash)>] EmployeeArrayWrapper data, response status code and response headers
    def get_product_administrators_with_http_info(productid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SecurityApi.get_product_administrators ...'
      end
      # verify the required parameter 'productid' is set
      if @api_client.config.client_side_validation && productid.nil?
        fail ArgumentError, "Missing the required parameter 'productid' when calling Settings::SecurityApi.get_product_administrators"
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/administrator/{productid}'.sub('{' + 'productid' + '}', CGI.escape(productid.to_s))

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
      return_type = opts[:debug_return_type] || 'EmployeeArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SecurityApi.get_product_administrators",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SecurityApi#get_product_administrators\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check module availability
    # Answers whether the module with the given identifier is available to the calling user right now, as a single  boolean. `id` is the module GUID and travels in the path; a value that is not a GUID does not match the route  at all. Any signed-in member may call this; anonymous callers are not admitted. The operation is read-only and  its answer is specific to the caller: `true` means a module with that identifier is registered in this portal,  is visible, and the caller is allowed to read it, while `false` covers every other case - the module is not  registered here, it is hidden for this portal, or the caller is outside the users and groups allowed to open  it. A `false` therefore does not tell those apart, and an unknown identifier is reported as unavailable  instead of failing. Read the allow-list behind the decision with `GET api/2.0/settings/security`, list the  modules the caller can actually open with `GET api/2.0/settings/security/modules`, and change access with  `PUT api/2.0/settings/security`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-security-info/
    # @param id [String] The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def get_web_item_security_info(id, opts = {})
      data, _status_code, _headers = get_web_item_security_info_with_http_info(id, opts)
      data
    end

    # Check module availability
    # Answers whether the module with the given identifier is available to the calling user right now, as a single  boolean. `id` is the module GUID and travels in the path; a value that is not a GUID does not match the route  at all. Any signed-in member may call this; anonymous callers are not admitted. The operation is read-only and  its answer is specific to the caller: `true` means a module with that identifier is registered in this portal,  is visible, and the caller is allowed to read it, while `false` covers every other case - the module is not  registered here, it is hidden for this portal, or the caller is outside the users and groups allowed to open  it. A `false` therefore does not tell those apart, and an unknown identifier is reported as unavailable  instead of failing. Read the allow-list behind the decision with `GET api/2.0/settings/security`, list the  modules the caller can actually open with `GET api/2.0/settings/security/modules`, and change access with  `PUT api/2.0/settings/security`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-security-info/
    # @param id [String] The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def get_web_item_security_info_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SecurityApi.get_web_item_security_info ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Settings::SecurityApi.get_web_item_security_info"
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"Settings::SecurityApi.get_web_item_security_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SecurityApi#get_web_item_security_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get module access settings
    # Reports how access to the portal's own modules is configured: for every module identifier sent in `ids`,  whether access is restricted at all and which users and groups are allowed to open the module. Send the  identifiers as repeated `ids` query values; each one has to be a GUID, and anything else is rejected as an  invalid request. Omitting `ids` asks about every module registered in the portal, which on a DocSpace  installation is none, so the answer is then an empty list rather than a failure. Any signed-in member may call  this; anonymous callers are not admitted. The operation is read-only and answers one entry per identifier, in  the order the identifiers were sent. `enabled` is `false` for a module nobody has ever configured, `groups`  and `users` name the subjects the rule was stored for, and `isSubItem` marks a module that hangs under another  one. Users the caller is not allowed to see are left out of `users`, so the same module can come back with  different lists for different callers. Change any of this with `PUT api/2.0/settings/security`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-settings-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :ids The modules to report on, each given as a GUID and sent as a repeated query value. An entry that is not a  GUID fails the whole request as invalid. Leaving the list out asks about every module registered in the  portal, which on a DocSpace installation is none, so the answer is then empty rather than complete.
    # @return [SecurityArrayWrapper]
    def get_web_item_settings_security_info(opts = {})
      data, _status_code, _headers = get_web_item_settings_security_info_with_http_info(opts)
      data
    end

    # Get module access settings
    # Reports how access to the portal's own modules is configured: for every module identifier sent in `ids`,  whether access is restricted at all and which users and groups are allowed to open the module. Send the  identifiers as repeated `ids` query values; each one has to be a GUID, and anything else is rejected as an  invalid request. Omitting `ids` asks about every module registered in the portal, which on a DocSpace  installation is none, so the answer is then an empty list rather than a failure. Any signed-in member may call  this; anonymous callers are not admitted. The operation is read-only and answers one entry per identifier, in  the order the identifiers were sent. `enabled` is `false` for a module nobody has ever configured, `groups`  and `users` name the subjects the rule was stored for, and `isSubItem` marks a module that hangs under another  one. Users the caller is not allowed to see are left out of `users`, so the same module can come back with  different lists for different callers. Change any of this with `PUT api/2.0/settings/security`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-settings-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :ids The modules to report on, each given as a GUID and sent as a repeated query value. An entry that is not a  GUID fails the whole request as invalid. Leaving the list out asks about every module registered in the  portal, which on a DocSpace installation is none, so the answer is then empty rather than complete.
    # @return [Array<(SecurityArrayWrapper, Integer, Hash)>] SecurityArrayWrapper data, response status code and response headers
    def get_web_item_settings_security_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SecurityApi.get_web_item_settings_security_info ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(opts[:'ids'], :multi) if !opts[:'ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SecurityArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SecurityApi.get_web_item_settings_security_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SecurityApi#get_web_item_settings_security_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set access to modules in bulk
    # Switches several portal modules on or off in one call: `items` carries an entry per module, its `key` the  module GUID and its `value` the new enabled flag. The caller needs the portal-settings right of a DocSpace  administrator, and the call is answered with 403 on an open portal, where everyone is admitted and per-module  rules would mean nothing. Every key has to be a GUID; anything else is rejected as an invalid request, and a  module listed twice is applied once, from its first entry. This operation carries no subject list of its own:  switching a product module on restores the users and groups it was last restricted to, while every other case  is stored as a plain allow or deny for everyone, so use `PUT api/2.0/settings/security` when the allow-list  itself has to change. The batch is recorded in the audit trail as one list update rather than module by  module. The answer is the resulting configuration of every module listed, in the shape  `GET api/2.0/settings/security` returns.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-access-to-web-items/
    # @param [Hash] opts the optional parameters
    # @option opts [WebItemsSecurityRequestsDto] :web_items_security_requests_dto 
    # @return [SecurityArrayWrapper]
    def set_access_to_web_items(opts = {})
      data, _status_code, _headers = set_access_to_web_items_with_http_info(opts)
      data
    end

    # Set access to modules in bulk
    # Switches several portal modules on or off in one call: `items` carries an entry per module, its `key` the  module GUID and its `value` the new enabled flag. The caller needs the portal-settings right of a DocSpace  administrator, and the call is answered with 403 on an open portal, where everyone is admitted and per-module  rules would mean nothing. Every key has to be a GUID; anything else is rejected as an invalid request, and a  module listed twice is applied once, from its first entry. This operation carries no subject list of its own:  switching a product module on restores the users and groups it was last restricted to, while every other case  is stored as a plain allow or deny for everyone, so use `PUT api/2.0/settings/security` when the allow-list  itself has to change. The batch is recorded in the audit trail as one list update rather than module by  module. The answer is the resulting configuration of every module listed, in the shape  `GET api/2.0/settings/security` returns.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-access-to-web-items/
    # @param [Hash] opts the optional parameters
    # @option opts [WebItemsSecurityRequestsDto] :web_items_security_requests_dto 
    # @return [Array<(SecurityArrayWrapper, Integer, Hash)>] SecurityArrayWrapper data, response status code and response headers
    def set_access_to_web_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SecurityApi.set_access_to_web_items ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/access'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'web_items_security_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'SecurityArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SecurityApi.set_access_to_web_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SecurityApi#set_access_to_web_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set product administrator
    # Promotes a portal member to administrator of one module, or takes that role away, according to the  `administrator` flag; the all-zero product GUID targets the DocSpace administrator role, which covers the  whole portal. The caller needs the portal-settings right of a DocSpace administrator, and granting the  portal-wide role additionally requires being the portal owner - anyone else is refused with 403. A free cloud  plan does not offer the option at all and answers 402, as does a promotion for which no paid seat is left,  since promoting a guest or a plain member turns them into a paid one. Taking the portal-wide role away also  removes the member from every product group. The change is immediate, portal-wide, recorded in the audit  trail, and sending the same body twice changes nothing further; it never creates a user, so invite the member  first. The answer echoes the identifiers and the flag as stored - re-read membership with  `GET api/2.0/settings/security/administrator`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-product-administrator/
    # @param [Hash] opts the optional parameters
    # @option opts [SecurityRequestsDto] :security_requests_dto 
    # @return [ProductAdministratorWrapper]
    def set_product_administrator(opts = {})
      data, _status_code, _headers = set_product_administrator_with_http_info(opts)
      data
    end

    # Set product administrator
    # Promotes a portal member to administrator of one module, or takes that role away, according to the  `administrator` flag; the all-zero product GUID targets the DocSpace administrator role, which covers the  whole portal. The caller needs the portal-settings right of a DocSpace administrator, and granting the  portal-wide role additionally requires being the portal owner - anyone else is refused with 403. A free cloud  plan does not offer the option at all and answers 402, as does a promotion for which no paid seat is left,  since promoting a guest or a plain member turns them into a paid one. Taking the portal-wide role away also  removes the member from every product group. The change is immediate, portal-wide, recorded in the audit  trail, and sending the same body twice changes nothing further; it never creates a user, so invite the member  first. The answer echoes the identifiers and the flag as stored - re-read membership with  `GET api/2.0/settings/security/administrator`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-product-administrator/
    # @param [Hash] opts the optional parameters
    # @option opts [SecurityRequestsDto] :security_requests_dto 
    # @return [Array<(ProductAdministratorWrapper, Integer, Hash)>] ProductAdministratorWrapper data, response status code and response headers
    def set_product_administrator_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SecurityApi.set_product_administrator ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/administrator'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'security_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'ProductAdministratorWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SecurityApi.set_product_administrator",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SecurityApi#set_product_administrator\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set module access
    # Replaces the access rules of one portal module: `id` names the module, `enabled` says whether it may be  opened, and `subjects` lists the users and groups the rule is stored for. The caller needs the portal-settings  right of a DocSpace administrator, and the call is answered with 403 on an open portal, where everyone is  admitted and per-module rules would mean nothing. `id` has to be a GUID; anything else is rejected as an  invalid request. The rules stored before are dropped rather than extended, so send the full list of subjects  every time. Watch the empty cases: leaving `subjects` out applies `enabled` to everyone, while an empty  `subjects` array is stored as access for everyone whatever `enabled` says. The change is recorded in the audit  trail unless `subjects` was left out entirely. The answer is the module's resulting configuration as a  single-entry list, in the shape `GET api/2.0/settings/security` returns. To switch several modules at once use  `PUT api/2.0/settings/security/access`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-item-security/
    # @param [Hash] opts the optional parameters
    # @option opts [WebItemSecurityRequestsDto] :web_item_security_requests_dto 
    # @return [SecurityArrayWrapper]
    def set_web_item_security(opts = {})
      data, _status_code, _headers = set_web_item_security_with_http_info(opts)
      data
    end

    # Set module access
    # Replaces the access rules of one portal module: `id` names the module, `enabled` says whether it may be  opened, and `subjects` lists the users and groups the rule is stored for. The caller needs the portal-settings  right of a DocSpace administrator, and the call is answered with 403 on an open portal, where everyone is  admitted and per-module rules would mean nothing. `id` has to be a GUID; anything else is rejected as an  invalid request. The rules stored before are dropped rather than extended, so send the full list of subjects  every time. Watch the empty cases: leaving `subjects` out applies `enabled` to everyone, while an empty  `subjects` array is stored as access for everyone whatever `enabled` says. The change is recorded in the audit  trail unless `subjects` was left out entirely. The answer is the module's resulting configuration as a  single-entry list, in the shape `GET api/2.0/settings/security` returns. To switch several modules at once use  `PUT api/2.0/settings/security/access`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-item-security/
    # @param [Hash] opts the optional parameters
    # @option opts [WebItemSecurityRequestsDto] :web_item_security_requests_dto 
    # @return [Array<(SecurityArrayWrapper, Integer, Hash)>] SecurityArrayWrapper data, response status code and response headers
    def set_web_item_security_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SecurityApi.set_web_item_security ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'web_item_security_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'SecurityArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SecurityApi.set_web_item_security",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SecurityApi#set_web_item_security\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update password settings
    # Replaces the password policy of the whole portal with the four values sent: `minLength` and the three flags  that demand an uppercase letter, a digit and a special symbol. There is no partial update - a flag left out of  the body is stored as `false` - so read the current policy with `GET api/2.0/settings/security/password` and  send it back with your change applied. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. `minLength` has to sit between the floor the installation is configured with, 8  characters unless it was changed, and the ceiling of 30; anything outside is rejected as an invalid request.  The new policy applies to passwords set from now on: existing passwords keep working until their owners change  them, and nobody is asked to renew. The change is portal-wide, recorded in the audit trail, and sending the  same body twice changes nothing further. The answer is the stored policy with its regular expressions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-password-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [PasswordSettingsRequestsDto] :password_settings_requests_dto 
    # @return [PasswordSettingsWrapper]
    def update_password_settings(opts = {})
      data, _status_code, _headers = update_password_settings_with_http_info(opts)
      data
    end

    # Update password settings
    # Replaces the password policy of the whole portal with the four values sent: `minLength` and the three flags  that demand an uppercase letter, a digit and a special symbol. There is no partial update - a flag left out of  the body is stored as `false` - so read the current policy with `GET api/2.0/settings/security/password` and  send it back with your change applied. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. `minLength` has to sit between the floor the installation is configured with, 8  characters unless it was changed, and the ceiling of 30; anything outside is rejected as an invalid request.  The new policy applies to passwords set from now on: existing passwords keep working until their owners change  them, and nobody is asked to renew. The change is portal-wide, recorded in the audit trail, and sending the  same body twice changes nothing further. The answer is the stored policy with its regular expressions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-password-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [PasswordSettingsRequestsDto] :password_settings_requests_dto 
    # @return [Array<(PasswordSettingsWrapper, Integer, Hash)>] PasswordSettingsWrapper data, response status code and response headers
    def update_password_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SecurityApi.update_password_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/password'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'password_settings_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'PasswordSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::SecurityApi.update_password_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::SecurityApi#update_password_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

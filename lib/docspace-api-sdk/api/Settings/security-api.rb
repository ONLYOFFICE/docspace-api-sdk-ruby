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
    # Get the enabled modules
    # Returns a list of all the enabled modules.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enabled-modules/
    # @param [Hash] opts the optional parameters
    # @return [ObjectWrapper]
    def get_enabled_modules(opts = {})
      data, _status_code, _headers = get_enabled_modules_with_http_info(opts)
      data
    end

    # Get the enabled modules
    # Returns a list of all the enabled modules.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enabled-modules/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
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
      return_type = opts[:debug_return_type] || 'ObjectWrapper'

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

    # Check a product administrator
    # Checks if the selected user is an administrator of a product with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-product-administrator/
    # @param productid [String] The ID of the product extracted from the query parameters.
    # @param userid [String] The user ID extracted from the query parameters.
    # @param [Hash] opts the optional parameters
    # @return [ProductAdministratorWrapper]
    def get_is_product_administrator(productid, userid, opts = {})
      data, _status_code, _headers = get_is_product_administrator_with_http_info(productid, userid, opts)
      data
    end

    # Check a product administrator
    # Checks if the selected user is an administrator of a product with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-product-administrator/
    # @param productid [String] The ID of the product extracted from the query parameters.
    # @param userid [String] The user ID extracted from the query parameters.
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

    # Get the password settings
    # Returns the portal password settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-password-settings/
    # @param [Hash] opts the optional parameters
    # @return [PasswordSettingsWrapper]
    def get_password_settings(opts = {})
      data, _status_code, _headers = get_password_settings_with_http_info(opts)
      data
    end

    # Get the password settings
    # Returns the portal password settings.
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

    # Get the product administrators
    # Returns a list of all the administrators of a product with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-product-administrators/
    # @param productid [String] The ID of the product extracted from the route parameters.
    # @param [Hash] opts the optional parameters
    # @return [EmployeeArrayWrapper]
    def get_product_administrators(productid, opts = {})
      data, _status_code, _headers = get_product_administrators_with_http_info(productid, opts)
      data
    end

    # Get the product administrators
    # Returns a list of all the administrators of a product with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-product-administrators/
    # @param productid [String] The ID of the product extracted from the route parameters.
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

    # Get the module availability
    # Returns the availability of the module with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-security-info/
    # @param id [String] The ID extracted from the route parameters.
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def get_web_item_security_info(id, opts = {})
      data, _status_code, _headers = get_web_item_security_info_with_http_info(id, opts)
      data
    end

    # Get the module availability
    # Returns the availability of the module with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-security-info/
    # @param id [String] The ID extracted from the route parameters.
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

    # Get the security settings
    # Returns the security settings for the modules specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-settings-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :ids The list of module identifiers for which to retrieve the security settings.
    # @return [SecurityArrayWrapper]
    def get_web_item_settings_security_info(opts = {})
      data, _status_code, _headers = get_web_item_settings_security_info_with_http_info(opts)
      data
    end

    # Get the security settings
    # Returns the security settings for the modules specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-settings-security-info/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :ids The list of module identifiers for which to retrieve the security settings.
    # @return [Array<(SecurityArrayWrapper, Integer, Hash)>] SecurityArrayWrapper data, response status code and response headers
    def get_web_item_settings_security_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::SecurityApi.get_web_item_settings_security_info ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(opts[:'ids'], :csv) if !opts[:'ids'].nil?

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

    # Set the security settings to modules
    # Sets the security settings to the modules with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-access-to-web-items/
    # @param [Hash] opts the optional parameters
    # @option opts [WebItemsSecurityRequestsDto] :web_items_security_requests_dto 
    # @return [SecurityArrayWrapper]
    def set_access_to_web_items(opts = {})
      data, _status_code, _headers = set_access_to_web_items_with_http_info(opts)
      data
    end

    # Set the security settings to modules
    # Sets the security settings to the modules with the IDs specified in the request.
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

    # Set a product administrator
    # Sets the selected user as an administrator of a product with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-product-administrator/
    # @param [Hash] opts the optional parameters
    # @option opts [SecurityRequestsDto] :security_requests_dto 
    # @return [ProductAdministratorWrapper]
    def set_product_administrator(opts = {})
      data, _status_code, _headers = set_product_administrator_with_http_info(opts)
      data
    end

    # Set a product administrator
    # Sets the selected user as an administrator of a product with the ID specified in the request.
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

    # Set the module security settings
    # Sets the security settings to the module with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-item-security/
    # @param [Hash] opts the optional parameters
    # @option opts [WebItemSecurityRequestsDto] :web_item_security_requests_dto 
    # @return [SecurityArrayWrapper]
    def set_web_item_security(opts = {})
      data, _status_code, _headers = set_web_item_security_with_http_info(opts)
      data
    end

    # Set the module security settings
    # Sets the security settings to the module with the ID specified in the request.
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

    # Set the password settings
    # Sets the portal password settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-password-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [PasswordSettingsRequestsDto] :password_settings_requests_dto 
    # @return [PasswordSettingsWrapper]
    def update_password_settings(opts = {})
      data, _status_code, _headers = update_password_settings_with_http_info(opts)
      data
    end

    # Set the password settings
    # Sets the portal password settings.
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

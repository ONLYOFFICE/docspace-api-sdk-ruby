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
    class SettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Restore a portal
    # Brings a deactivated portal back to the active state, so its users can sign in again and its domain serves the  portal as before. It is reached only with the reactivation link that `POST api/2.0/portal/suspend` mails to  the portal owner: that link authorizes the call in place of an authentication token, and no ordinary token is  accepted here. The call is mutating and idempotent - it sets the status to active, re-applies the portal's  Content Security Policy and refreshes its base domain, and a portal that is already active is simply left  active. Nothing is returned in the body; read the result from `status` in `GET api/2.0/portal`. Deactivating  the portal again means asking for a fresh letter with `POST api/2.0/portal/suspend`, because each link is  issued for one operation. This operation cannot bring back a removed portal: the deletion behind  `DELETE api/2.0/portal/delete` is final, and a removed portal has to be restored from a backup instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/continue-portal/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def continue_portal(opts = {})
      continue_portal_with_http_info(opts)
      nil
    end

    # Restore a portal
    # Brings a deactivated portal back to the active state, so its users can sign in again and its domain serves the  portal as before. It is reached only with the reactivation link that `POST api/2.0/portal/suspend` mails to  the portal owner: that link authorizes the call in place of an authentication token, and no ordinary token is  accepted here. The call is mutating and idempotent - it sets the status to active, re-applies the portal's  Content Security Policy and refreshes its base domain, and a portal that is already active is simply left  active. Nothing is returned in the body; read the result from `status` in `GET api/2.0/portal`. Deactivating  the portal again means asking for a fresh letter with `POST api/2.0/portal/suspend`, because each link is  issued for one operation. This operation cannot bring back a removed portal: the deletion behind  `DELETE api/2.0/portal/delete` is final, and a removed portal has to be restored from a backup instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/continue-portal/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def continue_portal_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.continue_portal ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/continue'

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
        :operation => :"Portal::SettingsApi.continue_portal",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#continue_portal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a portal
    # Removes this portal for good: its rooms, files, accounts, settings and OAuth clients go with it and its domain  stops serving the portal. It is reached only with the removal link that `POST api/2.0/portal/delete` mails to  the portal owner - that link authorizes the call instead of an authentication token - and the owner is checked  again here; on a server installation the last remaining space cannot be removed. The call is destructive and  cannot be undone, and there is no restore operation, so take a backup with `POST api/2.0/backup/startbackup`  first when the content still matters. It keeps working while the portal's payment has lapsed. Along the way  the portal is dropped from the hosting cache, the owner is mailed a confirmation, the removal is written to  the audit trail and, for a portal that was paying, the support team is notified as well. The answer is the  absolute URL of the feedback form to send the departing owner to. To pause the portal instead of erasing it,  use `PUT api/2.0/portal/suspend`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-portal/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def delete_portal(opts = {})
      data, _status_code, _headers = delete_portal_with_http_info(opts)
      data
    end

    # Delete a portal
    # Removes this portal for good: its rooms, files, accounts, settings and OAuth clients go with it and its domain  stops serving the portal. It is reached only with the removal link that `POST api/2.0/portal/delete` mails to  the portal owner - that link authorizes the call instead of an authentication token - and the owner is checked  again here; on a server installation the last remaining space cannot be removed. The call is destructive and  cannot be undone, and there is no restore operation, so take a backup with `POST api/2.0/backup/startbackup`  first when the content still matters. It keeps working while the portal's payment has lapsed. Along the way  the portal is dropped from the hosting cache, the owner is mailed a confirmation, the removal is written to  the audit trail and, for a portal that was paying, the support team is notified as well. The answer is the  absolute URL of the feedback form to send the departing owner to. To pause the portal instead of erasing it,  use `PUT api/2.0/portal/suspend`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-portal/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def delete_portal_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.delete_portal ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/delete'

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
        :operation => :"Portal::SettingsApi.delete_portal",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#delete_portal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get portal information
    # Returns the portal the request was addressed to - the tenant behind the current domain - with its name, alias,  owner, language, time zone, industry, trusted-domain rules, version and creation date. Nothing has to be  called first, the call is read-only and idempotent, and it keeps answering while the portal's payment has  lapsed. What comes back depends on the caller's rights: a caller with the portal-settings right gets the whole  record, while every other user gets an object in which only `tenantId` is filled and no error is raised - so  check `tenantAlias` for null before reading the rest. `status` says whether the portal is active, suspended or  pending removal, and `creationDateTime`, `statusChangeDate`, `lastModified` and `versionChanged` are UTC.  `region` names the data-center region a hosted portal is served from and stays empty on a server installation  and when the portal cache is off, while `hostedRegion` is the region written on the record itself. The  settings of the same portal are read with `GET api/2.0/settings`, its tariff with `GET api/2.0/portal/tariff`  and its quota with `GET api/2.0/portal/quota`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-information/
    # @param [Hash] opts the optional parameters
    # @return [TenantWrapper]
    def get_portal_information(opts = {})
      data, _status_code, _headers = get_portal_information_with_http_info(opts)
      data
    end

    # Get portal information
    # Returns the portal the request was addressed to - the tenant behind the current domain - with its name, alias,  owner, language, time zone, industry, trusted-domain rules, version and creation date. Nothing has to be  called first, the call is read-only and idempotent, and it keeps answering while the portal's payment has  lapsed. What comes back depends on the caller's rights: a caller with the portal-settings right gets the whole  record, while every other user gets an object in which only `tenantId` is filled and no error is raised - so  check `tenantAlias` for null before reading the rest. `status` says whether the portal is active, suspended or  pending removal, and `creationDateTime`, `statusChangeDate`, `lastModified` and `versionChanged` are UTC.  `region` names the data-center region a hosted portal is served from and stays empty on a server installation  and when the portal cache is off, while `hostedRegion` is the region written on the record itself. The  settings of the same portal are read with `GET api/2.0/settings`, its tariff with `GET api/2.0/portal/tariff`  and its quota with `GET api/2.0/portal/quota`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-information/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantWrapper, Integer, Hash)>] TenantWrapper data, response status code and response headers
    def get_portal_information_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.get_portal_information ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal'

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
      return_type = opts[:debug_return_type] || 'TenantWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::SettingsApi.get_portal_information",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#get_portal_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a path to the portal
    # Turns a portal-relative path into the absolute URL a client can open, filling in the scheme, the current  portal domain and the virtual root the portal is hosted on. Any signed-in user may call it, nothing has to be  called first, and the call is read-only and idempotent - it neither checks that the path exists nor that the  caller is allowed to open it. `virtualPath` is taken as it is: an omitted or empty value yields the portal  root, a value starting with `/` is appended to that root, a value starting with `~/` is resolved against the  virtual root, and a value that already starts with `http://`, `https://` or `mailto:` is handed back  unchanged. The answer is a bare JSON string. The domain in the result is the one the portal answers on right  now, so a renamed portal starts returning the new domain without any change on the client. Use it to build  links that have to survive a rename; the portal's own addresses and settings are read from  `GET api/2.0/settings` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-path/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :virtual_path The path to resolve. It is taken as it is: an omitted or empty value yields the portal root, a value starting  with `/` is appended to that root, a value starting with `~/` is resolved against the virtual root, and one  that already begins with `http://`, `https://` or `mailto:` is handed back unchanged. Nothing checks that the  path exists or that the caller may open it.
    # @return [StringWrapper]
    def get_portal_path(opts = {})
      data, _status_code, _headers = get_portal_path_with_http_info(opts)
      data
    end

    # Get a path to the portal
    # Turns a portal-relative path into the absolute URL a client can open, filling in the scheme, the current  portal domain and the virtual root the portal is hosted on. Any signed-in user may call it, nothing has to be  called first, and the call is read-only and idempotent - it neither checks that the path exists nor that the  caller is allowed to open it. `virtualPath` is taken as it is: an omitted or empty value yields the portal  root, a value starting with `/` is appended to that root, a value starting with `~/` is resolved against the  virtual root, and a value that already starts with `http://`, `https://` or `mailto:` is handed back  unchanged. The answer is a bare JSON string. The domain in the result is the one the portal answers on right  now, so a renamed portal starts returning the new domain without any change on the client. Use it to build  links that have to survive a rename; the portal's own addresses and settings are read from  `GET api/2.0/settings` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-path/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :virtual_path The path to resolve. It is taken as it is: an omitted or empty value yields the portal root, a value starting  with `/` is appended to that root, a value starting with `~/` is resolved against the virtual root, and one  that already begins with `http://`, `https://` or `mailto:` is handed back unchanged. Nothing checks that the  path exists or that the caller may open it.
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def get_portal_path_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.get_portal_path ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/path'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'virtualPath'] = opts[:'virtual_path'] if !opts[:'virtual_path'].nil?

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
        :operation => :"Portal::SettingsApi.get_portal_path",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#get_portal_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send removal instructions
    # Mails the portal owner the confirmation link that removes this portal; nothing about the portal changes until  that link is used. The caller has to be the portal owner and hold the portal-settings right, and on a server  installation the last remaining space cannot be removed - the call is refused when every other space has  limited access. The letter goes to the owner's own address whoever asked for it, and it warns about the  subscription that will stop renewing when the portal is on a paid plan. The operation keeps working while the  portal's payment has lapsed, is mutating only in that it sends a message, and is rate-limited to five requests  per fifteen minutes per user and path by default, answering 429 above that. Nothing is returned in the body.  The link in the letter authorizes `DELETE api/2.0/portal/delete`, which deletes the portal with all of its  rooms, files and accounts and cannot be undone. To pause the portal instead of deleting it, send the  deactivation letter with `POST api/2.0/portal/suspend`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-delete-instructions/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_delete_instructions(opts = {})
      send_delete_instructions_with_http_info(opts)
      nil
    end

    # Send removal instructions
    # Mails the portal owner the confirmation link that removes this portal; nothing about the portal changes until  that link is used. The caller has to be the portal owner and hold the portal-settings right, and on a server  installation the last remaining space cannot be removed - the call is refused when every other space has  limited access. The letter goes to the owner's own address whoever asked for it, and it warns about the  subscription that will stop renewing when the portal is on a paid plan. The operation keeps working while the  portal's payment has lapsed, is mutating only in that it sends a message, and is rate-limited to five requests  per fifteen minutes per user and path by default, answering 429 above that. Nothing is returned in the body.  The link in the letter authorizes `DELETE api/2.0/portal/delete`, which deletes the portal with all of its  rooms, files and accounts and cannot be undone. To pause the portal instead of deleting it, send the  deactivation letter with `POST api/2.0/portal/suspend`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-delete-instructions/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def send_delete_instructions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.send_delete_instructions ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/delete'

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
        :operation => :"Portal::SettingsApi.send_delete_instructions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#send_delete_instructions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send suspension instructions
    # Mails the portal owner the two confirmation links that deactivate this portal and bring it back again, and  records the request in the audit trail; the portal itself is not changed here. The caller has to be the portal  owner and hold the portal-settings right, and on a server installation the last remaining space cannot be  deactivated - the call is refused when every other space has limited access. The letter always goes to the  owner's own address, and the operation keeps working while the portal's payment has lapsed. It is mutating  only in that it sends a message, and it is rate-limited to five requests per fifteen minutes per user and path  by default, answering 429 above that. Nothing is returned in the body, so a client cannot tell from the answer  whether the mail was delivered. The first link in the letter authorizes `PUT api/2.0/portal/suspend`, which  suspends the portal, and the second one authorizes `PUT api/2.0/portal/continue`, which makes it active again.  To remove the portal instead of pausing it, use `POST api/2.0/portal/delete`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-suspend-instructions/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_suspend_instructions(opts = {})
      send_suspend_instructions_with_http_info(opts)
      nil
    end

    # Send suspension instructions
    # Mails the portal owner the two confirmation links that deactivate this portal and bring it back again, and  records the request in the audit trail; the portal itself is not changed here. The caller has to be the portal  owner and hold the portal-settings right, and on a server installation the last remaining space cannot be  deactivated - the call is refused when every other space has limited access. The letter always goes to the  owner's own address, and the operation keeps working while the portal's payment has lapsed. It is mutating  only in that it sends a message, and it is rate-limited to five requests per fifteen minutes per user and path  by default, answering 429 above that. Nothing is returned in the body, so a client cannot tell from the answer  whether the mail was delivered. The first link in the letter authorizes `PUT api/2.0/portal/suspend`, which  suspends the portal, and the second one authorizes `PUT api/2.0/portal/continue`, which makes it active again.  To remove the portal instead of pausing it, use `POST api/2.0/portal/delete`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-suspend-instructions/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def send_suspend_instructions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.send_suspend_instructions ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/suspend'

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
        :operation => :"Portal::SettingsApi.send_suspend_instructions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#send_suspend_instructions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deactivate a portal
    # Deactivates this portal: its status becomes suspended and its users can no longer work in it, while all of its  rooms, files and accounts stay untouched. It is reached only with the deactivation link that  `POST api/2.0/portal/suspend` mails to the portal owner - that link authorizes the call instead of an  authentication token - and the owner is checked again here, so a link issued for another account is refused.  On a server installation the last remaining space cannot be deactivated. The call is mutating and idempotent:  it sets the status, records the deactivation in the audit trail and refreshes the portal's base domain, and  repeating it leaves the portal suspended. Nothing is returned in the body; the new state is read from `status`  in `GET api/2.0/portal`. Bring the portal back with `PUT api/2.0/portal/continue`, using the second link from  the same letter. To remove the portal and its content for good, use `DELETE api/2.0/portal/delete` instead -  that cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/suspend-portal/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def suspend_portal(opts = {})
      suspend_portal_with_http_info(opts)
      nil
    end

    # Deactivate a portal
    # Deactivates this portal: its status becomes suspended and its users can no longer work in it, while all of its  rooms, files and accounts stay untouched. It is reached only with the deactivation link that  `POST api/2.0/portal/suspend` mails to the portal owner - that link authorizes the call instead of an  authentication token - and the owner is checked again here, so a link issued for another account is refused.  On a server installation the last remaining space cannot be deactivated. The call is mutating and idempotent:  it sets the status, records the deactivation in the audit trail and refreshes the portal's base domain, and  repeating it leaves the portal suspended. Nothing is returned in the body; the new state is read from `status`  in `GET api/2.0/portal`. Bring the portal back with `PUT api/2.0/portal/continue`, using the second link from  the same letter. To remove the portal and its content for good, use `DELETE api/2.0/portal/delete` instead -  that cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/suspend-portal/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def suspend_portal_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::SettingsApi.suspend_portal ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/suspend'

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
        :operation => :"Portal::SettingsApi.suspend_portal",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::SettingsApi#suspend_portal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

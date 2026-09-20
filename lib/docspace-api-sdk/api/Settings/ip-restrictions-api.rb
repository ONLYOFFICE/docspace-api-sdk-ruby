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
    class IPRestrictionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get IP restrictions
    # Returns the IP restriction list of the current portal - the addresses allowed to reach it, each with its `id`  and the `forAdmin` flag that narrows the entry to DocSpace administrators. The caller needs the  portal-settings right of a DocSpace administrator, otherwise the call is refused. The call is read-only and  honours `If-None-Match`: send back the `ETag` of an earlier answer and an unchanged list comes back as an  empty not-modified response rather than a body. The list has no defined order and is empty on a portal where  nobody has configured restrictions - and an empty list blocks nobody, whatever the enforcement flag says.  Whether the restrictions are enforced at all is not part of this answer: read that flag with  `GET api/2.0/settings/iprestrictions/settings`. The entries listed here apply to every user of the portal  except its owner. Replace the whole list with `PUT api/2.0/settings/iprestrictions`; single entries cannot be  added or deleted, and that update takes plain addresses rather than the IDs returned here.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ip-restrictions/
    # @param [Hash] opts the optional parameters
    # @return [IPRestrictionArrayWrapper]
    def get_ip_restrictions(opts = {})
      data, _status_code, _headers = get_ip_restrictions_with_http_info(opts)
      data
    end

    # Get IP restrictions
    # Returns the IP restriction list of the current portal - the addresses allowed to reach it, each with its `id`  and the `forAdmin` flag that narrows the entry to DocSpace administrators. The caller needs the  portal-settings right of a DocSpace administrator, otherwise the call is refused. The call is read-only and  honours `If-None-Match`: send back the `ETag` of an earlier answer and an unchanged list comes back as an  empty not-modified response rather than a body. The list has no defined order and is empty on a portal where  nobody has configured restrictions - and an empty list blocks nobody, whatever the enforcement flag says.  Whether the restrictions are enforced at all is not part of this answer: read that flag with  `GET api/2.0/settings/iprestrictions/settings`. The entries listed here apply to every user of the portal  except its owner. Replace the whole list with `PUT api/2.0/settings/iprestrictions`; single entries cannot be  added or deleted, and that update takes plain addresses rather than the IDs returned here.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ip-restrictions/
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPRestrictionArrayWrapper, Integer, Hash)>] IPRestrictionArrayWrapper data, response status code and response headers
    def get_ip_restrictions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::IPRestrictionsApi.get_ip_restrictions ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/iprestrictions'

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
      return_type = opts[:debug_return_type] || 'IPRestrictionArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::IPRestrictionsApi.get_ip_restrictions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::IPRestrictionsApi#get_ip_restrictions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get IP restriction settings
    # Reports whether the IP restrictions of the current portal are enforced, as the `enable` flag together with the  `lastModified` stamp of the setting. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. The call is read-only and honours `If-Modified-Since`: send back the  `Last-Modified` value of an earlier answer and an unchanged setting comes back as an empty not-modified  response rather than a body. The flag is `false` on a portal nobody has configured. A `true` flag on its own  blocks nothing: enforcement also needs at least one stored address, which this answer does not carry - read  the addresses with `GET api/2.0/settings/iprestrictions` - and it is skipped entirely on an installation whose  configuration hides the IP security section. Even when enforced, the portal owner and the installation's own  networks are let through. Change the flag with `PUT api/2.0/settings/iprestrictions/settings`, which replaces  the address list in the same call, so resend the addresses in force when all that changes is the flag.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/read-ip-restrictions-settings/
    # @param [Hash] opts the optional parameters
    # @return [IPRestrictionsSettingsWrapper]
    def read_ip_restrictions_settings(opts = {})
      data, _status_code, _headers = read_ip_restrictions_settings_with_http_info(opts)
      data
    end

    # Get IP restriction settings
    # Reports whether the IP restrictions of the current portal are enforced, as the `enable` flag together with the  `lastModified` stamp of the setting. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. The call is read-only and honours `If-Modified-Since`: send back the  `Last-Modified` value of an earlier answer and an unchanged setting comes back as an empty not-modified  response rather than a body. The flag is `false` on a portal nobody has configured. A `true` flag on its own  blocks nothing: enforcement also needs at least one stored address, which this answer does not carry - read  the addresses with `GET api/2.0/settings/iprestrictions` - and it is skipped entirely on an installation whose  configuration hides the IP security section. Even when enforced, the portal owner and the installation's own  networks are let through. Change the flag with `PUT api/2.0/settings/iprestrictions/settings`, which replaces  the address list in the same call, so resend the addresses in force when all that changes is the flag.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/read-ip-restrictions-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPRestrictionsSettingsWrapper, Integer, Hash)>] IPRestrictionsSettingsWrapper data, response status code and response headers
    def read_ip_restrictions_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::IPRestrictionsApi.read_ip_restrictions_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/iprestrictions/settings'

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
      return_type = opts[:debug_return_type] || 'IPRestrictionsSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::IPRestrictionsApi.read_ip_restrictions_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::IPRestrictionsApi#read_ip_restrictions_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save IP restrictions
    # Replaces the whole IP restriction list of the current portal with the addresses from the request and stores  the enforcement flag in the same call. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. Every entry must be a single IPv4 or IPv6 address: `from-to` ranges and CIDR  blocks are matched by the portal but cannot be stored here and are rejected as an invalid request, as is  `enable: true` with an empty list. An omitted `enable` follows the list - on when addresses are sent, off when  the list is empty. The replacement is written in one transaction, applies to new requests without a restart  and is recorded in the audit trail; entries not repeated in the body are deleted, and sending the same body  twice leaves the portal as it is. Enforcement spares the portal owner and the installation's own networks  only, so a list without the caller's own address locks the remaining administrators out. The answer echoes the  request rather than the stored rows - no entry IDs, and `enable` exactly as sent, empty when it was omitted -  so read the result with `GET api/2.0/settings/iprestrictions`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ip-restrictions/
    # @param [Hash] opts the optional parameters
    # @option opts [IpRestrictionsDto] :ip_restrictions_dto 
    # @return [IpRestrictionsWrapper]
    def save_ip_restrictions(opts = {})
      data, _status_code, _headers = save_ip_restrictions_with_http_info(opts)
      data
    end

    # Save IP restrictions
    # Replaces the whole IP restriction list of the current portal with the addresses from the request and stores  the enforcement flag in the same call. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. Every entry must be a single IPv4 or IPv6 address: `from-to` ranges and CIDR  blocks are matched by the portal but cannot be stored here and are rejected as an invalid request, as is  `enable: true` with an empty list. An omitted `enable` follows the list - on when addresses are sent, off when  the list is empty. The replacement is written in one transaction, applies to new requests without a restart  and is recorded in the audit trail; entries not repeated in the body are deleted, and sending the same body  twice leaves the portal as it is. Enforcement spares the portal owner and the installation's own networks  only, so a list without the caller's own address locks the remaining administrators out. The answer echoes the  request rather than the stored rows - no entry IDs, and `enable` exactly as sent, empty when it was omitted -  so read the result with `GET api/2.0/settings/iprestrictions`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ip-restrictions/
    # @param [Hash] opts the optional parameters
    # @option opts [IpRestrictionsDto] :ip_restrictions_dto 
    # @return [Array<(IpRestrictionsWrapper, Integer, Hash)>] IpRestrictionsWrapper data, response status code and response headers
    def save_ip_restrictions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::IPRestrictionsApi.save_ip_restrictions ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/iprestrictions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ip_restrictions_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'IpRestrictionsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::IPRestrictionsApi.save_ip_restrictions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::IPRestrictionsApi#save_ip_restrictions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update IP restriction settings
    # Stores the enforcement flag of the IP restrictions of the current portal together with the whole address list,  replacing the addresses saved before; this operation and `PUT api/2.0/settings/iprestrictions` are two routes  to the same handler and behave identically. The caller needs the portal-settings right of a DocSpace  administrator, otherwise the call is refused. Every entry must be a single IPv4 or IPv6 address: `from-to`  ranges and CIDR blocks are matched by the portal but cannot be stored here and are rejected as an invalid  request, as is `enable: true` with an empty list. An omitted `enable` follows the list - on when addresses are  sent, off when the list is empty - so the flag cannot be moved without resending the addresses that stay in  force. The new state applies to new requests without a restart, is recorded in the audit trail, and sending  the same body twice changes nothing further. Enforcement spares the portal owner and the installation's own  networks only, so a list without the caller's own address locks the remaining administrators out. The answer  echoes the request, so read the stored entries and their IDs with `GET api/2.0/settings/iprestrictions`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-ip-restrictions-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [IpRestrictionsDto] :ip_restrictions_dto 
    # @return [IpRestrictionsWrapper]
    def update_ip_restrictions_settings(opts = {})
      data, _status_code, _headers = update_ip_restrictions_settings_with_http_info(opts)
      data
    end

    # Update IP restriction settings
    # Stores the enforcement flag of the IP restrictions of the current portal together with the whole address list,  replacing the addresses saved before; this operation and `PUT api/2.0/settings/iprestrictions` are two routes  to the same handler and behave identically. The caller needs the portal-settings right of a DocSpace  administrator, otherwise the call is refused. Every entry must be a single IPv4 or IPv6 address: `from-to`  ranges and CIDR blocks are matched by the portal but cannot be stored here and are rejected as an invalid  request, as is `enable: true` with an empty list. An omitted `enable` follows the list - on when addresses are  sent, off when the list is empty - so the flag cannot be moved without resending the addresses that stay in  force. The new state applies to new requests without a restart, is recorded in the audit trail, and sending  the same body twice changes nothing further. Enforcement spares the portal owner and the installation's own  networks only, so a list without the caller's own address locks the remaining administrators out. The answer  echoes the request, so read the stored entries and their IDs with `GET api/2.0/settings/iprestrictions`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-ip-restrictions-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [IpRestrictionsDto] :ip_restrictions_dto 
    # @return [Array<(IpRestrictionsWrapper, Integer, Hash)>] IpRestrictionsWrapper data, response status code and response headers
    def update_ip_restrictions_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::IPRestrictionsApi.update_ip_restrictions_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/iprestrictions/settings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ip_restrictions_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'IpRestrictionsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::IPRestrictionsApi.update_ip_restrictions_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::IPRestrictionsApi#update_ip_restrictions_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

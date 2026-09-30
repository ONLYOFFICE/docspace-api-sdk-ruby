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
    class LoginSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get login settings
    # Returns the brute-force protection of the sign-in form for the current portal: how many failed attempts are  tolerated, how long the window they are counted in lasts, and how long an offender stays blocked. The caller  needs the portal-settings right of a DocSpace administrator; members without it are refused, and anonymous  callers are not admitted. The operation is read-only and honours `If-Modified-Since`: send back the  `Last-Modified` value of an earlier answer and unchanged settings come back as an empty not-modified response  rather than a body. `checkPeriod` and `blockTime` are counted in seconds. A portal nobody has configured  tolerates 5 failed attempts inside a window of 60 seconds and blocks for 60 seconds, and reports `isDefault`  true; the flag turns false as soon as any of the three values differs from that. The answer describes the  portal-wide policy only: it does not say which accounts or addresses are blocked at the moment, while a  lockout that has already happened is recorded in the login history and can be read with  `GET api/2.0/security/audit/login/filter`. Change the numbers with  `PUT api/2.0/settings/security/loginsettings`, or put them back with  `DELETE api/2.0/settings/security/loginsettings`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-settings/
    # @param [Hash] opts the optional parameters
    # @return [LoginSettingsWrapper]
    def get_login_settings(opts = {})
      data, _status_code, _headers = get_login_settings_with_http_info(opts)
      data
    end

    # Get login settings
    # Returns the brute-force protection of the sign-in form for the current portal: how many failed attempts are  tolerated, how long the window they are counted in lasts, and how long an offender stays blocked. The caller  needs the portal-settings right of a DocSpace administrator; members without it are refused, and anonymous  callers are not admitted. The operation is read-only and honours `If-Modified-Since`: send back the  `Last-Modified` value of an earlier answer and unchanged settings come back as an empty not-modified response  rather than a body. `checkPeriod` and `blockTime` are counted in seconds. A portal nobody has configured  tolerates 5 failed attempts inside a window of 60 seconds and blocks for 60 seconds, and reports `isDefault`  true; the flag turns false as soon as any of the three values differs from that. The answer describes the  portal-wide policy only: it does not say which accounts or addresses are blocked at the moment, while a  lockout that has already happened is recorded in the login history and can be read with  `GET api/2.0/security/audit/login/filter`. Change the numbers with  `PUT api/2.0/settings/security/loginsettings`, or put them back with  `DELETE api/2.0/settings/security/loginsettings`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(LoginSettingsWrapper, Integer, Hash)>] LoginSettingsWrapper data, response status code and response headers
    def get_login_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::LoginSettingsApi.get_login_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/loginsettings'

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
      return_type = opts[:debug_return_type] || 'LoginSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::LoginSettingsApi.get_login_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::LoginSettingsApi#get_login_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset login settings
    # Puts the brute-force protection of the sign-in form back to what the portal shipped with: 5 tolerated failed  attempts, a counting window of 60 seconds and a block of 60 seconds. The caller needs the portal-settings  right of a DocSpace administrator, otherwise the call is refused. The operation takes no parameters and  overwrites whatever was configured before without asking, so read the current numbers with  `GET api/2.0/settings/security/loginsettings` first if they are worth keeping. Only the setting is reset:  sign-ins already blocked stay blocked until the block they were given runs out, and the attempt counters  running for other users are left alone. The reset is portal-wide, applies to attempts made from now on, is  recorded in the audit trail, and calling it twice changes nothing further. The restored numbers also decide  when the sign-in form starts asking for a captcha, which it does one attempt before the block. The answer is  the restored settings, with `isDefault` true. Store numbers of your own with  `PUT api/2.0/settings/security/loginsettings`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-login-settings/
    # @param [Hash] opts the optional parameters
    # @return [LoginSettingsWrapper]
    def set_default_login_settings(opts = {})
      data, _status_code, _headers = set_default_login_settings_with_http_info(opts)
      data
    end

    # Reset login settings
    # Puts the brute-force protection of the sign-in form back to what the portal shipped with: 5 tolerated failed  attempts, a counting window of 60 seconds and a block of 60 seconds. The caller needs the portal-settings  right of a DocSpace administrator, otherwise the call is refused. The operation takes no parameters and  overwrites whatever was configured before without asking, so read the current numbers with  `GET api/2.0/settings/security/loginsettings` first if they are worth keeping. Only the setting is reset:  sign-ins already blocked stay blocked until the block they were given runs out, and the attempt counters  running for other users are left alone. The reset is portal-wide, applies to attempts made from now on, is  recorded in the audit trail, and calling it twice changes nothing further. The restored numbers also decide  when the sign-in form starts asking for a captcha, which it does one attempt before the block. The answer is  the restored settings, with `isDefault` true. Store numbers of your own with  `PUT api/2.0/settings/security/loginsettings`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-login-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(LoginSettingsWrapper, Integer, Hash)>] LoginSettingsWrapper data, response status code and response headers
    def set_default_login_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::LoginSettingsApi.set_default_login_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/loginsettings'

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
      return_type = opts[:debug_return_type] || 'LoginSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::LoginSettingsApi.set_default_login_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::LoginSettingsApi#set_default_login_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update login settings
    # Replaces the brute-force protection of the sign-in form for the whole portal: `attemptCount` failed attempts  inside a rolling window of `checkPeriod` seconds, after which the offender is blocked for `blockTime` seconds.  All three values are replaced together and each has to be between 1 and 9999, so read the current ones with  `GET api/2.0/settings/security/loginsettings` before changing only one of them; a value outside the range is  rejected as an invalid request. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. Failed attempts are counted per user name and client address, so one member's  lockout leaves the rest of the portal signing in normally, and a blocked pair is refused even once the  password is finally correct. The new numbers apply to attempts made from now on and leave counters and blocks  already running as they are. The change is recorded in the audit trail, and the answer is the stored settings  with the flag that says whether they still match the shipped defaults.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-login-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [LoginSettingsRequestDto] :login_settings_request_dto 
    # @return [LoginSettingsWrapper]
    def update_login_settings(opts = {})
      data, _status_code, _headers = update_login_settings_with_http_info(opts)
      data
    end

    # Update login settings
    # Replaces the brute-force protection of the sign-in form for the whole portal: `attemptCount` failed attempts  inside a rolling window of `checkPeriod` seconds, after which the offender is blocked for `blockTime` seconds.  All three values are replaced together and each has to be between 1 and 9999, so read the current ones with  `GET api/2.0/settings/security/loginsettings` before changing only one of them; a value outside the range is  rejected as an invalid request. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. Failed attempts are counted per user name and client address, so one member's  lockout leaves the rest of the portal signing in normally, and a blocked pair is refused even once the  password is finally correct. The new numbers apply to attempts made from now on and leave counters and blocks  already running as they are. The change is recorded in the audit trail, and the answer is the stored settings  with the flag that says whether they still match the shipped defaults.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-login-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [LoginSettingsRequestDto] :login_settings_request_dto 
    # @return [Array<(LoginSettingsWrapper, Integer, Hash)>] LoginSettingsWrapper data, response status code and response headers
    def update_login_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::LoginSettingsApi.update_login_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/security/loginsettings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'login_settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'LoginSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::LoginSettingsApi.update_login_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::LoginSettingsApi#update_login_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

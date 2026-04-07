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
    class MessagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Enable the administrator message settings
    # Displays the contact form on the Sign In page, allowing users to send a message to the DocSpace administrator in case they encounter any issues while accessing DocSpace.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-admin-message-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TurnOnAdminMessageSettingsRequestDto] :turn_on_admin_message_settings_request_dto 
    # @return [StringWrapper]
    def enable_admin_message_settings(opts = {})
      data, _status_code, _headers = enable_admin_message_settings_with_http_info(opts)
      data
    end

    # Enable the administrator message settings
    # Displays the contact form on the Sign In page, allowing users to send a message to the DocSpace administrator in case they encounter any issues while accessing DocSpace.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-admin-message-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TurnOnAdminMessageSettingsRequestDto] :turn_on_admin_message_settings_request_dto 
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def enable_admin_message_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::MessagesApi.enable_admin_message_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/messagesettings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'turn_on_admin_message_settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::MessagesApi.enable_admin_message_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::MessagesApi#enable_admin_message_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a message to the administrator
    # Sends a message to the administrator email when unauthorized users encounter issues accessing DocSpace.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-admin-mail/
    # @param [Hash] opts the optional parameters
    # @option opts [AdminMessageSettingsRequestsDto] :admin_message_settings_requests_dto 
    # @return [StringWrapper]
    def send_admin_mail(opts = {})
      data, _status_code, _headers = send_admin_mail_with_http_info(opts)
      data
    end

    # Send a message to the administrator
    # Sends a message to the administrator email when unauthorized users encounter issues accessing DocSpace.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-admin-mail/
    # @param [Hash] opts the optional parameters
    # @option opts [AdminMessageSettingsRequestsDto] :admin_message_settings_requests_dto 
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def send_admin_mail_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::MessagesApi.send_admin_mail ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/sendadmmail'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'admin_message_settings_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Settings::MessagesApi.send_admin_mail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::MessagesApi#send_admin_mail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sends an invitation email
    # Sends an invitation email with a link to the DocSpace.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-join-invite-mail/
    # @param [Hash] opts the optional parameters
    # @option opts [AdminMessageBaseSettingsRequestsDto] :admin_message_base_settings_requests_dto 
    # @return [StringWrapper]
    def send_join_invite_mail(opts = {})
      data, _status_code, _headers = send_join_invite_mail_with_http_info(opts)
      data
    end

    # Sends an invitation email
    # Sends an invitation email with a link to the DocSpace.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-join-invite-mail/
    # @param [Hash] opts the optional parameters
    # @option opts [AdminMessageBaseSettingsRequestsDto] :admin_message_base_settings_requests_dto 
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def send_join_invite_mail_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::MessagesApi.send_join_invite_mail ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/sendjoininvite'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'admin_message_base_settings_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Settings::MessagesApi.send_join_invite_mail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::MessagesApi#send_join_invite_mail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

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
    class SMTPSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the SMTP testing process status
    # Returns the status of the SMTP testing process.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-smtp-operation-status/
    # @param [Hash] opts the optional parameters
    # @return [SmtpOperationStatusRequestsWrapper]
    def get_smtp_operation_status(opts = {})
      data, _status_code, _headers = get_smtp_operation_status_with_http_info(opts)
      data
    end

    # Get the SMTP testing process status
    # Returns the status of the SMTP testing process.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-smtp-operation-status/
    # @param [Hash] opts the optional parameters
    # @return [Array<(SmtpOperationStatusRequestsWrapper, Integer, Hash)>] SmtpOperationStatusRequestsWrapper data, response status code and response headers
    def get_smtp_operation_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::SMTPSettingsApi.get_smtp_operation_status ...'
      end
      # resource path
      local_var_path = '/api/2.0/smtpsettings/smtp/test/status'

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
      return_type = opts[:debug_return_type] || 'SmtpOperationStatusRequestsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::SMTPSettingsApi.get_smtp_operation_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::SMTPSettingsApi#get_smtp_operation_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the SMTP settings
    # Returns the current portal SMTP settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-smtp-settings/
    # @param [Hash] opts the optional parameters
    # @return [SmtpSettingsWrapper]
    def get_smtp_settings(opts = {})
      data, _status_code, _headers = get_smtp_settings_with_http_info(opts)
      data
    end

    # Get the SMTP settings
    # Returns the current portal SMTP settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-smtp-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(SmtpSettingsWrapper, Integer, Hash)>] SmtpSettingsWrapper data, response status code and response headers
    def get_smtp_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::SMTPSettingsApi.get_smtp_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/smtpsettings/smtp'

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
      return_type = opts[:debug_return_type] || 'SmtpSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::SMTPSettingsApi.get_smtp_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::SMTPSettingsApi#get_smtp_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset the SMTP settings
    # Resets the SMTP settings of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-smtp-settings/
    # @param [Hash] opts the optional parameters
    # @return [SmtpSettingsWrapper]
    def reset_smtp_settings(opts = {})
      data, _status_code, _headers = reset_smtp_settings_with_http_info(opts)
      data
    end

    # Reset the SMTP settings
    # Resets the SMTP settings of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-smtp-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(SmtpSettingsWrapper, Integer, Hash)>] SmtpSettingsWrapper data, response status code and response headers
    def reset_smtp_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::SMTPSettingsApi.reset_smtp_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/smtpsettings/smtp'

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
      return_type = opts[:debug_return_type] || 'SmtpSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::SMTPSettingsApi.reset_smtp_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::SMTPSettingsApi#reset_smtp_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the SMTP settings
    # Saves the SMTP settings for the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-smtp-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [SmtpSettingsDto] :smtp_settings_dto 
    # @return [SmtpSettingsWrapper]
    def save_smtp_settings(opts = {})
      data, _status_code, _headers = save_smtp_settings_with_http_info(opts)
      data
    end

    # Save the SMTP settings
    # Saves the SMTP settings for the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-smtp-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [SmtpSettingsDto] :smtp_settings_dto 
    # @return [Array<(SmtpSettingsWrapper, Integer, Hash)>] SmtpSettingsWrapper data, response status code and response headers
    def save_smtp_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::SMTPSettingsApi.save_smtp_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/smtpsettings/smtp'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'smtp_settings_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'SmtpSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::SMTPSettingsApi.save_smtp_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::SMTPSettingsApi#save_smtp_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test the SMTP settings
    # Tests the SMTP settings for the current portal (sends test message to the user email).
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/test-smtp-settings/
    # @param [Hash] opts the optional parameters
    # @return [SmtpOperationStatusRequestsWrapper]
    def test_smtp_settings(opts = {})
      data, _status_code, _headers = test_smtp_settings_with_http_info(opts)
      data
    end

    # Test the SMTP settings
    # Tests the SMTP settings for the current portal (sends test message to the user email).
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/test-smtp-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(SmtpOperationStatusRequestsWrapper, Integer, Hash)>] SmtpOperationStatusRequestsWrapper data, response status code and response headers
    def test_smtp_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Security::SMTPSettingsApi.test_smtp_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/smtpsettings/smtp/test'

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
      return_type = opts[:debug_return_type] || 'SmtpOperationStatusRequestsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Security::SMTPSettingsApi.test_smtp_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Security::SMTPSettingsApi#test_smtp_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

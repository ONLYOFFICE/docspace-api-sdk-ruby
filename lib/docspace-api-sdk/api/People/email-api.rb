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
  module People
    class EmailApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Change a user email
    # Sets a new email to the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-user-email/
    # @param userid [String] The user ID.
    # @param change_email_request [ChangeEmailRequest] The request parameters for updating a user email.
    # @param [Hash] opts the optional parameters
    # @return [EmployeeFullWrapper]
    def change_user_email(userid, change_email_request, opts = {})
      data, _status_code, _headers = change_user_email_with_http_info(userid, change_email_request, opts)
      data
    end

    # Change a user email
    # Sets a new email to the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-user-email/
    # @param userid [String] The user ID.
    # @param change_email_request [ChangeEmailRequest] The request parameters for updating a user email.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmployeeFullWrapper, Integer, Hash)>] EmployeeFullWrapper data, response status code and response headers
    def change_user_email_with_http_info(userid, change_email_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::EmailApi.change_user_email ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::EmailApi.change_user_email"
      end
      # verify the required parameter 'change_email_request' is set
      if @api_client.config.client_side_validation && change_email_request.nil?
        fail ArgumentError, "Missing the required parameter 'change_email_request' when calling People::EmailApi.change_user_email"
      end
      # resource path
      local_var_path = '/api/2.0/people/{userid}/email'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(change_email_request)

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeFullWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::EmailApi.change_user_email",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::EmailApi#change_user_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send instructions to change email
    # Sends a message to the user email with the instructions to change the email address connected to the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-email-change-instructions/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMemberRequestDto] :update_member_request_dto 
    # @return [StringWrapper]
    def send_email_change_instructions(opts = {})
      data, _status_code, _headers = send_email_change_instructions_with_http_info(opts)
      data
    end

    # Send instructions to change email
    # Sends a message to the user email with the instructions to change the email address connected to the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-email-change-instructions/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMemberRequestDto] :update_member_request_dto 
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def send_email_change_instructions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::EmailApi.send_email_change_instructions ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/email'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_member_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::EmailApi.send_email_change_instructions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::EmailApi#send_email_change_instructions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

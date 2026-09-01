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
    class OwnerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send the owner change instructions
    # Sends the instructions to change the DocSpace owner.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-owner-change-instructions/
    # @param [Hash] opts the optional parameters
    # @option opts [OwnerIdSettingsRequestDto] :owner_id_settings_request_dto 
    # @return [OwnerChangeInstructionsWrapper]
    def send_owner_change_instructions(opts = {})
      data, _status_code, _headers = send_owner_change_instructions_with_http_info(opts)
      data
    end

    # Send the owner change instructions
    # Sends the instructions to change the DocSpace owner.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-owner-change-instructions/
    # @param [Hash] opts the optional parameters
    # @option opts [OwnerIdSettingsRequestDto] :owner_id_settings_request_dto 
    # @return [Array<(OwnerChangeInstructionsWrapper, Integer, Hash)>] OwnerChangeInstructionsWrapper data, response status code and response headers
    def send_owner_change_instructions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::OwnerApi.send_owner_change_instructions ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/owner'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'owner_id_settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'OwnerChangeInstructionsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::OwnerApi.send_owner_change_instructions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::OwnerApi#send_owner_change_instructions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the portal owner
    # Updates the current portal owner with a new one specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-portal-owner/
    # @param [Hash] opts the optional parameters
    # @option opts [OwnerIdSettingsRequestDto] :owner_id_settings_request_dto 
    # @return [nil]
    def update_portal_owner(opts = {})
      update_portal_owner_with_http_info(opts)
      nil
    end

    # Update the portal owner
    # Updates the current portal owner with a new one specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-portal-owner/
    # @param [Hash] opts the optional parameters
    # @option opts [OwnerIdSettingsRequestDto] :owner_id_settings_request_dto 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_portal_owner_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::OwnerApi.update_portal_owner ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/owner'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'owner_id_settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::OwnerApi.update_portal_owner",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::OwnerApi#update_portal_owner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

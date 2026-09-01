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
    class QuotaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Reset a user quota limit
    # Resets a quota limit of users with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-users-quota/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMembersQuotaRequestDto] :update_members_quota_request_dto 
    # @return [EmployeeFullArrayWrapper]
    def reset_users_quota(opts = {})
      data, _status_code, _headers = reset_users_quota_with_http_info(opts)
      data
    end

    # Reset a user quota limit
    # Resets a quota limit of users with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-users-quota/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMembersQuotaRequestDto] :update_members_quota_request_dto 
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def reset_users_quota_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::QuotaApi.reset_users_quota ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/resetquota'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_members_quota_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeFullArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::QuotaApi.reset_users_quota",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::QuotaApi#reset_users_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change a user quota limit
    # Changes a quota limit for the users with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-quota/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMembersQuotaRequestDto] :update_members_quota_request_dto 
    # @return [EmployeeFullArrayWrapper]
    def update_user_quota(opts = {})
      data, _status_code, _headers = update_user_quota_with_http_info(opts)
      data
    end

    # Change a user quota limit
    # Changes a quota limit for the users with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-quota/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMembersQuotaRequestDto] :update_members_quota_request_dto 
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def update_user_quota_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::QuotaApi.update_user_quota ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/userquota'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_members_quota_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeFullArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::QuotaApi.update_user_quota",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::QuotaApi#update_user_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

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
  module OAuth20
    class ScopeManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List available OAuth2 scopes
    # Retrieves a list of all available OAuth2 scopes for the specified tenant. The scopes define the permissions that can be requested by OAuth2 clients. The list is ordered alphabetically, with the 'openid' scope always appearing first.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-scopes/
    # @param [Hash] opts the optional parameters
    # @return [ScopeResponse]
    def get_scopes(opts = {})
      data, _status_code, _headers = get_scopes_with_http_info(opts)
      data
    end

    # List available OAuth2 scopes
    # Retrieves a list of all available OAuth2 scopes for the specified tenant. The scopes define the permissions that can be requested by OAuth2 clients. The list is ordered alphabetically, with the 'openid' scope always appearing first.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-scopes/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ScopeResponse, Integer, Hash)>] ScopeResponse data, response status code and response headers
    def get_scopes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OAuth20::ScopeManagementApi.get_scopes ...'
      end
      # resource path
      local_var_path = '/api/2.0/scopes'

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
      return_type = opts[:debug_return_type] || 'ScopeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['x-signature']

      new_options = opts.merge(
        :operation => :"OAuth20::ScopeManagementApi.get_scopes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuth20::ScopeManagementApi#get_scopes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

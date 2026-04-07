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
  module Capabilities
    class CapabilitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get portal capabilities
    # Returns the information about portal capabilities.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-capabilities/
    # @param [Hash] opts the optional parameters
    # @return [CapabilitiesWrapper]
    def get_portal_capabilities(opts = {})
      data, _status_code, _headers = get_portal_capabilities_with_http_info(opts)
      data
    end

    # Get portal capabilities
    # Returns the information about portal capabilities.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-capabilities/
    # @param [Hash] opts the optional parameters
    # @return [Array<(CapabilitiesWrapper, Integer, Hash)>] CapabilitiesWrapper data, response status code and response headers
    def get_portal_capabilities_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Capabilities::CapabilitiesApi.get_portal_capabilities ...'
      end
      # resource path
      local_var_path = '/api/2.0/capabilities'

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
      return_type = opts[:debug_return_type] || 'CapabilitiesWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Capabilities::CapabilitiesApi.get_portal_capabilities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Capabilities::CapabilitiesApi#get_portal_capabilities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

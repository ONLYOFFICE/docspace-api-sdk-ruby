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
  module ThirdParty
    class ThirdPartyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get provider consent URL
    # Builds and returns, as a string, the OAuth 2.0 consent URL of one external provider - the address a client  opens in a browser so that the user can grant this portal access to their account. The provider's client id,  secret and redirect URI have to be saved for the portal first with `POST api/2.0/settings/authservice`;  without them the URL has no `client_id` and the provider refuses it. Any signed-in portal user may call it,  and the call is read-only and safe to repeat. The URL carries `response_type=code`, the portal's `client_id`,  the provider's `redirect_uri`, the scope the portal needs (Drive with offline access for Google, `signature`  for DocuSign) and a `state` pointing back at this portal's `thirdparty/{provider}/code` page, where the code  arrives in the URL fragment as `#code=...`, or `#error/...` when the user declines. Only Google `1`, Dropbox  `2`, Docusign `3`, Box `4`, OneDrive `5`, Wordpress `10` and Github `13` produce a URL; any other value is  answered with 200 and no URL instead of an error. With `desktop=true`, the whole query string is copied into  `state` and comes back on the callback. The code is not exchanged here: pass it on as `token` to  `POST api/2.0/files/thirdparty` to connect the account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-code/
    # @param provider [LoginProvider] The provider whose consent screen is wanted. Only Google, Dropbox, Docusign, Box, OneDrive, Wordpress and  Github produce a URL; any other provider is answered with 200 and no URL rather than an error. The provider  credentials have to be saved with `POST api/2.0/settings/authservice` first, or the URL comes back without a  client identifier and the provider refuses it.
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def get_third_party_code(provider, opts = {})
      data, _status_code, _headers = get_third_party_code_with_http_info(provider, opts)
      data
    end

    # Get provider consent URL
    # Builds and returns, as a string, the OAuth 2.0 consent URL of one external provider - the address a client  opens in a browser so that the user can grant this portal access to their account. The provider's client id,  secret and redirect URI have to be saved for the portal first with `POST api/2.0/settings/authservice`;  without them the URL has no `client_id` and the provider refuses it. Any signed-in portal user may call it,  and the call is read-only and safe to repeat. The URL carries `response_type=code`, the portal's `client_id`,  the provider's `redirect_uri`, the scope the portal needs (Drive with offline access for Google, `signature`  for DocuSign) and a `state` pointing back at this portal's `thirdparty/{provider}/code` page, where the code  arrives in the URL fragment as `#code=...`, or `#error/...` when the user declines. Only Google `1`, Dropbox  `2`, Docusign `3`, Box `4`, OneDrive `5`, Wordpress `10` and Github `13` produce a URL; any other value is  answered with 200 and no URL instead of an error. With `desktop=true`, the whole query string is copied into  `state` and comes back on the callback. The code is not exchanged here: pass it on as `token` to  `POST api/2.0/files/thirdparty` to connect the account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-code/
    # @param provider [LoginProvider] The provider whose consent screen is wanted. Only Google, Dropbox, Docusign, Box, OneDrive, Wordpress and  Github produce a URL; any other provider is answered with 200 and no URL rather than an error. The provider  credentials have to be saved with `POST api/2.0/settings/authservice` first, or the URL comes back without a  client identifier and the provider refuses it.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def get_third_party_code_with_http_info(provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ThirdParty::ThirdPartyApi.get_third_party_code ...'
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        fail ArgumentError, "Missing the required parameter 'provider' when calling ThirdParty::ThirdPartyApi.get_third_party_code"
      end
      # resource path
      local_var_path = '/api/2.0/thirdparty/{provider}'.sub('{' + 'provider' + '}', CGI.escape(provider.to_s))

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
        :operation => :"ThirdParty::ThirdPartyApi.get_third_party_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ThirdParty::ThirdPartyApi#get_third_party_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

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
    class LicenseApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Activate a license
    # Activates a license for the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/accept-license/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def accept_license(opts = {})
      data, _status_code, _headers = accept_license_with_http_info(opts)
      data
    end

    # Activate a license
    # Activates a license for the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/accept-license/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def accept_license_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::LicenseApi.accept_license ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/license/accept'

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
        :operation => :"Settings::LicenseApi.accept_license",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::LicenseApi#accept_license\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request a license
    # Requests a portal license if necessary.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-license-required/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def get_is_license_required(opts = {})
      data, _status_code, _headers = get_is_license_required_with_http_info(opts)
      data
    end

    # Request a license
    # Requests a portal license if necessary.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-license-required/
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def get_is_license_required_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::LicenseApi.get_is_license_required ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/license/required'

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
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Settings::LicenseApi.get_is_license_required",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::LicenseApi#get_is_license_required\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Refresh the license
    # Refreshes the portal license.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/refresh-license/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def refresh_license(opts = {})
      data, _status_code, _headers = refresh_license_with_http_info(opts)
      data
    end

    # Refresh the license
    # Refreshes the portal license.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/refresh-license/
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def refresh_license_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::LicenseApi.refresh_license ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/license/refresh'

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
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::LicenseApi.refresh_license",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::LicenseApi#refresh_license\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a license
    # Uploads a portal license specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-license/
    # @param files [Array<File>] The list of license files to be uploaded.
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def upload_license(files, opts = {})
      data, _status_code, _headers = upload_license_with_http_info(files, opts)
      data
    end

    # Upload a license
    # Uploads a portal license specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-license/
    # @param files [Array<File>] The list of license files to be uploaded.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def upload_license_with_http_info(files, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::LicenseApi.upload_license ...'
      end
      # verify the required parameter 'files' is set
      if @api_client.config.client_side_validation && files.nil?
        fail ArgumentError, "Missing the required parameter 'files' when calling Settings::LicenseApi.upload_license"
      end
      # resource path
      local_var_path = '/api/2.0/settings/license'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['Files'] = @api_client.build_collection_param(files, :multi)

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::LicenseApi.upload_license",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::LicenseApi#upload_license\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

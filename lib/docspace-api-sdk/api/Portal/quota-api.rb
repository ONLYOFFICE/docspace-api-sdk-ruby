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
  module Portal
    class QuotaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a portal quota
    # Returns the current portal quota.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-quota/
    # @param [Hash] opts the optional parameters
    # @return [TenantQuotaWrapper]
    def get_portal_quota(opts = {})
      data, _status_code, _headers = get_portal_quota_with_http_info(opts)
      data
    end

    # Get a portal quota
    # Returns the current portal quota.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-quota/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantQuotaWrapper, Integer, Hash)>] TenantQuotaWrapper data, response status code and response headers
    def get_portal_quota_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::QuotaApi.get_portal_quota ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/quota'

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
      return_type = opts[:debug_return_type] || 'TenantQuotaWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::QuotaApi.get_portal_quota",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::QuotaApi#get_portal_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a portal tariff
    # Returns the current portal tariff.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-tariff/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh The value indicating whether the current portal tariff information should be refreshed.
    # @return [TariffWrapper]
    def get_portal_tariff(opts = {})
      data, _status_code, _headers = get_portal_tariff_with_http_info(opts)
      data
    end

    # Get a portal tariff
    # Returns the current portal tariff.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-tariff/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh The value indicating whether the current portal tariff information should be refreshed.
    # @return [Array<(TariffWrapper, Integer, Hash)>] TariffWrapper data, response status code and response headers
    def get_portal_tariff_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::QuotaApi.get_portal_tariff ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/tariff'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'refresh'] = opts[:'refresh'] if !opts[:'refresh'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TariffWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::QuotaApi.get_portal_tariff",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::QuotaApi#get_portal_tariff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the portal used space
    # Returns the used space of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-used-space/
    # @param [Hash] opts the optional parameters
    # @return [DoubleWrapper]
    def get_portal_used_space(opts = {})
      data, _status_code, _headers = get_portal_used_space_with_http_info(opts)
      data
    end

    # Get the portal used space
    # Returns the used space of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-used-space/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DoubleWrapper, Integer, Hash)>] DoubleWrapper data, response status code and response headers
    def get_portal_used_space_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::QuotaApi.get_portal_used_space ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/usedspace'

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
      return_type = opts[:debug_return_type] || 'DoubleWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::QuotaApi.get_portal_used_space",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::QuotaApi#get_portal_used_space\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the recommended quota
    # Returns the recommended quota for the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-right-quota/
    # @param [Hash] opts the optional parameters
    # @return [TenantQuotaWrapper]
    def get_right_quota(opts = {})
      data, _status_code, _headers = get_right_quota_with_http_info(opts)
      data
    end

    # Get the recommended quota
    # Returns the recommended quota for the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-right-quota/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantQuotaWrapper, Integer, Hash)>] TenantQuotaWrapper data, response status code and response headers
    def get_right_quota_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::QuotaApi.get_right_quota ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/quota/right'

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
      return_type = opts[:debug_return_type] || 'TenantQuotaWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::QuotaApi.get_right_quota",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::QuotaApi#get_right_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get upcoming payments
    # Returns the list of upcoming payments based on the active quotas of the current portal tariff.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-upcoming-payments/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh The value indicating whether the current portal tariff information should be refreshed.
    # @return [UpcomingPaymentArrayWrapper]
    def get_upcoming_payments(opts = {})
      data, _status_code, _headers = get_upcoming_payments_with_http_info(opts)
      data
    end

    # Get upcoming payments
    # Returns the list of upcoming payments based on the active quotas of the current portal tariff.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-upcoming-payments/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh The value indicating whether the current portal tariff information should be refreshed.
    # @return [Array<(UpcomingPaymentArrayWrapper, Integer, Hash)>] UpcomingPaymentArrayWrapper data, response status code and response headers
    def get_upcoming_payments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::QuotaApi.get_upcoming_payments ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/tariff/upcoming'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'refresh'] = opts[:'refresh'] if !opts[:'refresh'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UpcomingPaymentArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::QuotaApi.get_upcoming_payments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::QuotaApi#get_upcoming_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

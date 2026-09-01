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
    class DocsCloudApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Calculate the DocsCloud subscription switch cost
    # Calculates the top-up cost of switching the current DocsCloud subscription to DocsCloudDevPack,  without making any changes. The quantity is taken from the currently purchased DocsCloud quota.  Only the portal payer can perform this action.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/calculate-dev-pack/
    # @param [Hash] opts the optional parameters
    # @option opts [DocsCloudDevPackRequestDto] :docs_cloud_dev_pack_request_dto 
    # @return [PaymentCalculationWrapper]
    def calculate_dev_pack(opts = {})
      data, _status_code, _headers = calculate_dev_pack_with_http_info(opts)
      data
    end

    # Calculate the DocsCloud subscription switch cost
    # Calculates the top-up cost of switching the current DocsCloud subscription to DocsCloudDevPack,  without making any changes. The quantity is taken from the currently purchased DocsCloud quota.  Only the portal payer can perform this action.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/calculate-dev-pack/
    # @param [Hash] opts the optional parameters
    # @option opts [DocsCloudDevPackRequestDto] :docs_cloud_dev_pack_request_dto 
    # @return [Array<(PaymentCalculationWrapper, Integer, Hash)>] PaymentCalculationWrapper data, response status code and response headers
    def calculate_dev_pack_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::DocsCloudApi.calculate_dev_pack ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/docscloud/calculatedevpack'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'docs_cloud_dev_pack_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentCalculationWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::DocsCloudApi.calculate_dev_pack",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::DocsCloudApi#calculate_dev_pack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start the DocsCloud tenant quota report generation
    # Starts generating the DocsCloud user quota report as an xlsx file and saves it in My Documents.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-tenant-quota-report/
    # @param [Hash] opts the optional parameters
    # @return [DocumentBuilderTaskWrapper]
    def create_tenant_quota_report(opts = {})
      data, _status_code, _headers = create_tenant_quota_report_with_http_info(opts)
      data
    end

    # Start the DocsCloud tenant quota report generation
    # Starts generating the DocsCloud user quota report as an xlsx file and saves it in My Documents.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-tenant-quota-report/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentBuilderTaskWrapper, Integer, Hash)>] DocumentBuilderTaskWrapper data, response status code and response headers
    def create_tenant_quota_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::DocsCloudApi.create_tenant_quota_report ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/docscloud/tenant/quota/report'

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
      return_type = opts[:debug_return_type] || 'DocumentBuilderTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::DocsCloudApi.create_tenant_quota_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::DocsCloudApi#create_tenant_quota_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the DocsCloud tenant
    # Returns the DocsCloud tenant of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to bypass the cache and request the tenant from DocsCloud again. (default to false)
    # @return [DocsCloudTenantWrapper]
    def get_tenant(opts = {})
      data, _status_code, _headers = get_tenant_with_http_info(opts)
      data
    end

    # Get the DocsCloud tenant
    # Returns the DocsCloud tenant of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to bypass the cache and request the tenant from DocsCloud again. (default to false)
    # @return [Array<(DocsCloudTenantWrapper, Integer, Hash)>] DocsCloudTenantWrapper data, response status code and response headers
    def get_tenant_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::DocsCloudApi.get_tenant ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/docscloud/tenant'

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
      return_type = opts[:debug_return_type] || 'DocsCloudTenantWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::DocsCloudApi.get_tenant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::DocsCloudApi#get_tenant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the DocsCloud tenant configuration
    # Returns the DocsCloud tenant configuration of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-config/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to bypass the cache and request the tenant configuration from DocsCloud again. (default to false)
    # @return [DocsCloudConfigWrapper]
    def get_tenant_config(opts = {})
      data, _status_code, _headers = get_tenant_config_with_http_info(opts)
      data
    end

    # Get the DocsCloud tenant configuration
    # Returns the DocsCloud tenant configuration of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-config/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to bypass the cache and request the tenant configuration from DocsCloud again. (default to false)
    # @return [Array<(DocsCloudConfigWrapper, Integer, Hash)>] DocsCloudConfigWrapper data, response status code and response headers
    def get_tenant_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::DocsCloudApi.get_tenant_config ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/docscloud/tenant/config'

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
      return_type = opts[:debug_return_type] || 'DocsCloudConfigWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::DocsCloudApi.get_tenant_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::DocsCloudApi#get_tenant_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the DocsCloud tenant information
    # Returns the DocsCloud license and server information with usage statistics of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-info/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to bypass the cache and request the tenant information from DocsCloud again. (default to false)
    # @return [DocsCloudTenantInfoWrapper]
    def get_tenant_info(opts = {})
      data, _status_code, _headers = get_tenant_info_with_http_info(opts)
      data
    end

    # Get the DocsCloud tenant information
    # Returns the DocsCloud license and server information with usage statistics of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-info/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to bypass the cache and request the tenant information from DocsCloud again. (default to false)
    # @return [Array<(DocsCloudTenantInfoWrapper, Integer, Hash)>] DocsCloudTenantInfoWrapper data, response status code and response headers
    def get_tenant_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::DocsCloudApi.get_tenant_info ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/docscloud/tenant/info'

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
      return_type = opts[:debug_return_type] || 'DocsCloudTenantInfoWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::DocsCloudApi.get_tenant_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::DocsCloudApi#get_tenant_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the DocsCloud tenant quota
    # Returns the DocsCloud user quota (active users) of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-quota/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to bypass the cache and request the user quota from DocsCloud again. (default to false)
    # @return [DocsCloudQuotaWrapper]
    def get_tenant_quota(opts = {})
      data, _status_code, _headers = get_tenant_quota_with_http_info(opts)
      data
    end

    # Get the DocsCloud tenant quota
    # Returns the DocsCloud user quota (active users) of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-quota/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to bypass the cache and request the user quota from DocsCloud again. (default to false)
    # @return [Array<(DocsCloudQuotaWrapper, Integer, Hash)>] DocsCloudQuotaWrapper data, response status code and response headers
    def get_tenant_quota_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::DocsCloudApi.get_tenant_quota ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/docscloud/tenant/quota'

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
      return_type = opts[:debug_return_type] || 'DocsCloudQuotaWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::DocsCloudApi.get_tenant_quota",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::DocsCloudApi#get_tenant_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the status of the DocsCloud tenant quota report generation
    # Returns the status of generating the DocsCloud user quota report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-quota-report/
    # @param [Hash] opts the optional parameters
    # @return [DocumentBuilderTaskWrapper]
    def get_tenant_quota_report(opts = {})
      data, _status_code, _headers = get_tenant_quota_report_with_http_info(opts)
      data
    end

    # Get the status of the DocsCloud tenant quota report generation
    # Returns the status of generating the DocsCloud user quota report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-quota-report/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentBuilderTaskWrapper, Integer, Hash)>] DocumentBuilderTaskWrapper data, response status code and response headers
    def get_tenant_quota_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::DocsCloudApi.get_tenant_quota_report ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/docscloud/tenant/quota/report'

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
      return_type = opts[:debug_return_type] || 'DocumentBuilderTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::DocsCloudApi.get_tenant_quota_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::DocsCloudApi#get_tenant_quota_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the DocsCloud tenant usage
    # Returns the DocsCloud usage statistics of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-usage/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to bypass the cache and request the usage statistics from DocsCloud again. (default to false)
    # @return [DocsCloudUsageWrapper]
    def get_tenant_usage(opts = {})
      data, _status_code, _headers = get_tenant_usage_with_http_info(opts)
      data
    end

    # Get the DocsCloud tenant usage
    # Returns the DocsCloud usage statistics of the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-usage/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to bypass the cache and request the usage statistics from DocsCloud again. (default to false)
    # @return [Array<(DocsCloudUsageWrapper, Integer, Hash)>] DocsCloudUsageWrapper data, response status code and response headers
    def get_tenant_usage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::DocsCloudApi.get_tenant_usage ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/docscloud/tenant/usage'

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
      return_type = opts[:debug_return_type] || 'DocsCloudUsageWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::DocsCloudApi.get_tenant_usage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::DocsCloudApi#get_tenant_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start the DocsCloud trial
    # Starts the DocsCloud trial.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-docs-cloud-trial/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def start_docs_cloud_trial(opts = {})
      data, _status_code, _headers = start_docs_cloud_trial_with_http_info(opts)
      data
    end

    # Start the DocsCloud trial
    # Starts the DocsCloud trial.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-docs-cloud-trial/
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def start_docs_cloud_trial_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::DocsCloudApi.start_docs_cloud_trial ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/docscloud/trial'

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
        :operation => :"Settings::DocsCloudApi.start_docs_cloud_trial",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::DocsCloudApi#start_docs_cloud_trial\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Switch the DocsCloud subscription to DocsCloudDevPack
    # Switches the current DocsCloud subscription to DocsCloudDevPack: charges the price difference  from the wallet and transfers the subscription (with its license) to the target product.  The quantity is taken from the currently purchased DocsCloud quota.  Only the portal payer can perform this action.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/switch-to-dev-pack/
    # @param [Hash] opts the optional parameters
    # @option opts [DocsCloudDevPackRequestDto] :docs_cloud_dev_pack_request_dto 
    # @return [BooleanWrapper]
    def switch_to_dev_pack(opts = {})
      data, _status_code, _headers = switch_to_dev_pack_with_http_info(opts)
      data
    end

    # Switch the DocsCloud subscription to DocsCloudDevPack
    # Switches the current DocsCloud subscription to DocsCloudDevPack: charges the price difference  from the wallet and transfers the subscription (with its license) to the target product.  The quantity is taken from the currently purchased DocsCloud quota.  Only the portal payer can perform this action.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/switch-to-dev-pack/
    # @param [Hash] opts the optional parameters
    # @option opts [DocsCloudDevPackRequestDto] :docs_cloud_dev_pack_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def switch_to_dev_pack_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::DocsCloudApi.switch_to_dev_pack ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/docscloud/switchtodevpack'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'docs_cloud_dev_pack_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::DocsCloudApi.switch_to_dev_pack",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::DocsCloudApi#switch_to_dev_pack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terminate the DocsCloud tenant quota report generation
    # Terminates generating the DocsCloud user quota report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tenant-quota-report/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def terminate_tenant_quota_report(opts = {})
      terminate_tenant_quota_report_with_http_info(opts)
      nil
    end

    # Terminate the DocsCloud tenant quota report generation
    # Terminates generating the DocsCloud user quota report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tenant-quota-report/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def terminate_tenant_quota_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::DocsCloudApi.terminate_tenant_quota_report ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/docscloud/tenant/quota/report'

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::DocsCloudApi.terminate_tenant_quota_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::DocsCloudApi#terminate_tenant_quota_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the DocsCloud tenant configuration
    # Updates the DocsCloud tenant configuration of the current portal with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tenant-config/
    # @param [Hash] opts the optional parameters
    # @option opts [DocsCloudConfig] :docs_cloud_config 
    # @return [DocsCloudConfigWrapper]
    def update_tenant_config(opts = {})
      data, _status_code, _headers = update_tenant_config_with_http_info(opts)
      data
    end

    # Update the DocsCloud tenant configuration
    # Updates the DocsCloud tenant configuration of the current portal with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tenant-config/
    # @param [Hash] opts the optional parameters
    # @option opts [DocsCloudConfig] :docs_cloud_config 
    # @return [Array<(DocsCloudConfigWrapper, Integer, Hash)>] DocsCloudConfigWrapper data, response status code and response headers
    def update_tenant_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::DocsCloudApi.update_tenant_config ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/docscloud/tenant/config'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'docs_cloud_config'])

      # return_type
      return_type = opts[:debug_return_type] || 'DocsCloudConfigWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::DocsCloudApi.update_tenant_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::DocsCloudApi#update_tenant_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

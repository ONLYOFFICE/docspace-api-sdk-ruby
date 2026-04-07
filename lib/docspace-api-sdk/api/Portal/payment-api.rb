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
    class PaymentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Purchases a wallet service with the specified quantity.
    # This method processes a payment for a wallet service using the configured payment method.  Requires the tariff service to be configured and a valid payment method to be set for the customer.  Rate limiting is applied according to the payments API policy.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/buy-wallet-service/
    # @param [Hash] opts the optional parameters
    # @option opts [BuyWalletServiceRequestDto] :buy_wallet_service_request_dto 
    # @return [ServicePaymentWrapper]
    def buy_wallet_service(opts = {})
      data, _status_code, _headers = buy_wallet_service_with_http_info(opts)
      data
    end

    # Purchases a wallet service with the specified quantity.
    # This method processes a payment for a wallet service using the configured payment method.  Requires the tariff service to be configured and a valid payment method to be set for the customer.  Rate limiting is applied according to the payments API policy.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/buy-wallet-service/
    # @param [Hash] opts the optional parameters
    # @option opts [BuyWalletServiceRequestDto] :buy_wallet_service_request_dto 
    # @return [Array<(ServicePaymentWrapper, Integer, Hash)>] ServicePaymentWrapper data, response status code and response headers
    def buy_wallet_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.buy_wallet_service ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/buywalletservice'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'buy_wallet_service_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'ServicePaymentWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.buy_wallet_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#buy_wallet_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Calculate the wallet payment amount
    # Calculates an amount of the wallet payment with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/calculate-wallet-payment/
    # @param [Hash] opts the optional parameters
    # @option opts [WalletQuantityRequestDto] :wallet_quantity_request_dto 
    # @return [PaymentCalculationWrapper]
    def calculate_wallet_payment(opts = {})
      data, _status_code, _headers = calculate_wallet_payment_with_http_info(opts)
      data
    end

    # Calculate the wallet payment amount
    # Calculates an amount of the wallet payment with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/calculate-wallet-payment/
    # @param [Hash] opts the optional parameters
    # @option opts [WalletQuantityRequestDto] :wallet_quantity_request_dto 
    # @return [Array<(PaymentCalculationWrapper, Integer, Hash)>] PaymentCalculationWrapper data, response status code and response headers
    def calculate_wallet_payment_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.calculate_wallet_payment ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/calculatewallet'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'wallet_quantity_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentCalculationWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.calculate_wallet_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#calculate_wallet_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change tenant wallet service state
    # Changes the state of a wallet service for the current tenant.  Requires permission to edit portal settings and a configured tariff service.  Adds or removes the specified service from the enabled services list based on the enabled flag.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-tenant-wallet-service-state/
    # @param [Hash] opts the optional parameters
    # @option opts [ChangeWalletServiceStateRequestDto] :change_wallet_service_state_request_dto 
    # @return [TenantWalletServiceSettingsWrapper]
    def change_tenant_wallet_service_state(opts = {})
      data, _status_code, _headers = change_tenant_wallet_service_state_with_http_info(opts)
      data
    end

    # Change tenant wallet service state
    # Changes the state of a wallet service for the current tenant.  Requires permission to edit portal settings and a configured tariff service.  Adds or removes the specified service from the enabled services list based on the enabled flag.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-tenant-wallet-service-state/
    # @param [Hash] opts the optional parameters
    # @option opts [ChangeWalletServiceStateRequestDto] :change_wallet_service_state_request_dto 
    # @return [Array<(TenantWalletServiceSettingsWrapper, Integer, Hash)>] TenantWalletServiceSettingsWrapper data, response status code and response headers
    def change_tenant_wallet_service_state_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.change_tenant_wallet_service_state ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/servicestate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'change_wallet_service_state_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TenantWalletServiceSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.change_tenant_wallet_service_state",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#change_tenant_wallet_service_state\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start the customer operations report generation
    # Starts generating a customer operations report as an xlsx file and saves it in Documents.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-operations-report/
    # @param [Hash] opts the optional parameters
    # @option opts [CustomerOperationsReportRequestDto] :customer_operations_report_request_dto 
    # @return [DocumentBuilderTaskWrapper]
    def create_customer_operations_report(opts = {})
      data, _status_code, _headers = create_customer_operations_report_with_http_info(opts)
      data
    end

    # Start the customer operations report generation
    # Starts generating a customer operations report as an xlsx file and saves it in Documents.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-operations-report/
    # @param [Hash] opts the optional parameters
    # @option opts [CustomerOperationsReportRequestDto] :customer_operations_report_request_dto 
    # @return [Array<(DocumentBuilderTaskWrapper, Integer, Hash)>] DocumentBuilderTaskWrapper data, response status code and response headers
    def create_customer_operations_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.create_customer_operations_report ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/customer/operationsreport'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'customer_operations_report_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'DocumentBuilderTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.create_customer_operations_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#create_customer_operations_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get AI model prices
    # Retrieves the pricing information for AI models including chat, embedding, and web search services.  The prices are returned in the configured currency and normalized per million tokens.  Requires administrator permissions to access.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-prices/
    # @param [Hash] opts the optional parameters
    # @return [AiPricesResponseWrapper]
    def get_ai_prices(opts = {})
      data, _status_code, _headers = get_ai_prices_with_http_info(opts)
      data
    end

    # Get AI model prices
    # Retrieves the pricing information for AI models including chat, embedding, and web search services.  The prices are returned in the configured currency and normalized per million tokens.  Requires administrator permissions to access.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-prices/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiPricesResponseWrapper, Integer, Hash)>] AiPricesResponseWrapper data, response status code and response headers
    def get_ai_prices_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_ai_prices ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/ai-prices'

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
      return_type = opts[:debug_return_type] || 'AiPricesResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_ai_prices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_ai_prices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the checkout setup page URL
    # Returns the URL to the checkout setup page.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-checkout-setup-url/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :back_url The URL where the user will be redirected after completing the setup.
    # @return [StringWrapper]
    def get_checkout_setup_url(opts = {})
      data, _status_code, _headers = get_checkout_setup_url_with_http_info(opts)
      data
    end

    # Get the checkout setup page URL
    # Returns the URL to the checkout setup page.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-checkout-setup-url/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :back_url The URL where the user will be redirected after completing the setup.
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def get_checkout_setup_url_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_checkout_setup_url ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/checkoutsetupurl'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'BackUrl'] = opts[:'back_url'] if !opts[:'back_url'].nil?

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
        :operation => :"Portal::PaymentApi.get_checkout_setup_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_checkout_setup_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the customer balance
    # Returns the customer balance from the accounting service.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-balance/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to refresh the payment information cache or not.
    # @return [BalanceWrapper]
    def get_customer_balance(opts = {})
      data, _status_code, _headers = get_customer_balance_with_http_info(opts)
      data
    end

    # Get the customer balance
    # Returns the customer balance from the accounting service.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-balance/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to refresh the payment information cache or not.
    # @return [Array<(BalanceWrapper, Integer, Hash)>] BalanceWrapper data, response status code and response headers
    def get_customer_balance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_customer_balance ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/customer/balance'

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
      return_type = opts[:debug_return_type] || 'BalanceWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_customer_balance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_customer_balance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the customer information
    # Returns the customer information.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-info/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to refresh the payment information cache or not.
    # @return [CustomerInfoWrapper]
    def get_customer_info(opts = {})
      data, _status_code, _headers = get_customer_info_with_http_info(opts)
      data
    end

    # Get the customer information
    # Returns the customer information.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-info/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to refresh the payment information cache or not.
    # @return [Array<(CustomerInfoWrapper, Integer, Hash)>] CustomerInfoWrapper data, response status code and response headers
    def get_customer_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_customer_info ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/customerinfo'

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
      return_type = opts[:debug_return_type] || 'CustomerInfoWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_customer_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_customer_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the customer operations
    # Returns the report of customer operations from the accounting service.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-operations/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The number of items to skip for pagination. The default value is 0.
    # @option opts [Integer] :limit The maximum number of items to return for pagination. The default value is 25.
    # @option opts [String] :service_name The service name.
    # @option opts [Boolean] :write_off_service_quota Write-off of the quota for the service
    # @option opts [Time] :start_date The report start date.
    # @option opts [Time] :end_date The report end date.
    # @option opts [String] :participant_name The participant name.
    # @option opts [Boolean] :credit Specifies whether to include credit operations in the report.
    # @option opts [Boolean] :debit Specifies whether to include debit operations in the report.
    # @option opts [OperationType] :types List of operation types to filter by.
    # @option opts [OperationStatus] :status List of operation status to filter by.
    # @option opts [String] :order_by The field to order by.
    # @option opts [OperationOrderType] :order_type Order direction: Ascending or Descending.
    # @return [ReportWrapper]
    def get_customer_operations(opts = {})
      data, _status_code, _headers = get_customer_operations_with_http_info(opts)
      data
    end

    # Get the customer operations
    # Returns the report of customer operations from the accounting service.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-operations/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The number of items to skip for pagination. The default value is 0.
    # @option opts [Integer] :limit The maximum number of items to return for pagination. The default value is 25.
    # @option opts [String] :service_name The service name.
    # @option opts [Boolean] :write_off_service_quota Write-off of the quota for the service
    # @option opts [Time] :start_date The report start date.
    # @option opts [Time] :end_date The report end date.
    # @option opts [String] :participant_name The participant name.
    # @option opts [Boolean] :credit Specifies whether to include credit operations in the report.
    # @option opts [Boolean] :debit Specifies whether to include debit operations in the report.
    # @option opts [OperationType] :types List of operation types to filter by.
    # @option opts [OperationStatus] :status List of operation status to filter by.
    # @option opts [String] :order_by The field to order by.
    # @option opts [OperationOrderType] :order_type Order direction: Ascending or Descending.
    # @return [Array<(ReportWrapper, Integer, Hash)>] ReportWrapper data, response status code and response headers
    def get_customer_operations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_customer_operations ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/customer/operations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'ServiceName'] = opts[:'service_name'] if !opts[:'service_name'].nil?
      query_params[:'WriteOffServiceQuota'] = opts[:'write_off_service_quota'] if !opts[:'write_off_service_quota'].nil?
      query_params[:'StartDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'EndDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'ParticipantName'] = opts[:'participant_name'] if !opts[:'participant_name'].nil?
      query_params[:'Credit'] = opts[:'credit'] if !opts[:'credit'].nil?
      query_params[:'Debit'] = opts[:'debit'] if !opts[:'debit'].nil?
      query_params[:'Types'] = opts[:'types'] if !opts[:'types'].nil?
      query_params[:'Status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'OrderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'OrderType'] = opts[:'order_type'] if !opts[:'order_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ReportWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_customer_operations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_customer_operations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the status of the customer operations report generation
    # Returns the status of generating a customer operations report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-operations-report/
    # @param [Hash] opts the optional parameters
    # @return [DocumentBuilderTaskWrapper]
    def get_customer_operations_report(opts = {})
      data, _status_code, _headers = get_customer_operations_report_with_http_info(opts)
      data
    end

    # Get the status of the customer operations report generation
    # Returns the status of generating a customer operations report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-operations-report/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentBuilderTaskWrapper, Integer, Hash)>] DocumentBuilderTaskWrapper data, response status code and response headers
    def get_customer_operations_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_customer_operations_report ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/customer/operationsreport'

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
        :operation => :"Portal::PaymentApi.get_customer_operations_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_customer_operations_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the service quota
    # Returns the service quota from the accounting service.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-service-quota/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :service_name The service name.
    # @option opts [Boolean] :refresh Specifies whether to refresh the payment information cache or not.
    # @return [BalanceWrapper]
    def get_customer_service_quota(opts = {})
      data, _status_code, _headers = get_customer_service_quota_with_http_info(opts)
      data
    end

    # Get the service quota
    # Returns the service quota from the accounting service.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-service-quota/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :service_name The service name.
    # @option opts [Boolean] :refresh Specifies whether to refresh the payment information cache or not.
    # @return [Array<(BalanceWrapper, Integer, Hash)>] BalanceWrapper data, response status code and response headers
    def get_customer_service_quota_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_customer_service_quota ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/customer/servicequota'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'serviceName'] = opts[:'service_name'] if !opts[:'service_name'].nil?
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
      return_type = opts[:debug_return_type] || 'BalanceWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_customer_service_quota",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_customer_service_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the payment account
    # Returns the URL to the payment account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-account/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :back_url The URL where the user will be redirected after payment processing.
    # @return [StringWrapper]
    def get_payment_account(opts = {})
      data, _status_code, _headers = get_payment_account_with_http_info(opts)
      data
    end

    # Get the payment account
    # Returns the URL to the payment account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-account/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :back_url The URL where the user will be redirected after payment processing.
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def get_payment_account_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_payment_account ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/account'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'backUrl'] = opts[:'back_url'] if !opts[:'back_url'].nil?

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
        :operation => :"Portal::PaymentApi.get_payment_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_payment_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get currencies
    # Returns the available portal currencies.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-currencies/
    # @param [Hash] opts the optional parameters
    # @return [CurrenciesArrayWrapper]
    def get_payment_currencies(opts = {})
      data, _status_code, _headers = get_payment_currencies_with_http_info(opts)
      data
    end

    # Get currencies
    # Returns the available portal currencies.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-currencies/
    # @param [Hash] opts the optional parameters
    # @return [Array<(CurrenciesArrayWrapper, Integer, Hash)>] CurrenciesArrayWrapper data, response status code and response headers
    def get_payment_currencies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_payment_currencies ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/currencies'

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
      return_type = opts[:debug_return_type] || 'CurrenciesArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_payment_currencies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_payment_currencies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get quotas
    # Returns the available portal quotas.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-quotas/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :wallet Specifies whether to return the wallet quotas only.
    # @return [QuotaArrayWrapper]
    def get_payment_quotas(opts = {})
      data, _status_code, _headers = get_payment_quotas_with_http_info(opts)
      data
    end

    # Get quotas
    # Returns the available portal quotas.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-quotas/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :wallet Specifies whether to return the wallet quotas only.
    # @return [Array<(QuotaArrayWrapper, Integer, Hash)>] QuotaArrayWrapper data, response status code and response headers
    def get_payment_quotas_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_payment_quotas ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/quotas'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'wallet'] = opts[:'wallet'] if !opts[:'wallet'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'QuotaArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_payment_quotas",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_payment_quotas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the payment page URL
    # Returns the URL to the payment page.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-url/
    # @param [Hash] opts the optional parameters
    # @option opts [PaymentUrlRequestDto] :payment_url_request_dto 
    # @return [StringWrapper]
    def get_payment_url(opts = {})
      data, _status_code, _headers = get_payment_url_with_http_info(opts)
      data
    end

    # Get the payment page URL
    # Returns the URL to the payment page.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-url/
    # @param [Hash] opts the optional parameters
    # @option opts [PaymentUrlRequestDto] :payment_url_request_dto 
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def get_payment_url_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_payment_url ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/url'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'payment_url_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_payment_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_payment_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get prices
    # Returns the available portal prices.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-prices/
    # @param [Hash] opts the optional parameters
    # @return [GetPortalPrices200Response]
    def get_portal_prices(opts = {})
      data, _status_code, _headers = get_portal_prices_with_http_info(opts)
      data
    end

    # Get prices
    # Returns the available portal prices.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-prices/
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetPortalPrices200Response, Integer, Hash)>] GetPortalPrices200Response data, response status code and response headers
    def get_portal_prices_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_portal_prices ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/prices'

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
      return_type = opts[:debug_return_type] || 'GetPortalPrices200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_portal_prices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_portal_prices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get quota payment information
    # Returns the payment information about the current portal quota.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-quota-payment-information/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to refresh the payment information cache or not.
    # @return [QuotaWrapper]
    def get_quota_payment_information(opts = {})
      data, _status_code, _headers = get_quota_payment_information_with_http_info(opts)
      data
    end

    # Get quota payment information
    # Returns the payment information about the current portal quota.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-quota-payment-information/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Specifies whether to refresh the payment information cache or not.
    # @return [Array<(QuotaWrapper, Integer, Hash)>] QuotaWrapper data, response status code and response headers
    def get_quota_payment_information_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_quota_payment_information ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/quota'

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
      return_type = opts[:debug_return_type] || 'QuotaWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_quota_payment_information",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_quota_payment_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get restricted AI models
    # Returns the list of AI chat model IDs that are restricted (disabled) for the current tenant.  Restricted models cannot be used for AI chat conversations by any user within the portal.  Only DocSpace administrators can access this endpoint.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restricted-ai-models/
    # @param [Hash] opts the optional parameters
    # @return [RestrictedModelsResponseWrapper]
    def get_restricted_ai_models(opts = {})
      data, _status_code, _headers = get_restricted_ai_models_with_http_info(opts)
      data
    end

    # Get restricted AI models
    # Returns the list of AI chat model IDs that are restricted (disabled) for the current tenant.  Restricted models cannot be used for AI chat conversations by any user within the portal.  Only DocSpace administrators can access this endpoint.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restricted-ai-models/
    # @param [Hash] opts the optional parameters
    # @return [Array<(RestrictedModelsResponseWrapper, Integer, Hash)>] RestrictedModelsResponseWrapper data, response status code and response headers
    def get_restricted_ai_models_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_restricted_ai_models ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/ai-model/restrictions'

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
      return_type = opts[:debug_return_type] || 'RestrictedModelsResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_restricted_ai_models",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_restricted_ai_models\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the wallet service settings for the tenant.
    # Retrieves configuration settings related to the wallet service associated with the current tenant.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-wallet-service-settings/
    # @param [Hash] opts the optional parameters
    # @return [TenantWalletServiceSettingsWrapper]
    def get_tenant_wallet_service_settings(opts = {})
      data, _status_code, _headers = get_tenant_wallet_service_settings_with_http_info(opts)
      data
    end

    # Gets the wallet service settings for the tenant.
    # Retrieves configuration settings related to the wallet service associated with the current tenant.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-wallet-service-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantWalletServiceSettingsWrapper, Integer, Hash)>] TenantWalletServiceSettingsWrapper data, response status code and response headers
    def get_tenant_wallet_service_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_tenant_wallet_service_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/servicessettings'

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
      return_type = opts[:debug_return_type] || 'TenantWalletServiceSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_tenant_wallet_service_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_tenant_wallet_service_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the tenant wallet auto top up settings
    # Returns the wallet auto top up settings for the current tenant.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-wallet-settings/
    # @param [Hash] opts the optional parameters
    # @return [TenantWalletSettingsWrapper]
    def get_tenant_wallet_settings(opts = {})
      data, _status_code, _headers = get_tenant_wallet_settings_with_http_info(opts)
      data
    end

    # Gets the tenant wallet auto top up settings
    # Returns the wallet auto top up settings for the current tenant.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-wallet-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantWalletSettingsWrapper, Integer, Hash)>] TenantWalletSettingsWrapper data, response status code and response headers
    def get_tenant_wallet_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_tenant_wallet_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/topupsettings'

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
      return_type = opts[:debug_return_type] || 'TenantWalletSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_tenant_wallet_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_tenant_wallet_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get wallet service
    # Returns the specified wallet service.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-wallet-service/
    # @param service [TenantWalletService] The wallet service type.
    # @param [Hash] opts the optional parameters
    # @return [WalletServiceWrapper]
    def get_wallet_service(service, opts = {})
      data, _status_code, _headers = get_wallet_service_with_http_info(service, opts)
      data
    end

    # Get wallet service
    # Returns the specified wallet service.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-wallet-service/
    # @param service [TenantWalletService] The wallet service type.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WalletServiceWrapper, Integer, Hash)>] WalletServiceWrapper data, response status code and response headers
    def get_wallet_service_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_wallet_service ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling Portal::PaymentApi.get_wallet_service"
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/walletservice'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'service'] = service

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WalletServiceWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_wallet_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_wallet_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get wallet services
    # Returns the available wallet services.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-wallet-services/
    # @param [Hash] opts the optional parameters
    # @return [WalletServiceArrayWrapper]
    def get_wallet_services(opts = {})
      data, _status_code, _headers = get_wallet_services_with_http_info(opts)
      data
    end

    # Get wallet services
    # Returns the available wallet services.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-wallet-services/
    # @param [Hash] opts the optional parameters
    # @return [Array<(WalletServiceArrayWrapper, Integer, Hash)>] WalletServiceArrayWrapper data, response status code and response headers
    def get_wallet_services_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.get_wallet_services ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/walletservices'

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
      return_type = opts[:debug_return_type] || 'WalletServiceArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.get_wallet_services",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#get_wallet_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a payment request
    # Sends a request for the portal payment.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-payment-request/
    # @param [Hash] opts the optional parameters
    # @option opts [SalesRequestsDto] :sales_requests_dto 
    # @return [nil]
    def send_payment_request(opts = {})
      send_payment_request_with_http_info(opts)
      nil
    end

    # Send a payment request
    # Sends a request for the portal payment.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-payment-request/
    # @param [Hash] opts the optional parameters
    # @option opts [SalesRequestsDto] :sales_requests_dto 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def send_payment_request_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.send_payment_request ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/request'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'sales_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.send_payment_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#send_payment_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set restricted AI models
    # Overwrites the entire set of restricted AI model IDs for the current tenant.  The request body must contain the complete desired set — to add a restriction, include the new model alongside existing ones;  to remove one, omit it. An empty set lifts all restrictions. Only the portal payer can perform this action.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-restricted-ai-models/
    # @param [Hash] opts the optional parameters
    # @option opts [SetRestrictedAiModelsRequestDto] :set_restricted_ai_models_request_dto 
    # @return [RestrictedModelsResponseWrapper]
    def set_restricted_ai_models(opts = {})
      data, _status_code, _headers = set_restricted_ai_models_with_http_info(opts)
      data
    end

    # Set restricted AI models
    # Overwrites the entire set of restricted AI model IDs for the current tenant.  The request body must contain the complete desired set — to add a restriction, include the new model alongside existing ones;  to remove one, omit it. An empty set lifts all restrictions. Only the portal payer can perform this action.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-restricted-ai-models/
    # @param [Hash] opts the optional parameters
    # @option opts [SetRestrictedAiModelsRequestDto] :set_restricted_ai_models_request_dto 
    # @return [Array<(RestrictedModelsResponseWrapper, Integer, Hash)>] RestrictedModelsResponseWrapper data, response status code and response headers
    def set_restricted_ai_models_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.set_restricted_ai_models ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/ai-model/restrictions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_restricted_ai_models_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'RestrictedModelsResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.set_restricted_ai_models",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#set_restricted_ai_models\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the wallet auto top up settings
    # Updates the wallet auto top up settings for the current tenant.  Requires the tariff service to be configured and the user to be authorized as a payer.  Returns null if the tariff service is not configured or customer information/balance cannot be retrieved.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-wallet-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantWalletSettingsWrapper] :tenant_wallet_settings_wrapper 
    # @return [TenantWalletSettingsWrapper]
    def set_tenant_wallet_settings(opts = {})
      data, _status_code, _headers = set_tenant_wallet_settings_with_http_info(opts)
      data
    end

    # Set the wallet auto top up settings
    # Updates the wallet auto top up settings for the current tenant.  Requires the tariff service to be configured and the user to be authorized as a payer.  Returns null if the tariff service is not configured or customer information/balance cannot be retrieved.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-wallet-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [TenantWalletSettingsWrapper] :tenant_wallet_settings_wrapper 
    # @return [Array<(TenantWalletSettingsWrapper, Integer, Hash)>] TenantWalletSettingsWrapper data, response status code and response headers
    def set_tenant_wallet_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.set_tenant_wallet_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/topupsettings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tenant_wallet_settings_wrapper'])

      # return_type
      return_type = opts[:debug_return_type] || 'TenantWalletSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.set_tenant_wallet_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#set_tenant_wallet_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terminate the customer operations report generation
    # Terminates generating a customer operations report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-operations-report/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def terminate_customer_operations_report(opts = {})
      terminate_customer_operations_report_with_http_info(opts)
      nil
    end

    # Terminate the customer operations report generation
    # Terminates generating a customer operations report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-operations-report/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def terminate_customer_operations_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.terminate_customer_operations_report ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/customer/operationsreport'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.terminate_customer_operations_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#terminate_customer_operations_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Put money on deposit
    # Returns the result of putting money on deposit.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/top-up-deposit/
    # @param [Hash] opts the optional parameters
    # @option opts [TopUpDepositRequestDto] :top_up_deposit_request_dto 
    # @return [BooleanWrapper]
    def top_up_deposit(opts = {})
      data, _status_code, _headers = top_up_deposit_with_http_info(opts)
      data
    end

    # Put money on deposit
    # Returns the result of putting money on deposit.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/top-up-deposit/
    # @param [Hash] opts the optional parameters
    # @option opts [TopUpDepositRequestDto] :top_up_deposit_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def top_up_deposit_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.top_up_deposit ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/deposit'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'top_up_deposit_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.top_up_deposit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#top_up_deposit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the payment quantity
    # Updates the payment quantity with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-payment/
    # @param [Hash] opts the optional parameters
    # @option opts [QuantityRequestDto] :quantity_request_dto 
    # @return [BooleanWrapper]
    def update_payment(opts = {})
      data, _status_code, _headers = update_payment_with_http_info(opts)
      data
    end

    # Update the payment quantity
    # Updates the payment quantity with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-payment/
    # @param [Hash] opts the optional parameters
    # @option opts [QuantityRequestDto] :quantity_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def update_payment_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.update_payment ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/update'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'quantity_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.update_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#update_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the wallet payment quantity
    # Updates the wallet payment quantity with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-wallet-payment/
    # @param [Hash] opts the optional parameters
    # @option opts [WalletQuantityRequestDto] :wallet_quantity_request_dto 
    # @return [BooleanWrapper]
    def update_wallet_payment(opts = {})
      data, _status_code, _headers = update_wallet_payment_with_http_info(opts)
      data
    end

    # Update the wallet payment quantity
    # Updates the wallet payment quantity with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-wallet-payment/
    # @param [Hash] opts the optional parameters
    # @option opts [WalletQuantityRequestDto] :wallet_quantity_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def update_wallet_payment_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::PaymentApi.update_wallet_payment ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/payment/updatewallet'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'wallet_quantity_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::PaymentApi.update_wallet_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::PaymentApi#update_wallet_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

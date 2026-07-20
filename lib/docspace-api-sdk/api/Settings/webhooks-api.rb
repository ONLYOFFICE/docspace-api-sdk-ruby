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
    class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a webhook
    # Creates a new tenant webhook with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhooksConfigRequestsDto] :create_webhooks_config_requests_dto 
    # @return [WebhooksConfigWrapper]
    def create_webhook(opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(opts)
      data
    end

    # Create a webhook
    # Creates a new tenant webhook with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhooksConfigRequestsDto] :create_webhooks_config_requests_dto 
    # @return [Array<(WebhooksConfigWrapper, Integer, Hash)>] WebhooksConfigWrapper data, response status code and response headers
    def create_webhook_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.create_webhook ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_webhooks_config_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhooksConfigWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.create_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable a webhook
    # Enables or disables a tenant webhook with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhooksConfigRequestsDto] :update_webhooks_config_requests_dto 
    # @return [WebhooksConfigWrapper]
    def enable_webhook(opts = {})
      data, _status_code, _headers = enable_webhook_with_http_info(opts)
      data
    end

    # Enable a webhook
    # Enables or disables a tenant webhook with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhooksConfigRequestsDto] :update_webhooks_config_requests_dto 
    # @return [Array<(WebhooksConfigWrapper, Integer, Hash)>] WebhooksConfigWrapper data, response status code and response headers
    def enable_webhook_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.enable_webhook ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook/enable'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_webhooks_config_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhooksConfigWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.enable_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#enable_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get webhooks
    # Returns a list of the tenant webhooks.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-webhooks/
    # @param [Hash] opts the optional parameters
    # @return [WebhooksConfigWithStatusArrayWrapper]
    def get_tenant_webhooks(opts = {})
      data, _status_code, _headers = get_tenant_webhooks_with_http_info(opts)
      data
    end

    # Get webhooks
    # Returns a list of the tenant webhooks.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-webhooks/
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhooksConfigWithStatusArrayWrapper, Integer, Hash)>] WebhooksConfigWithStatusArrayWrapper data, response status code and response headers
    def get_tenant_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.get_tenant_webhooks ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook'

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
      return_type = opts[:debug_return_type] || 'WebhooksConfigWithStatusArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.get_tenant_webhooks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#get_tenant_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get webhook triggers
    # Returns a list of triggers for a webhook with their availability for the current user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhook-triggers/
    # @param [Hash] opts the optional parameters
    # @return [WebhookTriggerArrayWrapper]
    def get_webhook_triggers(opts = {})
      data, _status_code, _headers = get_webhook_triggers_with_http_info(opts)
      data
    end

    # Get webhook triggers
    # Returns a list of triggers for a webhook with their availability for the current user.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhook-triggers/
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookTriggerArrayWrapper, Integer, Hash)>] WebhookTriggerArrayWrapper data, response status code and response headers
    def get_webhook_triggers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.get_webhook_triggers ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook/triggers'

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
      return_type = opts[:debug_return_type] || 'WebhookTriggerArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.get_webhook_triggers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#get_webhook_triggers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get webhook logs
    # Returns the logs of the webhook activities.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhooks-logs/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :delivery_from The delivery start time for filtering webhook logs.
    # @option opts [Time] :delivery_to The delivery end time for filtering webhook logs.
    # @option opts [String] :hook_uri The destination URL where webhooks are delivered.
    # @option opts [Integer] :config_id The webhook configuration identifier.
    # @option opts [Integer] :event_id The unique identifier of the event that triggered the webhook.
    # @option opts [WebhookGroupStatus] :group_status The status of the webhook delivery group.
    # @option opts [String] :user_id The identifier of the user associated with the webhook event.
    # @option opts [WebhookTrigger] :trigger The type of event that triggered the webhook.
    # @option opts [Integer] :count The maximum number of webhook log records to return in the query response.
    # @option opts [Integer] :start_index Specifies the starting index for retrieving webhook logs.  Used for pagination in the webhook delivery log queries.
    # @return [WebhooksLogArrayWrapper]
    def get_webhooks_logs(opts = {})
      data, _status_code, _headers = get_webhooks_logs_with_http_info(opts)
      data
    end

    # Get webhook logs
    # Returns the logs of the webhook activities.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhooks-logs/
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :delivery_from The delivery start time for filtering webhook logs.
    # @option opts [Time] :delivery_to The delivery end time for filtering webhook logs.
    # @option opts [String] :hook_uri The destination URL where webhooks are delivered.
    # @option opts [Integer] :config_id The webhook configuration identifier.
    # @option opts [Integer] :event_id The unique identifier of the event that triggered the webhook.
    # @option opts [WebhookGroupStatus] :group_status The status of the webhook delivery group.
    # @option opts [String] :user_id The identifier of the user associated with the webhook event.
    # @option opts [WebhookTrigger] :trigger The type of event that triggered the webhook.
    # @option opts [Integer] :count The maximum number of webhook log records to return in the query response.
    # @option opts [Integer] :start_index Specifies the starting index for retrieving webhook logs.  Used for pagination in the webhook delivery log queries.
    # @return [Array<(WebhooksLogArrayWrapper, Integer, Hash)>] WebhooksLogArrayWrapper data, response status code and response headers
    def get_webhooks_logs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.get_webhooks_logs ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Settings::WebhooksApi.get_webhooks_logs, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Settings::WebhooksApi.get_webhooks_logs, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/settings/webhooks/log'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'deliveryFrom'] = opts[:'delivery_from'] if !opts[:'delivery_from'].nil?
      query_params[:'deliveryTo'] = opts[:'delivery_to'] if !opts[:'delivery_to'].nil?
      query_params[:'hookUri'] = opts[:'hook_uri'] if !opts[:'hook_uri'].nil?
      query_params[:'configId'] = opts[:'config_id'] if !opts[:'config_id'].nil?
      query_params[:'eventId'] = opts[:'event_id'] if !opts[:'event_id'].nil?
      query_params[:'groupStatus'] = opts[:'group_status'] if !opts[:'group_status'].nil?
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'trigger'] = opts[:'trigger'] if !opts[:'trigger'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhooksLogArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.get_webhooks_logs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#get_webhooks_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a webhook
    # Removes a tenant webhook with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-webhook/
    # @param id [Integer] The ID extracted from the route parameters.
    # @param [Hash] opts the optional parameters
    # @return [WebhooksConfigWrapper]
    def remove_webhook(id, opts = {})
      data, _status_code, _headers = remove_webhook_with_http_info(id, opts)
      data
    end

    # Remove a webhook
    # Removes a tenant webhook with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-webhook/
    # @param id [Integer] The ID extracted from the route parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhooksConfigWrapper, Integer, Hash)>] WebhooksConfigWrapper data, response status code and response headers
    def remove_webhook_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.remove_webhook ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Settings::WebhooksApi.remove_webhook"
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'WebhooksConfigWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.remove_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#remove_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retry a webhook
    # Retries a webhook with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhook/
    # @param id [Integer] The ID extracted from the route parameters.
    # @param [Hash] opts the optional parameters
    # @return [WebhooksLogWrapper]
    def retry_webhook(id, opts = {})
      data, _status_code, _headers = retry_webhook_with_http_info(id, opts)
      data
    end

    # Retry a webhook
    # Retries a webhook with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhook/
    # @param id [Integer] The ID extracted from the route parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhooksLogWrapper, Integer, Hash)>] WebhooksLogWrapper data, response status code and response headers
    def retry_webhook_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.retry_webhook ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Settings::WebhooksApi.retry_webhook"
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook/{id}/retry'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'WebhooksLogWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.retry_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#retry_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retry webhooks
    # Retries all the webhooks with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhooks/
    # @param [Hash] opts the optional parameters
    # @option opts [WebhookRetryRequestsDto] :webhook_retry_requests_dto 
    # @return [WebhooksLogArrayWrapper]
    def retry_webhooks(opts = {})
      data, _status_code, _headers = retry_webhooks_with_http_info(opts)
      data
    end

    # Retry webhooks
    # Retries all the webhooks with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhooks/
    # @param [Hash] opts the optional parameters
    # @option opts [WebhookRetryRequestsDto] :webhook_retry_requests_dto 
    # @return [Array<(WebhooksLogArrayWrapper, Integer, Hash)>] WebhooksLogArrayWrapper data, response status code and response headers
    def retry_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.retry_webhooks ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook/retry'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'webhook_retry_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhooksLogArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.retry_webhooks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#retry_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a webhook
    # Updates a tenant webhook with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhooksConfigRequestsDto] :update_webhooks_config_requests_dto 
    # @return [WebhooksConfigWrapper]
    def update_webhook(opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(opts)
      data
    end

    # Update a webhook
    # Updates a tenant webhook with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-webhook/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhooksConfigRequestsDto] :update_webhooks_config_requests_dto 
    # @return [Array<(WebhooksConfigWrapper, Integer, Hash)>] WebhooksConfigWrapper data, response status code and response headers
    def update_webhook_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::WebhooksApi.update_webhook ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/webhook'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_webhooks_config_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhooksConfigWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::WebhooksApi.update_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::WebhooksApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

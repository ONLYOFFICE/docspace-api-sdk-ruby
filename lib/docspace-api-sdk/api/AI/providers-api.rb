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
  module AI
    class ProvidersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add an AI provider
    # Registers a new AI provider for the current tenant by specifying its type, display title, API endpoint URL, and authentication key.  The provider becomes available for AI chat conversations after creation. This action is rate-limited.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-provider/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateProviderRequestDto] :create_provider_request_dto 
    # @return [AiProviderWrapper]
    def add_provider(opts = {})
      data, _status_code, _headers = add_provider_with_http_info(opts)
      data
    end

    # Add an AI provider
    # Registers a new AI provider for the current tenant by specifying its type, display title, API endpoint URL, and authentication key.  The provider becomes available for AI chat conversations after creation. This action is rate-limited.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-provider/
    # @param [Hash] opts the optional parameters
    # @option opts [CreateProviderRequestDto] :create_provider_request_dto 
    # @return [Array<(AiProviderWrapper, Integer, Hash)>] AiProviderWrapper data, response status code and response headers
    def add_provider_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProvidersApi.add_provider ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/providers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_provider_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'AiProviderWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ProvidersApi.add_provider",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProvidersApi#add_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete AI providers
    # Permanently deletes one or more AI providers by their identifiers.  All specified providers are removed from the current tenant. This action cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-providers/
    # @param [Hash] opts the optional parameters
    # @option opts [RemoveProviderRequestDto] :remove_provider_request_dto 
    # @return [nil]
    def delete_providers(opts = {})
      delete_providers_with_http_info(opts)
      nil
    end

    # Delete AI providers
    # Permanently deletes one or more AI providers by their identifiers.  All specified providers are removed from the current tenant. This action cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-providers/
    # @param [Hash] opts the optional parameters
    # @option opts [RemoveProviderRequestDto] :remove_provider_request_dto 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_providers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProvidersApi.delete_providers ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/providers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'remove_provider_request_dto'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ProvidersApi.delete_providers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProvidersApi#delete_providers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get available AI provider types
    # Returns the list of AI provider types that are available for configuration on the current instance.  Each entry includes the provider type identifier and the default API endpoint URL.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-available-providers/
    # @param [Hash] opts the optional parameters
    # @return [ProviderSettingsArrayWrapper]
    def get_available_providers(opts = {})
      data, _status_code, _headers = get_available_providers_with_http_info(opts)
      data
    end

    # Get available AI provider types
    # Returns the list of AI provider types that are available for configuration on the current instance.  Each entry includes the provider type identifier and the default API endpoint URL.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-available-providers/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderSettingsArrayWrapper, Integer, Hash)>] ProviderSettingsArrayWrapper data, response status code and response headers
    def get_available_providers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProvidersApi.get_available_providers ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/providers/available'

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
      return_type = opts[:debug_return_type] || 'ProviderSettingsArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ProvidersApi.get_available_providers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProvidersApi#get_available_providers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the default AI provider
    # Returns the default AI provider and model configured for the current tenant.  Returns null if the tenant does not have any registered providers.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-provider/
    # @param [Hash] opts the optional parameters
    # @return [DefaultProviderWrapper]
    def get_default_provider(opts = {})
      data, _status_code, _headers = get_default_provider_with_http_info(opts)
      data
    end

    # Get the default AI provider
    # Returns the default AI provider and model configured for the current tenant.  Returns null if the tenant does not have any registered providers.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-provider/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DefaultProviderWrapper, Integer, Hash)>] DefaultProviderWrapper data, response status code and response headers
    def get_default_provider_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProvidersApi.get_default_provider ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/providers/default'

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
      return_type = opts[:debug_return_type] || 'DefaultProviderWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ProvidersApi.get_default_provider",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProvidersApi#get_default_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all models for a provider with their settings
    # Returns the full list of AI models available from a provider, including both recommended and additional models.  Each model includes its current settings: enabled state, display alias, and capabilities (vision, tool calling, thinking).  Recommended models are enabled by default and their alias and capabilities come from configuration.  Additional models are disabled by default and can be configured by the admin.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-provider-models/
    # @param provider_id [Integer] The identifier of the AI provider.
    # @param [Hash] opts the optional parameters
    # @return [ModelSettingsArrayWrapper]
    def get_provider_models(provider_id, opts = {})
      data, _status_code, _headers = get_provider_models_with_http_info(provider_id, opts)
      data
    end

    # Get all models for a provider with their settings
    # Returns the full list of AI models available from a provider, including both recommended and additional models.  Each model includes its current settings: enabled state, display alias, and capabilities (vision, tool calling, thinking).  Recommended models are enabled by default and their alias and capabilities come from configuration.  Additional models are disabled by default and can be configured by the admin.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-provider-models/
    # @param provider_id [Integer] The identifier of the AI provider.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelSettingsArrayWrapper, Integer, Hash)>] ModelSettingsArrayWrapper data, response status code and response headers
    def get_provider_models_with_http_info(provider_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProvidersApi.get_provider_models ...'
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling AI::ProvidersApi.get_provider_models"
      end
      # resource path
      local_var_path = '/api/2.0/ai/providers/{providerId}/models'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ModelSettingsArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ProvidersApi.get_provider_models",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProvidersApi#get_provider_models\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get AI providers
    # Returns a paginated list of AI providers configured for the current tenant.  Supports pagination via the startIndex and count query parameters. The total number of providers is included in the response metadata.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-providers/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_index The number of items to skip before returning results (zero-based offset). Defaults to 0.
    # @option opts [Integer] :count The maximum number of items to return per page. Defaults to 100.
    # @return [AiProviderArrayWrapper]
    def get_providers(opts = {})
      data, _status_code, _headers = get_providers_with_http_info(opts)
      data
    end

    # Get AI providers
    # Returns a paginated list of AI providers configured for the current tenant.  Supports pagination via the startIndex and count query parameters. The total number of providers is included in the response metadata.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-providers/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_index The number of items to skip before returning results (zero-based offset). Defaults to 0.
    # @option opts [Integer] :count The maximum number of items to return per page. Defaults to 100.
    # @return [Array<(AiProviderArrayWrapper, Integer, Hash)>] AiProviderArrayWrapper data, response status code and response headers
    def get_providers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProvidersApi.get_providers ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/providers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiProviderArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ProvidersApi.get_providers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProvidersApi#get_providers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Preview models for a new AI provider
    # Connects to the specified AI provider using the provided credentials and returns the available models  with their default settings. This is used to preview models before saving the provider.  Recommended models are enabled by default with configuration-defined settings.  Additional models are disabled by default with empty capabilities.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/preview-provider-models/
    # @param [Hash] opts the optional parameters
    # @option opts [PreviewProviderModelsRequestDto] :preview_provider_models_request_dto 
    # @return [ModelSettingsArrayWrapper]
    def preview_provider_models(opts = {})
      data, _status_code, _headers = preview_provider_models_with_http_info(opts)
      data
    end

    # Preview models for a new AI provider
    # Connects to the specified AI provider using the provided credentials and returns the available models  with their default settings. This is used to preview models before saving the provider.  Recommended models are enabled by default with configuration-defined settings.  Additional models are disabled by default with empty capabilities.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/preview-provider-models/
    # @param [Hash] opts the optional parameters
    # @option opts [PreviewProviderModelsRequestDto] :preview_provider_models_request_dto 
    # @return [Array<(ModelSettingsArrayWrapper, Integer, Hash)>] ModelSettingsArrayWrapper data, response status code and response headers
    def preview_provider_models_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProvidersApi.preview_provider_models ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/providers/models/preview'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'preview_provider_models_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'ModelSettingsArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ProvidersApi.preview_provider_models",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProvidersApi#preview_provider_models\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the default AI provider
    # Sets the default AI provider and model for the current tenant.  The specified provider and model will be used as the default for all new AI chat sessions within the tenant.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-provider/
    # @param [Hash] opts the optional parameters
    # @option opts [SetDefaultProviderRequestDto] :set_default_provider_request_dto 
    # @return [DefaultProviderWrapper]
    def set_default_provider(opts = {})
      data, _status_code, _headers = set_default_provider_with_http_info(opts)
      data
    end

    # Set the default AI provider
    # Sets the default AI provider and model for the current tenant.  The specified provider and model will be used as the default for all new AI chat sessions within the tenant.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-provider/
    # @param [Hash] opts the optional parameters
    # @option opts [SetDefaultProviderRequestDto] :set_default_provider_request_dto 
    # @return [Array<(DefaultProviderWrapper, Integer, Hash)>] DefaultProviderWrapper data, response status code and response headers
    def set_default_provider_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProvidersApi.set_default_provider ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/providers/default'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_default_provider_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'DefaultProviderWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ProvidersApi.set_default_provider",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProvidersApi#set_default_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an AI provider
    # Updates the configuration of an existing AI provider, including its display title, API endpoint URL, and authentication key.  Only the fields provided in the request body will be updated. This action is rate-limited.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-provider/
    # @param id [Integer] The identifier of the AI provider to update.
    # @param update_provider_body [UpdateProviderBody] The AI provider configuration parameters to update.
    # @param [Hash] opts the optional parameters
    # @return [AiProviderWrapper]
    def update_provider(id, update_provider_body, opts = {})
      data, _status_code, _headers = update_provider_with_http_info(id, update_provider_body, opts)
      data
    end

    # Update an AI provider
    # Updates the configuration of an existing AI provider, including its display title, API endpoint URL, and authentication key.  Only the fields provided in the request body will be updated. This action is rate-limited.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-provider/
    # @param id [Integer] The identifier of the AI provider to update.
    # @param update_provider_body [UpdateProviderBody] The AI provider configuration parameters to update.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiProviderWrapper, Integer, Hash)>] AiProviderWrapper data, response status code and response headers
    def update_provider_with_http_info(id, update_provider_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProvidersApi.update_provider ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::ProvidersApi.update_provider"
      end
      # verify the required parameter 'update_provider_body' is set
      if @api_client.config.client_side_validation && update_provider_body.nil?
        fail ArgumentError, "Missing the required parameter 'update_provider_body' when calling AI::ProvidersApi.update_provider"
      end
      # resource path
      local_var_path = '/api/2.0/ai/providers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_provider_body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiProviderWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"AI::ProvidersApi.update_provider",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProvidersApi#update_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

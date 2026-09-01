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
    class ProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create
    # Creates an AI provider profile. The name must be unique and the credentials are validated against the provider before the profile is stored; the portal's first profile also takes the `Default` assignment slot.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-create/
    # @param ai_create_profile_input [AiCreateProfileInput] 
    # @param [Hash] opts the optional parameters
    # @return [AiProfileMutationResult]
    def ai_profiles_create(ai_create_profile_input, opts = {})
      data, _status_code, _headers = ai_profiles_create_with_http_info(ai_create_profile_input, opts)
      data
    end

    # Create
    # Creates an AI provider profile. The name must be unique and the credentials are validated against the provider before the profile is stored; the portal's first profile also takes the `Default` assignment slot.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-create/
    # @param ai_create_profile_input [AiCreateProfileInput] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiProfileMutationResult, Integer, Hash)>] AiProfileMutationResult data, response status code and response headers
    def ai_profiles_create_with_http_info(ai_create_profile_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProfilesApi.ai_profiles_create ...'
      end
      # verify the required parameter 'ai_create_profile_input' is set
      if @api_client.config.client_side_validation && ai_create_profile_input.nil?
        fail ArgumentError, "Missing the required parameter 'ai_create_profile_input' when calling AI::ProfilesApi.ai_profiles_create"
      end
      # resource path
      local_var_path = '/api/2.0/ai/profiles/create'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_create_profile_input)

      # return_type
      return_type = opts[:debug_return_type] || 'AiProfileMutationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ProfilesApi.ai_profiles_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProfilesApi#ai_profiles_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete
    # Deletes an AI provider profile and cleans up the assignments pointing at it - the `Default` slot moves to the first remaining profile, the other slots are unbound.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-delete/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_profiles_delete(body, opts = {})
      data, _status_code, _headers = ai_profiles_delete_with_http_info(body, opts)
      data
    end

    # Delete
    # Deletes an AI provider profile and cleans up the assignments pointing at it - the `Default` slot moves to the first remaining profile, the other slots are unbound.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-delete/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_profiles_delete_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProfilesApi.ai_profiles_delete ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::ProfilesApi.ai_profiles_delete"
      end
      # resource path
      local_var_path = '/api/2.0/ai/profiles/delete'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ProfilesApi.ai_profiles_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProfilesApi#ai_profiles_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get by id
    # Returns one AI provider profile, or an empty result when the identifier is unknown.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-get-by-id/
    # @param id [String] The AI provider profile identifier.
    # @param [Hash] opts the optional parameters
    # @return [AiProfilesGetById200Response]
    def ai_profiles_get_by_id(id, opts = {})
      data, _status_code, _headers = ai_profiles_get_by_id_with_http_info(id, opts)
      data
    end

    # Get by id
    # Returns one AI provider profile, or an empty result when the identifier is unknown.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-get-by-id/
    # @param id [String] The AI provider profile identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiProfilesGetById200Response, Integer, Hash)>] AiProfilesGetById200Response data, response status code and response headers
    def ai_profiles_get_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProfilesApi.ai_profiles_get_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::ProfilesApi.ai_profiles_get_by_id"
      end
      # resource path
      local_var_path = '/api/2.0/ai/profiles/get-by-id'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiProfilesGetById200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ProfilesApi.ai_profiles_get_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProfilesApi#ai_profiles_get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List
    # Lists the portal's AI provider profiles.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list/
    # @param [Hash] opts the optional parameters
    # @return [Array<AiProfile>]
    def ai_profiles_list(opts = {})
      data, _status_code, _headers = ai_profiles_list_with_http_info(opts)
      data
    end

    # List
    # Lists the portal's AI provider profiles.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list/
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AiProfile>, Integer, Hash)>] Array<AiProfile> data, response status code and response headers
    def ai_profiles_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProfilesApi.ai_profiles_list ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/profiles/list'

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
      return_type = opts[:debug_return_type] || 'Array<AiProfile>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ProfilesApi.ai_profiles_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProfilesApi#ai_profiles_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List models
    # Lists the models the given profile's provider offers, as reported by the provider itself.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-models/
    # @param profile_id [String] The AI provider profile identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<AiModel>]
    def ai_profiles_list_models(profile_id, opts = {})
      data, _status_code, _headers = ai_profiles_list_models_with_http_info(profile_id, opts)
      data
    end

    # List models
    # Lists the models the given profile's provider offers, as reported by the provider itself.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-models/
    # @param profile_id [String] The AI provider profile identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AiModel>, Integer, Hash)>] Array<AiModel> data, response status code and response headers
    def ai_profiles_list_models_with_http_info(profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProfilesApi.ai_profiles_list_models ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling AI::ProfilesApi.ai_profiles_list_models"
      end
      # resource path
      local_var_path = '/api/2.0/ai/profiles/list-models'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'profileId'] = profile_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AiModel>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ProfilesApi.ai_profiles_list_models",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProfilesApi#ai_profiles_list_models\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List provider models
    # Lists the models a provider offers for the supplied endpoint and key, before any profile is created from them.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-provider-models/
    # @param ai_profiles_list_provider_models_request [AiProfilesListProviderModelsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<AiModel>]
    def ai_profiles_list_provider_models(ai_profiles_list_provider_models_request, opts = {})
      data, _status_code, _headers = ai_profiles_list_provider_models_with_http_info(ai_profiles_list_provider_models_request, opts)
      data
    end

    # List provider models
    # Lists the models a provider offers for the supplied endpoint and key, before any profile is created from them.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-provider-models/
    # @param ai_profiles_list_provider_models_request [AiProfilesListProviderModelsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AiModel>, Integer, Hash)>] Array<AiModel> data, response status code and response headers
    def ai_profiles_list_provider_models_with_http_info(ai_profiles_list_provider_models_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProfilesApi.ai_profiles_list_provider_models ...'
      end
      # verify the required parameter 'ai_profiles_list_provider_models_request' is set
      if @api_client.config.client_side_validation && ai_profiles_list_provider_models_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_profiles_list_provider_models_request' when calling AI::ProfilesApi.ai_profiles_list_provider_models"
      end
      # resource path
      local_var_path = '/api/2.0/ai/profiles/list-provider-models'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_profiles_list_provider_models_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AiModel>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ProfilesApi.ai_profiles_list_provider_models",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProfilesApi#ai_profiles_list_provider_models\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test connection
    # Checks a stored profile's credentials against its provider and reports the provider's own error when the call fails. Nothing is written.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-test-connection/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiProfilesTestConnection200Response]
    def ai_profiles_test_connection(body, opts = {})
      data, _status_code, _headers = ai_profiles_test_connection_with_http_info(body, opts)
      data
    end

    # Test connection
    # Checks a stored profile's credentials against its provider and reports the provider's own error when the call fails. Nothing is written.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-test-connection/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiProfilesTestConnection200Response, Integer, Hash)>] AiProfilesTestConnection200Response data, response status code and response headers
    def ai_profiles_test_connection_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProfilesApi.ai_profiles_test_connection ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::ProfilesApi.ai_profiles_test_connection"
      end
      # resource path
      local_var_path = '/api/2.0/ai/profiles/test-connection'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiProfilesTestConnection200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ProfilesApi.ai_profiles_test_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProfilesApi#ai_profiles_test_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update
    # Updates an AI provider profile, re-checking name uniqueness and the provider credentials.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-update/
    # @param ai_profile [AiProfile] 
    # @param [Hash] opts the optional parameters
    # @return [AiProfileMutationResult]
    def ai_profiles_update(ai_profile, opts = {})
      data, _status_code, _headers = ai_profiles_update_with_http_info(ai_profile, opts)
      data
    end

    # Update
    # Updates an AI provider profile, re-checking name uniqueness and the provider credentials.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-update/
    # @param ai_profile [AiProfile] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiProfileMutationResult, Integer, Hash)>] AiProfileMutationResult data, response status code and response headers
    def ai_profiles_update_with_http_info(ai_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::ProfilesApi.ai_profiles_update ...'
      end
      # verify the required parameter 'ai_profile' is set
      if @api_client.config.client_side_validation && ai_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ai_profile' when calling AI::ProfilesApi.ai_profiles_update"
      end
      # resource path
      local_var_path = '/api/2.0/ai/profiles/update'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_profile)

      # return_type
      return_type = opts[:debug_return_type] || 'AiProfileMutationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AI::ProfilesApi.ai_profiles_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::ProfilesApi#ai_profiles_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

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
    # Create a provider profile
    # Creates an AI provider profile - the endpoint, credentials and model that a chat round runs on - and returns it. The name has to be unique, the credentials are probed against the live provider before anything is stored, and the portal's first profile also takes the `Default` assignment slot. Two inputs are refused outright: a `baseUrl` pointing at a private network address, and `providerType: external`, which delegates transport to the host application and therefore cannot work for a profile the server manages. On a portal running the AI gateway, profiles are managed centrally and this operation answers 403.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-create/
    # @param ai_create_profile_input [AiCreateProfileInput] 
    # @param [Hash] opts the optional parameters
    # @return [AiProfileMutationResult]
    def ai_profiles_create(ai_create_profile_input, opts = {})
      data, _status_code, _headers = ai_profiles_create_with_http_info(ai_create_profile_input, opts)
      data
    end

    # Create a provider profile
    # Creates an AI provider profile - the endpoint, credentials and model that a chat round runs on - and returns it. The name has to be unique, the credentials are probed against the live provider before anything is stored, and the portal's first profile also takes the `Default` assignment slot. Two inputs are refused outright: a `baseUrl` pointing at a private network address, and `providerType: external`, which delegates transport to the host application and therefore cannot work for a profile the server manages. On a portal running the AI gateway, profiles are managed centrally and this operation answers 403.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Delete a provider profile
    # Deletes an AI provider profile and cleans up every assignment pointing at it: the `Default` slot moves to the first remaining profile and the other slots are left unbound. The ID is required and may be sent in the body or as a query parameter. An unknown ID is not reported - the call answers success without deleting anything. Threads already bound to the profile keep the stored reference, so a round on such a thread falls back to whatever the scope resolves to.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-delete/
    # @param body [String] The ID of the profile to delete, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_profiles_delete(body, opts = {})
      data, _status_code, _headers = ai_profiles_delete_with_http_info(body, opts)
      data
    end

    # Delete a provider profile
    # Deletes an AI provider profile and cleans up every assignment pointing at it: the `Default` slot moves to the first remaining profile and the other slots are left unbound. The ID is required and may be sent in the body or as a query parameter. An unknown ID is not reported - the call answers success without deleting anything. Threads already bound to the profile keep the stored reference, so a round on such a thread falls back to whatever the scope resolves to.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-delete/
    # @param body [String] The ID of the profile to delete, as a bare JSON string.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Get a provider profile
    # Returns one AI provider profile by its ID, with its secrets stripped: neither the API key nor the custom headers are ever sent back, on any portal. The ID is required and is read from the query, and an unknown one answers 404. The `baseUrl` in the answer is the one that was stored, not the internal gateway address a round actually dials, so it cannot be used to reach the provider directly. Use `GET api/2.0/ai/profiles/list` to enumerate profiles instead of reading them one by one.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-get-by-id/
    # @param id [String] The AI provider profile identifier.
    # @param [Hash] opts the optional parameters
    # @return [AiProfilesGetById200Response]
    def ai_profiles_get_by_id(id, opts = {})
      data, _status_code, _headers = ai_profiles_get_by_id_with_http_info(id, opts)
      data
    end

    # Get a provider profile
    # Returns one AI provider profile by its ID, with its secrets stripped: neither the API key nor the custom headers are ever sent back, on any portal. The ID is required and is read from the query, and an unknown one answers 404. The `baseUrl` in the answer is the one that was stored, not the internal gateway address a round actually dials, so it cannot be used to reach the provider directly. Use `GET api/2.0/ai/profiles/list` to enumerate profiles instead of reading them one by one.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # List provider profiles
    # Lists the portal's AI provider profiles with their secrets stripped, the same way the single-profile read does. It takes no parameters and is not paginated, because a portal holds few profiles. On a portal running the AI gateway the answer is synthesised from the gateway's own catalogue rather than from stored records. The IDs in the answer are what the assignment operations and every round's `profileId` accept.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list/
    # @param [Hash] opts the optional parameters
    # @return [Array<AiProfile>]
    def ai_profiles_list(opts = {})
      data, _status_code, _headers = ai_profiles_list_with_http_info(opts)
      data
    end

    # List provider profiles
    # Lists the portal's AI provider profiles with their secrets stripped, the same way the single-profile read does. It takes no parameters and is not paginated, because a portal holds few profiles. On a portal running the AI gateway the answer is synthesised from the gateway's own catalogue rather than from stored records. The IDs in the answer are what the assignment operations and every round's `profileId` accept.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Lists the models a stored profile's provider currently offers, asking the provider itself rather than reading a cached list. `profileId` is required and is read from the query. A failure is reported with the provider's own verdict: an unusable key comes back as 400 and a provider that is unreachable or broken as 502, while a missing profile or a caller without access keeps the status the portal gave it. Use `POST api/2.0/ai/profiles/list-provider-models` to probe an endpoint that has no profile yet.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-models/
    # @param profile_id [String] The AI provider profile identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<AiModel>]
    def ai_profiles_list_models(profile_id, opts = {})
      data, _status_code, _headers = ai_profiles_list_models_with_http_info(profile_id, opts)
      data
    end

    # List models
    # Lists the models a stored profile's provider currently offers, asking the provider itself rather than reading a cached list. `profileId` is required and is read from the query. A failure is reported with the provider's own verdict: an unusable key comes back as 400 and a provider that is unreachable or broken as 502, while a missing profile or a caller without access keeps the status the portal gave it. Use `POST api/2.0/ai/profiles/list-provider-models` to probe an endpoint that has no profile yet.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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
    # Lists the models an endpoint offers for credentials supplied in the request, before any profile exists - this is what a provider-setup form calls to fill its model picker. `providerType` and `baseUrl` are both required, and a 400 for either names the offending input in a `field` member so the form can highlight it; a `baseUrl` pointing at a private network address is refused as well. For `providerType: onlyoffice` the answer comes from the portal gateway's catalogue, which carries richer capability data than the provider's own listing and matches what `GET api/2.0/ai/profiles/list` reports; a portal without that gateway falls back to asking the provider. A provider that is unreachable or broken is reported as 502, and one that rejects the key as 400.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-provider-models/
    # @param ai_profiles_list_provider_models_request [AiProfilesListProviderModelsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<AiModel>]
    def ai_profiles_list_provider_models(ai_profiles_list_provider_models_request, opts = {})
      data, _status_code, _headers = ai_profiles_list_provider_models_with_http_info(ai_profiles_list_provider_models_request, opts)
      data
    end

    # List provider models
    # Lists the models an endpoint offers for credentials supplied in the request, before any profile exists - this is what a provider-setup form calls to fill its model picker. `providerType` and `baseUrl` are both required, and a 400 for either names the offending input in a `field` member so the form can highlight it; a `baseUrl` pointing at a private network address is refused as well. For `providerType: onlyoffice` the answer comes from the portal gateway's catalogue, which carries richer capability data than the provider's own listing and matches what `GET api/2.0/ai/profiles/list` reports; a portal without that gateway falls back to asking the provider. A provider that is unreachable or broken is reported as 502, and one that rejects the key as 400.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Test a profile's provider
    # Probes a stored profile's credentials against its provider and reports the outcome in the answer, writing nothing - this is what a Test button calls so that a failure does not commit anything. `profileId` is required and may be sent in the body or as a query parameter. The result is carried in the body rather than in the status, so a failed probe still answers 200 and the caller has to read the payload. To validate credentials that are not stored yet, use `POST api/2.0/ai/profiles/list-provider-models`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-test-connection/
    # @param body [String] The ID of the profile to probe, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [AiProfilesTestConnection200Response]
    def ai_profiles_test_connection(body, opts = {})
      data, _status_code, _headers = ai_profiles_test_connection_with_http_info(body, opts)
      data
    end

    # Test a profile's provider
    # Probes a stored profile's credentials against its provider and reports the outcome in the answer, writing nothing - this is what a Test button calls so that a failure does not commit anything. `profileId` is required and may be sent in the body or as a query parameter. The result is carried in the body rather than in the status, so a failed probe still answers 200 and the caller has to read the payload. To validate credentials that are not stored yet, use `POST api/2.0/ai/profiles/list-provider-models`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-test-connection/
    # @param body [String] The ID of the profile to probe, as a bare JSON string.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

    # Update a provider profile
    # Replaces a stored AI provider profile and returns it, re-checking name uniqueness and probing the credentials against the live provider again. The same two inputs are refused as on create - a private-network `baseUrl` and `providerType: external` - and the whole profile is overwritten by the one supplied rather than merged. On a portal running the AI gateway this answers 403, because profiles are managed centrally there. A profile that is bound to an action or an agent keeps those bindings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-update/
    # @param ai_profile [AiProfile] 
    # @param [Hash] opts the optional parameters
    # @return [AiProfileMutationResult]
    def ai_profiles_update(ai_profile, opts = {})
      data, _status_code, _headers = ai_profiles_update_with_http_info(ai_profile, opts)
      data
    end

    # Update a provider profile
    # Replaces a stored AI provider profile and returns it, re-checking name uniqueness and probing the credentials against the live provider again. The same two inputs are refused as on create - a private-network `baseUrl` and `providerType: external` - and the whole profile is overwritten by the one supplied rather than merged. On a portal running the AI gateway this answers 403, because profiles are managed centrally there. A profile that is bound to an action or an agent keeps those bindings.
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
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

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

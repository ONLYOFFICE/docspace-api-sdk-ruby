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
    class AssignmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Bind a profile to an action
    # Binds a profile to one AI action portal-wide, creating the assignment or replacing it in place, and returns the result. Both `actionType` and `profileId` are required. The profile's declared capabilities are checked against the action, so a model that cannot generate images cannot be bound to `ImageGeneration` - the `Default` slot is exempt, because it stands in for every action. There is no room-scoped form of this write: a room's own binding is created by the agent that owns it, while reads accept an `entityId`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-assign/
    # @param ai_assignments_assign_request [AiAssignmentsAssignRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiAssignmentMutationResult]
    def ai_assignments_assign(ai_assignments_assign_request, opts = {})
      data, _status_code, _headers = ai_assignments_assign_with_http_info(ai_assignments_assign_request, opts)
      data
    end

    # Bind a profile to an action
    # Binds a profile to one AI action portal-wide, creating the assignment or replacing it in place, and returns the result. Both `actionType` and `profileId` are required. The profile's declared capabilities are checked against the action, so a model that cannot generate images cannot be bound to `ImageGeneration` - the `Default` slot is exempt, because it stands in for every action. There is no room-scoped form of this write: a room's own binding is created by the agent that owns it, while reads accept an `entityId`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-assign/
    # @param ai_assignments_assign_request [AiAssignmentsAssignRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiAssignmentMutationResult, Integer, Hash)>] AiAssignmentMutationResult data, response status code and response headers
    def ai_assignments_assign_with_http_info(ai_assignments_assign_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AssignmentsApi.ai_assignments_assign ...'
      end
      # verify the required parameter 'ai_assignments_assign_request' is set
      if @api_client.config.client_side_validation && ai_assignments_assign_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_assignments_assign_request' when calling AI::AssignmentsApi.ai_assignments_assign"
      end
      # resource path
      local_var_path = '/api/2.0/ai/assignments/assign'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_assignments_assign_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiAssignmentMutationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AssignmentsApi.ai_assignments_assign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AssignmentsApi#ai_assignments_assign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Bulk assign
    # Applies many action-to-profile bindings in one write, which is how a settings screen saves the whole set. The body is a plain map of action type to profile ID, and every entry is validated before anything is written: one unknown action or one non-string profile ID rejects the request whole, so the set is never left half-applied. Each entry behaves as the single assign operation does, capability checks included. The answer carries the resulting assignment set.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-bulk-assign/
    # @param request_body [Hash<String, String>] A map of action type to profile ID. Every key has to be a known action type and every value a profile ID; one bad entry rejects the whole map.
    # @param [Hash] opts the optional parameters
    # @return [AiBulkAssignmentResult]
    def ai_assignments_bulk_assign(request_body, opts = {})
      data, _status_code, _headers = ai_assignments_bulk_assign_with_http_info(request_body, opts)
      data
    end

    # Bulk assign
    # Applies many action-to-profile bindings in one write, which is how a settings screen saves the whole set. The body is a plain map of action type to profile ID, and every entry is validated before anything is written: one unknown action or one non-string profile ID rejects the request whole, so the set is never left half-applied. Each entry behaves as the single assign operation does, capability checks included. The answer carries the resulting assignment set.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-bulk-assign/
    # @param request_body [Hash<String, String>] A map of action type to profile ID. Every key has to be a known action type and every value a profile ID; one bad entry rejects the whole map.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiBulkAssignmentResult, Integer, Hash)>] AiBulkAssignmentResult data, response status code and response headers
    def ai_assignments_bulk_assign_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AssignmentsApi.ai_assignments_bulk_assign ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling AI::AssignmentsApi.ai_assignments_bulk_assign"
      end
      # resource path
      local_var_path = '/api/2.0/ai/assignments/bulk-assign'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiBulkAssignmentResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AssignmentsApi.ai_assignments_bulk_assign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AssignmentsApi#ai_assignments_bulk_assign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cascade profile delete
    # Detaches a profile from every assignment that points at it, which is the cleanup step before the profile itself is removed. The `Default` slot is promoted to the first remaining profile, or dropped when none is left, and every other slot holding the profile is cleared. `profileId` is required and may be sent in the body or as a query parameter. `DELETE api/2.0/ai/profiles/delete` already does this, so call it directly only when the profile is being removed by some other means.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-cascade-profile-delete/
    # @param ai_assignments_cascade_profile_delete_request [AiAssignmentsCascadeProfileDeleteRequest] The profile to detach from every assignment. May be sent as the `profileId` query parameter instead of in the body.
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_assignments_cascade_profile_delete(ai_assignments_cascade_profile_delete_request, opts = {})
      data, _status_code, _headers = ai_assignments_cascade_profile_delete_with_http_info(ai_assignments_cascade_profile_delete_request, opts)
      data
    end

    # Cascade profile delete
    # Detaches a profile from every assignment that points at it, which is the cleanup step before the profile itself is removed. The `Default` slot is promoted to the first remaining profile, or dropped when none is left, and every other slot holding the profile is cleared. `profileId` is required and may be sent in the body or as a query parameter. `DELETE api/2.0/ai/profiles/delete` already does this, so call it directly only when the profile is being removed by some other means.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-cascade-profile-delete/
    # @param ai_assignments_cascade_profile_delete_request [AiAssignmentsCascadeProfileDeleteRequest] The profile to detach from every assignment. May be sent as the `profileId` query parameter instead of in the body.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_assignments_cascade_profile_delete_with_http_info(ai_assignments_cascade_profile_delete_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AssignmentsApi.ai_assignments_cascade_profile_delete ...'
      end
      # verify the required parameter 'ai_assignments_cascade_profile_delete_request' is set
      if @api_client.config.client_side_validation && ai_assignments_cascade_profile_delete_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_assignments_cascade_profile_delete_request' when calling AI::AssignmentsApi.ai_assignments_cascade_profile_delete"
      end
      # resource path
      local_var_path = '/api/2.0/ai/assignments/cascade-profile-delete'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_assignments_cascade_profile_delete_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AssignmentsApi.ai_assignments_cascade_profile_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AssignmentsApi#ai_assignments_cascade_profile_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all assignments
    # Returns every action-to-profile binding of a scope as one map, which is what a settings screen loads. `entityId` narrows it to a room and has to name one the caller can open; a room that is not an agent room degrades to the portal-wide set rather than answering empty, and omitting the parameter reads the portal-wide set directly. Actions with no binding are simply absent from the map. The `Default` slot is reported as an entry of its own rather than being folded into the others.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-all-assignments/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Hash<String, String>]
    def ai_assignments_get_all_assignments(opts = {})
      data, _status_code, _headers = ai_assignments_get_all_assignments_with_http_info(opts)
      data
    end

    # Get all assignments
    # Returns every action-to-profile binding of a scope as one map, which is what a settings screen loads. `entityId` narrows it to a room and has to name one the caller can open; a room that is not an agent room degrades to the portal-wide set rather than answering empty, and omitting the parameter reads the portal-wide set directly. Actions with no binding are simply absent from the map. The `Default` slot is reported as an entry of its own rather than being folded into the others.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-all-assignments/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(Hash<String, String>, Integer, Hash)>] Hash<String, String> data, response status code and response headers
    def ai_assignments_get_all_assignments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AssignmentsApi.ai_assignments_get_all_assignments ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/assignments/get-all-assignments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AssignmentsApi.ai_assignments_get_all_assignments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AssignmentsApi#ai_assignments_get_all_assignments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get assignment
    # Returns the profile bound to one AI action, without applying the `Default` fallback - an empty answer means this action has no profile of its own, not that nothing is configured. `actionType` is required and is read from the query. Use `GET api/2.0/ai/assignments/resolve-for-action` to learn which profile would actually serve the action. This reads the portal-wide binding and accepts no `entityId`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-assignment/
    # @param action_type [String] The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def ai_assignments_get_assignment(action_type, opts = {})
      data, _status_code, _headers = ai_assignments_get_assignment_with_http_info(action_type, opts)
      data
    end

    # Get assignment
    # Returns the profile bound to one AI action, without applying the `Default` fallback - an empty answer means this action has no profile of its own, not that nothing is configured. `actionType` is required and is read from the query. Use `GET api/2.0/ai/assignments/resolve-for-action` to learn which profile would actually serve the action. This reads the portal-wide binding and accepts no `entityId`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-assignment/
    # @param action_type [String] The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def ai_assignments_get_assignment_with_http_info(action_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AssignmentsApi.ai_assignments_get_assignment ...'
      end
      # verify the required parameter 'action_type' is set
      if @api_client.config.client_side_validation && action_type.nil?
        fail ArgumentError, "Missing the required parameter 'action_type' when calling AI::AssignmentsApi.ai_assignments_get_assignment"
      end
      # resource path
      local_var_path = '/api/2.0/ai/assignments/get-assignment'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'actionType'] = action_type

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AssignmentsApi.ai_assignments_get_assignment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AssignmentsApi#ai_assignments_get_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resolve for action
    # Returns the profile that will serve one AI action, falling back to the `Default` slot when the action has no profile of its own. `actionType` is required and has to be one of the known actions - an unknown or misspelled value is rejected rather than resolved to the default. `entityId` narrows the lookup to a room, and a room with no assignment of its own degrades to the portal-wide one. This fails when neither slot is set or the bound profile is gone, so use `GET api/2.0/ai/assignments/try-resolve-for-action` when an unconfigured portal should answer empty instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-resolve-for-action/
    # @param action_type [String] The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [AiResolvedAssignment]
    def ai_assignments_resolve_for_action(action_type, opts = {})
      data, _status_code, _headers = ai_assignments_resolve_for_action_with_http_info(action_type, opts)
      data
    end

    # Resolve for action
    # Returns the profile that will serve one AI action, falling back to the `Default` slot when the action has no profile of its own. `actionType` is required and has to be one of the known actions - an unknown or misspelled value is rejected rather than resolved to the default. `entityId` narrows the lookup to a room, and a room with no assignment of its own degrades to the portal-wide one. This fails when neither slot is set or the bound profile is gone, so use `GET api/2.0/ai/assignments/try-resolve-for-action` when an unconfigured portal should answer empty instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-resolve-for-action/
    # @param action_type [String] The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(AiResolvedAssignment, Integer, Hash)>] AiResolvedAssignment data, response status code and response headers
    def ai_assignments_resolve_for_action_with_http_info(action_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AssignmentsApi.ai_assignments_resolve_for_action ...'
      end
      # verify the required parameter 'action_type' is set
      if @api_client.config.client_side_validation && action_type.nil?
        fail ArgumentError, "Missing the required parameter 'action_type' when calling AI::AssignmentsApi.ai_assignments_resolve_for_action"
      end
      # resource path
      local_var_path = '/api/2.0/ai/assignments/resolve-for-action'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'actionType'] = action_type
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiResolvedAssignment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AssignmentsApi.ai_assignments_resolve_for_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AssignmentsApi#ai_assignments_resolve_for_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Try resolve for action
    # Returns the profile that will serve one AI action, exactly as `GET api/2.0/ai/assignments/resolve-for-action` does, but answers with an empty result rather than failing when nothing is configured. `actionType` is required and is validated the same way, and `entityId` narrows the lookup to a room. This is the operation to call when the absence of a profile is a normal state to render - a settings screen, or a feature that hides itself. Both operations are read-only.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-try-resolve-for-action/
    # @param action_type [String] The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [AiResolvedAssignment]
    def ai_assignments_try_resolve_for_action(action_type, opts = {})
      data, _status_code, _headers = ai_assignments_try_resolve_for_action_with_http_info(action_type, opts)
      data
    end

    # Try resolve for action
    # Returns the profile that will serve one AI action, exactly as `GET api/2.0/ai/assignments/resolve-for-action` does, but answers with an empty result rather than failing when nothing is configured. `actionType` is required and is validated the same way, and `entityId` narrows the lookup to a room. This is the operation to call when the absence of a profile is a normal state to render - a settings screen, or a feature that hides itself. Both operations are read-only.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-try-resolve-for-action/
    # @param action_type [String] The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Array<(AiResolvedAssignment, Integer, Hash)>] AiResolvedAssignment data, response status code and response headers
    def ai_assignments_try_resolve_for_action_with_http_info(action_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AssignmentsApi.ai_assignments_try_resolve_for_action ...'
      end
      # verify the required parameter 'action_type' is set
      if @api_client.config.client_side_validation && action_type.nil?
        fail ArgumentError, "Missing the required parameter 'action_type' when calling AI::AssignmentsApi.ai_assignments_try_resolve_for_action"
      end
      # resource path
      local_var_path = '/api/2.0/ai/assignments/try-resolve-for-action'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'actionType'] = action_type
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AiResolvedAssignment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AssignmentsApi.ai_assignments_try_resolve_for_action",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AssignmentsApi#ai_assignments_try_resolve_for_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clear an action's profile
    # Clears the portal-wide binding of one AI action, after which the action falls back to the `Default` slot. `actionType` is required and may be sent in the body or as a query parameter. An action whose slot is already empty is not reported as an error - the call answers success either way, so it is safe to repeat. Clearing `Default` itself leaves the actions that relied on it unresolvable.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-unassign/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_assignments_unassign(body, opts = {})
      data, _status_code, _headers = ai_assignments_unassign_with_http_info(body, opts)
      data
    end

    # Clear an action's profile
    # Clears the portal-wide binding of one AI action, after which the action falls back to the `Default` slot. `actionType` is required and may be sent in the body or as a query parameter. An action whose slot is already empty is not reported as an error - the call answers success either way, so it is safe to repeat. Clearing `Default` itself leaves the actions that relied on it unresolvable.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-unassign/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_assignments_unassign_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AssignmentsApi.ai_assignments_unassign ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::AssignmentsApi.ai_assignments_unassign"
      end
      # resource path
      local_var_path = '/api/2.0/ai/assignments/unassign'

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
        :operation => :"AI::AssignmentsApi.ai_assignments_unassign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AssignmentsApi#ai_assignments_unassign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

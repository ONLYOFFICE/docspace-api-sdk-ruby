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
    # Assign
    # Binds a profile to an AI action, creating the assignment or updating it in place. The profile's declared capabilities are validated against the action, except for the `Default` slot.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-assign/
    # @param ai_assignments_assign_request [AiAssignmentsAssignRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiAssignmentMutationResult]
    def ai_assignments_assign(ai_assignments_assign_request, opts = {})
      data, _status_code, _headers = ai_assignments_assign_with_http_info(ai_assignments_assign_request, opts)
      data
    end

    # Assign
    # Binds a profile to an AI action, creating the assignment or updating it in place. The profile's declared capabilities are validated against the action, except for the `Default` slot.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Applies many action-to-profile bindings at once. Every entry is validated first and nothing is written if any of them fails, so the assignment set is never left half-written.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-bulk-assign/
    # @param request_body [Hash<String, String>] 
    # @param [Hash] opts the optional parameters
    # @return [AiBulkAssignmentResult]
    def ai_assignments_bulk_assign(request_body, opts = {})
      data, _status_code, _headers = ai_assignments_bulk_assign_with_http_info(request_body, opts)
      data
    end

    # Bulk assign
    # Applies many action-to-profile bindings at once. Every entry is validated first and nothing is written if any of them fails, so the assignment set is never left half-written.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-bulk-assign/
    # @param request_body [Hash<String, String>] 
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
      auth_names = opts[:debug_auth_names] || []

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
    # Cleans up the assignments pointing at a profile that is about to be deleted: the `Default` slot is promoted to the first remaining profile (or dropped when none is left), and every other slot holding that profile is unbound.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-cascade-profile-delete/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_assignments_cascade_profile_delete(body, opts = {})
      data, _status_code, _headers = ai_assignments_cascade_profile_delete_with_http_info(body, opts)
      data
    end

    # Cascade profile delete
    # Cleans up the assignments pointing at a profile that is about to be deleted: the `Default` slot is promoted to the first remaining profile (or dropped when none is left), and every other slot holding that profile is unbound.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-cascade-profile-delete/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_assignments_cascade_profile_delete_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AssignmentsApi.ai_assignments_cascade_profile_delete ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::AssignmentsApi.ai_assignments_cascade_profile_delete"
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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

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
    # Returns the full action-to-profile assignment map of the scope.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-all-assignments/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_id The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
    # @return [Hash<String, String>]
    def ai_assignments_get_all_assignments(opts = {})
      data, _status_code, _headers = ai_assignments_get_all_assignments_with_http_info(opts)
      data
    end

    # Get all assignments
    # Returns the full action-to-profile assignment map of the scope.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Returns the profile bound to one AI action, without the `Default` fallback.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-assignment/
    # @param action_type [String] The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def ai_assignments_get_assignment(action_type, opts = {})
      data, _status_code, _headers = ai_assignments_get_assignment_with_http_info(action_type, opts)
      data
    end

    # Get assignment
    # Returns the profile bound to one AI action, without the `Default` fallback.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Resolves the profile bound to an AI action, falling back to the `Default` slot when the action itself has none. Fails when neither slot is set or the bound profile no longer exists - use `try-resolve-for-action` for an empty answer instead.
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
    # Resolves the profile bound to an AI action, falling back to the `Default` slot when the action itself has none. Fails when neither slot is set or the bound profile no longer exists - use `try-resolve-for-action` for an empty answer instead.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Resolves the profile bound to an AI action exactly like `resolve-for-action`, but answers with an empty result instead of failing when nothing is configured.
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
    # Resolves the profile bound to an AI action exactly like `resolve-for-action`, but answers with an empty result instead of failing when nothing is configured.
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
      auth_names = opts[:debug_auth_names] || []

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

    # Unassign
    # Removes the profile binding of an AI action. Does nothing when that slot is already empty.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-unassign/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_assignments_unassign(body, opts = {})
      data, _status_code, _headers = ai_assignments_unassign_with_http_info(body, opts)
      data
    end

    # Unassign
    # Removes the profile binding of an AI action. Does nothing when that slot is already empty.
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
      auth_names = opts[:debug_auth_names] || []

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

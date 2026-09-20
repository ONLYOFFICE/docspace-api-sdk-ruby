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
    class PromptsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Save a prompt
    # Saves a new prompt in the caller's own prompt library and returns it. The name has to be non-empty and unique inside its folder, and `folderId` has to name an existing folder - omit it to save the prompt at the root. Prompts are per-user: another user's library is never visible here, and no permission beyond having AI enabled is needed. The answer carries the stored prompt including the ID to use with the update, move and delete operations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create/
    # @param ai_create_prompt_input [AiCreatePromptInput] 
    # @param [Hash] opts the optional parameters
    # @return [AiPromptMutationResult]
    def ai_prompts_create(ai_create_prompt_input, opts = {})
      data, _status_code, _headers = ai_prompts_create_with_http_info(ai_create_prompt_input, opts)
      data
    end

    # Save a prompt
    # Saves a new prompt in the caller's own prompt library and returns it. The name has to be non-empty and unique inside its folder, and `folderId` has to name an existing folder - omit it to save the prompt at the root. Prompts are per-user: another user's library is never visible here, and no permission beyond having AI enabled is needed. The answer carries the stored prompt including the ID to use with the update, move and delete operations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create/
    # @param ai_create_prompt_input [AiCreatePromptInput] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiPromptMutationResult, Integer, Hash)>] AiPromptMutationResult data, response status code and response headers
    def ai_prompts_create_with_http_info(ai_create_prompt_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_create ...'
      end
      # verify the required parameter 'ai_create_prompt_input' is set
      if @api_client.config.client_side_validation && ai_create_prompt_input.nil?
        fail ArgumentError, "Missing the required parameter 'ai_create_prompt_input' when calling AI::PromptsApi.ai_prompts_create"
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/create'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_create_prompt_input)

      # return_type
      return_type = opts[:debug_return_type] || 'AiPromptMutationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::PromptsApi.ai_prompts_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create folder
    # Creates a folder in the caller's prompt library and returns it. The name has to be non-empty and unique across that library. Folders do not nest: there is one flat level, so a folder cannot be created inside another. The answer carries the folder ID to use as `folderId` when saving or moving prompts.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create-folder/
    # @param body [String] The name of the folder to create, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [AiFolderMutationResult]
    def ai_prompts_create_folder(body, opts = {})
      data, _status_code, _headers = ai_prompts_create_folder_with_http_info(body, opts)
      data
    end

    # Create folder
    # Creates a folder in the caller's prompt library and returns it. The name has to be non-empty and unique across that library. Folders do not nest: there is one flat level, so a folder cannot be created inside another. The answer carries the folder ID to use as `folderId` when saving or moving prompts.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create-folder/
    # @param body [String] The name of the folder to create, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFolderMutationResult, Integer, Hash)>] AiFolderMutationResult data, response status code and response headers
    def ai_prompts_create_folder_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_create_folder ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::PromptsApi.ai_prompts_create_folder"
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/create-folder'

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
      return_type = opts[:debug_return_type] || 'AiFolderMutationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::PromptsApi.ai_prompts_create_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_create_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a saved prompt
    # Deletes one saved prompt from the caller's library. The ID may be sent in the body or as a query parameter, and it is required. An ID that does not exist, or that belongs to another user, is not reported: the call answers success without deleting anything. The deletion is permanent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete/
    # @param body [String] The ID of the prompt to delete, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_prompts_delete(body, opts = {})
      data, _status_code, _headers = ai_prompts_delete_with_http_info(body, opts)
      data
    end

    # Delete a saved prompt
    # Deletes one saved prompt from the caller's library. The ID may be sent in the body or as a query parameter, and it is required. An ID that does not exist, or that belongs to another user, is not reported: the call answers success without deleting anything. The deletion is permanent.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete/
    # @param body [String] The ID of the prompt to delete, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_prompts_delete_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_delete ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::PromptsApi.ai_prompts_delete"
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/delete'

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
        :operation => :"AI::PromptsApi.ai_prompts_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete folder
    # Deletes a folder together with every prompt inside it, permanently. The ID is required and may be sent in the body or as a query parameter. Unlike deleting a prompt, this checks first: a folder that does not exist, and one that belongs to another user, both answer 404 - the two cases are deliberately indistinguishable, so a foreign folder cannot be probed. Move the prompts out with `PUT api/2.0/ai/prompts/move` first if they should survive.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete-folder/
    # @param body [String] The ID of the folder to delete, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_prompts_delete_folder(body, opts = {})
      data, _status_code, _headers = ai_prompts_delete_folder_with_http_info(body, opts)
      data
    end

    # Delete folder
    # Deletes a folder together with every prompt inside it, permanently. The ID is required and may be sent in the body or as a query parameter. Unlike deleting a prompt, this checks first: a folder that does not exist, and one that belongs to another user, both answer 404 - the two cases are deliberately indistinguishable, so a foreign folder cannot be probed. Move the prompts out with `PUT api/2.0/ai/prompts/move` first if they should survive.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete-folder/
    # @param body [String] The ID of the folder to delete, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_prompts_delete_folder_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_delete_folder ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::PromptsApi.ai_prompts_delete_folder"
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/delete-folder'

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
        :operation => :"AI::PromptsApi.ai_prompts_delete_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_delete_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export the prompt library
    # Builds a versioned bundle of every prompt and folder in the caller's library and returns it, with no parameters. The bundle is self-contained: it carries its own format version so an older export can still be read back, and it is the input `POST api/2.0/ai/prompts/import-bundle` expects. This is also the only way to read the whole library at once, since listing is folder-scoped. Nothing is changed by the call.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-export/
    # @param [Hash] opts the optional parameters
    # @return [AiPromptBundle]
    def ai_prompts_export(opts = {})
      data, _status_code, _headers = ai_prompts_export_with_http_info(opts)
      data
    end

    # Export the prompt library
    # Builds a versioned bundle of every prompt and folder in the caller's library and returns it, with no parameters. The bundle is self-contained: it carries its own format version so an older export can still be read back, and it is the input `POST api/2.0/ai/prompts/import-bundle` expects. This is also the only way to read the whole library at once, since listing is folder-scoped. Nothing is changed by the call.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-export/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiPromptBundle, Integer, Hash)>] AiPromptBundle data, response status code and response headers
    def ai_prompts_export_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_export ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/export'

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
      return_type = opts[:debug_return_type] || 'AiPromptBundle'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::PromptsApi.ai_prompts_export",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a saved prompt
    # Returns one saved prompt by its ID. The ID is required and is read from the query. An ID that is unknown, or that belongs to another user, is not reported as 404: the answer is an empty body with status 200, so treat a missing payload as no such prompt. Prompt IDs come from `GET api/2.0/ai/prompts/list` or from the answer of the create operation.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-by-id/
    # @param id [String] The saved prompt identifier.
    # @param [Hash] opts the optional parameters
    # @return [AiPrompt]
    def ai_prompts_get_by_id(id, opts = {})
      data, _status_code, _headers = ai_prompts_get_by_id_with_http_info(id, opts)
      data
    end

    # Get a saved prompt
    # Returns one saved prompt by its ID. The ID is required and is read from the query. An ID that is unknown, or that belongs to another user, is not reported as 404: the answer is an empty body with status 200, so treat a missing payload as no such prompt. Prompt IDs come from `GET api/2.0/ai/prompts/list` or from the answer of the create operation.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-by-id/
    # @param id [String] The saved prompt identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiPrompt, Integer, Hash)>] AiPrompt data, response status code and response headers
    def ai_prompts_get_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_get_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::PromptsApi.ai_prompts_get_by_id"
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/get-by-id'

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
      return_type = opts[:debug_return_type] || 'AiPrompt'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::PromptsApi.ai_prompts_get_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a prompt folder
    # Returns one folder of the caller's prompt library by its ID, without the prompts inside it. The ID is required and is read from the query. An unknown or foreign ID is not reported as 404: the answer is an empty body with status 200. This differs from the delete operation on the same ID, which does answer 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-folder-by-id/
    # @param id [String] The prompt folder identifier.
    # @param [Hash] opts the optional parameters
    # @return [AiPromptFolder]
    def ai_prompts_get_folder_by_id(id, opts = {})
      data, _status_code, _headers = ai_prompts_get_folder_by_id_with_http_info(id, opts)
      data
    end

    # Get a prompt folder
    # Returns one folder of the caller's prompt library by its ID, without the prompts inside it. The ID is required and is read from the query. An unknown or foreign ID is not reported as 404: the answer is an empty body with status 200. This differs from the delete operation on the same ID, which does answer 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-folder-by-id/
    # @param id [String] The prompt folder identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiPromptFolder, Integer, Hash)>] AiPromptFolder data, response status code and response headers
    def ai_prompts_get_folder_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_get_folder_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AI::PromptsApi.ai_prompts_get_folder_by_id"
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/get-folder-by-id'

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
      return_type = opts[:debug_return_type] || 'AiPromptFolder'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::PromptsApi.ai_prompts_get_folder_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_get_folder_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import bundle
    # Writes a bundle produced by `GET api/2.0/ai/prompts/export` back into the caller's library. `mode` decides how: `replace` deletes the current prompts and folders before writing, and `merge` writes the bundle on top of what is already there. The folder references inside the bundle are validated before anything is written, so a corrupt bundle is rejected whole rather than applied halfway. `replace` is destructive and cannot be undone - export first if the current library matters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-import-bundle/
    # @param ai_prompts_import_bundle_request [AiPromptsImportBundleRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiImportResult]
    def ai_prompts_import_bundle(ai_prompts_import_bundle_request, opts = {})
      data, _status_code, _headers = ai_prompts_import_bundle_with_http_info(ai_prompts_import_bundle_request, opts)
      data
    end

    # Import bundle
    # Writes a bundle produced by `GET api/2.0/ai/prompts/export` back into the caller's library. `mode` decides how: `replace` deletes the current prompts and folders before writing, and `merge` writes the bundle on top of what is already there. The folder references inside the bundle are validated before anything is written, so a corrupt bundle is rejected whole rather than applied halfway. `replace` is destructive and cannot be undone - export first if the current library matters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-import-bundle/
    # @param ai_prompts_import_bundle_request [AiPromptsImportBundleRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiImportResult, Integer, Hash)>] AiImportResult data, response status code and response headers
    def ai_prompts_import_bundle_with_http_info(ai_prompts_import_bundle_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_import_bundle ...'
      end
      # verify the required parameter 'ai_prompts_import_bundle_request' is set
      if @api_client.config.client_side_validation && ai_prompts_import_bundle_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_prompts_import_bundle_request' when calling AI::PromptsApi.ai_prompts_import_bundle"
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/import-bundle'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_prompts_import_bundle_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiImportResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::PromptsApi.ai_prompts_import_bundle",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_import_bundle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List saved prompts
    # Lists the caller's saved prompts, newest first. `folderId` scopes the answer to one folder, and omitting it - or sending it empty - lists the prompts that sit at the root rather than every prompt, because the client fetcher cannot tell an absent value from a null one. There is therefore no way to ask for the whole library in one call: walk the folders from `GET api/2.0/ai/prompts/list-folders`, or take everything at once with `GET api/2.0/ai/prompts/export`. The prompts of other users are never included.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder_id The prompt folder identifier. Omit to list the prompts that sit outside any folder.
    # @return [Array<AiPrompt>]
    def ai_prompts_list(opts = {})
      data, _status_code, _headers = ai_prompts_list_with_http_info(opts)
      data
    end

    # List saved prompts
    # Lists the caller's saved prompts, newest first. `folderId` scopes the answer to one folder, and omitting it - or sending it empty - lists the prompts that sit at the root rather than every prompt, because the client fetcher cannot tell an absent value from a null one. There is therefore no way to ask for the whole library in one call: walk the folders from `GET api/2.0/ai/prompts/list-folders`, or take everything at once with `GET api/2.0/ai/prompts/export`. The prompts of other users are never included.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder_id The prompt folder identifier. Omit to list the prompts that sit outside any folder.
    # @return [Array<(Array<AiPrompt>, Integer, Hash)>] Array<AiPrompt> data, response status code and response headers
    def ai_prompts_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_list ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/list'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'folderId'] = opts[:'folder_id'] if !opts[:'folder_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AiPrompt>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::PromptsApi.ai_prompts_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List folders
    # Lists every folder of the caller's prompt library, newest first, with no parameters and no pagination. Folders are flat, so the answer is a single list rather than a tree. The prompts inside them are not included - read those with `GET api/2.0/ai/prompts/list` per folder. Another user's folders are never listed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list-folders/
    # @param [Hash] opts the optional parameters
    # @return [Array<AiPromptFolder>]
    def ai_prompts_list_folders(opts = {})
      data, _status_code, _headers = ai_prompts_list_folders_with_http_info(opts)
      data
    end

    # List folders
    # Lists every folder of the caller's prompt library, newest first, with no parameters and no pagination. Folders are flat, so the answer is a single list rather than a tree. The prompts inside them are not included - read those with `GET api/2.0/ai/prompts/list` per folder. Another user's folders are never listed.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list-folders/
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AiPromptFolder>, Integer, Hash)>] Array<AiPromptFolder> data, response status code and response headers
    def ai_prompts_list_folders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_list_folders ...'
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/list-folders'

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
      return_type = opts[:debug_return_type] || 'Array<AiPromptFolder>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::PromptsApi.ai_prompts_list_folders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_list_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Move a prompt to a folder
    # Moves a saved prompt into another folder, or to the root when `folderId` is omitted or null. The name is re-validated in the target folder, so the move fails when a prompt of that name already sits there - rename it first with `PUT api/2.0/ai/prompts/update`. Nothing about the prompt other than its folder changes. The answer carries the moved prompt.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-move/
    # @param ai_prompts_move_request [AiPromptsMoveRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiPromptMutationResult]
    def ai_prompts_move(ai_prompts_move_request, opts = {})
      data, _status_code, _headers = ai_prompts_move_with_http_info(ai_prompts_move_request, opts)
      data
    end

    # Move a prompt to a folder
    # Moves a saved prompt into another folder, or to the root when `folderId` is omitted or null. The name is re-validated in the target folder, so the move fails when a prompt of that name already sits there - rename it first with `PUT api/2.0/ai/prompts/update`. Nothing about the prompt other than its folder changes. The answer carries the moved prompt.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-move/
    # @param ai_prompts_move_request [AiPromptsMoveRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiPromptMutationResult, Integer, Hash)>] AiPromptMutationResult data, response status code and response headers
    def ai_prompts_move_with_http_info(ai_prompts_move_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_move ...'
      end
      # verify the required parameter 'ai_prompts_move_request' is set
      if @api_client.config.client_side_validation && ai_prompts_move_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_prompts_move_request' when calling AI::PromptsApi.ai_prompts_move"
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/move'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_prompts_move_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiPromptMutationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::PromptsApi.ai_prompts_move",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_move\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rename folder
    # Renames a folder in the caller's prompt library, validating the new name against the folders already there. The prompts inside it are untouched and keep their IDs. The answer carries the renamed folder. A name that another folder already uses is rejected.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-rename-folder/
    # @param ai_prompts_rename_folder_request [AiPromptsRenameFolderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiFolderMutationResult]
    def ai_prompts_rename_folder(ai_prompts_rename_folder_request, opts = {})
      data, _status_code, _headers = ai_prompts_rename_folder_with_http_info(ai_prompts_rename_folder_request, opts)
      data
    end

    # Rename folder
    # Renames a folder in the caller's prompt library, validating the new name against the folders already there. The prompts inside it are untouched and keep their IDs. The answer carries the renamed folder. A name that another folder already uses is rejected.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-rename-folder/
    # @param ai_prompts_rename_folder_request [AiPromptsRenameFolderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiFolderMutationResult, Integer, Hash)>] AiFolderMutationResult data, response status code and response headers
    def ai_prompts_rename_folder_with_http_info(ai_prompts_rename_folder_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_rename_folder ...'
      end
      # verify the required parameter 'ai_prompts_rename_folder_request' is set
      if @api_client.config.client_side_validation && ai_prompts_rename_folder_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_prompts_rename_folder_request' when calling AI::PromptsApi.ai_prompts_rename_folder"
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/rename-folder'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_prompts_rename_folder_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiFolderMutationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::PromptsApi.ai_prompts_rename_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_rename_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a saved prompt
    # Changes a saved prompt and returns the stored result. Only the fields present in `updates` are written, so a partial object leaves the rest of the prompt alone. The name and the folder reference are re-validated whenever either changes, which means an update can fail on a name another prompt in the same folder already uses. Use `PUT api/2.0/ai/prompts/move` to change only the folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-update/
    # @param ai_prompts_update_request [AiPromptsUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiPromptMutationResult]
    def ai_prompts_update(ai_prompts_update_request, opts = {})
      data, _status_code, _headers = ai_prompts_update_with_http_info(ai_prompts_update_request, opts)
      data
    end

    # Update a saved prompt
    # Changes a saved prompt and returns the stored result. Only the fields present in `updates` are written, so a partial object leaves the rest of the prompt alone. The name and the folder reference are re-validated whenever either changes, which means an update can fail on a name another prompt in the same folder already uses. Use `PUT api/2.0/ai/prompts/move` to change only the folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-update/
    # @param ai_prompts_update_request [AiPromptsUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiPromptMutationResult, Integer, Hash)>] AiPromptMutationResult data, response status code and response headers
    def ai_prompts_update_with_http_info(ai_prompts_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::PromptsApi.ai_prompts_update ...'
      end
      # verify the required parameter 'ai_prompts_update_request' is set
      if @api_client.config.client_side_validation && ai_prompts_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_prompts_update_request' when calling AI::PromptsApi.ai_prompts_update"
      end
      # resource path
      local_var_path = '/api/2.0/ai/prompts/update'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_prompts_update_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiPromptMutationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::PromptsApi.ai_prompts_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::PromptsApi#ai_prompts_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

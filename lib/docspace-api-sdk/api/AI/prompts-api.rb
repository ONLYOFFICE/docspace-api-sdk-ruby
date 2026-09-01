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
    # Create
    # Saves a new prompt. The name must be non-empty and unique inside its folder, and `folderId` must point at an existing folder - omit it for the root.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create/
    # @param ai_create_prompt_input [AiCreatePromptInput] 
    # @param [Hash] opts the optional parameters
    # @return [AiPromptMutationResult]
    def ai_prompts_create(ai_create_prompt_input, opts = {})
      data, _status_code, _headers = ai_prompts_create_with_http_info(ai_create_prompt_input, opts)
      data
    end

    # Create
    # Saves a new prompt. The name must be non-empty and unique inside its folder, and `folderId` must point at an existing folder - omit it for the root.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Creates a prompt folder. The name must be non-empty and unique across the portal - prompt folders do not nest.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create-folder/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiFolderMutationResult]
    def ai_prompts_create_folder(body, opts = {})
      data, _status_code, _headers = ai_prompts_create_folder_with_http_info(body, opts)
      data
    end

    # Create folder
    # Creates a prompt folder. The name must be non-empty and unique across the portal - prompt folders do not nest.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create-folder/
    # @param body [String] 
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
      auth_names = opts[:debug_auth_names] || []

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

    # Delete
    # Deletes a saved prompt. Does nothing when it no longer exists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_prompts_delete(body, opts = {})
      data, _status_code, _headers = ai_prompts_delete_with_http_info(body, opts)
      data
    end

    # Delete
    # Deletes a saved prompt. Does nothing when it no longer exists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete/
    # @param body [String] 
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
      auth_names = opts[:debug_auth_names] || []

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
    # Deletes a prompt folder together with the prompts inside it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete-folder/
    # @param body [String] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_prompts_delete_folder(body, opts = {})
      data, _status_code, _headers = ai_prompts_delete_folder_with_http_info(body, opts)
      data
    end

    # Delete folder
    # Deletes a prompt folder together with the prompts inside it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete-folder/
    # @param body [String] 
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
      auth_names = opts[:debug_auth_names] || []

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

    # Export
    # Builds a self-contained, versioned bundle of every saved prompt and folder, ready for `import-bundle`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-export/
    # @param [Hash] opts the optional parameters
    # @return [AiPromptBundle]
    def ai_prompts_export(opts = {})
      data, _status_code, _headers = ai_prompts_export_with_http_info(opts)
      data
    end

    # Export
    # Builds a self-contained, versioned bundle of every saved prompt and folder, ready for `import-bundle`.
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
      auth_names = opts[:debug_auth_names] || []

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

    # Get by id
    # Returns one saved prompt, or an empty result when the identifier is unknown.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-by-id/
    # @param id [String] The saved prompt identifier.
    # @param [Hash] opts the optional parameters
    # @return [AiPrompt]
    def ai_prompts_get_by_id(id, opts = {})
      data, _status_code, _headers = ai_prompts_get_by_id_with_http_info(id, opts)
      data
    end

    # Get by id
    # Returns one saved prompt, or an empty result when the identifier is unknown.
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
      auth_names = opts[:debug_auth_names] || []

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

    # Get folder by id
    # Returns one prompt folder, or an empty result when the identifier is unknown.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-folder-by-id/
    # @param id [String] The prompt folder identifier.
    # @param [Hash] opts the optional parameters
    # @return [AiPromptFolder]
    def ai_prompts_get_folder_by_id(id, opts = {})
      data, _status_code, _headers = ai_prompts_get_folder_by_id_with_http_info(id, opts)
      data
    end

    # Get folder by id
    # Returns one prompt folder, or an empty result when the identifier is unknown.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Restores a prompt bundle. `replace` wipes the current prompts and folders before writing the bundle, `merge` writes the bundle on top of what is already there; both validate the folder references inside the bundle before any write, so a corrupt bundle is rejected whole.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-import-bundle/
    # @param ai_prompts_import_bundle_request [AiPromptsImportBundleRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiImportResult]
    def ai_prompts_import_bundle(ai_prompts_import_bundle_request, opts = {})
      data, _status_code, _headers = ai_prompts_import_bundle_with_http_info(ai_prompts_import_bundle_request, opts)
      data
    end

    # Import bundle
    # Restores a prompt bundle. `replace` wipes the current prompts and folders before writing the bundle, `merge` writes the bundle on top of what is already there; both validate the folder references inside the bundle before any write, so a corrupt bundle is rejected whole.
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
      auth_names = opts[:debug_auth_names] || []

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

    # List
    # Lists saved prompts. Scope the answer to one folder, ask for the root-level prompts only, or omit the folder to get every prompt newest first.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder_id The prompt folder identifier. Omit to list the prompts that sit outside any folder.
    # @return [Array<AiPrompt>]
    def ai_prompts_list(opts = {})
      data, _status_code, _headers = ai_prompts_list_with_http_info(opts)
      data
    end

    # List
    # Lists saved prompts. Scope the answer to one folder, ask for the root-level prompts only, or omit the folder to get every prompt newest first.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Lists the prompt folders, newest first.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list-folders/
    # @param [Hash] opts the optional parameters
    # @return [Array<AiPromptFolder>]
    def ai_prompts_list_folders(opts = {})
      data, _status_code, _headers = ai_prompts_list_folders_with_http_info(opts)
      data
    end

    # List folders
    # Lists the prompt folders, newest first.
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
      auth_names = opts[:debug_auth_names] || []

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

    # Move
    # Moves a saved prompt into another folder, or to the root. The name is re-validated in the target folder, so the move fails when a prompt of that name is already there.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-move/
    # @param ai_prompts_move_request [AiPromptsMoveRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiPromptMutationResult]
    def ai_prompts_move(ai_prompts_move_request, opts = {})
      data, _status_code, _headers = ai_prompts_move_with_http_info(ai_prompts_move_request, opts)
      data
    end

    # Move
    # Moves a saved prompt into another folder, or to the root. The name is re-validated in the target folder, so the move fails when a prompt of that name is already there.
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
      auth_names = opts[:debug_auth_names] || []

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
    # Renames a prompt folder, validating the new name against the existing folders.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-rename-folder/
    # @param ai_prompts_rename_folder_request [AiPromptsRenameFolderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiFolderMutationResult]
    def ai_prompts_rename_folder(ai_prompts_rename_folder_request, opts = {})
      data, _status_code, _headers = ai_prompts_rename_folder_with_http_info(ai_prompts_rename_folder_request, opts)
      data
    end

    # Rename folder
    # Renames a prompt folder, validating the new name against the existing folders.
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
      auth_names = opts[:debug_auth_names] || []

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

    # Update
    # Updates a saved prompt. The name and the folder reference are re-validated whenever either of them changes.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-update/
    # @param ai_prompts_update_request [AiPromptsUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiPromptMutationResult]
    def ai_prompts_update(ai_prompts_update_request, opts = {})
      data, _status_code, _headers = ai_prompts_update_with_http_info(ai_prompts_update_request, opts)
      data
    end

    # Update
    # Updates a saved prompt. The name and the folder reference are re-validated whenever either of them changes.
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
      auth_names = opts[:debug_auth_names] || []

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

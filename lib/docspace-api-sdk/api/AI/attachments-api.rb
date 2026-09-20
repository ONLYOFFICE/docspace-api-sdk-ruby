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
    class AttachmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete one attachment
    # Permanently deletes one attachment, whether it is still a draft or already bound to a message. The ID is not validated here, so a malformed one surfaces as an error relayed from storage rather than as a 400, and an ID that does not exist answers success without deleting anything. Deleting a bound attachment leaves the message in place without it. The deletion cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete/
    # @param body [String] The ID of the attachment to delete, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_attachments_delete(body, opts = {})
      data, _status_code, _headers = ai_attachments_delete_with_http_info(body, opts)
      data
    end

    # Delete one attachment
    # Permanently deletes one attachment, whether it is still a draft or already bound to a message. The ID is not validated here, so a malformed one surfaces as an error relayed from storage rather than as a 400, and an ID that does not exist answers success without deleting anything. Deleting a bound attachment leaves the message in place without it. The deletion cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete/
    # @param body [String] The ID of the attachment to delete, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_attachments_delete_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AttachmentsApi.ai_attachments_delete ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::AttachmentsApi.ai_attachments_delete"
      end
      # resource path
      local_var_path = '/api/2.0/ai/attachments/delete'

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
        :operation => :"AI::AttachmentsApi.ai_attachments_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AttachmentsApi#ai_attachments_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete many
    # Permanently deletes several attachments in one round trip. `ids` is optional and an absent value is treated as an empty list, so a malformed request quietly deletes nothing instead of failing. IDs that do not exist are skipped without being reported, so the answer confirms only that the call was accepted. The deletions cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete-many/
    # @param request_body [Array<String>] The IDs of the attachments to delete, as a bare JSON array of strings.
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_attachments_delete_many(request_body, opts = {})
      data, _status_code, _headers = ai_attachments_delete_many_with_http_info(request_body, opts)
      data
    end

    # Delete many
    # Permanently deletes several attachments in one round trip. `ids` is optional and an absent value is treated as an empty list, so a malformed request quietly deletes nothing instead of failing. IDs that do not exist are skipped without being reported, so the answer confirms only that the call was accepted. The deletions cannot be undone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete-many/
    # @param request_body [Array<String>] The IDs of the attachments to delete, as a bare JSON array of strings.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_attachments_delete_many_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AttachmentsApi.ai_attachments_delete_many ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling AI::AttachmentsApi.ai_attachments_delete_many"
      end
      # resource path
      local_var_path = '/api/2.0/ai/attachments/delete-many'

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
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AttachmentsApi.ai_attachments_delete_many",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AttachmentsApi#ai_attachments_delete_many\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get one attachment
    # Returns one attachment by its ID, whether it is still a draft or already bound to a message. The ID is required and has to be a non-empty string. An ID that no longer exists is not reported as 404: the answer is a null body with status 200, so treat a missing payload as no such attachment. Use `POST api/2.0/ai/attachments/get-many` to read several at once.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get/
    # @param body [String] The ID of the attachment to read, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [AiAttachment]
    def ai_attachments_get(body, opts = {})
      data, _status_code, _headers = ai_attachments_get_with_http_info(body, opts)
      data
    end

    # Get one attachment
    # Returns one attachment by its ID, whether it is still a draft or already bound to a message. The ID is required and has to be a non-empty string. An ID that no longer exists is not reported as 404: the answer is a null body with status 200, so treat a missing payload as no such attachment. Use `POST api/2.0/ai/attachments/get-many` to read several at once.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get/
    # @param body [String] The ID of the attachment to read, as a bare JSON string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiAttachment, Integer, Hash)>] AiAttachment data, response status code and response headers
    def ai_attachments_get_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AttachmentsApi.ai_attachments_get ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AI::AttachmentsApi.ai_attachments_get"
      end
      # resource path
      local_var_path = '/api/2.0/ai/attachments/get'

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
      return_type = opts[:debug_return_type] || 'AiAttachment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AttachmentsApi.ai_attachments_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AttachmentsApi#ai_attachments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get many
    # Returns several attachments in one call, aligned by position with the `ids` that were sent, so the answer can be zipped straight onto the request. An ID that no longer exists leaves its slot empty rather than shortening the list, which is how a caller tells which of them are gone. `ids` has to be present and non-empty - an empty batch is rejected rather than answered with an empty list. Nothing is changed by the call.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get-many/
    # @param request_body [Array<String>] The IDs of the attachments to read, as a bare JSON array of strings. The answer is aligned with this array by position.
    # @param [Hash] opts the optional parameters
    # @return [Array<AiAttachment>]
    def ai_attachments_get_many(request_body, opts = {})
      data, _status_code, _headers = ai_attachments_get_many_with_http_info(request_body, opts)
      data
    end

    # Get many
    # Returns several attachments in one call, aligned by position with the `ids` that were sent, so the answer can be zipped straight onto the request. An ID that no longer exists leaves its slot empty rather than shortening the list, which is how a caller tells which of them are gone. `ids` has to be present and non-empty - an empty batch is rejected rather than answered with an empty list. Nothing is changed by the call.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get-many/
    # @param request_body [Array<String>] The IDs of the attachments to read, as a bare JSON array of strings. The answer is aligned with this array by position.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AiAttachment>, Integer, Hash)>] Array<AiAttachment> data, response status code and response headers
    def ai_attachments_get_many_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AttachmentsApi.ai_attachments_get_many ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling AI::AttachmentsApi.ai_attachments_get_many"
      end
      # resource path
      local_var_path = '/api/2.0/ai/attachments/get-many'

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
      return_type = opts[:debug_return_type] || 'Array<AiAttachment>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AttachmentsApi.ai_attachments_get_many",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AttachmentsApi#ai_attachments_get_many\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Link to message
    # Binds draft attachments to the chat message that owns them, after that message has been persisted, so that deleting the message removes them too. All three of `ids`, `messageId` and `threadId` are required, and the references are verified rather than trusted: an unknown message answers 404, a message that belongs to a different thread answers 400, and attachments that no longer exist answer 404 naming each missing ID. That verification exists because the underlying binding call skips unknown IDs silently, which used to report success for a link that had not happened. Drafts stay unbound until this succeeds.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-link-to-message/
    # @param ai_attachments_link_to_message_request [AiAttachmentsLinkToMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiSuccessResponse]
    def ai_attachments_link_to_message(ai_attachments_link_to_message_request, opts = {})
      data, _status_code, _headers = ai_attachments_link_to_message_with_http_info(ai_attachments_link_to_message_request, opts)
      data
    end

    # Link to message
    # Binds draft attachments to the chat message that owns them, after that message has been persisted, so that deleting the message removes them too. All three of `ids`, `messageId` and `threadId` are required, and the references are verified rather than trusted: an unknown message answers 404, a message that belongs to a different thread answers 400, and attachments that no longer exist answer 404 naming each missing ID. That verification exists because the underlying binding call skips unknown IDs silently, which used to report success for a link that had not happened. Drafts stay unbound until this succeeds.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-link-to-message/
    # @param ai_attachments_link_to_message_request [AiAttachmentsLinkToMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiSuccessResponse, Integer, Hash)>] AiSuccessResponse data, response status code and response headers
    def ai_attachments_link_to_message_with_http_info(ai_attachments_link_to_message_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AttachmentsApi.ai_attachments_link_to_message ...'
      end
      # verify the required parameter 'ai_attachments_link_to_message_request' is set
      if @api_client.config.client_side_validation && ai_attachments_link_to_message_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_attachments_link_to_message_request' when calling AI::AttachmentsApi.ai_attachments_link_to_message"
      end
      # resource path
      local_var_path = '/api/2.0/ai/attachments/link-to-message'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_attachments_link_to_message_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AttachmentsApi.ai_attachments_link_to_message",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AttachmentsApi#ai_attachments_link_to_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save file
    # Stores one file attachment as a draft and returns it, so its ID can be attached to a message later. `input` carries the host `path` - the DocSpace entry ID the AI backend resolves server-side - the text `content` already extracted from that file, the ONLYOFFICE numeric file `type`, and optionally a `title`; the text is what the model reads, so this operation does not open the file itself. Archives are refused outright, whatever their declared name says. Drafts are not bound to a conversation until `POST api/2.0/ai/attachments/link-to-message` is called, so an unlinked draft outlives the round that created it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-file/
    # @param ai_attachments_save_file_request [AiAttachmentsSaveFileRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiAttachment]
    def ai_attachments_save_file(ai_attachments_save_file_request, opts = {})
      data, _status_code, _headers = ai_attachments_save_file_with_http_info(ai_attachments_save_file_request, opts)
      data
    end

    # Save file
    # Stores one file attachment as a draft and returns it, so its ID can be attached to a message later. `input` carries the host `path` - the DocSpace entry ID the AI backend resolves server-side - the text `content` already extracted from that file, the ONLYOFFICE numeric file `type`, and optionally a `title`; the text is what the model reads, so this operation does not open the file itself. Archives are refused outright, whatever their declared name says. Drafts are not bound to a conversation until `POST api/2.0/ai/attachments/link-to-message` is called, so an unlinked draft outlives the round that created it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-file/
    # @param ai_attachments_save_file_request [AiAttachmentsSaveFileRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiAttachment, Integer, Hash)>] AiAttachment data, response status code and response headers
    def ai_attachments_save_file_with_http_info(ai_attachments_save_file_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AttachmentsApi.ai_attachments_save_file ...'
      end
      # verify the required parameter 'ai_attachments_save_file_request' is set
      if @api_client.config.client_side_validation && ai_attachments_save_file_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_attachments_save_file_request' when calling AI::AttachmentsApi.ai_attachments_save_file"
      end
      # resource path
      local_var_path = '/api/2.0/ai/attachments/save-file'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_attachments_save_file_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiAttachment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AttachmentsApi.ai_attachments_save_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AttachmentsApi#ai_attachments_save_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save files many
    # Stores several file attachments as drafts in one round trip and returns them in the order they were sent. Each entry is validated exactly as the single-file operation validates its `input`, and the first bad one rejects the whole batch with its index named in the message - nothing is stored. `inputs` has to be present and an array: an absent or null value is a malformed request rather than an empty batch, and only an explicit empty array means no files. Follow up with `POST api/2.0/ai/attachments/link-to-message` to bind the drafts to a message.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-files-many/
    # @param ai_attachments_save_files_many_request [AiAttachmentsSaveFilesManyRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<AiAttachment>]
    def ai_attachments_save_files_many(ai_attachments_save_files_many_request, opts = {})
      data, _status_code, _headers = ai_attachments_save_files_many_with_http_info(ai_attachments_save_files_many_request, opts)
      data
    end

    # Save files many
    # Stores several file attachments as drafts in one round trip and returns them in the order they were sent. Each entry is validated exactly as the single-file operation validates its `input`, and the first bad one rejects the whole batch with its index named in the message - nothing is stored. `inputs` has to be present and an array: an absent or null value is a malformed request rather than an empty batch, and only an explicit empty array means no files. Follow up with `POST api/2.0/ai/attachments/link-to-message` to bind the drafts to a message.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-files-many/
    # @param ai_attachments_save_files_many_request [AiAttachmentsSaveFilesManyRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AiAttachment>, Integer, Hash)>] Array<AiAttachment> data, response status code and response headers
    def ai_attachments_save_files_many_with_http_info(ai_attachments_save_files_many_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::AttachmentsApi.ai_attachments_save_files_many ...'
      end
      # verify the required parameter 'ai_attachments_save_files_many_request' is set
      if @api_client.config.client_side_validation && ai_attachments_save_files_many_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_attachments_save_files_many_request' when calling AI::AttachmentsApi.ai_attachments_save_files_many"
      end
      # resource path
      local_var_path = '/api/2.0/ai/attachments/save-files-many'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_attachments_save_files_many_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AiAttachment>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::AttachmentsApi.ai_attachments_save_files_many",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::AttachmentsApi#ai_attachments_save_files_many\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

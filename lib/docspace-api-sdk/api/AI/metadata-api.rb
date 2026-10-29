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
    class MetadataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Fill metadata values
    # Fills the metadata of one file from its text and writes the result. `kind` names the entry's table and `id` its integer identifier; only `file` is accepted for now, a folder or a room answers 400 until it is settled whether their metadata should describe the entry itself or its files; `prompt` is an optional note for the model on what to pay attention to, passed as a hint, never as an instruction; `overwrite` (default false) also replaces the fields that already carry a value, otherwise only the empty ones are filled and the rest are reported as `already_set`; `dryRun` (default true) resolves the values but writes nothing, so the caller shows them for confirmation and saves the accepted ones itself; only an explicit `dryRun: false` writes, and it is meant for a caller that has already collected the user's confirmation. The fields are the entry's own: every field of the visible templates it carries, assigned or inherited through a cascade - a hidden template is skipped as the UI and the search skip it - and its existing custom fields - no field is created here, use `POST api/2.0/ai/meta/generate` and the Files metadata API for that. The text is the file itself, converted to plain text under the caller's rights and cut to the same budgets as the generate route. The model bound to `GenerateMeta` (`Default` when that slot is empty) runs once, without tools, and is told to answer null for a value the text does not state. Each value is then checked the way the client's info panel checks a typed value - an integer for a number, a calendar date for a date, one of the field's own options for a choice - and the ones that pass are written with `PUT api/2.0/files/metadata/{kind}/{id}/values` and `.../customFields`, so the caller needs the rights those routes need; a write the portal refuses is reported per field as `write_failed`, and the call fails with the portal's status only when nothing was written at all. The answer carries `dryRun` as it was applied, the entry's metadata after the write (or as it stands, with `dryRun`), the values written or proposed, the fields left empty with the reason for each, and the documents that were read.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-meta-fill/
    # @param ai_meta_fill_request [AiMetaFillRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiMetaFill200Response]
    def ai_meta_fill(ai_meta_fill_request, opts = {})
      data, _status_code, _headers = ai_meta_fill_with_http_info(ai_meta_fill_request, opts)
      data
    end

    # Fill metadata values
    # Fills the metadata of one file from its text and writes the result. `kind` names the entry's table and `id` its integer identifier; only `file` is accepted for now, a folder or a room answers 400 until it is settled whether their metadata should describe the entry itself or its files; `prompt` is an optional note for the model on what to pay attention to, passed as a hint, never as an instruction; `overwrite` (default false) also replaces the fields that already carry a value, otherwise only the empty ones are filled and the rest are reported as `already_set`; `dryRun` (default true) resolves the values but writes nothing, so the caller shows them for confirmation and saves the accepted ones itself; only an explicit `dryRun: false` writes, and it is meant for a caller that has already collected the user's confirmation. The fields are the entry's own: every field of the visible templates it carries, assigned or inherited through a cascade - a hidden template is skipped as the UI and the search skip it - and its existing custom fields - no field is created here, use `POST api/2.0/ai/meta/generate` and the Files metadata API for that. The text is the file itself, converted to plain text under the caller's rights and cut to the same budgets as the generate route. The model bound to `GenerateMeta` (`Default` when that slot is empty) runs once, without tools, and is told to answer null for a value the text does not state. Each value is then checked the way the client's info panel checks a typed value - an integer for a number, a calendar date for a date, one of the field's own options for a choice - and the ones that pass are written with `PUT api/2.0/files/metadata/{kind}/{id}/values` and `.../customFields`, so the caller needs the rights those routes need; a write the portal refuses is reported per field as `write_failed`, and the call fails with the portal's status only when nothing was written at all. The answer carries `dryRun` as it was applied, the entry's metadata after the write (or as it stands, with `dryRun`), the values written or proposed, the fields left empty with the reason for each, and the documents that were read.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-meta-fill/
    # @param ai_meta_fill_request [AiMetaFillRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiMetaFill200Response, Integer, Hash)>] AiMetaFill200Response data, response status code and response headers
    def ai_meta_fill_with_http_info(ai_meta_fill_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MetadataApi.ai_meta_fill ...'
      end
      # verify the required parameter 'ai_meta_fill_request' is set
      if @api_client.config.client_side_validation && ai_meta_fill_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_meta_fill_request' when calling AI::MetadataApi.ai_meta_fill"
      end
      # resource path
      local_var_path = '/api/2.0/ai/meta/fill'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_meta_fill_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiMetaFill200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::MetadataApi.ai_meta_fill",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MetadataApi#ai_meta_fill\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate metadata fields
    # Reads one file as text and asks the model bound to the `GenerateMeta` action - the `Default` slot when that action has no profile of its own - which custom metadata fields describe it, and what their values are. `kind` names the entry's table and `id` its integer identifier, the same way as `POST api/2.0/ai/meta/fill`; only `file` is accepted for now, a folder or a room answers 400 until it is settled whether their metadata should describe the entry itself or its files; `prompt` is an optional note on the kind of fields the caller is interested in, which is passed to the model as a hint, never as an instruction. The text is the file itself, converted to plain text through the portal's own conversion (word-processing and presentation formats, pdf included, to txt; spreadsheets to csv), under the caller's rights, so a file the caller cannot read is skipped as `forbidden` rather than failing the call. Each document is cut at 40 000 characters and the whole set at 240 000, which `sources[].truncated` reports. The model runs once, without tools, and the answer is validated: field names are trimmed, deduplicated regardless of case and capped at 50, the portal's own limit for custom fields on one entry; each field carries the value the text supports as a string, or `null` when the text does not state one, since a custom field on the portal is text and cannot be saved empty. Nothing is written: the caller decides which fields to create and saves them through the Files metadata API.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-meta-generate/
    # @param ai_meta_generate_request [AiMetaGenerateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AiMetaGenerate200Response]
    def ai_meta_generate(ai_meta_generate_request, opts = {})
      data, _status_code, _headers = ai_meta_generate_with_http_info(ai_meta_generate_request, opts)
      data
    end

    # Generate metadata fields
    # Reads one file as text and asks the model bound to the `GenerateMeta` action - the `Default` slot when that action has no profile of its own - which custom metadata fields describe it, and what their values are. `kind` names the entry's table and `id` its integer identifier, the same way as `POST api/2.0/ai/meta/fill`; only `file` is accepted for now, a folder or a room answers 400 until it is settled whether their metadata should describe the entry itself or its files; `prompt` is an optional note on the kind of fields the caller is interested in, which is passed to the model as a hint, never as an instruction. The text is the file itself, converted to plain text through the portal's own conversion (word-processing and presentation formats, pdf included, to txt; spreadsheets to csv), under the caller's rights, so a file the caller cannot read is skipped as `forbidden` rather than failing the call. Each document is cut at 40 000 characters and the whole set at 240 000, which `sources[].truncated` reports. The model runs once, without tools, and the answer is validated: field names are trimmed, deduplicated regardless of case and capped at 50, the portal's own limit for custom fields on one entry; each field carries the value the text supports as a string, or `null` when the text does not state one, since a custom field on the portal is text and cannot be saved empty. Nothing is written: the caller decides which fields to create and saves them through the Files metadata API.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-meta-generate/
    # @param ai_meta_generate_request [AiMetaGenerateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AiMetaGenerate200Response, Integer, Hash)>] AiMetaGenerate200Response data, response status code and response headers
    def ai_meta_generate_with_http_info(ai_meta_generate_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AI::MetadataApi.ai_meta_generate ...'
      end
      # verify the required parameter 'ai_meta_generate_request' is set
      if @api_client.config.client_side_validation && ai_meta_generate_request.nil?
        fail ArgumentError, "Missing the required parameter 'ai_meta_generate_request' when calling AI::MetadataApi.ai_meta_generate"
      end
      # resource path
      local_var_path = '/api/2.0/ai/meta/generate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ai_meta_generate_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AiMetaGenerate200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cookieAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AI::MetadataApi.ai_meta_generate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AI::MetadataApi#ai_meta_generate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

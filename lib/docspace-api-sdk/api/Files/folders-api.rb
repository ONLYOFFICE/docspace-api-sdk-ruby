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
  module Files
    class FoldersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check for upload conflicts
    # Reports which of the submitted titles already belong to a file in the folder, so an upload can decide in  advance whether to overwrite or to ask for another name. Only the clashing titles come back, unordered and  without repetitions, and an empty array means every name is free. Matching is by title and ignores case, so a  name that differs only in capitalisation is still reported; an existing file that is encrypted is left out,  because an upload cannot take it over. The call changes nothing. It needs the same right as the upload itself,  the right to add content to the folder, which room managers and content creators have and readers, editors and  guests do not; an archived room, a section root and a folder the caller cannot write to are all refused, while  an unknown folder is answered as missing. A request without `filesTitle` is rejected as an invalid request, an  empty list is accepted and answers with an empty array.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-upload/
    # @param folder_id [Integer, String] The folder whose contents the names are tested against; take the id from a listing such as  `GET api/2.0/files/@root`.
    # @param check_upload_request [CheckUploadRequest] The names to test against the files the folder already holds.
    # @param [Hash] opts the optional parameters
    # @return [STRINGArrayWrapper]
    def check_upload(folder_id, check_upload_request, opts = {})
      data, _status_code, _headers = check_upload_with_http_info(folder_id, check_upload_request, opts)
      data
    end

    # Check for upload conflicts
    # Reports which of the submitted titles already belong to a file in the folder, so an upload can decide in  advance whether to overwrite or to ask for another name. Only the clashing titles come back, unordered and  without repetitions, and an empty array means every name is free. Matching is by title and ignores case, so a  name that differs only in capitalisation is still reported; an existing file that is encrypted is left out,  because an upload cannot take it over. The call changes nothing. It needs the same right as the upload itself,  the right to add content to the folder, which room managers and content creators have and readers, editors and  guests do not; an archived room, a section root and a folder the caller cannot write to are all refused, while  an unknown folder is answered as missing. A request without `filesTitle` is rejected as an invalid request, an  empty list is accepted and answers with an empty array.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-upload/
    # @param folder_id [Integer, String] The folder whose contents the names are tested against; take the id from a listing such as  `GET api/2.0/files/@root`.
    # @param check_upload_request [CheckUploadRequest] The names to test against the files the folder already holds.
    # @param [Hash] opts the optional parameters
    # @return [Array<(STRINGArrayWrapper, Integer, Hash)>] STRINGArrayWrapper data, response status code and response headers
    def check_upload_with_http_info(folder_id, check_upload_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.check_upload ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.check_upload"
      end
      # verify the required parameter 'check_upload_request' is set
      if @api_client.config.client_side_validation && check_upload_request.nil?
        fail ArgumentError, "Missing the required parameter 'check_upload_request' when calling Files::FoldersApi.check_upload"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/upload/check'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(check_upload_request)

      # return_type
      return_type = opts[:debug_return_type] || 'STRINGArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.check_upload",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#check_upload\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a folder
    # Creates a folder inside the folder named in the path and answers with the folder as it was stored. The title  is trimmed, may not be blank and is refused when it is longer than the limit the schema prints; titles are not  required to be unique, so creating the same title twice leaves two folders side by side, which makes the call  mutating and not idempotent. The caller needs the right to create content in the parent, which the room  manager, a content creator and the owner of a personal section have; a member without that right, an archived  parent, and a section root that only holds rooms - Rooms, Forms and AI agents - are all refused, as is a  parent that does not exist. Rooms are not created here: use `POST api/2.0/files/rooms` for those, and this  operation for ordinary folders within them. Members of the room are notified of the new folder. Read the  identifier of the new folder from `id` and fill it with `POST api/2.0/files/{folderId}/upload`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder/
    # @param folder_id [Integer, String] The folder the request is addressed to: when a folder is created it is the parent that receives the new  folder, and when a folder is renamed it is the folder that gets the new title.
    # @param create_folder [CreateFolder] The title carried by the request body.
    # @param [Hash] opts the optional parameters
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def create_folder(folder_id, create_folder, opts = {})
      data, _status_code, _headers = create_folder_with_http_info(folder_id, create_folder, opts)
      data
    end

    # Create a folder
    # Creates a folder inside the folder named in the path and answers with the folder as it was stored. The title  is trimmed, may not be blank and is refused when it is longer than the limit the schema prints; titles are not  required to be unique, so creating the same title twice leaves two folders side by side, which makes the call  mutating and not idempotent. The caller needs the right to create content in the parent, which the room  manager, a content creator and the owner of a personal section have; a member without that right, an archived  parent, and a section root that only holds rooms - Rooms, Forms and AI agents - are all refused, as is a  parent that does not exist. Rooms are not created here: use `POST api/2.0/files/rooms` for those, and this  operation for ordinary folders within them. Members of the room are notified of the new folder. Read the  identifier of the new folder from `id` and fill it with `POST api/2.0/files/{folderId}/upload`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder/
    # @param folder_id [Integer, String] The folder the request is addressed to: when a folder is created it is the parent that receives the new  folder, and when a folder is renamed it is the folder that gets the new title.
    # @param create_folder [CreateFolder] The title carried by the request body.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
    def create_folder_with_http_info(folder_id, create_folder, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.create_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.create_folder"
      end
      # verify the required parameter 'create_folder' is set
      if @api_client.config.client_side_validation && create_folder.nil?
        fail ArgumentError, "Missing the required parameter 'create_folder' when calling Files::FoldersApi.create_folder"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_folder)

      # return_type
      return_type = opts[:debug_return_type] || (folder_id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.create_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#create_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create the folder primary external link
    # Answers with the primary external link of a folder or a room, creating it on the first call and returning the  one that already exists afterwards, so the operation is idempotent in effect: a second call with other  parameters does not reconfigure the existing link, and changing one is the business of  `PUT api/2.0/files/folder/{id}/links`. The parameters therefore only shape the link at the moment it is born -  `access` its rights, `title` its name, `expirationDate` its lifetime, which is unlimited here unless one is  given, `internal` whether only signed-in members may follow it, `denyDownload` whether the contents may only  be viewed, and `password` a secret to be asked for. Sending `access` with the value that grants nothing  creates no link and answers with nothing. The caller needs the right to manage the links of the room the  folder belongs to, which its manager and a portal administrator acting as room manager have, and a member with  content-creator or read access is refused with 403; an unknown folder is answered with 404. Read the address  from `sharedTo.shareLink`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder-primary-external-link/
    # @param id [Integer, String] The folder or room the link belongs to.
    # @param folder_link_request [FolderLinkRequest] The link and the way it is to be shaped.
    # @param [Hash] opts the optional parameters
    # @return [FileShareWrapper]
    def create_folder_primary_external_link(id, folder_link_request, opts = {})
      data, _status_code, _headers = create_folder_primary_external_link_with_http_info(id, folder_link_request, opts)
      data
    end

    # Create the folder primary external link
    # Answers with the primary external link of a folder or a room, creating it on the first call and returning the  one that already exists afterwards, so the operation is idempotent in effect: a second call with other  parameters does not reconfigure the existing link, and changing one is the business of  `PUT api/2.0/files/folder/{id}/links`. The parameters therefore only shape the link at the moment it is born -  `access` its rights, `title` its name, `expirationDate` its lifetime, which is unlimited here unless one is  given, `internal` whether only signed-in members may follow it, `denyDownload` whether the contents may only  be viewed, and `password` a secret to be asked for. Sending `access` with the value that grants nothing  creates no link and answers with nothing. The caller needs the right to manage the links of the room the  folder belongs to, which its manager and a portal administrator acting as room manager have, and a member with  content-creator or read access is refused with 403; an unknown folder is answered with 404. Read the address  from `sharedTo.shareLink`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder-primary-external-link/
    # @param id [Integer, String] The folder or room the link belongs to.
    # @param folder_link_request [FolderLinkRequest] The link and the way it is to be shaped.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileShareWrapper, Integer, Hash)>] FileShareWrapper data, response status code and response headers
    def create_folder_primary_external_link_with_http_info(id, folder_link_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.create_folder_primary_external_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FoldersApi.create_folder_primary_external_link"
      end
      # verify the required parameter 'folder_link_request' is set
      if @api_client.config.client_side_validation && folder_link_request.nil?
        fail ArgumentError, "Missing the required parameter 'folder_link_request' when calling Files::FoldersApi.create_folder_primary_external_link"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{id}/link'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(folder_link_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.create_folder_primary_external_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#create_folder_primary_external_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start the folder history report generation
    # Queues a background job that renders the history of a folder into a spreadsheet, or into a CSV file when  `format` asks for one, and saves the result in the caller's My documents. The answer is the queued task, not  the report: poll `GET api/2.0/files/folder/{folderId}/log/report` until `isCompleted` is true, then take the  file from `resultFileId`, `resultFileName` and `resultFileUrl`, of which a CSV report fills only the last two.  `from` and `to` limit the exported period; leaving both out exports the whole history. While a report for the  same folder and caller is still running, this call joins it and answers with the running task instead of  starting a second one, so retrying is safe. The caller needs read access to the folder and may not be a guest,  and the portal plan has to include the audit feature - otherwise the call is refused, with 403 for the access  rule and 404 for a folder that does not exist. Only a portal administrator gets the address, browser and  platform columns. Give up a running report with `DELETE api/2.0/files/folder/{folderId}/log/report`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-report-folder-history/
    # @param folder_id [Integer] The folder whose history is exported; the report covers the folder itself and the entries inside it.
    # @param [Hash] opts the optional parameters
    # @option opts [AuditReportFormat] :format The shape the report is written in: `Xlsx` produces a spreadsheet that is saved as a file of the portal, while  `Csv` produces a comma-separated text file that is uploaded to My documents without being reported back with  a file identifier.
    # @option opts [Time] :from The earliest moment an exported entry may have, read in the time zone of the portal; left out, the report  starts at the oldest entry the portal still keeps.
    # @option opts [Time] :to The latest moment an exported entry may have, read in the time zone of the portal; left out, the report ends  at the newest entry.
    # @return [DocumentBuilderTaskWrapper]
    def create_report_folder_history(folder_id, opts = {})
      data, _status_code, _headers = create_report_folder_history_with_http_info(folder_id, opts)
      data
    end

    # Start the folder history report generation
    # Queues a background job that renders the history of a folder into a spreadsheet, or into a CSV file when  `format` asks for one, and saves the result in the caller's My documents. The answer is the queued task, not  the report: poll `GET api/2.0/files/folder/{folderId}/log/report` until `isCompleted` is true, then take the  file from `resultFileId`, `resultFileName` and `resultFileUrl`, of which a CSV report fills only the last two.  `from` and `to` limit the exported period; leaving both out exports the whole history. While a report for the  same folder and caller is still running, this call joins it and answers with the running task instead of  starting a second one, so retrying is safe. The caller needs read access to the folder and may not be a guest,  and the portal plan has to include the audit feature - otherwise the call is refused, with 403 for the access  rule and 404 for a folder that does not exist. Only a portal administrator gets the address, browser and  platform columns. Give up a running report with `DELETE api/2.0/files/folder/{folderId}/log/report`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-report-folder-history/
    # @param folder_id [Integer] The folder whose history is exported; the report covers the folder itself and the entries inside it.
    # @param [Hash] opts the optional parameters
    # @option opts [AuditReportFormat] :format The shape the report is written in: `Xlsx` produces a spreadsheet that is saved as a file of the portal, while  `Csv` produces a comma-separated text file that is uploaded to My documents without being reported back with  a file identifier.
    # @option opts [Time] :from The earliest moment an exported entry may have, read in the time zone of the portal; left out, the report  starts at the oldest entry the portal still keeps.
    # @option opts [Time] :to The latest moment an exported entry may have, read in the time zone of the portal; left out, the report ends  at the newest entry.
    # @return [Array<(DocumentBuilderTaskWrapper, Integer, Hash)>] DocumentBuilderTaskWrapper data, response status code and response headers
    def create_report_folder_history_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.create_report_folder_history ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.create_report_folder_history"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/log/report'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DocumentBuilderTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.create_report_folder_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#create_report_folder_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a folder
    # Queues the deletion of one folder together with everything inside it, and answers with the file operations of  the caller, the one just created among them. The folder is not gone when the response arrives: poll  `GET api/2.0/files/fileops` until the operation reports `finished`, and read its `error` to learn whether the  deletion succeeded. By default the folder is moved to the Trash section, from where it can be restored;  `immediately=true` discards it for good instead, and inside a room, where there is no Trash, deletion is  always final. `deleteAfter=true` postpones the deletion until the editing sessions on the contents have ended,  so files somebody is working on are not pulled away. The caller needs the right to delete the folder, which  the room manager, a portal administrator acting as room manager and a content creator acting on a folder of  their own have; editing access alone, read access and a guest are refused. The call is destructive. To delete  several items at once use `PUT api/2.0/files/fileops/delete`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-folder/
    # @param folder_id [Integer, String] The folder to delete, together with everything it holds.
    # @param delete_folder [DeleteFolder] How the deletion is to be carried out.
    # @param [Hash] opts the optional parameters
    # @return [FileOperationArrayWrapper]
    def delete_folder(folder_id, delete_folder, opts = {})
      data, _status_code, _headers = delete_folder_with_http_info(folder_id, delete_folder, opts)
      data
    end

    # Delete a folder
    # Queues the deletion of one folder together with everything inside it, and answers with the file operations of  the caller, the one just created among them. The folder is not gone when the response arrives: poll  `GET api/2.0/files/fileops` until the operation reports `finished`, and read its `error` to learn whether the  deletion succeeded. By default the folder is moved to the Trash section, from where it can be restored;  `immediately=true` discards it for good instead, and inside a room, where there is no Trash, deletion is  always final. `deleteAfter=true` postpones the deletion until the editing sessions on the contents have ended,  so files somebody is working on are not pulled away. The caller needs the right to delete the folder, which  the room manager, a portal administrator acting as room manager and a content creator acting on a folder of  their own have; editing access alone, read access and a guest are refused. The call is destructive. To delete  several items at once use `PUT api/2.0/files/fileops/delete`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-folder/
    # @param folder_id [Integer, String] The folder to delete, together with everything it holds.
    # @param delete_folder [DeleteFolder] How the deletion is to be carried out.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileOperationArrayWrapper, Integer, Hash)>] FileOperationArrayWrapper data, response status code and response headers
    def delete_folder_with_http_info(folder_id, delete_folder, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.delete_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.delete_folder"
      end
      # verify the required parameter 'delete_folder' is set
      if @api_client.config.client_side_validation && delete_folder.nil?
        fail ArgumentError, "Missing the required parameter 'delete_folder' when calling Files::FoldersApi.delete_folder"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_folder)

      # return_type
      return_type = opts[:debug_return_type] || 'FileOperationArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.delete_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#delete_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate XLSX report by folder
    # Rebuilds the spreadsheet that gathers the answers submitted to a form, starting from the Complete folder  that holds the filled copies. The answer names the original form the results belong to, says in `isNewFile`  whether the spreadsheet is being created or an existing one rewritten in place, and carries the queued job in  `task`; the file itself is not ready yet, so poll `GET api/2.0/files/file/{fileId}/xlsx` with the identifier  of the form until the task reports completion. The folder has to be the Complete folder of a form-filling  room and has to hold at least one submitted copy whose original form still exists, and the caller needs the  right to maintain that form, which the room manager has. A folder that does not exist, or one that holds  nothing to report on, is answered with 404, and a folder of the wrong kind or a caller without those rights  with 403. The call is mutating: it writes the results file of the form.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx-by-folder/
    # @param folder_id [Integer] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [XlsxReportResponseWrapper]
    def generate_xlsx_by_folder(folder_id, opts = {})
      data, _status_code, _headers = generate_xlsx_by_folder_with_http_info(folder_id, opts)
      data
    end

    # Generate XLSX report by folder
    # Rebuilds the spreadsheet that gathers the answers submitted to a form, starting from the Complete folder  that holds the filled copies. The answer names the original form the results belong to, says in `isNewFile`  whether the spreadsheet is being created or an existing one rewritten in place, and carries the queued job in  `task`; the file itself is not ready yet, so poll `GET api/2.0/files/file/{fileId}/xlsx` with the identifier  of the form until the task reports completion. The folder has to be the Complete folder of a form-filling  room and has to hold at least one submitted copy whose original form still exists, and the caller needs the  right to maintain that form, which the room manager has. A folder that does not exist, or one that holds  nothing to report on, is answered with 404, and a folder of the wrong kind or a caller without those rights  with 403. The call is mutating: it writes the results file of the form.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx-by-folder/
    # @param folder_id [Integer] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(XlsxReportResponseWrapper, Integer, Hash)>] XlsxReportResponseWrapper data, response status code and response headers
    def generate_xlsx_by_folder_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.generate_xlsx_by_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.generate_xlsx_by_folder"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/xlsx'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'XlsxReportResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.generate_xlsx_by_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#generate_xlsx_by_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the Favorites section
    # Returns the caller's own Favorites section: the files and folders this account has marked as favorite,  together with the section folder itself. Favorites are per-account, so the entries another member marked are  not listed here, and a guest sees only their own, usually empty, list. Mark a single file with  `GET api/2.0/files/favorites/{fileId}`, or add and remove batches of files and folders with  `POST api/2.0/files/favorites` and `DELETE api/2.0/files/favorites`. Nothing in the section is modified,  though passing `sortBy` saves the requested order as the default order for this account. Entries the caller  can no longer read, and entries that have been moved to the Trash section, drop out of the listing even  though their favorite mark stays, so the section can shrink without an explicit unmark. `folders` and `files`  hold one page of the section, `total` counts the entries matching the request before `count` and `startIndex`  are applied, and `current` describes the section folder itself.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-favorites-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read.
    # @option opts [FilterType] :filter_type Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds.
    # @option opts [Integer] :count The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read.
    # @option opts [Integer] :start_index The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account.
    # @option opts [String] :filter_value The search string the section is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the section unfiltered.
    # @return [FolderContentWrapper]
    def get_favorites_folder(opts = {})
      data, _status_code, _headers = get_favorites_folder_with_http_info(opts)
      data
    end

    # Get the Favorites section
    # Returns the caller's own Favorites section: the files and folders this account has marked as favorite,  together with the section folder itself. Favorites are per-account, so the entries another member marked are  not listed here, and a guest sees only their own, usually empty, list. Mark a single file with  `GET api/2.0/files/favorites/{fileId}`, or add and remove batches of files and folders with  `POST api/2.0/files/favorites` and `DELETE api/2.0/files/favorites`. Nothing in the section is modified,  though passing `sortBy` saves the requested order as the default order for this account. Entries the caller  can no longer read, and entries that have been moved to the Trash section, drop out of the listing even  though their favorite mark stays, so the section can shrink without an explicit unmark. `folders` and `files`  hold one page of the section, `total` counts the entries matching the request before `count` and `startIndex`  are applied, and `current` describes the section folder itself.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-favorites-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read.
    # @option opts [FilterType] :filter_type Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds.
    # @option opts [Integer] :count The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read.
    # @option opts [Integer] :start_index The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account.
    # @option opts [String] :filter_value The search string the section is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the section unfiltered.
    # @return [Array<(FolderContentWrapper, Integer, Hash)>] FolderContentWrapper data, response status code and response headers
    def get_favorites_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_favorites_folder ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_favorites_folder, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_favorites_folder, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/@favorites'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'filterValue'] = opts[:'filter_value'] if !opts[:'filter_value'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FolderContentWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_favorites_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_favorites_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get used space of files
    # Reports how much storage the portal spends on documents, split by section - My documents, Trash, Rooms,  Archive and, where the feature is on, AI agents - each entry naming the section and the space it takes in  bytes. The figures cover the whole portal rather than the calling account, and moving an entry between  sections moves its space with it, which is why deleting a file to the Trash does not free anything until the  Trash is emptied. Only a caller who may change portal settings, that is the owner and the portal  administrators, is allowed here; a room administrator, an ordinary member and a guest are all refused. The  call is read-only, takes no parameters and answers with the sections in a fixed order. The quota of the portal  as a whole, storage outside documents included, is not part of this answer.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-used-space/
    # @param [Hash] opts the optional parameters
    # @return [FilesStatisticsResultWrapper]
    def get_files_used_space(opts = {})
      data, _status_code, _headers = get_files_used_space_with_http_info(opts)
      data
    end

    # Get used space of files
    # Reports how much storage the portal spends on documents, split by section - My documents, Trash, Rooms,  Archive and, where the feature is on, AI agents - each entry naming the section and the space it takes in  bytes. The figures cover the whole portal rather than the calling account, and moving an entry between  sections moves its space with it, which is why deleting a file to the Trash does not free anything until the  Trash is emptied. Only a caller who may change portal settings, that is the owner and the portal  administrators, is allowed here; a room administrator, an ordinary member and a guest are all refused. The  call is read-only, takes no parameters and answers with the sections in a fixed order. The quota of the portal  as a whole, storage outside documents included, is not part of this answer.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-used-space/
    # @param [Hash] opts the optional parameters
    # @return [Array<(FilesStatisticsResultWrapper, Integer, Hash)>] FilesStatisticsResultWrapper data, response status code and response headers
    def get_files_used_space_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_files_used_space ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/filesusedspace'

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
      return_type = opts[:debug_return_type] || 'FilesStatisticsResultWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_files_used_space",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_files_used_space\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get folder form filter
    # Lists the fields the completed forms of a form-filling room carry, each of them a key and the kind of value  behind it, so that a client can offer them as filters. Feed a pair from this list back as `formsItemKey` and  `formsItemType` of `GET api/2.0/files/{folderId}` to keep only the completed forms whose field of that name  holds a value. The fields are read from the search index of one of the forms already gathered, so they appear  once indexing has caught up with the first submission. Only the Complete folder of a form-filling room  carries such fields: for any other folder, for a folder that does not exist and for one that has been deleted  the answer is an empty list rather than a refusal, and the same holds while nothing has been submitted yet.  The operation reads the index alone, changes nothing and needs no authorization.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder/
    # @param folder_id [Integer] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [FormsItemArrayWrapper]
    def get_folder(folder_id, opts = {})
      data, _status_code, _headers = get_folder_with_http_info(folder_id, opts)
      data
    end

    # Get folder form filter
    # Lists the fields the completed forms of a form-filling room carry, each of them a key and the kind of value  behind it, so that a client can offer them as filters. Feed a pair from this list back as `formsItemKey` and  `formsItemType` of `GET api/2.0/files/{folderId}` to keep only the completed forms whose field of that name  holds a value. The fields are read from the search index of one of the forms already gathered, so they appear  once indexing has caught up with the first submission. Only the Complete folder of a form-filling room  carries such fields: for any other folder, for a folder that does not exist and for one that has been deleted  the answer is an empty list rather than a refusal, and the same holds while nothing has been submitted yet.  The operation reads the index alone, changes nothing and needs no authorization.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder/
    # @param folder_id [Integer] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FormsItemArrayWrapper, Integer, Hash)>] FormsItemArrayWrapper data, response status code and response headers
    def get_folder_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_folder"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/formfilter'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FormsItemArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a folder by ID
    # Returns one page of the contents of a folder - its subfolders in `folders`, its files in `files`, the folder  itself in `current` and the chain of parents in `pathParts` - and is the operation a client browses the file  tree with. `filterType`, `filterValue`, `extension`, `userIdOrGroupId`, `sharedBy` and `folderType` narrow  what is listed, `applyFilterOption` decides whether those filters bite on the files, on the folders or on  both, and `withSubFolders`, which is on unless it is switched off, lets a narrowed request descend through the  whole subtree instead of the top level alone. `filterValue` is matched against titles and against indexed  document content, and indexing is asynchronous, so a file uploaded a moment ago can be missing from a search  for a short while. `count` and `startIndex` page through the result while `total` counts everything that  matches, and `sortBy` with `sortOrder` both order the page and are saved as the default order of the account.  Reading a room or an ordinary folder clears its new-item marks for the caller. A caller who may not read the  folder is answered with 403, and a folder that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-by-folder-id/
    # @param folder_id [Integer, String] The folder whose contents are listed. Each section root has an operation of its own, such as  `GET api/2.0/files/@my`, and every other folder is opened by the identifier a listing gave for it.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read.
    # @option opts [String] :shared_by Restricts the listing to the entries this member shared, which narrows a shared listing down to what one  person handed out.
    # @option opts [FilterType] :filter_type Narrows the listing to a single kind of entry, such as documents, spreadsheets, images or one type of room.  Omit it to list every kind the folder holds.
    # @option opts [Integer, String] :room_id Keeps only the entries that lie in this room, which matters when the listing being read gathers entries from  more than one of them.
    # @option opts [Array<Integer>] :folder_type Keeps only the folders of these kinds, each given as the number of a folder type; it is how a listing is  narrowed down to, say, the form-filling folders of a room.
    # @option opts [Boolean] :exclude_subject Turns `userIdOrGroupId` around: with true the entries of that member or group are the ones left out, with  false they are the only ones kept.
    # @option opts [ApplyFilterOption] :apply_filter_option Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered.
    # @option opts [Boolean] :with_sub_folders Whether a narrowed request reaches into the subfolders: with true, which is what an omitted parameter means,  matching entries are gathered from the whole subtree, with false only the top level is read. It makes a  difference only once `filterType`, `userIdOrGroupId` or `filterValue` narrows the request, because an  unfiltered listing always shows the top level alone.
    # @option opts [String] :extension Keeps only the files carrying one of these extensions, several of them separated by commas; the leading dot is  optional.
    # @option opts [SearchArea] :search_area Which area a listing that spans several of them is taken from - the active rooms, the archive, the room  templates or the form-filling rooms. A folder that belongs to one area only settles the area itself and  ignores the parameter.
    # @option opts [String] :forms_item_key Keeps only the completed forms whose form field of this name holds a value. Take the name from  `GET api/2.0/files/{folderId}/formfilter`, and use it in the folder that gathers the completed copies of a  form-filling room.
    # @option opts [String] :forms_item_type The kind of the form field named by `formsItemKey`, taken from the same list; the two are sent together.
    # @option opts [Integer] :count The size of one page of the listing. Pair it with `startIndex` to walk through the result, and compare the two  with `total` in the response to see when the last page has been read.
    # @option opts [Integer] :start_index The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account.
    # @option opts [String] :filter_value The search string the listing is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the folder unfiltered.
    # @option opts [Location] :location Where the entries of a tag-based listing have to live to be kept: `Room` keeps what lies in a room,  `Documents` what lies in a personal section, and `Link` what was reached through an external link that is  still valid. It shapes the Favorites and Recent listings and does nothing in an ordinary folder.
    # @return [FolderContentWrapper, ThirdPartyFolderContentWrapper]
    def get_folder_by_folder_id(folder_id, opts = {})
      data, _status_code, _headers = get_folder_by_folder_id_with_http_info(folder_id, opts)
      data
    end

    # Get a folder by ID
    # Returns one page of the contents of a folder - its subfolders in `folders`, its files in `files`, the folder  itself in `current` and the chain of parents in `pathParts` - and is the operation a client browses the file  tree with. `filterType`, `filterValue`, `extension`, `userIdOrGroupId`, `sharedBy` and `folderType` narrow  what is listed, `applyFilterOption` decides whether those filters bite on the files, on the folders or on  both, and `withSubFolders`, which is on unless it is switched off, lets a narrowed request descend through the  whole subtree instead of the top level alone. `filterValue` is matched against titles and against indexed  document content, and indexing is asynchronous, so a file uploaded a moment ago can be missing from a search  for a short while. `count` and `startIndex` page through the result while `total` counts everything that  matches, and `sortBy` with `sortOrder` both order the page and are saved as the default order of the account.  Reading a room or an ordinary folder clears its new-item marks for the caller. A caller who may not read the  folder is answered with 403, and a folder that does not exist with 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-by-folder-id/
    # @param folder_id [Integer, String] The folder whose contents are listed. Each section root has an operation of its own, such as  `GET api/2.0/files/@my`, and every other folder is opened by the identifier a listing gave for it.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read.
    # @option opts [String] :shared_by Restricts the listing to the entries this member shared, which narrows a shared listing down to what one  person handed out.
    # @option opts [FilterType] :filter_type Narrows the listing to a single kind of entry, such as documents, spreadsheets, images or one type of room.  Omit it to list every kind the folder holds.
    # @option opts [Integer, String] :room_id Keeps only the entries that lie in this room, which matters when the listing being read gathers entries from  more than one of them.
    # @option opts [Array<Integer>] :folder_type Keeps only the folders of these kinds, each given as the number of a folder type; it is how a listing is  narrowed down to, say, the form-filling folders of a room.
    # @option opts [Boolean] :exclude_subject Turns `userIdOrGroupId` around: with true the entries of that member or group are the ones left out, with  false they are the only ones kept.
    # @option opts [ApplyFilterOption] :apply_filter_option Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered.
    # @option opts [Boolean] :with_sub_folders Whether a narrowed request reaches into the subfolders: with true, which is what an omitted parameter means,  matching entries are gathered from the whole subtree, with false only the top level is read. It makes a  difference only once `filterType`, `userIdOrGroupId` or `filterValue` narrows the request, because an  unfiltered listing always shows the top level alone.
    # @option opts [String] :extension Keeps only the files carrying one of these extensions, several of them separated by commas; the leading dot is  optional.
    # @option opts [SearchArea] :search_area Which area a listing that spans several of them is taken from - the active rooms, the archive, the room  templates or the form-filling rooms. A folder that belongs to one area only settles the area itself and  ignores the parameter.
    # @option opts [String] :forms_item_key Keeps only the completed forms whose form field of this name holds a value. Take the name from  `GET api/2.0/files/{folderId}/formfilter`, and use it in the folder that gathers the completed copies of a  form-filling room.
    # @option opts [String] :forms_item_type The kind of the form field named by `formsItemKey`, taken from the same list; the two are sent together.
    # @option opts [Integer] :count The size of one page of the listing. Pair it with `startIndex` to walk through the result, and compare the two  with `total` in the response to see when the last page has been read.
    # @option opts [Integer] :start_index The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account.
    # @option opts [String] :filter_value The search string the listing is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the folder unfiltered.
    # @option opts [Location] :location Where the entries of a tag-based listing have to live to be kept: `Room` keeps what lies in a room,  `Documents` what lies in a personal section, and `Link` what was reached through an external link that is  still valid. It shapes the Favorites and Recent listings and does nothing in an ordinary folder.
    # @return [Array<(FolderContentWrapper, ThirdPartyFolderContentWrapper, Integer, Hash)>] FolderContentWrapper, ThirdPartyFolderContentWrapper data, response status code and response headers
    def get_folder_by_folder_id_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder_by_folder_id ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_folder_by_folder_id"
      end
      allowable_values = [0, 1, 2, 3, 5, 6, 8, 10, 11, 12, 13, 14, 15, 16, 19, 20, 21, 22, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]
      if @api_client.config.client_side_validation && opts[:'folder_type'] && !opts[:'folder_type'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"folder_type\", must include one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_folder_by_folder_id, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_folder_by_folder_id, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'sharedBy'] = opts[:'shared_by'] if !opts[:'shared_by'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'roomId'] = opts[:'room_id'] if !opts[:'room_id'].nil?
      query_params[:'folderType'] = @api_client.build_collection_param(opts[:'folder_type'], :multi) if !opts[:'folder_type'].nil?
      query_params[:'excludeSubject'] = opts[:'exclude_subject'] if !opts[:'exclude_subject'].nil?
      query_params[:'applyFilterOption'] = opts[:'apply_filter_option'] if !opts[:'apply_filter_option'].nil?
      query_params[:'withSubFolders'] = opts[:'with_sub_folders'] if !opts[:'with_sub_folders'].nil?
      query_params[:'extension'] = opts[:'extension'] if !opts[:'extension'].nil?
      query_params[:'searchArea'] = opts[:'search_area'] if !opts[:'search_area'].nil?
      query_params[:'formsItemKey'] = opts[:'forms_item_key'] if !opts[:'forms_item_key'].nil?
      query_params[:'formsItemType'] = opts[:'forms_item_type'] if !opts[:'forms_item_type'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'filterValue'] = opts[:'filter_value'] if !opts[:'filter_value'].nil?
      query_params[:'Location'] = opts[:'location'] if !opts[:'location'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || (folder_id.is_a?(String) ? 'ThirdPartyFolderContentWrapper' : 'FolderContentWrapper')

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder_by_folder_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder_by_folder_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get folder history
    # Lists what has happened to a folder and to the entries inside it - creations, renames, uploads, moves,  deletions and changes of access - each record naming the action, the moment it happened and the member behind  it. Records that belong to one action are grouped, so a batch arrives as a single entry carrying the rest of  itself in `related`, and the list runs from the most recent record backwards. `fromDate` and `toDate` narrow  the period, `startIndex` and `count` page through the result, and the number of records matching the request  is reported in the response headers rather than in the body. Any member who can read the folder may read its  history; a caller without access is answered with 403 and a folder that does not exist with 404. When the  folder is a form-filling folder the caller reached through a filling invitation, the history is narrowed to  what that caller may see. The call is read-only. To take the same history away as a spreadsheet, start a  report with `POST api/2.0/files/folder/{folderId}/log/report`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-history/
    # @param folder_id [Integer] The folder whose activity log is read; the log covers the folder itself and the entries inside it.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from_date The earliest moment an entry may have, read in the time zone of the portal; left out, the log starts at the  oldest entry the portal still keeps.
    # @option opts [Time] :to_date The latest moment an entry may have, read in the time zone of the portal; left out, the log ends at the newest  entry.
    # @option opts [Integer] :count How many entries one page holds. The number of entries that match the query is reported in the response  headers, not in the body.
    # @option opts [Integer] :start_index How many entries to skip before the page begins, counted from the newest one, so pages are taken by adding the  page size to it.
    # @return [HistoryArrayWrapper]
    def get_folder_history(folder_id, opts = {})
      data, _status_code, _headers = get_folder_history_with_http_info(folder_id, opts)
      data
    end

    # Get folder history
    # Lists what has happened to a folder and to the entries inside it - creations, renames, uploads, moves,  deletions and changes of access - each record naming the action, the moment it happened and the member behind  it. Records that belong to one action are grouped, so a batch arrives as a single entry carrying the rest of  itself in `related`, and the list runs from the most recent record backwards. `fromDate` and `toDate` narrow  the period, `startIndex` and `count` page through the result, and the number of records matching the request  is reported in the response headers rather than in the body. Any member who can read the folder may read its  history; a caller without access is answered with 403 and a folder that does not exist with 404. When the  folder is a form-filling folder the caller reached through a filling invitation, the history is narrowed to  what that caller may see. The call is read-only. To take the same history away as a spreadsheet, start a  report with `POST api/2.0/files/folder/{folderId}/log/report`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-history/
    # @param folder_id [Integer] The folder whose activity log is read; the log covers the folder itself and the entries inside it.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from_date The earliest moment an entry may have, read in the time zone of the portal; left out, the log starts at the  oldest entry the portal still keeps.
    # @option opts [Time] :to_date The latest moment an entry may have, read in the time zone of the portal; left out, the log ends at the newest  entry.
    # @option opts [Integer] :count How many entries one page holds. The number of entries that match the query is reported in the response  headers, not in the body.
    # @option opts [Integer] :start_index How many entries to skip before the page begins, counted from the newest one, so pages are taken by adding the  page size to it.
    # @return [Array<(HistoryArrayWrapper, Integer, Hash)>] HistoryArrayWrapper data, response status code and response headers
    def get_folder_history_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder_history ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_folder_history"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_folder_history, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_folder_history, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/log'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fromDate'] = opts[:'from_date'] if !opts[:'from_date'].nil?
      query_params[:'toDate'] = opts[:'to_date'] if !opts[:'to_date'].nil?
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
      return_type = opts[:debug_return_type] || 'HistoryArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get folder information
    # Returns one folder as an object - its title, its parent, the moments it was created and last changed, the  access the caller has to it, the number of items that are new for them, and the room settings when the folder  is a room - without listing anything inside it. Use it to resolve a folder identifier into something  displayable, and `GET api/2.0/files/{folderId}` when the contents are what is wanted; unlike that operation,  this one leaves the new-item marks of the folder alone. Any member who can read the folder may call it, and an  anonymous caller only through an external link that grants access, everybody else being refused; a folder that  does not exist is answered as not found. The call is read-only. The chain of parents above the folder is not  part of the answer and is read with `GET api/2.0/files/folder/{folderId}/path`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-info/
    # @param folder_id [Integer, String] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def get_folder_info(folder_id, opts = {})
      data, _status_code, _headers = get_folder_info_with_http_info(folder_id, opts)
      data
    end

    # Get folder information
    # Returns one folder as an object - its title, its parent, the moments it was created and last changed, the  access the caller has to it, the number of items that are new for them, and the room settings when the folder  is a room - without listing anything inside it. Use it to resolve a folder identifier into something  displayable, and `GET api/2.0/files/{folderId}` when the contents are what is wanted; unlike that operation,  this one leaves the new-item marks of the folder alone. Any member who can read the folder may call it, and an  anonymous caller only through an external link that grants access, everybody else being refused; a folder that  does not exist is answered as not found. The call is read-only. The chain of parents above the folder is not  part of the answer and is read with `GET api/2.0/files/folder/{folderId}/path`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-info/
    # @param folder_id [Integer, String] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
    def get_folder_info_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder_info ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_folder_info"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || (folder_id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get folder external links
    # Lists the external links of a folder or a room, each with its identifier, title, address, rights, expiration  date, password flag and download restriction, the primary link among them once it exists. At most the first  hundred links are answered and the number returned is reported in the response headers; there are no paging  parameters here. A folder that has never been shared by link answers with an empty list, and so does a member  who may read the folder but not manage its links - the empty answer therefore means nothing to show you  rather than no links exist. A member without access to the room is refused, an anonymous caller is rejected,  and a folder that does not exist is answered as not found. The call is read-only. Take an identifier from here  to `PUT api/2.0/files/folder/{id}/links` to change or remove that link, and read the primary one alone with  `GET api/2.0/files/folder/{id}/link`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-links/
    # @param id [Integer, String] The folder or room whose external links are listed.
    # @param [Hash] opts the optional parameters
    # @return [FileShareArrayWrapper]
    def get_folder_links(id, opts = {})
      data, _status_code, _headers = get_folder_links_with_http_info(id, opts)
      data
    end

    # Get folder external links
    # Lists the external links of a folder or a room, each with its identifier, title, address, rights, expiration  date, password flag and download restriction, the primary link among them once it exists. At most the first  hundred links are answered and the number returned is reported in the response headers; there are no paging  parameters here. A folder that has never been shared by link answers with an empty list, and so does a member  who may read the folder but not manage its links - the empty answer therefore means nothing to show you  rather than no links exist. A member without access to the room is refused, an anonymous caller is rejected,  and a folder that does not exist is answered as not found. The call is read-only. Take an identifier from here  to `PUT api/2.0/files/folder/{id}/links` to change or remove that link, and read the primary one alone with  `GET api/2.0/files/folder/{id}/link`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-links/
    # @param id [Integer, String] The folder or room whose external links are listed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileShareArrayWrapper, Integer, Hash)>] FileShareArrayWrapper data, response status code and response headers
    def get_folder_links_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder_links ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FoldersApi.get_folder_links"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{id}/links'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileShareArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder_links",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder_links\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the folder path
    # Returns the chain of folders that leads to the folder named in the path, ordered from the section root down to  the folder itself, which is the last entry. It is what a breadcrumb trail is built from, and it also tells a  client which section - a room, the personal section, the archive - a bare folder identifier belongs to. Only  the folders the caller may see are part of the chain, so a member who was given access to a folder deep inside  a room gets a shorter path than the room manager does. The caller needs read access to the folder and is  otherwise answered with 403, while a folder that does not exist is answered as not found. The call is  read-only and takes no paging parameters. To go the other way, from a folder down into its contents, call  `GET api/2.0/files/{folderId}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-path/
    # @param folder_id [Integer, String] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [FileEntryBaseArrayWrapper]
    def get_folder_path(folder_id, opts = {})
      data, _status_code, _headers = get_folder_path_with_http_info(folder_id, opts)
      data
    end

    # Get the folder path
    # Returns the chain of folders that leads to the folder named in the path, ordered from the section root down to  the folder itself, which is the last entry. It is what a breadcrumb trail is built from, and it also tells a  client which section - a room, the personal section, the archive - a bare folder identifier belongs to. Only  the folders the caller may see are part of the chain, so a member who was given access to a folder deep inside  a room gets a shorter path than the room manager does. The caller needs read access to the folder and is  otherwise answered with 403, while a folder that does not exist is answered as not found. The call is  read-only and takes no paging parameters. To go the other way, from a folder down into its contents, call  `GET api/2.0/files/{folderId}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-path/
    # @param folder_id [Integer, String] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileEntryBaseArrayWrapper, Integer, Hash)>] FileEntryBaseArrayWrapper data, response status code and response headers
    def get_folder_path_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder_path ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_folder_path"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/path'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileEntryBaseArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder_path",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the folder primary external link
    # Answers with the primary external link of a folder or a room - the one the Copy link action of a client  hands out - with its address in `sharedTo.shareLink`, its rights in `access`, and its title, expiration date,  password flag and download restriction beside them. The link is created on the first read if the folder has  none, with read rights, no password and no expiry, so this operation mutates on that first call and is a plain  read afterwards; repeated calls answer with the same link identifier. The caller needs the right to manage the  links of the room the folder belongs to, which its manager and a portal administrator acting as room manager  have; a member with read access alone is refused with 403 and an anonymous caller is rejected, while a link  that was deliberately revoked is answered with 404 rather than being recreated. The paging parameters are  accepted for compatibility and leave the single link answered here unchanged. Every external link of the same  folder is listed by `GET api/2.0/files/folder/{id}/links`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-primary-external-link/
    # @param id [Integer, String] The folder or room the operation addresses. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count How many entries at most to answer with, in the operations of this folder that return a list; an operation  that answers with a single object is not affected by it.
    # @option opts [Integer] :start_index How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page.
    # @return [FileShareWrapper]
    def get_folder_primary_external_link(id, opts = {})
      data, _status_code, _headers = get_folder_primary_external_link_with_http_info(id, opts)
      data
    end

    # Get the folder primary external link
    # Answers with the primary external link of a folder or a room - the one the Copy link action of a client  hands out - with its address in `sharedTo.shareLink`, its rights in `access`, and its title, expiration date,  password flag and download restriction beside them. The link is created on the first read if the folder has  none, with read rights, no password and no expiry, so this operation mutates on that first call and is a plain  read afterwards; repeated calls answer with the same link identifier. The caller needs the right to manage the  links of the room the folder belongs to, which its manager and a portal administrator acting as room manager  have; a member with read access alone is refused with 403 and an anonymous caller is rejected, while a link  that was deliberately revoked is answered with 404 rather than being recreated. The paging parameters are  accepted for compatibility and leave the single link answered here unchanged. Every external link of the same  folder is listed by `GET api/2.0/files/folder/{id}/links`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-primary-external-link/
    # @param id [Integer, String] The folder or room the operation addresses. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count How many entries at most to answer with, in the operations of this folder that return a list; an operation  that answers with a single object is not affected by it.
    # @option opts [Integer] :start_index How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page.
    # @return [Array<(FileShareWrapper, Integer, Hash)>] FileShareWrapper data, response status code and response headers
    def get_folder_primary_external_link_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folder_primary_external_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FoldersApi.get_folder_primary_external_link"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_folder_primary_external_link, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_folder_primary_external_link, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/folder/{id}/link'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'FileShareWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folder_primary_external_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folder_primary_external_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get subfolders
    # Lists the folders that sit directly inside the folder named in the path, ordered by title, without their own  contents and without the files that lie beside them. The whole list arrives at once - there are no paging or  filtering parameters here - so for a large folder, or when the files are wanted as well, use  `GET api/2.0/files/{folderId}`, which pages and filters. A folder that holds no subfolders answers with an  empty list. The caller needs read access to the folder, and only the subfolders they may see are listed, so a  member of a room can get fewer entries than its manager; a caller without access is answered with 403, and a  folder that does not exist, or one that has been deleted for good, is answered as not found. The call is  read-only and leaves the new-item marks of the folder alone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folders/
    # @param folder_id [Integer, String] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [FileEntryBaseArrayWrapper]
    def get_folders(folder_id, opts = {})
      data, _status_code, _headers = get_folders_with_http_info(folder_id, opts)
      data
    end

    # Get subfolders
    # Lists the folders that sit directly inside the folder named in the path, ordered by title, without their own  contents and without the files that lie beside them. The whole list arrives at once - there are no paging or  filtering parameters here - so for a large folder, or when the files are wanted as well, use  `GET api/2.0/files/{folderId}`, which pages and filters. A folder that holds no subfolders answers with an  empty list. The caller needs read access to the folder, and only the subfolders they may see are listed, so a  member of a room can get fewer entries than its manager; a caller without access is answered with 403, and a  folder that does not exist, or one that has been deleted for good, is answered as not found. The call is  read-only and leaves the new-item marks of the folder alone.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folders/
    # @param folder_id [Integer, String] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileEntryBaseArrayWrapper, Integer, Hash)>] FileEntryBaseArrayWrapper data, response status code and response headers
    def get_folders_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_folders ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_folders"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/subfolders'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileEntryBaseArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_folders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the Forms section
    # Returns the Forms section: the flat list of form-filling rooms the caller may read. Such rooms are stored  under the Rooms tree but are surfaced only here, so `GET api/2.0/files/rooms` leaves them out of the active  area and lists them when `searchArea` names the forms area instead. The section is not expanded into room  content, so `folders` carries the rooms while `files` comes back empty; to read what is inside one of them,  call `GET api/2.0/files/{folderId}` with the room identifier. Nothing is modified, though passing `sortBy`  saves the requested order as the default order for this account. `filterType`, `filterValue`,  `userIdOrGroupId` and the sorting parameters narrow and order the room list, `count` and `startIndex` page  through it, `total` reports how many rooms match the request in full, and `current` describes the section  folder itself.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-forms-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read.
    # @option opts [FilterType] :filter_type Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds.
    # @option opts [Integer] :count The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read.
    # @option opts [Integer] :start_index The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account.
    # @option opts [String] :filter_value The search string the section is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the section unfiltered.
    # @return [FolderContentWrapper]
    def get_forms_folder(opts = {})
      data, _status_code, _headers = get_forms_folder_with_http_info(opts)
      data
    end

    # Get the Forms section
    # Returns the Forms section: the flat list of form-filling rooms the caller may read. Such rooms are stored  under the Rooms tree but are surfaced only here, so `GET api/2.0/files/rooms` leaves them out of the active  area and lists them when `searchArea` names the forms area instead. The section is not expanded into room  content, so `folders` carries the rooms while `files` comes back empty; to read what is inside one of them,  call `GET api/2.0/files/{folderId}` with the room identifier. Nothing is modified, though passing `sortBy`  saves the requested order as the default order for this account. `filterType`, `filterValue`,  `userIdOrGroupId` and the sorting parameters narrow and order the room list, `count` and `startIndex` page  through it, `total` reports how many rooms match the request in full, and `current` describes the section  folder itself.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-forms-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read.
    # @option opts [FilterType] :filter_type Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds.
    # @option opts [Integer] :count The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read.
    # @option opts [Integer] :start_index The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account.
    # @option opts [String] :filter_value The search string the section is filtered by: it is matched as a substring of entry titles and, for files,  against the indexed document content as well. Omit it to list the section unfiltered.
    # @return [Array<(FolderContentWrapper, Integer, Hash)>] FolderContentWrapper data, response status code and response headers
    def get_forms_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_forms_folder ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_forms_folder, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_forms_folder, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/@forms'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'filterValue'] = opts[:'filter_value'] if !opts[:'filter_value'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FolderContentWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_forms_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_forms_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the My documents section
    # Returns the contents of the caller's My documents section, the personal storage that belongs to this account  alone and stays invisible to other members until something in it is shared explicitly. Any authenticated  member that has a personal section can read it; guest accounts are not given one, and the call then answers  404. Nothing in the section is modified, though passing `sortBy` saves the requested order as the default  order for this account. Without a filter only the top level of the section is listed; as soon as `filterType`,  `userIdOrGroupId` or `filterValue` narrows the request, the search descends through the whole subtree.  `filterValue` is matched against titles and against indexed document content, and the index is written  asynchronously, so a file uploaded a moment ago can be missing from a search for a short while. `folders` and  `files` hold one page of the result, `total` counts everything that matches before `count` and `startIndex`  are applied, and `current` describes the section folder. To open a folder inside the section, call  `GET api/2.0/files/{folderId}` with its identifier.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-my-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read.
    # @option opts [FilterType] :filter_type Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds.
    # @option opts [ApplyFilterOption] :apply_filter_option Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered.
    # @option opts [Integer] :count The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read.
    # @option opts [Integer] :start_index The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account.
    # @option opts [String] :filter_value The search string the section is filtered by, matched as a substring of entry titles. Omit it to list the  section unfiltered.
    # @return [FolderContentWrapper]
    def get_my_folder(opts = {})
      data, _status_code, _headers = get_my_folder_with_http_info(opts)
      data
    end

    # Get the My documents section
    # Returns the contents of the caller's My documents section, the personal storage that belongs to this account  alone and stays invisible to other members until something in it is shared explicitly. Any authenticated  member that has a personal section can read it; guest accounts are not given one, and the call then answers  404. Nothing in the section is modified, though passing `sortBy` saves the requested order as the default  order for this account. Without a filter only the top level of the section is listed; as soon as `filterType`,  `userIdOrGroupId` or `filterValue` narrows the request, the search descends through the whole subtree.  `filterValue` is matched against titles and against indexed document content, and the index is written  asynchronously, so a file uploaded a moment ago can be missing from a search for a short while. `folders` and  `files` hold one page of the result, `total` counts everything that matches before `count` and `startIndex`  are applied, and `current` describes the section folder. To open a folder inside the section, call  `GET api/2.0/files/{folderId}` with its identifier.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-my-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read.
    # @option opts [FilterType] :filter_type Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds.
    # @option opts [ApplyFilterOption] :apply_filter_option Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered.
    # @option opts [Integer] :count The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read.
    # @option opts [Integer] :start_index The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account.
    # @option opts [String] :filter_value The search string the section is filtered by, matched as a substring of entry titles. Omit it to list the  section unfiltered.
    # @return [Array<(FolderContentWrapper, Integer, Hash)>] FolderContentWrapper data, response status code and response headers
    def get_my_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_my_folder ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_my_folder, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_my_folder, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/@my'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'applyFilterOption'] = opts[:'apply_filter_option'] if !opts[:'apply_filter_option'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'filterValue'] = opts[:'filter_value'] if !opts[:'filter_value'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FolderContentWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_my_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_my_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get new folder items
    # Lists the entries of a folder that are new for the calling member - the files and folders created or changed  there since they last opened it - ordered from the most recently changed backwards. It is what the badge of a  room is filled from, and it is personal: two members of the same room get different answers. Reading this list  does not clear the marks, so the same entries come back until the folder itself is opened with  `GET api/2.0/files/{folderId}`, which does clear them. A folder with nothing new answers with an empty list,  and marks disappear on their own when the entry behind them is deleted or moved out of reach. The caller needs  read access to the folder and is otherwise answered with 403. The whole list arrives at once, without paging  or filtering, and the call is read-only.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-folder-items/
    # @param folder_id [Integer, String] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [FileEntryBaseArrayWrapper]
    def get_new_folder_items(folder_id, opts = {})
      data, _status_code, _headers = get_new_folder_items_with_http_info(folder_id, opts)
      data
    end

    # Get new folder items
    # Lists the entries of a folder that are new for the calling member - the files and folders created or changed  there since they last opened it - ordered from the most recently changed backwards. It is what the badge of a  room is filled from, and it is personal: two members of the same room get different answers. Reading this list  does not clear the marks, so the same entries come back until the folder itself is opened with  `GET api/2.0/files/{folderId}`, which does clear them. A folder with nothing new answers with an empty list,  and marks disappear on their own when the entry behind them is deleted or moved out of reach. The caller needs  read access to the folder and is otherwise answered with 403. The whole list arrives at once, without paging  or filtering, and the call is read-only.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-folder-items/
    # @param folder_id [Integer, String] The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileEntryBaseArrayWrapper, Integer, Hash)>] FileEntryBaseArrayWrapper data, response status code and response headers
    def get_new_folder_items_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_new_folder_items ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_new_folder_items"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/news'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileEntryBaseArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_new_folder_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_new_folder_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the Recent section
    # Returns the Recent section: the files the calling account has opened lately. The section holds files only,  so `folders` comes back empty, and it is personal, so another member's history is not visible here. A file is  added when it is opened and can also be added explicitly with `POST api/2.0/files/file/{fileId}/recent`;  `DELETE api/2.0/files/recent` clears the whole history, and `PUT api/2.0/files/displayrecent` switches the  section on and off for the account, which also decides whether `GET api/2.0/files/@root` includes it. Nothing  in the section is modified, though passing `sortBy` saves the requested order as the default order for this  account. The listing is ordered by the moment the caller last opened each file, newest first, and `sortBy` and  `sortOrder` do not change that order. `files` holds one page, `total` counts the files matching the request  before `count` and `startIndex` are applied, and `current` describes the section folder itself.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-recent-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the files authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list the whole history.
    # @option opts [FilterType] :filter_type Narrows the listing to a single kind of file, such as documents, spreadsheets or images. Omit it to list every  kind the history holds.
    # @option opts [Boolean] :exclude_subject Inverts `userIdOrGroupId`: with `true` the files of that member or group are the ones left out of the listing  instead of the only ones kept.
    # @option opts [ApplyFilterOption] :apply_filter_option Chooses which half of a listing `filterType` and `filterValue` are applied to. The Recent section holds  files only, so the value does not change what comes back.
    # @option opts [SearchArea] :search_area The area a listing is taken from. The Recent section is assembled from the caller's own open history rather  than from an area, so the value does not change which files are returned.
    # @option opts [Array<String>] :extension The file extensions the listing is limited to, matched against the end of the file name. The leading dot is  optional, and the parameter is repeated once per extension.
    # @option opts [Integer] :count The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read.
    # @option opts [Integer] :start_index The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. The Recent section keeps its own newest-first order, so the value does not  reorder this listing.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. The Recent section keeps its own newest-first order, so the value does not reorder this  listing.
    # @option opts [String] :filter_value The search string the history is filtered by: it is matched as a substring of file titles and against the  indexed document content as well. Omit it to list the whole history.
    # @return [FolderContentWrapper]
    def get_recent_folder(opts = {})
      data, _status_code, _headers = get_recent_folder_with_http_info(opts)
      data
    end

    # Get the Recent section
    # Returns the Recent section: the files the calling account has opened lately. The section holds files only,  so `folders` comes back empty, and it is personal, so another member's history is not visible here. A file is  added when it is opened and can also be added explicitly with `POST api/2.0/files/file/{fileId}/recent`;  `DELETE api/2.0/files/recent` clears the whole history, and `PUT api/2.0/files/displayrecent` switches the  section on and off for the account, which also decides whether `GET api/2.0/files/@root` includes it. Nothing  in the section is modified, though passing `sortBy` saves the requested order as the default order for this  account. The listing is ordered by the moment the caller last opened each file, newest first, and `sortBy` and  `sortOrder` do not change that order. `files` holds one page, `total` counts the files matching the request  before `count` and `startIndex` are applied, and `current` describes the section folder itself.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-recent-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the files authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list the whole history.
    # @option opts [FilterType] :filter_type Narrows the listing to a single kind of file, such as documents, spreadsheets or images. Omit it to list every  kind the history holds.
    # @option opts [Boolean] :exclude_subject Inverts `userIdOrGroupId`: with `true` the files of that member or group are the ones left out of the listing  instead of the only ones kept.
    # @option opts [ApplyFilterOption] :apply_filter_option Chooses which half of a listing `filterType` and `filterValue` are applied to. The Recent section holds  files only, so the value does not change what comes back.
    # @option opts [SearchArea] :search_area The area a listing is taken from. The Recent section is assembled from the caller's own open history rather  than from an area, so the value does not change which files are returned.
    # @option opts [Array<String>] :extension The file extensions the listing is limited to, matched against the end of the file name. The leading dot is  optional, and the parameter is repeated once per extension.
    # @option opts [Integer] :count The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read.
    # @option opts [Integer] :start_index The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place. The Recent section keeps its own newest-first order, so the value does not  reorder this listing.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account. The Recent section keeps its own newest-first order, so the value does not reorder this  listing.
    # @option opts [String] :filter_value The search string the history is filtered by: it is matched as a substring of file titles and against the  indexed document content as well. Omit it to list the whole history.
    # @return [Array<(FolderContentWrapper, Integer, Hash)>] FolderContentWrapper data, response status code and response headers
    def get_recent_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_recent_folder ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_recent_folder, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_recent_folder, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/recent'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'excludeSubject'] = opts[:'exclude_subject'] if !opts[:'exclude_subject'].nil?
      query_params[:'applyFilterOption'] = opts[:'apply_filter_option'] if !opts[:'apply_filter_option'].nil?
      query_params[:'searchArea'] = opts[:'search_area'] if !opts[:'search_area'].nil?
      query_params[:'extension'] = @api_client.build_collection_param(opts[:'extension'], :multi) if !opts[:'extension'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'filterValue'] = opts[:'filter_value'] if !opts[:'filter_value'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FolderContentWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_recent_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_recent_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the folder history report generation status
    # Reports how far the history report of a folder has got, and is the operation to poll after  `POST api/2.0/files/folder/{folderId}/log/report` has queued one. `percentage` climbs to 100, `isCompleted`  turns true when the job is over however it ended, `error` carries the reason when it failed, and  `resultFileId`, `resultFileName` and `resultFileUrl` name the file that was saved in the caller's My  documents - a CSV report leaving the identifier empty. An empty answer means there is no report for this  folder and caller, either because none was started or because a finished one has already been picked up by an  earlier poll. The caller needs read access to the folder and may not be a guest, and the portal plan has to  include the audit feature; a caller who fails the access rule is answered with 403 and a folder that does not  exist with 404. The call is read-only, and each caller sees only their own report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-report-folder-history/
    # @param folder_id [Integer] The folder whose history report is being polled. It is the folder that was              passed to the operation that started the report.
    # @param [Hash] opts the optional parameters
    # @return [DocumentBuilderTaskWrapper]
    def get_report_folder_history(folder_id, opts = {})
      data, _status_code, _headers = get_report_folder_history_with_http_info(folder_id, opts)
      data
    end

    # Get the folder history report generation status
    # Reports how far the history report of a folder has got, and is the operation to poll after  `POST api/2.0/files/folder/{folderId}/log/report` has queued one. `percentage` climbs to 100, `isCompleted`  turns true when the job is over however it ended, `error` carries the reason when it failed, and  `resultFileId`, `resultFileName` and `resultFileUrl` name the file that was saved in the caller's My  documents - a CSV report leaving the identifier empty. An empty answer means there is no report for this  folder and caller, either because none was started or because a finished one has already been picked up by an  earlier poll. The caller needs read access to the folder and may not be a guest, and the portal plan has to  include the audit feature; a caller who fails the access rule is answered with 403 and a folder that does not  exist with 404. The call is read-only, and each caller sees only their own report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-report-folder-history/
    # @param folder_id [Integer] The folder whose history report is being polled. It is the folder that was              passed to the operation that started the report.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentBuilderTaskWrapper, Integer, Hash)>] DocumentBuilderTaskWrapper data, response status code and response headers
    def get_report_folder_history_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_report_folder_history ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.get_report_folder_history"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/log/report'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DocumentBuilderTaskWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_report_folder_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_report_folder_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get filtered sections
    # Returns every top-level section the calling account can see in one response, each of them a full section  object carrying its own first page of content: Favorites, Recent, Shared with me, My documents,  Trash, Rooms, Forms, Archive and, while AI access is enabled for the portal, AI agents. A section is  left out when the account has none of it, which is why a guest gets no personal section, and Recent is  listed only while it is switched on with `PUT api/2.0/files/displayrecent`. Pass `withoutTrash=true` to drop  the Trash section. The filters, `count` and `startIndex` are applied to each section separately, so  `count=1` returns one entry per section and every section reports its own `total`. Because it builds the  content of all of them, this is the most expensive listing in the module: when a single section is enough,  read it directly, for example with `GET api/2.0/files/@my`. The call modifies nothing in the sections and  leaves their new-item badges untouched, though passing `sortBy` saves the requested order as the default order  for this account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-root-folders/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read.
    # @option opts [FilterType] :filter_type Narrows the content listed inside every returned section to a single kind of entry, such as documents, images  or one type of room. Omit it to list every kind the sections hold.
    # @option opts [Boolean] :without_trash Set it to `true` to leave the Trash section out of the returned set of sections; with `false`, or when the  parameter is omitted, the section is returned whenever the account has one of its own.
    # @option opts [Integer] :count The size of the content page returned for each section separately, so a value of 1 yields one entry per  section rather than one entry in total.
    # @option opts [Integer] :start_index The number of matching entries skipped in each section before its page begins; add `count` to it to ask for  the next page of every section.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account.
    # @option opts [String] :filter_value The search string the content of every section is filtered by: it is matched as a substring of entry titles  and, for files, against the indexed document content as well. Omit it to list the sections unfiltered.
    # @return [FolderContentArrayWrapper]
    def get_root_folders(opts = {})
      data, _status_code, _headers = get_root_folders_with_http_info(opts)
      data
    end

    # Get filtered sections
    # Returns every top-level section the calling account can see in one response, each of them a full section  object carrying its own first page of content: Favorites, Recent, Shared with me, My documents,  Trash, Rooms, Forms, Archive and, while AI access is enabled for the portal, AI agents. A section is  left out when the account has none of it, which is why a guest gets no personal section, and Recent is  listed only while it is switched on with `PUT api/2.0/files/displayrecent`. Pass `withoutTrash=true` to drop  the Trash section. The filters, `count` and `startIndex` are applied to each section separately, so  `count=1` returns one entry per section and every section reports its own `total`. Because it builds the  content of all of them, this is the most expensive listing in the module: when a single section is enough,  read it directly, for example with `GET api/2.0/files/@my`. The call modifies nothing in the sections and  leaves their new-item badges untouched, though passing `sortBy` saves the requested order as the default order  for this account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-root-folders/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read.
    # @option opts [FilterType] :filter_type Narrows the content listed inside every returned section to a single kind of entry, such as documents, images  or one type of room. Omit it to list every kind the sections hold.
    # @option opts [Boolean] :without_trash Set it to `true` to leave the Trash section out of the returned set of sections; with `false`, or when the  parameter is omitted, the section is returned whenever the account has one of its own.
    # @option opts [Integer] :count The size of the content page returned for each section separately, so a value of 1 yields one entry per  section rather than one entry in total.
    # @option opts [Integer] :start_index The number of matching entries skipped in each section before its page begins; add `count` to it to ask for  the next page of every section.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account.
    # @option opts [String] :filter_value The search string the content of every section is filtered by: it is matched as a substring of entry titles  and, for files, against the indexed document content as well. Omit it to list the sections unfiltered.
    # @return [Array<(FolderContentArrayWrapper, Integer, Hash)>] FolderContentArrayWrapper data, response status code and response headers
    def get_root_folders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_root_folders ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_root_folders, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_root_folders, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/@root'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'withoutTrash'] = opts[:'without_trash'] if !opts[:'without_trash'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'filterValue'] = opts[:'filter_value'] if !opts[:'filter_value'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FolderContentArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_root_folders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_root_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the Trash section
    # Returns the caller's Trash section: the files and folders this account has deleted, kept there until they  are restored or discarded. Each member has a Trash of their own and sees only what they deleted themselves.  Restore an entry by moving it back with `PUT api/2.0/files/fileops/move`, or discard the whole section with  `PUT api/2.0/files/fileops/emptytrash`; both start a background operation that is polled through  `GET api/2.0/files/fileops`. This call itself modifies nothing, though passing `sortBy` saves the requested  order as the default order for this account. Only the top level of the section is listed, so the contents of a  deleted folder are not expanded into it, and `filterValue` is matched against titles alone here rather than  against document content. `folders` and `files` hold one page of the result, `total` counts everything that  matches before `count` and `startIndex` are applied, and `current` describes the section folder. An account  that is given no Trash of its own, an outsider for instance, receives 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-trash-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read.
    # @option opts [FilterType] :filter_type Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds.
    # @option opts [ApplyFilterOption] :apply_filter_option Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered.
    # @option opts [Integer] :count The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read.
    # @option opts [Integer] :start_index The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account.
    # @option opts [String] :filter_value The search string the section is filtered by, matched as a substring of entry titles. Omit it to list the  section unfiltered.
    # @return [FolderContentWrapper]
    def get_trash_folder(opts = {})
      data, _status_code, _headers = get_trash_folder_with_http_info(opts)
      data
    end

    # Get the Trash section
    # Returns the caller's Trash section: the files and folders this account has deleted, kept there until they  are restored or discarded. Each member has a Trash of their own and sees only what they deleted themselves.  Restore an entry by moving it back with `PUT api/2.0/files/fileops/move`, or discard the whole section with  `PUT api/2.0/files/fileops/emptytrash`; both start a background operation that is polled through  `GET api/2.0/files/fileops`. This call itself modifies nothing, though passing `sortBy` saves the requested  order as the default order for this account. Only the top level of the section is listed, so the contents of a  deleted folder are not expanded into it, and `filterValue` is matched against titles alone here rather than  against document content. `folders` and `files` hold one page of the result, `total` counts everything that  matches before `count` and `startIndex` are applied, and `current` describes the section folder. An account  that is given no Trash of its own, an outsider for instance, receives 404.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-trash-folder/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id_or_group_id Restricts the listing to the entries authored by this portal member, or by the members of this group; the same  parameter accepts either kind of identifier. Omit it to list everything the caller can read.
    # @option opts [FilterType] :filter_type Narrows the listing to a single kind of entry, such as documents, images or one type of room. Omit it to list  every kind the section holds.
    # @option opts [ApplyFilterOption] :apply_filter_option Chooses which half of the listing `filterType` and `filterValue` are applied to: with `Files` the folders come  back unfiltered, with `Folders` the files do, and with `All` both halves are filtered.
    # @option opts [Integer] :count The size of one page of section content. Pair it with `startIndex` to walk the listing, and compare the two  with `total` in the response to see when the last page has been read.
    # @option opts [Integer] :start_index The number of matching entries to skip before the returned page begins; add `count` to it to ask for the next  page.
    # @option opts [String] :sort_by The name of the field the entries are ordered by, matched case-insensitively against the file sort fields:  `DateAndTime`, `AZ`, `Size`, `Author`, `Type`, `New`, `DateAndTimeCreation`, `RoomType`, `Tags`, `Room`,  `CustomOrder`, `LastOpened` and `UsedSpace`. A recognized value is also saved as the default order of the  account and reused by later listings that omit the parameter, while a value matching none of the fields leaves  that saved order in place.
    # @option opts [SortOrder] :sort_order The direction in which the `sortBy` field is ordered. It is saved together with `sortBy` as the default order  of the account.
    # @option opts [String] :filter_value The search string the section is filtered by, matched as a substring of entry titles. Omit it to list the  section unfiltered.
    # @return [Array<(FolderContentWrapper, Integer, Hash)>] FolderContentWrapper data, response status code and response headers
    def get_trash_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.get_trash_folder ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_trash_folder, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Files::FoldersApi.get_trash_folder, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/files/@trash'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userIdOrGroupId'] = opts[:'user_id_or_group_id'] if !opts[:'user_id_or_group_id'].nil?
      query_params[:'filterType'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'applyFilterOption'] = opts[:'apply_filter_option'] if !opts[:'apply_filter_option'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'filterValue'] = opts[:'filter_value'] if !opts[:'filter_value'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FolderContentWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.get_trash_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#get_trash_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert a file
    # Stores a file in the folder named by the path in a single request, taking its name from `title` rather than  from the uploaded part, which is what separates it from `POST api/2.0/files/{folderId}/upload`. The content  may arrive either as a multipart part or as the raw request body. The name is stripped of characters a title  cannot hold and truncated, and `createNewIfExist` settles the clash: false adds a new version to the file that  already carries the name, true keeps both by giving the new one a numeric suffix. The caller needs the right  to add content to the folder, so a reader, an editor and a guest get 403, a section root and an archived room  are refused as well, and an unknown folder gives 404. Formats the portal converts are converted afterwards in  the background; pass `keepConvertStatus` to keep the outcome readable through  `GET api/2.0/files/file/{fileId}/checkconversion`. The answer is the stored file. A large payload belongs in a  chunked session instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file/
    # @param folder_id [Integer, String] The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :insert_file_file The content to store, sent as a `multipart/form-data` part. The same content may instead be sent as the raw  request body, which is what a client that cannot build a form does; when both are present the form part wins.
    # @option opts [String] :insert_file_title The name to store the file under, extension included. It wins over the name of the uploaded part, which is the  reason to choose this operation over the plain upload, and it is the only name available when the content  arrives as a raw body. Characters a title cannot hold are replaced with underscores and the name is cut to 170  characters before the file is stored.
    # @option opts [Boolean] :insert_file_create_new_if_exist Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title.
    # @option opts [Boolean] :insert_file_keep_convert_status Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing.
    # @option opts [Boolean] :insert_file_stream_can_read 
    # @option opts [Boolean] :insert_file_stream_can_write 
    # @option opts [Boolean] :insert_file_stream_can_seek 
    # @option opts [Boolean] :insert_file_stream_can_timeout 
    # @option opts [Integer] :insert_file_stream_length 
    # @option opts [Integer] :insert_file_stream_position 
    # @option opts [Integer] :insert_file_stream_read_timeout 
    # @option opts [Integer] :insert_file_stream_write_timeout 
    # @return [FileWrapper, ThirdPartyFileWrapper]
    def insert_file(folder_id, opts = {})
      data, _status_code, _headers = insert_file_with_http_info(folder_id, opts)
      data
    end

    # Insert a file
    # Stores a file in the folder named by the path in a single request, taking its name from `title` rather than  from the uploaded part, which is what separates it from `POST api/2.0/files/{folderId}/upload`. The content  may arrive either as a multipart part or as the raw request body. The name is stripped of characters a title  cannot hold and truncated, and `createNewIfExist` settles the clash: false adds a new version to the file that  already carries the name, true keeps both by giving the new one a numeric suffix. The caller needs the right  to add content to the folder, so a reader, an editor and a guest get 403, a section root and an archived room  are refused as well, and an unknown folder gives 404. Formats the portal converts are converted afterwards in  the background; pass `keepConvertStatus` to keep the outcome readable through  `GET api/2.0/files/file/{fileId}/checkconversion`. The answer is the stored file. A large payload belongs in a  chunked session instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file/
    # @param folder_id [Integer, String] The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :insert_file_file The content to store, sent as a `multipart/form-data` part. The same content may instead be sent as the raw  request body, which is what a client that cannot build a form does; when both are present the form part wins.
    # @option opts [String] :insert_file_title The name to store the file under, extension included. It wins over the name of the uploaded part, which is the  reason to choose this operation over the plain upload, and it is the only name available when the content  arrives as a raw body. Characters a title cannot hold are replaced with underscores and the name is cut to 170  characters before the file is stored.
    # @option opts [Boolean] :insert_file_create_new_if_exist Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title.
    # @option opts [Boolean] :insert_file_keep_convert_status Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing.
    # @option opts [Boolean] :insert_file_stream_can_read 
    # @option opts [Boolean] :insert_file_stream_can_write 
    # @option opts [Boolean] :insert_file_stream_can_seek 
    # @option opts [Boolean] :insert_file_stream_can_timeout 
    # @option opts [Integer] :insert_file_stream_length 
    # @option opts [Integer] :insert_file_stream_position 
    # @option opts [Integer] :insert_file_stream_read_timeout 
    # @option opts [Integer] :insert_file_stream_write_timeout 
    # @return [Array<(FileWrapper, ThirdPartyFileWrapper, Integer, Hash)>] FileWrapper, ThirdPartyFileWrapper data, response status code and response headers
    def insert_file_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.insert_file ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.insert_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/insert'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['InsertFile.File'] = opts[:'insert_file_file'] if !opts[:'insert_file_file'].nil?
      form_params['InsertFile.Title'] = opts[:'insert_file_title'] if !opts[:'insert_file_title'].nil?
      form_params['InsertFile.CreateNewIfExist'] = opts[:'insert_file_create_new_if_exist'] if !opts[:'insert_file_create_new_if_exist'].nil?
      form_params['InsertFile.KeepConvertStatus'] = opts[:'insert_file_keep_convert_status'] if !opts[:'insert_file_keep_convert_status'].nil?
      form_params['InsertFile.Stream.CanRead'] = opts[:'insert_file_stream_can_read'] if !opts[:'insert_file_stream_can_read'].nil?
      form_params['InsertFile.Stream.CanWrite'] = opts[:'insert_file_stream_can_write'] if !opts[:'insert_file_stream_can_write'].nil?
      form_params['InsertFile.Stream.CanSeek'] = opts[:'insert_file_stream_can_seek'] if !opts[:'insert_file_stream_can_seek'].nil?
      form_params['InsertFile.Stream.CanTimeout'] = opts[:'insert_file_stream_can_timeout'] if !opts[:'insert_file_stream_can_timeout'].nil?
      form_params['InsertFile.Stream.Length'] = opts[:'insert_file_stream_length'] if !opts[:'insert_file_stream_length'].nil?
      form_params['InsertFile.Stream.Position'] = opts[:'insert_file_stream_position'] if !opts[:'insert_file_stream_position'].nil?
      form_params['InsertFile.Stream.ReadTimeout'] = opts[:'insert_file_stream_read_timeout'] if !opts[:'insert_file_stream_read_timeout'].nil?
      form_params['InsertFile.Stream.WriteTimeout'] = opts[:'insert_file_stream_write_timeout'] if !opts[:'insert_file_stream_write_timeout'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || (folder_id.is_a?(String) ? 'ThirdPartyFileWrapper' : 'FileWrapper')

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.insert_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#insert_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert a file into My documents
    # Stores one file in the caller's own My documents section, the personal storage every portal member has, and  returns the stored file. The destination takes no identifier: it is resolved from the calling account and  created on first use, while a guest account has none and is answered as missing (404). Send the content as a  `multipart/form-data` part or as the raw request body, and name it with `title`, which wins over the name of  the uploaded part and has invalid characters replaced before storing. The call is not idempotent: by default a  file of the same title is overwritten as a new version, while `createNewIfExist=true` stores a separate copy  under a title made unique with a numeric suffix; a title held by a file that is locked or open in the editor  cannot be overwritten either, and a second file appears under the same title. Formats listed in  `extsMustConvert` of `GET api/2.0/files/settings` are converted after the response is sent;  `keepConvertStatus=true` keeps that result readable through `GET api/2.0/files/file/{fileId}/checkconversion`,  which otherwise drops it. Files over the single-request size limit or the account's storage quota are refused:  send those through `POST api/2.0/files/{folderId}/upload/create_session`, and use  `POST api/2.0/files/{folderId}/insert` for any other destination.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file-to-my-from-body/
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The content to store, sent as a `multipart/form-data` part. The same content may instead be sent as the raw  request body, which is what a client that cannot build a form does; when both are present the form part wins.
    # @option opts [String] :title The name to store the file under, extension included. It wins over the name of the uploaded part, which is the  reason to choose this operation over the plain upload, and it is the only name available when the content  arrives as a raw body. Characters a title cannot hold are replaced with underscores and the name is cut to 170  characters before the file is stored.
    # @option opts [Boolean] :create_new_if_exist Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title.
    # @option opts [Boolean] :keep_convert_status Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing.
    # @option opts [Boolean] :stream_can_read 
    # @option opts [Boolean] :stream_can_write 
    # @option opts [Boolean] :stream_can_seek 
    # @option opts [Boolean] :stream_can_timeout 
    # @option opts [Integer] :stream_length 
    # @option opts [Integer] :stream_position 
    # @option opts [Integer] :stream_read_timeout 
    # @option opts [Integer] :stream_write_timeout 
    # @return [FileWrapper]
    def insert_file_to_my_from_body(opts = {})
      data, _status_code, _headers = insert_file_to_my_from_body_with_http_info(opts)
      data
    end

    # Insert a file into My documents
    # Stores one file in the caller's own My documents section, the personal storage every portal member has, and  returns the stored file. The destination takes no identifier: it is resolved from the calling account and  created on first use, while a guest account has none and is answered as missing (404). Send the content as a  `multipart/form-data` part or as the raw request body, and name it with `title`, which wins over the name of  the uploaded part and has invalid characters replaced before storing. The call is not idempotent: by default a  file of the same title is overwritten as a new version, while `createNewIfExist=true` stores a separate copy  under a title made unique with a numeric suffix; a title held by a file that is locked or open in the editor  cannot be overwritten either, and a second file appears under the same title. Formats listed in  `extsMustConvert` of `GET api/2.0/files/settings` are converted after the response is sent;  `keepConvertStatus=true` keeps that result readable through `GET api/2.0/files/file/{fileId}/checkconversion`,  which otherwise drops it. Files over the single-request size limit or the account's storage quota are refused:  send those through `POST api/2.0/files/{folderId}/upload/create_session`, and use  `POST api/2.0/files/{folderId}/insert` for any other destination.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file-to-my-from-body/
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The content to store, sent as a `multipart/form-data` part. The same content may instead be sent as the raw  request body, which is what a client that cannot build a form does; when both are present the form part wins.
    # @option opts [String] :title The name to store the file under, extension included. It wins over the name of the uploaded part, which is the  reason to choose this operation over the plain upload, and it is the only name available when the content  arrives as a raw body. Characters a title cannot hold are replaced with underscores and the name is cut to 170  characters before the file is stored.
    # @option opts [Boolean] :create_new_if_exist Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title.
    # @option opts [Boolean] :keep_convert_status Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing.
    # @option opts [Boolean] :stream_can_read 
    # @option opts [Boolean] :stream_can_write 
    # @option opts [Boolean] :stream_can_seek 
    # @option opts [Boolean] :stream_can_timeout 
    # @option opts [Integer] :stream_length 
    # @option opts [Integer] :stream_position 
    # @option opts [Integer] :stream_read_timeout 
    # @option opts [Integer] :stream_write_timeout 
    # @return [Array<(FileWrapper, Integer, Hash)>] FileWrapper data, response status code and response headers
    def insert_file_to_my_from_body_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.insert_file_to_my_from_body ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/@my/insert'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['File'] = opts[:'file'] if !opts[:'file'].nil?
      form_params['Title'] = opts[:'title'] if !opts[:'title'].nil?
      form_params['CreateNewIfExist'] = opts[:'create_new_if_exist'] if !opts[:'create_new_if_exist'].nil?
      form_params['KeepConvertStatus'] = opts[:'keep_convert_status'] if !opts[:'keep_convert_status'].nil?
      form_params['Stream.CanRead'] = opts[:'stream_can_read'] if !opts[:'stream_can_read'].nil?
      form_params['Stream.CanWrite'] = opts[:'stream_can_write'] if !opts[:'stream_can_write'].nil?
      form_params['Stream.CanSeek'] = opts[:'stream_can_seek'] if !opts[:'stream_can_seek'].nil?
      form_params['Stream.CanTimeout'] = opts[:'stream_can_timeout'] if !opts[:'stream_can_timeout'].nil?
      form_params['Stream.Length'] = opts[:'stream_length'] if !opts[:'stream_length'].nil?
      form_params['Stream.Position'] = opts[:'stream_position'] if !opts[:'stream_position'].nil?
      form_params['Stream.ReadTimeout'] = opts[:'stream_read_timeout'] if !opts[:'stream_read_timeout'].nil?
      form_params['Stream.WriteTimeout'] = opts[:'stream_write_timeout'] if !opts[:'stream_write_timeout'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.insert_file_to_my_from_body",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#insert_file_to_my_from_body\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rename a folder
    # Gives a folder a new title and answers with the folder as it now stands. The title is trimmed, may not be  blank and is refused when it is longer than the limit the schema prints; a title that matches the current one  leaves the folder untouched, and titles need not be unique among the neighbours. The caller needs the right to  rename the folder, which the room manager, a content creator acting on a folder of their own and the owner of  a personal section have, while a guest is refused with 403 whatever their access; a folder in the Trash  section or in an archived room cannot be renamed either, and a folder that does not exist is answered as  not found. A room may be renamed here as well, in which case the caller needs the right to edit the  room, and `PUT api/2.0/files/rooms/{id}` is the operation that changes its other settings. The call is  mutating and idempotent; on a folder stored in a connected third-party account the identifier of the folder  may change with the title.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-folder/
    # @param folder_id [Integer, String] The folder the request is addressed to: when a folder is created it is the parent that receives the new  folder, and when a folder is renamed it is the folder that gets the new title.
    # @param create_folder [CreateFolder] The title carried by the request body.
    # @param [Hash] opts the optional parameters
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def rename_folder(folder_id, create_folder, opts = {})
      data, _status_code, _headers = rename_folder_with_http_info(folder_id, create_folder, opts)
      data
    end

    # Rename a folder
    # Gives a folder a new title and answers with the folder as it now stands. The title is trimmed, may not be  blank and is refused when it is longer than the limit the schema prints; a title that matches the current one  leaves the folder untouched, and titles need not be unique among the neighbours. The caller needs the right to  rename the folder, which the room manager, a content creator acting on a folder of their own and the owner of  a personal section have, while a guest is refused with 403 whatever their access; a folder in the Trash  section or in an archived room cannot be renamed either, and a folder that does not exist is answered as  not found. A room may be renamed here as well, in which case the caller needs the right to edit the  room, and `PUT api/2.0/files/rooms/{id}` is the operation that changes its other settings. The call is  mutating and idempotent; on a folder stored in a connected third-party account the identifier of the folder  may change with the title.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-folder/
    # @param folder_id [Integer, String] The folder the request is addressed to: when a folder is created it is the parent that receives the new  folder, and when a folder is renamed it is the folder that gets the new title.
    # @param create_folder [CreateFolder] The title carried by the request body.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
    def rename_folder_with_http_info(folder_id, create_folder, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.rename_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.rename_folder"
      end
      # verify the required parameter 'create_folder' is set
      if @api_client.config.client_side_validation && create_folder.nil?
        fail ArgumentError, "Missing the required parameter 'create_folder' when calling Files::FoldersApi.rename_folder"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_folder)

      # return_type
      return_type = opts[:debug_return_type] || (folder_id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.rename_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#rename_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set folder order
    # Puts a folder at a given position among the entries of its parent and answers with the folder, its `order`  reporting where it now stands. Positions count from 1, and the entry that held the wanted position, together  with everything after it, is shifted to make room, so the numbering of the parent stays without gaps; a  position beyond the end places the folder last. The value may also be sent as a dotted path, as in 1.2.3, in  which case only its last segment is read. Ordering is what the manual arrangement of a room is built on, and  it only means something in rooms whose contents are indexed - elsewhere the value is stored and ignored. The  caller needs edit access to the folder, which room managers and content creators have, and a member without it  is refused, while a folder that does not exist is answered as not found. The call is mutating and idempotent.  To move several entries in one go use `PUT api/2.0/files/order`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-order/
    # @param folder_id [Integer, String] The folder to move.
    # @param [Hash] opts the optional parameters
    # @option opts [OrderRequestDto] :order_request_dto The position the folder is to take.
    # @return [FolderWrapper, ThirdPartyFolderWrapper]
    def set_folder_order(folder_id, opts = {})
      data, _status_code, _headers = set_folder_order_with_http_info(folder_id, opts)
      data
    end

    # Set folder order
    # Puts a folder at a given position among the entries of its parent and answers with the folder, its `order`  reporting where it now stands. Positions count from 1, and the entry that held the wanted position, together  with everything after it, is shifted to make room, so the numbering of the parent stays without gaps; a  position beyond the end places the folder last. The value may also be sent as a dotted path, as in 1.2.3, in  which case only its last segment is read. Ordering is what the manual arrangement of a room is built on, and  it only means something in rooms whose contents are indexed - elsewhere the value is stored and ignored. The  caller needs edit access to the folder, which room managers and content creators have, and a member without it  is refused, while a folder that does not exist is answered as not found. The call is mutating and idempotent.  To move several entries in one go use `PUT api/2.0/files/order`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-order/
    # @param folder_id [Integer, String] The folder to move.
    # @param [Hash] opts the optional parameters
    # @option opts [OrderRequestDto] :order_request_dto The position the folder is to take.
    # @return [Array<(FolderWrapper, ThirdPartyFolderWrapper, Integer, Hash)>] FolderWrapper, ThirdPartyFolderWrapper data, response status code and response headers
    def set_folder_order_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.set_folder_order ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.set_folder_order"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/order'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'order_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || (folder_id.is_a?(String) ? 'ThirdPartyFolderWrapper' : 'FolderWrapper')

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.set_folder_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#set_folder_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the folder external link
    # Creates an external link to a folder or a room, or changes or revokes an existing one, and answers with the  link as it now stands. `linkId` decides which: an identifier that is not yet in use, the empty one included,  creates a link, while the identifier of an existing link rewrites it, so the whole set of parameters is  applied every time and a field left out is reset rather than kept. `access` carries the rights the link  grants, and `access` set to the value that denies everything revokes the link instead - the answer is then  empty, and a revoked primary link is not recreated by a later read. `title` names the link for the people who  manage it, `expirationDate` limits its lifetime and is ignored when it lies in the past, `password` asks  visitors for a secret, `denyDownload` leaves them with viewing only, `internal` admits signed-in members  alone, and `primary=true` makes it the primary link of the folder. The caller needs the right to manage the  links of the room, which its manager and a portal administrator acting as room manager have; anyone else is  refused and an unknown folder is answered as not found. The call is mutating.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-primary-external-link/
    # @param id [Integer, String] The folder or room the link belongs to.
    # @param folder_link_request [FolderLinkRequest] The link and the way it is to be shaped.
    # @param [Hash] opts the optional parameters
    # @return [FileShareWrapper]
    def set_folder_primary_external_link(id, folder_link_request, opts = {})
      data, _status_code, _headers = set_folder_primary_external_link_with_http_info(id, folder_link_request, opts)
      data
    end

    # Set the folder external link
    # Creates an external link to a folder or a room, or changes or revokes an existing one, and answers with the  link as it now stands. `linkId` decides which: an identifier that is not yet in use, the empty one included,  creates a link, while the identifier of an existing link rewrites it, so the whole set of parameters is  applied every time and a field left out is reset rather than kept. `access` carries the rights the link  grants, and `access` set to the value that denies everything revokes the link instead - the answer is then  empty, and a revoked primary link is not recreated by a later read. `title` names the link for the people who  manage it, `expirationDate` limits its lifetime and is ignored when it lies in the past, `password` asks  visitors for a secret, `denyDownload` leaves them with viewing only, `internal` admits signed-in members  alone, and `primary=true` makes it the primary link of the folder. The caller needs the right to manage the  links of the room, which its manager and a portal administrator acting as room manager have; anyone else is  refused and an unknown folder is answered as not found. The call is mutating.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-primary-external-link/
    # @param id [Integer, String] The folder or room the link belongs to.
    # @param folder_link_request [FolderLinkRequest] The link and the way it is to be shaped.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileShareWrapper, Integer, Hash)>] FileShareWrapper data, response status code and response headers
    def set_folder_primary_external_link_with_http_info(id, folder_link_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.set_folder_primary_external_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Files::FoldersApi.set_folder_primary_external_link"
      end
      # verify the required parameter 'folder_link_request' is set
      if @api_client.config.client_side_validation && folder_link_request.nil?
        fail ArgumentError, "Missing the required parameter 'folder_link_request' when calling Files::FoldersApi.set_folder_primary_external_link"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{id}/links'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(folder_link_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.set_folder_primary_external_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#set_folder_primary_external_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terminate the folder history report generation
    # Gives up the history report the caller has started for a folder with  `POST api/2.0/files/folder/{folderId}/log/report`. The request only asks the background worker to stop, and  the answer carries no body, so a following `GET api/2.0/files/folder/{folderId}/log/report` is what shows the  task ending as cancelled. Asking to terminate when nothing is running is accepted and changes nothing, which  makes the call safe to repeat. A report that has already finished is not undone by this call and its file  stays in My documents. The caller needs read access to the folder and may not be a guest, and the portal  plan has to include the audit feature; a caller who fails the access rule is answered with 403 and a folder  that does not exist with 404. Each caller can only terminate their own report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-report-folder-history/
    # @param folder_id [Integer] The folder whose running history report is to be given up. It is the folder that              was passed to the operation that started the report.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def terminate_report_folder_history(folder_id, opts = {})
      terminate_report_folder_history_with_http_info(folder_id, opts)
      nil
    end

    # Terminate the folder history report generation
    # Gives up the history report the caller has started for a folder with  `POST api/2.0/files/folder/{folderId}/log/report`. The request only asks the background worker to stop, and  the answer carries no body, so a following `GET api/2.0/files/folder/{folderId}/log/report` is what shows the  task ending as cancelled. Asking to terminate when nothing is running is accepted and changes nothing, which  makes the call safe to repeat. A report that has already finished is not undone by this call and its file  stays in My documents. The caller needs read access to the folder and may not be a guest, and the portal  plan has to include the audit feature; a caller who fails the access rule is answered with 403 and a folder  that does not exist with 404. Each caller can only terminate their own report.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-report-folder-history/
    # @param folder_id [Integer] The folder whose running history report is to be given up. It is the folder that              was passed to the operation that started the report.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def terminate_report_folder_history_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.terminate_report_folder_history ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.terminate_report_folder_history"
      end
      # resource path
      local_var_path = '/api/2.0/files/folder/{folderId}/log/report'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.terminate_report_folder_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#terminate_report_folder_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a file
    # Stores a file in the folder named by the path in a single multipart request, taking its name from the uploaded  part; use `POST api/2.0/files/{folderId}/insert` when the name has to be given separately or the content is  sent as a raw body. The answer is a list that always holds exactly one file. `createNewIfExist` settles the  clash: false adds a new version to the file that already carries the name, true keeps both by giving the new  one a numeric suffix. `storeOriginalFile` reaches further than this call, because it saves the setting on the  calling account, the same one `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later  uploads. The caller needs the right to add content to the folder, so a reader, an editor and a guest get 403,  a section root and an archived room are refused as well, and an unknown folder gives 404. A request without a  file is rejected as invalid, and a payload above the portal upload limit is refused.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file/
    # @param folder_id [Integer, String] The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :create_new_if_exist Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title.
    # @option opts [Boolean] :store_original_file Reaches further than this request: it writes a setting on the calling account, the same one  `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later uploads. True keeps both the  uploaded file and the copy the portal converts it into, false replaces the uploaded file with the converted  one, and leaving it out keeps whatever the account already has.
    # @option opts [Boolean] :keep_convert_status Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing.
    # @option opts [File] :file The content to store, sent as a `multipart/form-data` part; the name of that part becomes the title of the  stored file, with characters a title cannot hold replaced and the name cut to 170 characters. A request  without it is rejected as invalid.
    # @return [FileArrayWrapper, ThirdPartyFileArrayWrapper]
    def upload_file(folder_id, opts = {})
      data, _status_code, _headers = upload_file_with_http_info(folder_id, opts)
      data
    end

    # Upload a file
    # Stores a file in the folder named by the path in a single multipart request, taking its name from the uploaded  part; use `POST api/2.0/files/{folderId}/insert` when the name has to be given separately or the content is  sent as a raw body. The answer is a list that always holds exactly one file. `createNewIfExist` settles the  clash: false adds a new version to the file that already carries the name, true keeps both by giving the new  one a numeric suffix. `storeOriginalFile` reaches further than this call, because it saves the setting on the  calling account, the same one `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later  uploads. The caller needs the right to add content to the folder, so a reader, an editor and a guest get 403,  a section root and an archived room are refused as well, and an unknown folder gives 404. A request without a  file is rejected as invalid, and a payload above the portal upload limit is refused.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file/
    # @param folder_id [Integer, String] The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :create_new_if_exist Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title.
    # @option opts [Boolean] :store_original_file Reaches further than this request: it writes a setting on the calling account, the same one  `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later uploads. True keeps both the  uploaded file and the copy the portal converts it into, false replaces the uploaded file with the converted  one, and leaving it out keeps whatever the account already has.
    # @option opts [Boolean] :keep_convert_status Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing.
    # @option opts [File] :file The content to store, sent as a `multipart/form-data` part; the name of that part becomes the title of the  stored file, with characters a title cannot hold replaced and the name cut to 170 characters. A request  without it is rejected as invalid.
    # @return [Array<(FileArrayWrapper, ThirdPartyFileArrayWrapper, Integer, Hash)>] FileArrayWrapper, ThirdPartyFileArrayWrapper data, response status code and response headers
    def upload_file_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.upload_file ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling Files::FoldersApi.upload_file"
      end
      # resource path
      local_var_path = '/api/2.0/files/{folderId}/upload'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'createNewIfExist'] = opts[:'create_new_if_exist'] if !opts[:'create_new_if_exist'].nil?
      query_params[:'storeOriginalFile'] = opts[:'store_original_file'] if !opts[:'store_original_file'].nil?
      query_params[:'keepConvertStatus'] = opts[:'keep_convert_status'] if !opts[:'keep_convert_status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['File'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || (folder_id.is_a?(String) ? 'ThirdPartyFileArrayWrapper' : 'FileArrayWrapper')

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.upload_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#upload_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a file to My documents
    # Uploads one file into the caller's own My documents section and returns it inside a single-element array; one  request stores exactly one file. The destination takes no identifier: it is resolved from the calling account  and created on first use, while a guest account has none and is answered as missing (404). The body has to be  `multipart/form-data` carrying the file part; a request without it is rejected as invalid, and the stored name  comes from that part, since unlike `POST api/2.0/files/@my/insert` there is no separate title. The call is not  idempotent: by default a file of the same title is overwritten as a new version, while `createNewIfExist=true`  stores a separate copy under a title made unique with a numeric suffix. `storeOriginalFile` is not a  per-request switch: it writes the same account setting as `PUT api/2.0/files/storeoriginal`, which decides  what happens to the formats listed in `extsMustConvert` of `GET api/2.0/files/settings` when they are  converted after the response - false replaces the uploaded file with the converted one, true keeps both;  `keepConvertStatus=true` keeps that conversion result readable through  `GET api/2.0/files/file/{fileId}/checkconversion`. Files over the single-request size limit or the account's  storage quota are refused; send those through `POST api/2.0/files/{folderId}/upload/create_session`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file-to-my/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :create_new_if_exist Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title.
    # @option opts [Boolean] :store_original_file Reaches further than this request: it writes a setting on the calling account, the same one  `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later uploads. True keeps both the  uploaded file and the copy the portal converts it into, false replaces the uploaded file with the converted  one, and leaving it out keeps whatever the account already has.
    # @option opts [Boolean] :keep_convert_status Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing.
    # @option opts [File] :file The content to store, sent as a `multipart/form-data` part; the name of that part becomes the title of the  stored file, with characters a title cannot hold replaced and the name cut to 170 characters. A request  without it is rejected as invalid.
    # @return [FileArrayWrapper]
    def upload_file_to_my(opts = {})
      data, _status_code, _headers = upload_file_to_my_with_http_info(opts)
      data
    end

    # Upload a file to My documents
    # Uploads one file into the caller's own My documents section and returns it inside a single-element array; one  request stores exactly one file. The destination takes no identifier: it is resolved from the calling account  and created on first use, while a guest account has none and is answered as missing (404). The body has to be  `multipart/form-data` carrying the file part; a request without it is rejected as invalid, and the stored name  comes from that part, since unlike `POST api/2.0/files/@my/insert` there is no separate title. The call is not  idempotent: by default a file of the same title is overwritten as a new version, while `createNewIfExist=true`  stores a separate copy under a title made unique with a numeric suffix. `storeOriginalFile` is not a  per-request switch: it writes the same account setting as `PUT api/2.0/files/storeoriginal`, which decides  what happens to the formats listed in `extsMustConvert` of `GET api/2.0/files/settings` when they are  converted after the response - false replaces the uploaded file with the converted one, true keeps both;  `keepConvertStatus=true` keeps that conversion result readable through  `GET api/2.0/files/file/{fileId}/checkconversion`. Files over the single-request size limit or the account's  storage quota are refused; send those through `POST api/2.0/files/{folderId}/upload/create_session`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file-to-my/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :create_new_if_exist Settles the clash with a file already carrying that title: left out, the content is written as the next  version of that file; set to true, both survive and the new one gets a numeric suffix in its title.
    # @option opts [Boolean] :store_original_file Reaches further than this request: it writes a setting on the calling account, the same one  `PUT api/2.0/files/storeoriginal` writes, and it stays in force for later uploads. True keeps both the  uploaded file and the copy the portal converts it into, false replaces the uploaded file with the converted  one, and leaving it out keeps whatever the account already has.
    # @option opts [Boolean] :keep_convert_status Decides whether the outcome of the background conversion outlives the conversion itself. True keeps the queue  record, so `GET api/2.0/files/file/{fileId}/checkconversion` can still report the result or the error; left  out, the record is cleared the moment the conversion ends and that call finds nothing.
    # @option opts [File] :file The content to store, sent as a `multipart/form-data` part; the name of that part becomes the title of the  stored file, with characters a title cannot hold replaced and the name cut to 170 characters. A request  without it is rejected as invalid.
    # @return [Array<(FileArrayWrapper, Integer, Hash)>] FileArrayWrapper data, response status code and response headers
    def upload_file_to_my_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::FoldersApi.upload_file_to_my ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/@my/upload'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'createNewIfExist'] = opts[:'create_new_if_exist'] if !opts[:'create_new_if_exist'].nil?
      query_params[:'storeOriginalFile'] = opts[:'store_original_file'] if !opts[:'store_original_file'].nil?
      query_params[:'keepConvertStatus'] = opts[:'keep_convert_status'] if !opts[:'keep_convert_status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['File'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::FoldersApi.upload_file_to_my",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::FoldersApi#upload_file_to_my\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

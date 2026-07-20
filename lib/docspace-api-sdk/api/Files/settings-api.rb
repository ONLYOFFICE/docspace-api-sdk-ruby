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
    class SettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Change the third-party settings access
    # Changes the access to the third-party settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-access-to-thirdparty/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [BooleanWrapper]
    def change_access_to_thirdparty(opts = {})
      data, _status_code, _headers = change_access_to_thirdparty_with_http_info(opts)
      data
    end

    # Change the third-party settings access
    # Changes the access to the third-party settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-access-to-thirdparty/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def change_access_to_thirdparty_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.change_access_to_thirdparty ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/thirdparty'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.change_access_to_thirdparty",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#change_access_to_thirdparty\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the trash bin auto-clearing setting
    # Updates the trash bin auto-clearing setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-automatically-clean-up/
    # @param [Hash] opts the optional parameters
    # @option opts [AutoCleanupRequestDto] :auto_cleanup_request_dto 
    # @return [AutoCleanUpDataWrapper]
    def change_automatically_clean_up(opts = {})
      data, _status_code, _headers = change_automatically_clean_up_with_http_info(opts)
      data
    end

    # Update the trash bin auto-clearing setting
    # Updates the trash bin auto-clearing setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-automatically-clean-up/
    # @param [Hash] opts the optional parameters
    # @option opts [AutoCleanupRequestDto] :auto_cleanup_request_dto 
    # @return [Array<(AutoCleanUpDataWrapper, Integer, Hash)>] AutoCleanUpDataWrapper data, response status code and response headers
    def change_automatically_clean_up_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.change_automatically_clean_up ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/autocleanup'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'auto_cleanup_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'AutoCleanUpDataWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.change_automatically_clean_up",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#change_automatically_clean_up\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the default access rights
    # Changes the default access rights in the sharing settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-default-access-rights/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :request_body Sharing rights (None, ReadWrite, Read, Restrict, Varies, Review, Comment, FillForms, CustomFilter, RoomAdmin, Editing, Collaborator).
    # @return [FileShareArrayWrapper]
    def change_default_access_rights(opts = {})
      data, _status_code, _headers = change_default_access_rights_with_http_info(opts)
      data
    end

    # Change the default access rights
    # Changes the default access rights in the sharing settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-default-access-rights/
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :request_body Sharing rights (None, ReadWrite, Read, Restrict, Varies, Review, Comment, FillForms, CustomFilter, RoomAdmin, Editing, Collaborator).
    # @return [Array<(FileShareArrayWrapper, Integer, Hash)>] FileShareArrayWrapper data, response status code and response headers
    def change_default_access_rights_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.change_default_access_rights ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/dafaultaccessrights'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'FileShareArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.change_default_access_rights",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#change_default_access_rights\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Confirm the file deletion
    # Specifies whether to confirm the file deletion or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-delete-confirm/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [BooleanWrapper]
    def change_delete_confirm(opts = {})
      data, _status_code, _headers = change_delete_confirm_with_http_info(opts)
      data
    end

    # Confirm the file deletion
    # Specifies whether to confirm the file deletion or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-delete-confirm/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def change_delete_confirm_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.change_delete_confirm ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/changedeleteconfrim'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.change_delete_confirm",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#change_delete_confirm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the archive format (using body parameters)
    # Changes the format of the downloaded archive from .zip to .tar.gz. This method uses the body parameters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-download-zip-from-body/
    # @param [Hash] opts the optional parameters
    # @option opts [DisplayRequestDto] :display_request_dto 
    # @return [ICompressWrapper]
    def change_download_zip_from_body(opts = {})
      data, _status_code, _headers = change_download_zip_from_body_with_http_info(opts)
      data
    end

    # Change the archive format (using body parameters)
    # Changes the format of the downloaded archive from .zip to .tar.gz. This method uses the body parameters.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-download-zip-from-body/
    # @param [Hash] opts the optional parameters
    # @option opts [DisplayRequestDto] :display_request_dto 
    # @return [Array<(ICompressWrapper, Integer, Hash)>] ICompressWrapper data, response status code and response headers
    def change_download_zip_from_body_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.change_download_zip_from_body ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/downloadtargz'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'display_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'ICompressWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.change_download_zip_from_body",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#change_download_zip_from_body\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the Access Control external sharing settings
    # Changes the Access Control external sharing settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-external-sharing-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [ExternalSharingSettingsRequestDto] :external_sharing_settings_request_dto 
    # @return [ExternalSharingSettingsWrapper]
    def change_external_sharing_settings(opts = {})
      data, _status_code, _headers = change_external_sharing_settings_with_http_info(opts)
      data
    end

    # Change the Access Control external sharing settings
    # Changes the Access Control external sharing settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/change-external-sharing-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [ExternalSharingSettingsRequestDto] :external_sharing_settings_request_dto 
    # @return [Array<(ExternalSharingSettingsWrapper, Integer, Hash)>] ExternalSharingSettingsWrapper data, response status code and response headers
    def change_external_sharing_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.change_external_sharing_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/externalsharingsettings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'external_sharing_settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'ExternalSharingSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.change_external_sharing_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#change_external_sharing_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the document service URL
    # Checks the document service location URL.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-doc-service-url/
    # @param [Hash] opts the optional parameters
    # @option opts [CheckDocServiceUrlRequestDto] :check_doc_service_url_request_dto 
    # @return [DocServiceUrlWrapper]
    def check_doc_service_url(opts = {})
      data, _status_code, _headers = check_doc_service_url_with_http_info(opts)
      data
    end

    # Check the document service URL
    # Checks the document service location URL.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-doc-service-url/
    # @param [Hash] opts the optional parameters
    # @option opts [CheckDocServiceUrlRequestDto] :check_doc_service_url_request_dto 
    # @return [Array<(DocServiceUrlWrapper, Integer, Hash)>] DocServiceUrlWrapper data, response status code and response headers
    def check_doc_service_url_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.check_doc_service_url ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/docservice'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'check_doc_service_url_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'DocServiceUrlWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.check_doc_service_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#check_doc_service_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Display a file extension
    # Specifies whether to display a file extension or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/display-file-extension/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [BooleanWrapper]
    def display_file_extension(opts = {})
      data, _status_code, _headers = display_file_extension_with_http_info(opts)
      data
    end

    # Display a file extension
    # Specifies whether to display a file extension or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/display-file-extension/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def display_file_extension_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.display_file_extension ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/displayfileextension'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.display_file_extension",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#display_file_extension\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Display the Recent folder
    # Displays the Recent folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/display-recent/
    # @param [Hash] opts the optional parameters
    # @option opts [DisplayRequestDto] :display_request_dto 
    # @return [BooleanWrapper]
    def display_recent(opts = {})
      data, _status_code, _headers = display_recent_with_http_info(opts)
      data
    end

    # Display the Recent folder
    # Displays the Recent folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/display-recent/
    # @param [Hash] opts the optional parameters
    # @option opts [DisplayRequestDto] :display_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def display_recent_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.display_recent ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/displayrecent'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'display_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.display_recent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#display_recent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the external sharing ability
    # Changes the ability to share a file externally.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/external-share/
    # @param [Hash] opts the optional parameters
    # @option opts [DisplayRequestDto] :display_request_dto 
    # @return [BooleanWrapper]
    def external_share(opts = {})
      data, _status_code, _headers = external_share_with_http_info(opts)
      data
    end

    # Change the external sharing ability
    # Changes the ability to share a file externally.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/external-share/
    # @param [Hash] opts the optional parameters
    # @option opts [DisplayRequestDto] :display_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def external_share_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.external_share ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/external'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'display_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.external_share",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#external_share\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the external sharing ability on social networks
    # Changes the ability to share a file externally on social networks.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/external-share-social-media/
    # @param [Hash] opts the optional parameters
    # @option opts [DisplayRequestDto] :display_request_dto 
    # @return [BooleanWrapper]
    def external_share_social_media(opts = {})
      data, _status_code, _headers = external_share_social_media_with_http_info(opts)
      data
    end

    # Change the external sharing ability on social networks
    # Changes the ability to share a file externally on social networks.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/external-share-social-media/
    # @param [Hash] opts the optional parameters
    # @option opts [DisplayRequestDto] :display_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def external_share_social_media_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.external_share_social_media ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/externalsocialmedia'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'display_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.external_share_social_media",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#external_share_social_media\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the forcesaving ability
    # Specifies if the file forcesaving is enabled or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/forcesave/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def forcesave(opts = {})
      data, _status_code, _headers = forcesave_with_http_info(opts)
      data
    end

    # Change the forcesaving ability
    # Specifies if the file forcesaving is enabled or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/forcesave/
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def forcesave_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.forcesave ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/forcesave'

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
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.forcesave",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#forcesave\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the trash bin auto-clearing setting
    # Returns the trash bin auto-clearing setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-automatically-clean-up/
    # @param [Hash] opts the optional parameters
    # @return [AutoCleanUpDataWrapper]
    def get_automatically_clean_up(opts = {})
      data, _status_code, _headers = get_automatically_clean_up_with_http_info(opts)
      data
    end

    # Get the trash bin auto-clearing setting
    # Returns the trash bin auto-clearing setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-automatically-clean-up/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AutoCleanUpDataWrapper, Integer, Hash)>] AutoCleanUpDataWrapper data, response status code and response headers
    def get_automatically_clean_up_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.get_automatically_clean_up ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/autocleanup'

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
      return_type = opts[:debug_return_type] || 'AutoCleanUpDataWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.get_automatically_clean_up",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#get_automatically_clean_up\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the default template setting
    # Returns the default template setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-templates/
    # @param [Hash] opts the optional parameters
    # @return [DefaultTemplateSettingsWrapper]
    def get_default_templates(opts = {})
      data, _status_code, _headers = get_default_templates_with_http_info(opts)
      data
    end

    # Get the default template setting
    # Returns the default template setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-templates/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DefaultTemplateSettingsWrapper, Integer, Hash)>] DefaultTemplateSettingsWrapper data, response status code and response headers
    def get_default_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.get_default_templates ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/defaulttemplate'

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
      return_type = opts[:debug_return_type] || 'DefaultTemplateSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.get_default_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#get_default_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the document service URL
    # Returns the URL address of the connected editors.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-doc-service-url/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :version Specifies whether to return the editor version or not.
    # @return [DocServiceUrlWrapper]
    def get_doc_service_url(opts = {})
      data, _status_code, _headers = get_doc_service_url_with_http_info(opts)
      data
    end

    # Get the document service URL
    # Returns the URL address of the connected editors.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-doc-service-url/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :version Specifies whether to return the editor version or not.
    # @return [Array<(DocServiceUrlWrapper, Integer, Hash)>] DocServiceUrlWrapper data, response status code and response headers
    def get_doc_service_url_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.get_doc_service_url ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/docservice'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DocServiceUrlWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.get_doc_service_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#get_doc_service_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the Documents information
    # Returns the information about the Documents module.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-module/
    # @param [Hash] opts the optional parameters
    # @return [ModuleWrapper]
    def get_files_module(opts = {})
      data, _status_code, _headers = get_files_module_with_http_info(opts)
      data
    end

    # Get the Documents information
    # Returns the information about the Documents module.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-module/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModuleWrapper, Integer, Hash)>] ModuleWrapper data, response status code and response headers
    def get_files_module_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.get_files_module ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/info'

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
      return_type = opts[:debug_return_type] || 'ModuleWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.get_files_module",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#get_files_module\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file settings
    # Returns all the file settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-settings/
    # @param [Hash] opts the optional parameters
    # @return [FilesSettingsWrapper]
    def get_files_settings(opts = {})
      data, _status_code, _headers = get_files_settings_with_http_info(opts)
      data
    end

    # Get file settings
    # Returns all the file settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(FilesSettingsWrapper, Integer, Hash)>] FilesSettingsWrapper data, response status code and response headers
    def get_files_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.get_files_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings'

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
      return_type = opts[:debug_return_type] || 'FilesSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.get_files_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#get_files_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Hide confirmation dialog when canceling operations
    # Hides the confirmation dialog when canceling operations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/hide-confirm-cancel-operation/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [BooleanWrapper]
    def hide_confirm_cancel_operation(opts = {})
      data, _status_code, _headers = hide_confirm_cancel_operation_with_http_info(opts)
      data
    end

    # Hide confirmation dialog when canceling operations
    # Hides the confirmation dialog when canceling operations.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/hide-confirm-cancel-operation/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def hide_confirm_cancel_operation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.hide_confirm_cancel_operation ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/hideconfirmcanceloperation'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.hide_confirm_cancel_operation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#hide_confirm_cancel_operation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Hide the confirmation dialog when converting
    # Hides the confirmation dialog for saving the file copy in the original format when converting a file.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/hide-confirm-convert/
    # @param [Hash] opts the optional parameters
    # @option opts [HideConfirmConvertRequestDto] :hide_confirm_convert_request_dto 
    # @return [BooleanWrapper]
    def hide_confirm_convert(opts = {})
      data, _status_code, _headers = hide_confirm_convert_with_http_info(opts)
      data
    end

    # Hide the confirmation dialog when converting
    # Hides the confirmation dialog for saving the file copy in the original format when converting a file.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/hide-confirm-convert/
    # @param [Hash] opts the optional parameters
    # @option opts [HideConfirmConvertRequestDto] :hide_confirm_convert_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def hide_confirm_convert_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.hide_confirm_convert ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/hideconfirmconvert'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'hide_confirm_convert_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.hide_confirm_convert",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#hide_confirm_convert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Hide confirmation dialog when changing room lifetime settings
    # Hides the confirmation dialog when changing the room lifetime settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/hide-confirm-room-lifetime/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [BooleanWrapper]
    def hide_confirm_room_lifetime(opts = {})
      data, _status_code, _headers = hide_confirm_room_lifetime_with_http_info(opts)
      data
    end

    # Hide confirmation dialog when changing room lifetime settings
    # Hides the confirmation dialog when changing the room lifetime settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/hide-confirm-room-lifetime/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def hide_confirm_room_lifetime_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.hide_confirm_room_lifetime ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/hideconfirmroomlifetime'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.hide_confirm_room_lifetime",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#hide_confirm_room_lifetime\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the Private Room availability
    # Checks if the Private Room settings are available or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/is-available-privacy-room-settings/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def is_available_privacy_room_settings(opts = {})
      data, _status_code, _headers = is_available_privacy_room_settings_with_http_info(opts)
      data
    end

    # Check the Private Room availability
    # Checks if the Private Room settings are available or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/is-available-privacy-room-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def is_available_privacy_room_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.is_available_privacy_room_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/@privacy/available'

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
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.is_available_privacy_room_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#is_available_privacy_room_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ask a new file name
    # Specifies whether to ask a user for a file name on creation or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/keep-new-file-name/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [BooleanWrapper]
    def keep_new_file_name(opts = {})
      data, _status_code, _headers = keep_new_file_name_with_http_info(opts)
      data
    end

    # Ask a new file name
    # Specifies whether to ask a user for a file name on creation or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/keep-new-file-name/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def keep_new_file_name_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.keep_new_file_name ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/keepnewfilename'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.keep_new_file_name",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#keep_new_file_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset the default template setting
    # Resets the default template setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-default-template/
    # @param [Hash] opts the optional parameters
    # @option opts [DefaultTemplateSettingsResetRequestDto] :default_template_settings_reset_request_dto 
    # @return [DefaultTemplateSettingsWrapper]
    def reset_default_template(opts = {})
      data, _status_code, _headers = reset_default_template_with_http_info(opts)
      data
    end

    # Reset the default template setting
    # Resets the default template setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-default-template/
    # @param [Hash] opts the optional parameters
    # @option opts [DefaultTemplateSettingsResetRequestDto] :default_template_settings_reset_request_dto 
    # @return [Array<(DefaultTemplateSettingsWrapper, Integer, Hash)>] DefaultTemplateSettingsWrapper data, response status code and response headers
    def reset_default_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.reset_default_template ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/defaulttemplate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'default_template_settings_reset_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'DefaultTemplateSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.reset_default_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#reset_default_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the default template setting
    # Changes the default template setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-template/
    # @param [Hash] opts the optional parameters
    # @option opts [DefaultTemplateSettingsRequestDto] :default_template_settings_request_dto 
    # @return [DefaultTemplateSettingsWrapper]
    def set_default_template(opts = {})
      data, _status_code, _headers = set_default_template_with_http_info(opts)
      data
    end

    # Change the default template setting
    # Changes the default template setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-template/
    # @param [Hash] opts the optional parameters
    # @option opts [DefaultTemplateSettingsRequestDto] :default_template_settings_request_dto 
    # @return [Array<(DefaultTemplateSettingsWrapper, Integer, Hash)>] DefaultTemplateSettingsWrapper data, response status code and response headers
    def set_default_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.set_default_template ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/defaulttemplate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'default_template_settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'DefaultTemplateSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.set_default_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#set_default_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Open document in the same browser tab
    # Changes the ability to open the document in the same browser tab.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-open-editor-in-same-tab/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [BooleanWrapper]
    def set_open_editor_in_same_tab(opts = {})
      data, _status_code, _headers = set_open_editor_in_same_tab_with_http_info(opts)
      data
    end

    # Open document in the same browser tab
    # Changes the ability to open the document in the same browser tab.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-open-editor-in-same-tab/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def set_open_editor_in_same_tab_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.set_open_editor_in_same_tab ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/openeditorinsametab'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.set_open_editor_in_same_tab",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#set_open_editor_in_same_tab\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Organize rooms grouping
    # Changes the setting that allows the user to organize the grouping of rooms.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-organize-rooms-grouping/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [BooleanWrapper]
    def set_organize_rooms_grouping(opts = {})
      data, _status_code, _headers = set_organize_rooms_grouping_with_http_info(opts)
      data
    end

    # Organize rooms grouping
    # Changes the setting that allows the user to organize the grouping of rooms.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-organize-rooms-grouping/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def set_organize_rooms_grouping_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.set_organize_rooms_grouping ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/organizegrouping'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.set_organize_rooms_grouping",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#set_organize_rooms_grouping\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the ability to store the forcesaved files
    # Changes the ability to store the forcesaved file versions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/store-forcesave/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def store_forcesave(opts = {})
      data, _status_code, _headers = store_forcesave_with_http_info(opts)
      data
    end

    # Change the ability to store the forcesaved files
    # Changes the ability to store the forcesaved file versions.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/store-forcesave/
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def store_forcesave_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.store_forcesave ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/storeforcesave'

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
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.store_forcesave",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#store_forcesave\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the ability to upload original formats
    # Changes the ability to upload documents in the original formats as well.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/store-original/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [BooleanWrapper]
    def store_original(opts = {})
      data, _status_code, _headers = store_original_with_http_info(opts)
      data
    end

    # Change the ability to upload original formats
    # Changes the ability to upload documents in the original formats as well.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/store-original/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def store_original_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.store_original ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/storeoriginal'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.store_original",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#store_original\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a file version if it exists
    # Updates a file version if a file with such a name already exists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-if-exist/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [BooleanWrapper]
    def update_file_if_exist(opts = {})
      data, _status_code, _headers = update_file_if_exist_with_http_info(opts)
      data
    end

    # Update a file version if it exists
    # Updates a file version if a file with such a name already exists.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-if-exist/
    # @param [Hash] opts the optional parameters
    # @option opts [SettingsRequestDto] :settings_request_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def update_file_if_exist_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.update_file_if_exist ...'
      end
      # resource path
      local_var_path = '/api/2.0/files/updateifexist'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.update_file_if_exist",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#update_file_if_exist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a file as the default template setting
    # Uploads a file to use as the default template setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-default-template/
    # @param file_extension [String] File extension of a template to replace
    # @param file [File] File to replace template with
    # @param [Hash] opts the optional parameters
    # @return [DefaultTemplateSettingsWrapper]
    def upload_default_template(file_extension, file, opts = {})
      data, _status_code, _headers = upload_default_template_with_http_info(file_extension, file, opts)
      data
    end

    # Upload a file as the default template setting
    # Uploads a file to use as the default template setting.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-default-template/
    # @param file_extension [String] File extension of a template to replace
    # @param file [File] File to replace template with
    # @param [Hash] opts the optional parameters
    # @return [Array<(DefaultTemplateSettingsWrapper, Integer, Hash)>] DefaultTemplateSettingsWrapper data, response status code and response headers
    def upload_default_template_with_http_info(file_extension, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Files::SettingsApi.upload_default_template ...'
      end
      # verify the required parameter 'file_extension' is set
      if @api_client.config.client_side_validation && file_extension.nil?
        fail ArgumentError, "Missing the required parameter 'file_extension' when calling Files::SettingsApi.upload_default_template"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling Files::SettingsApi.upload_default_template"
      end
      # resource path
      local_var_path = '/api/2.0/files/settings/defaulttemplate'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'FileExtension'] = file_extension

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
      form_params['File'] = file

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DefaultTemplateSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Files::SettingsApi.upload_default_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Files::SettingsApi#upload_default_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

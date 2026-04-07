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
  module People
    class PhotosApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create photo thumbnails
    # Creates the user photo thumbnails by coordinates of the original image specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-member-photo-thumbnails/
    # @param userid [String] The user ID.
    # @param thumbnails_request [ThumbnailsRequest] The thumbnail request.
    # @param [Hash] opts the optional parameters
    # @return [ThumbnailsDataWrapper]
    def create_member_photo_thumbnails(userid, thumbnails_request, opts = {})
      data, _status_code, _headers = create_member_photo_thumbnails_with_http_info(userid, thumbnails_request, opts)
      data
    end

    # Create photo thumbnails
    # Creates the user photo thumbnails by coordinates of the original image specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-member-photo-thumbnails/
    # @param userid [String] The user ID.
    # @param thumbnails_request [ThumbnailsRequest] The thumbnail request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ThumbnailsDataWrapper, Integer, Hash)>] ThumbnailsDataWrapper data, response status code and response headers
    def create_member_photo_thumbnails_with_http_info(userid, thumbnails_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::PhotosApi.create_member_photo_thumbnails ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::PhotosApi.create_member_photo_thumbnails"
      end
      # verify the required parameter 'thumbnails_request' is set
      if @api_client.config.client_side_validation && thumbnails_request.nil?
        fail ArgumentError, "Missing the required parameter 'thumbnails_request' when calling People::PhotosApi.create_member_photo_thumbnails"
      end
      # resource path
      local_var_path = '/api/2.0/people/{userid}/photo/thumbnails'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(thumbnails_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ThumbnailsDataWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::PhotosApi.create_member_photo_thumbnails",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::PhotosApi#create_member_photo_thumbnails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a user photo
    # Deletes a photo of the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member-photo/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [ThumbnailsDataWrapper]
    def delete_member_photo(userid, opts = {})
      data, _status_code, _headers = delete_member_photo_with_http_info(userid, opts)
      data
    end

    # Delete a user photo
    # Deletes a photo of the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member-photo/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ThumbnailsDataWrapper, Integer, Hash)>] ThumbnailsDataWrapper data, response status code and response headers
    def delete_member_photo_with_http_info(userid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::PhotosApi.delete_member_photo ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::PhotosApi.delete_member_photo"
      end
      # resource path
      local_var_path = '/api/2.0/people/{userid}/photo'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
      return_type = opts[:debug_return_type] || 'ThumbnailsDataWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::PhotosApi.delete_member_photo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::PhotosApi#delete_member_photo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user photo
    # Returns a photo of the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-member-photo/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [ThumbnailsDataWrapper]
    def get_member_photo(userid, opts = {})
      data, _status_code, _headers = get_member_photo_with_http_info(userid, opts)
      data
    end

    # Get a user photo
    # Returns a photo of the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-member-photo/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ThumbnailsDataWrapper, Integer, Hash)>] ThumbnailsDataWrapper data, response status code and response headers
    def get_member_photo_with_http_info(userid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::PhotosApi.get_member_photo ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::PhotosApi.get_member_photo"
      end
      # resource path
      local_var_path = '/api/2.0/people/{userid}/photo'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
      return_type = opts[:debug_return_type] || 'ThumbnailsDataWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::PhotosApi.get_member_photo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::PhotosApi#get_member_photo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a user photo
    # Updates a photo of the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-photo/
    # @param userid [String] The user ID.
    # @param update_photo_member_request [UpdatePhotoMemberRequest] The request parameters for updating a photo.
    # @param [Hash] opts the optional parameters
    # @return [ThumbnailsDataWrapper]
    def update_member_photo(userid, update_photo_member_request, opts = {})
      data, _status_code, _headers = update_member_photo_with_http_info(userid, update_photo_member_request, opts)
      data
    end

    # Update a user photo
    # Updates a photo of the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-photo/
    # @param userid [String] The user ID.
    # @param update_photo_member_request [UpdatePhotoMemberRequest] The request parameters for updating a photo.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ThumbnailsDataWrapper, Integer, Hash)>] ThumbnailsDataWrapper data, response status code and response headers
    def update_member_photo_with_http_info(userid, update_photo_member_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::PhotosApi.update_member_photo ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::PhotosApi.update_member_photo"
      end
      # verify the required parameter 'update_photo_member_request' is set
      if @api_client.config.client_side_validation && update_photo_member_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_photo_member_request' when calling People::PhotosApi.update_member_photo"
      end
      # resource path
      local_var_path = '/api/2.0/people/{userid}/photo'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_photo_member_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ThumbnailsDataWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::PhotosApi.update_member_photo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::PhotosApi#update_member_photo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a user photo
    # Uploads a photo of the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-member-photo/
    # @param userid [String] The user ID.
    # @param file [File] The image data.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :autosave Specifies whether to autosave a photo or not.
    # @return [FileUploadResultWrapper]
    def upload_member_photo(userid, file, opts = {})
      data, _status_code, _headers = upload_member_photo_with_http_info(userid, file, opts)
      data
    end

    # Upload a user photo
    # Uploads a photo of the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-member-photo/
    # @param userid [String] The user ID.
    # @param file [File] The image data.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :autosave Specifies whether to autosave a photo or not.
    # @return [Array<(FileUploadResultWrapper, Integer, Hash)>] FileUploadResultWrapper data, response status code and response headers
    def upload_member_photo_with_http_info(userid, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::PhotosApi.upload_member_photo ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::PhotosApi.upload_member_photo"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling People::PhotosApi.upload_member_photo"
      end
      # resource path
      local_var_path = '/api/2.0/people/{userid}/photo'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
      form_params['File'] = file
      form_params['Autosave'] = opts[:'autosave'] if !opts[:'autosave'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileUploadResultWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::PhotosApi.upload_member_photo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::PhotosApi#upload_member_photo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

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
    # Crops the avatar of a profile to the rectangle given in the request and rebuilds all of its thumbnail sizes,  which is the second step of changing an avatar by hand.  It works in two modes: with `tmpFile` it takes the temporary image  `POST api/2.0/people/{userid}/photo` produced with `autosave` off, makes the cropped result the main photo and  then discards the temporary file, and without `tmpFile` it re-crops the photo the profile already has.  A caller may only do this to their own profile - the ID in the route has to be the calling account, and an  administrator gets 403 for anybody else - and the account must be allowed to edit its own profile.  The call replaces the stored photo, so the previous crop is lost, and it can be repeated with new coordinates  as often as needed.  Passing `width` and `height` as 0 together with `tmpFile` keeps the whole uploaded image instead of cropping  it.  The answer holds the URLs of every generated size, the same shape `GET api/2.0/people/{userid}/photo`  returns.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-member-photo-thumbnails/
    # @param userid [String] The profile whose avatar is cropped, taken from the route. Either the ID of the account or its user name is  accepted, and it has to be the calling account, because a profile photo can only be changed by its owner.
    # @param thumbnails_request [ThumbnailsRequest] The crop rectangle, and optionally the temporary image to crop.
    # @param [Hash] opts the optional parameters
    # @return [ThumbnailsDataWrapper]
    def create_member_photo_thumbnails(userid, thumbnails_request, opts = {})
      data, _status_code, _headers = create_member_photo_thumbnails_with_http_info(userid, thumbnails_request, opts)
      data
    end

    # Create photo thumbnails
    # Crops the avatar of a profile to the rectangle given in the request and rebuilds all of its thumbnail sizes,  which is the second step of changing an avatar by hand.  It works in two modes: with `tmpFile` it takes the temporary image  `POST api/2.0/people/{userid}/photo` produced with `autosave` off, makes the cropped result the main photo and  then discards the temporary file, and without `tmpFile` it re-crops the photo the profile already has.  A caller may only do this to their own profile - the ID in the route has to be the calling account, and an  administrator gets 403 for anybody else - and the account must be allowed to edit its own profile.  The call replaces the stored photo, so the previous crop is lost, and it can be repeated with new coordinates  as often as needed.  Passing `width` and `height` as 0 together with `tmpFile` keeps the whole uploaded image instead of cropping  it.  The answer holds the URLs of every generated size, the same shape `GET api/2.0/people/{userid}/photo`  returns.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-member-photo-thumbnails/
    # @param userid [String] The profile whose avatar is cropped, taken from the route. Either the ID of the account or its user name is  accepted, and it has to be the calling account, because a profile photo can only be changed by its owner.
    # @param thumbnails_request [ThumbnailsRequest] The crop rectangle, and optionally the temporary image to crop.
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
    # Removes the avatar of a profile, so that the profile falls back to the default placeholder image.  A caller may only do this to their own profile - the ID in the route has to be the calling account, and an  administrator gets 403 for anybody else - and the account must be allowed to edit its own profile.  The removal is permanent and cannot be undone: the stored image and all of its sizes are deleted, and a new  avatar has to be uploaded through `POST api/2.0/people/{userid}/photo` to replace it.  The call is idempotent, so removing an avatar from a profile that has none succeeds as well, and it raises a  `UserUpdated` webhook.  The answer still holds the URLs of every size, now pointing at the default image.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member-photo/
    # @param userid [String] The profile whose avatar the operation addresses, taken from the route. Either the ID of the account or its  user name is accepted. Reading a photo works for any account the caller may see, while deleting one only  works for the calling account itself.
    # @param [Hash] opts the optional parameters
    # @return [ThumbnailsDataWrapper]
    def delete_member_photo(userid, opts = {})
      data, _status_code, _headers = delete_member_photo_with_http_info(userid, opts)
      data
    end

    # Delete a user photo
    # Removes the avatar of a profile, so that the profile falls back to the default placeholder image.  A caller may only do this to their own profile - the ID in the route has to be the calling account, and an  administrator gets 403 for anybody else - and the account must be allowed to edit its own profile.  The removal is permanent and cannot be undone: the stored image and all of its sizes are deleted, and a new  avatar has to be uploaded through `POST api/2.0/people/{userid}/photo` to replace it.  The call is idempotent, so removing an avatar from a profile that has none succeeds as well, and it raises a  `UserUpdated` webhook.  The answer still holds the URLs of every size, now pointing at the default image.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member-photo/
    # @param userid [String] The profile whose avatar the operation addresses, taken from the route. Either the ID of the account or its  user name is accepted. Reading a photo works for any account the caller may see, while deleting one only  works for the calling account itself.
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
    # Returns the URLs of the avatar of a profile in every size the portal keeps: the original, the retina and the  maximum variants, and the big, medium and small thumbnails.  Unlike the operations that change an avatar, this one may be called for another account, as long as the  caller is allowed to see that account - a guest, for instance, only sees the accounts it is related to.  The call is read-only and always answers with a full set of URLs: a profile that has no avatar of its own  gets the URLs of the default placeholder image rather than an empty answer.  The URLs are portal paths meant to be requested directly and may be replaced when the avatar changes, so they  should not be stored for a long time.  To change the avatar use `POST api/2.0/people/{userid}/photo` for an uploaded file,  `PUT api/2.0/people/{userid}/photo` for one taken from a URL, and  `DELETE api/2.0/people/{userid}/photo` to drop it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-member-photo/
    # @param userid [String] The profile whose avatar the operation addresses, taken from the route. Either the ID of the account or its  user name is accepted. Reading a photo works for any account the caller may see, while deleting one only  works for the calling account itself.
    # @param [Hash] opts the optional parameters
    # @return [ThumbnailsDataWrapper]
    def get_member_photo(userid, opts = {})
      data, _status_code, _headers = get_member_photo_with_http_info(userid, opts)
      data
    end

    # Get a user photo
    # Returns the URLs of the avatar of a profile in every size the portal keeps: the original, the retina and the  maximum variants, and the big, medium and small thumbnails.  Unlike the operations that change an avatar, this one may be called for another account, as long as the  caller is allowed to see that account - a guest, for instance, only sees the accounts it is related to.  The call is read-only and always answers with a full set of URLs: a profile that has no avatar of its own  gets the URLs of the default placeholder image rather than an empty answer.  The URLs are portal paths meant to be requested directly and may be replaced when the avatar changes, so they  should not be stored for a long time.  To change the avatar use `POST api/2.0/people/{userid}/photo` for an uploaded file,  `PUT api/2.0/people/{userid}/photo` for one taken from a URL, and  `DELETE api/2.0/people/{userid}/photo` to drop it.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-member-photo/
    # @param userid [String] The profile whose avatar the operation addresses, taken from the route. Either the ID of the account or its  user name is accepted. Reading a photo works for any account the caller may see, while deleting one only  works for the calling account itself.
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
    # Sets the avatar of a profile from an image the portal downloads itself from the URL given in `files`, which is  the way to reuse a picture that is already published somewhere.  A caller may only do this to their own profile - the ID in the route has to be the calling account, and an  administrator gets 403 for anybody else - and the account must be allowed to edit its own profile.  The URL has to be absolute or relative to the portal, and it has to use HTTPS unless the request itself came  over HTTP; an address the portal refuses to fetch, and a download that does not succeed, both answer 403.  Passing the URL the profile already uses is a no-op, and an empty `files` is rejected with 400, so use  `DELETE api/2.0/people/{userid}/photo` to remove an avatar rather than sending an empty value.  The downloaded image replaces the stored avatar and all of its sizes at once, raises a `UserUpdated` webhook,  and is subject to the portal limit on image size.  To send the bytes instead of a URL, upload the file through `POST api/2.0/people/{userid}/photo`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-photo/
    # @param userid [String] The profile whose avatar is replaced, taken from the route. Either the ID of the account or its user name is  accepted, and it has to be the calling account, because a profile photo can only be changed by its owner.
    # @param update_photo_member_request [UpdatePhotoMemberRequest] The address of the image to use as the new avatar.
    # @param [Hash] opts the optional parameters
    # @return [ThumbnailsDataWrapper]
    def update_member_photo(userid, update_photo_member_request, opts = {})
      data, _status_code, _headers = update_member_photo_with_http_info(userid, update_photo_member_request, opts)
      data
    end

    # Update a user photo
    # Sets the avatar of a profile from an image the portal downloads itself from the URL given in `files`, which is  the way to reuse a picture that is already published somewhere.  A caller may only do this to their own profile - the ID in the route has to be the calling account, and an  administrator gets 403 for anybody else - and the account must be allowed to edit its own profile.  The URL has to be absolute or relative to the portal, and it has to use HTTPS unless the request itself came  over HTTP; an address the portal refuses to fetch, and a download that does not succeed, both answer 403.  Passing the URL the profile already uses is a no-op, and an empty `files` is rejected with 400, so use  `DELETE api/2.0/people/{userid}/photo` to remove an avatar rather than sending an empty value.  The downloaded image replaces the stored avatar and all of its sizes at once, raises a `UserUpdated` webhook,  and is subject to the portal limit on image size.  To send the bytes instead of a URL, upload the file through `POST api/2.0/people/{userid}/photo`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-photo/
    # @param userid [String] The profile whose avatar is replaced, taken from the route. Either the ID of the account or its user name is  accepted, and it has to be the calling account, because a profile photo can only be changed by its owner.
    # @param update_photo_member_request [UpdatePhotoMemberRequest] The address of the image to use as the new avatar.
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
    # Uploads an image as multipart form data and either makes it the avatar of a profile straight away or keeps it  as a temporary file to be cropped afterwards.  With `autosave` set to true the image becomes the avatar immediately, all of its sizes are built and their  URLs come back in `data`, each with a `hash` query parameter that changes whenever the avatar does, so a  client can cache them safely.  With `autosave` left false the image is only stored as a temporary file and `data` holds its name, which has  to be passed as `tmpFile` to `POST api/2.0/people/{userid}/photo/thumbnails` to choose the crop; nothing  changes on the profile until that second call succeeds.  A caller may only do this to their own profile, the ID in the route has to be the calling account, and the  image has to be a format the portal can read and stay within the portal limit on image size.  This operation reports every problem in the body instead of as a status code: it answers 200 with `success`  set to false and a human-readable `message`, and it does so for a missing file, an unreadable format, an  oversized image and a rejected permission alike, so a client has to check `success` and must not rely on the  status alone.  A successful upload raises a `UserUpdated` webhook only in the `autosave` case.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-member-photo/
    # @param userid [String] The profile whose avatar is uploaded, taken from the route. Either the ID of the account or its user name is  accepted, and it has to be the calling account, because a profile photo can only be changed by its owner.
    # @param file [File] The image itself, sent as a multipart form field. It has to be a raster format the portal can read and stay  within the portal limit on image size; sending no file makes the operation answer with `success` false rather  than an error status.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :autosave Set it to true to make the uploaded image the avatar right away. With the default false the image is only  stored as a temporary file whose name comes back in `data`, and it has to be passed to  `POST api/2.0/people/{userid}/photo/thumbnails` to take effect.
    # @return [FileUploadResultWrapper]
    def upload_member_photo(userid, file, opts = {})
      data, _status_code, _headers = upload_member_photo_with_http_info(userid, file, opts)
      data
    end

    # Upload a user photo
    # Uploads an image as multipart form data and either makes it the avatar of a profile straight away or keeps it  as a temporary file to be cropped afterwards.  With `autosave` set to true the image becomes the avatar immediately, all of its sizes are built and their  URLs come back in `data`, each with a `hash` query parameter that changes whenever the avatar does, so a  client can cache them safely.  With `autosave` left false the image is only stored as a temporary file and `data` holds its name, which has  to be passed as `tmpFile` to `POST api/2.0/people/{userid}/photo/thumbnails` to choose the crop; nothing  changes on the profile until that second call succeeds.  A caller may only do this to their own profile, the ID in the route has to be the calling account, and the  image has to be a format the portal can read and stay within the portal limit on image size.  This operation reports every problem in the body instead of as a status code: it answers 200 with `success`  set to false and a human-readable `message`, and it does so for a missing file, an unreadable format, an  oversized image and a rejected permission alike, so a client has to check `success` and must not rely on the  status alone.  A successful upload raises a `UserUpdated` webhook only in the `autosave` case.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-member-photo/
    # @param userid [String] The profile whose avatar is uploaded, taken from the route. Either the ID of the account or its user name is  accepted, and it has to be the calling account, because a profile photo can only be changed by its owner.
    # @param file [File] The image itself, sent as a multipart form field. It has to be a raster format the portal can read and stay  within the portal limit on image size; sending no file makes the operation answer with `success` false rather  than an error status.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :autosave Set it to true to make the uploaded image the avatar right away. With the default false the image is only  stored as a temporary file whose name comes back in `data`, and it has to be passed to  `POST api/2.0/people/{userid}/photo/thumbnails` to take effect.
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

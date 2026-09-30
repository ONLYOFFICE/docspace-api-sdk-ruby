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
    class UserTypeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the user type change progress
    # Returns the current state of the user type change queued for the user with the ID specified in the request.  A conversion must have been queued by `POST api/2.0/people/type` first: when nothing is queued for that user  the operation answers 200 with an empty body.  The caller needs the permission to add and remove users.  The call is read-only and is the polling operation of this flow - repeat it until `isCompleted` is true,  reading `percentage` for the 0 to 100 progress and `error` for the message left by a failed job.  Use `PUT api/2.0/people/type/terminate` to cancel a conversion that is still running.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-type-update-progress/
    # @param userid [String] The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started.
    # @param [Hash] opts the optional parameters
    # @return [TaskProgressResponseWrapper]
    def get_user_type_update_progress(userid, opts = {})
      data, _status_code, _headers = get_user_type_update_progress_with_http_info(userid, opts)
      data
    end

    # Get the user type change progress
    # Returns the current state of the user type change queued for the user with the ID specified in the request.  A conversion must have been queued by `POST api/2.0/people/type` first: when nothing is queued for that user  the operation answers 200 with an empty body.  The caller needs the permission to add and remove users.  The call is read-only and is the polling operation of this flow - repeat it until `isCompleted` is true,  reading `percentage` for the 0 to 100 progress and `error` for the message left by a failed job.  Use `PUT api/2.0/people/type/terminate` to cancel a conversion that is still running.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-type-update-progress/
    # @param userid [String] The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaskProgressResponseWrapper, Integer, Hash)>] TaskProgressResponseWrapper data, response status code and response headers
    def get_user_type_update_progress_with_http_info(userid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserTypeApi.get_user_type_update_progress ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::UserTypeApi.get_user_type_update_progress"
      end
      # resource path
      local_var_path = '/api/2.0/people/type/progress/{userid}'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
      return_type = opts[:debug_return_type] || 'TaskProgressResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::UserTypeApi.get_user_type_update_progress",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserTypeApi#get_user_type_update_progress\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start updating user type
    # Queues an asynchronous job that converts one account to `Guest` or `User` and, in the same job, hands the  rooms and the shared files of that account over to another administrator.  Only `Guest` and `User` are accepted here, because they are the types that cannot own rooms; for any other  type use `PUT api/2.0/people/type/{type}`, which converts immediately and transfers nothing.  The caller needs the permission to add and remove users of the requested type, has to be the portal owner to  convert a DocSpace administrator, and converting to `Guest` also requires the portal to allow inviting guests.  The account being converted has to be active and cannot be the caller, and the recipient - `reassignUserId`,  or the caller when it is omitted - has to be an active room admin or DocSpace admin other than that account.  The conversion does not finish within this call: poll `GET api/2.0/people/type/progress/{userid}` with the  converted user ID until `isCompleted` is true, and cancel it through `PUT api/2.0/people/type/terminate`.  A failure inside the running job is reported in the `error` field of the progress, not as a status code here.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-user-type-update/
    # @param [Hash] opts the optional parameters
    # @option opts [StartUpdateUserTypeDto] :start_update_user_type_dto 
    # @return [TaskProgressResponseWrapper]
    def start_user_type_update(opts = {})
      data, _status_code, _headers = start_user_type_update_with_http_info(opts)
      data
    end

    # Start updating user type
    # Queues an asynchronous job that converts one account to `Guest` or `User` and, in the same job, hands the  rooms and the shared files of that account over to another administrator.  Only `Guest` and `User` are accepted here, because they are the types that cannot own rooms; for any other  type use `PUT api/2.0/people/type/{type}`, which converts immediately and transfers nothing.  The caller needs the permission to add and remove users of the requested type, has to be the portal owner to  convert a DocSpace administrator, and converting to `Guest` also requires the portal to allow inviting guests.  The account being converted has to be active and cannot be the caller, and the recipient - `reassignUserId`,  or the caller when it is omitted - has to be an active room admin or DocSpace admin other than that account.  The conversion does not finish within this call: poll `GET api/2.0/people/type/progress/{userid}` with the  converted user ID until `isCompleted` is true, and cancel it through `PUT api/2.0/people/type/terminate`.  A failure inside the running job is reported in the `error` field of the progress, not as a status code here.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-user-type-update/
    # @param [Hash] opts the optional parameters
    # @option opts [StartUpdateUserTypeDto] :start_update_user_type_dto 
    # @return [Array<(TaskProgressResponseWrapper, Integer, Hash)>] TaskProgressResponseWrapper data, response status code and response headers
    def start_user_type_update_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserTypeApi.start_user_type_update ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/type'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'start_update_user_type_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TaskProgressResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::UserTypeApi.start_user_type_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserTypeApi#start_user_type_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terminate updating user type
    # Cancels the user type change queued for the user with the ID specified in the request.  The caller needs the permission to add and remove users.  The operation is idempotent: when nothing is queued for that user it answers 200 with an empty body, and  repeating it on an already cancelled job changes nothing.  Cancelling removes the job from the queue and does not undo the type change or the transfers it has already  made, and a cancelled job cannot be resumed - start a new one through `POST api/2.0/people/type`.  The returned progress reports `status` as `Canceled` and `isCompleted` as true.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-user-type-update/
    # @param [Hash] opts the optional parameters
    # @option opts [TerminateRequestDto] :terminate_request_dto 
    # @return [TaskProgressResponseWrapper]
    def terminate_user_type_update(opts = {})
      data, _status_code, _headers = terminate_user_type_update_with_http_info(opts)
      data
    end

    # Terminate updating user type
    # Cancels the user type change queued for the user with the ID specified in the request.  The caller needs the permission to add and remove users.  The operation is idempotent: when nothing is queued for that user it answers 200 with an empty body, and  repeating it on an already cancelled job changes nothing.  Cancelling removes the job from the queue and does not undo the type change or the transfers it has already  made, and a cancelled job cannot be resumed - start a new one through `POST api/2.0/people/type`.  The returned progress reports `status` as `Canceled` and `isCompleted` as true.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-user-type-update/
    # @param [Hash] opts the optional parameters
    # @option opts [TerminateRequestDto] :terminate_request_dto 
    # @return [Array<(TaskProgressResponseWrapper, Integer, Hash)>] TaskProgressResponseWrapper data, response status code and response headers
    def terminate_user_type_update_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserTypeApi.terminate_user_type_update ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/type/terminate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'terminate_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TaskProgressResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::UserTypeApi.terminate_user_type_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserTypeApi#terminate_user_type_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change a user type
    # Changes the type of the existing portal users listed in `userIds` to the type given in the route, in one call.  The caller needs the permission to add and remove users of the requested type, cannot change their own type or  the type of the portal owner, and cannot use this operation at all while being a guest; changing somebody to  `Guest` additionally requires the portal to allow inviting guests.  Every listed account has to be visible to the caller and must not be disabled.  The change is applied immediately: each converted user gets a notification email and raises a `UserUpdated`  webhook, and the accounts are processed one by one, so a rejection in the middle leaves the users before it  already converted - re-read them before retrying.  The answer streams the converted users with their detailed information, in the order they were processed.  Converting somebody to a paid type takes a paid seat, so the operation answers 402 when the tariff or the  paid-user quota does not allow one more.  This operation only moves the type and leaves the rooms and the shared files of the account where they are -  to hand them over to another admin in the same step, use `POST api/2.0/people/type` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-type/
    # @param type [EmployeeType] The type to convert the listed accounts to, taken from the route: `User`, `Guest`, `RoomAdmin` or  `DocSpaceAdmin`. `RoomAdmin` and `DocSpaceAdmin` take a paid seat.
    # @param update_members_request_dto [UpdateMembersRequestDto] The accounts to convert. Only `userIds` is read by this operation; `resendAll` belongs to the invitation  operations and is ignored here.
    # @param [Hash] opts the optional parameters
    # @return [EmployeeFullArrayWrapper]
    def update_user_type(type, update_members_request_dto, opts = {})
      data, _status_code, _headers = update_user_type_with_http_info(type, update_members_request_dto, opts)
      data
    end

    # Change a user type
    # Changes the type of the existing portal users listed in `userIds` to the type given in the route, in one call.  The caller needs the permission to add and remove users of the requested type, cannot change their own type or  the type of the portal owner, and cannot use this operation at all while being a guest; changing somebody to  `Guest` additionally requires the portal to allow inviting guests.  Every listed account has to be visible to the caller and must not be disabled.  The change is applied immediately: each converted user gets a notification email and raises a `UserUpdated`  webhook, and the accounts are processed one by one, so a rejection in the middle leaves the users before it  already converted - re-read them before retrying.  The answer streams the converted users with their detailed information, in the order they were processed.  Converting somebody to a paid type takes a paid seat, so the operation answers 402 when the tariff or the  paid-user quota does not allow one more.  This operation only moves the type and leaves the rooms and the shared files of the account where they are -  to hand them over to another admin in the same step, use `POST api/2.0/people/type` instead.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-type/
    # @param type [EmployeeType] The type to convert the listed accounts to, taken from the route: `User`, `Guest`, `RoomAdmin` or  `DocSpaceAdmin`. `RoomAdmin` and `DocSpaceAdmin` take a paid seat.
    # @param update_members_request_dto [UpdateMembersRequestDto] The accounts to convert. Only `userIds` is read by this operation; `resendAll` belongs to the invitation  operations and is ignored here.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def update_user_type_with_http_info(type, update_members_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserTypeApi.update_user_type ...'
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling People::UserTypeApi.update_user_type"
      end
      # verify the required parameter 'update_members_request_dto' is set
      if @api_client.config.client_side_validation && update_members_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'update_members_request_dto' when calling People::UserTypeApi.update_user_type"
      end
      # resource path
      local_var_path = '/api/2.0/people/type/{type}'.sub('{' + 'type' + '}', CGI.escape(type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_members_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeFullArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::UserTypeApi.update_user_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserTypeApi#update_user_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

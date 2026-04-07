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
    # Get the progress of updating user type
    # Returns the progress of updating the user type.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-type-update-progress/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [TaskProgressResponseWrapper]
    def get_user_type_update_progress(userid, opts = {})
      data, _status_code, _headers = get_user_type_update_progress_with_http_info(userid, opts)
      data
    end

    # Get the progress of updating user type
    # Returns the progress of updating the user type.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-type-update-progress/
    # @param userid [String] The user ID.
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
    # Starts updating the type of the user or guest when reassigning rooms and shared files.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-user-type-update/
    # @param [Hash] opts the optional parameters
    # @option opts [StartUpdateUserTypeDto] :start_update_user_type_dto 
    # @return [TaskProgressResponseWrapper]
    def start_user_type_update(opts = {})
      data, _status_code, _headers = start_user_type_update_with_http_info(opts)
      data
    end

    # Start updating user type
    # Starts updating the type of the user or guest when reassigning rooms and shared files.
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
    # Terminates the process of updating the type of the user or guest.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-user-type-update/
    # @param [Hash] opts the optional parameters
    # @option opts [TerminateRequestDto] :terminate_request_dto 
    # @return [TaskProgressResponseWrapper]
    def terminate_user_type_update(opts = {})
      data, _status_code, _headers = terminate_user_type_update_with_http_info(opts)
      data
    end

    # Terminate updating user type
    # Terminates the process of updating the type of the user or guest.
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
    # Changes a type of the users with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-type/
    # @param type [EmployeeType] The new user type.
    # @param update_members_request_dto [UpdateMembersRequestDto] The request parameters for updating the user information.
    # @param [Hash] opts the optional parameters
    # @return [EmployeeFullArrayWrapper]
    def update_user_type(type, update_members_request_dto, opts = {})
      data, _status_code, _headers = update_user_type_with_http_info(type, update_members_request_dto, opts)
      data
    end

    # Change a user type
    # Changes a type of the users with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-type/
    # @param type [EmployeeType] The new user type.
    # @param update_members_request_dto [UpdateMembersRequestDto] The request parameters for updating the user information.
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

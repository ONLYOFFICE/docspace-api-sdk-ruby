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
    class UserDataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the progress of deleting the personal folder
    # Returns the progress of deleting the personal folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-delete-personal-folder-progress/
    # @param [Hash] opts the optional parameters
    # @return [TaskProgressResponseWrapper]
    def get_delete_personal_folder_progress(opts = {})
      data, _status_code, _headers = get_delete_personal_folder_progress_with_http_info(opts)
      data
    end

    # Get the progress of deleting the personal folder
    # Returns the progress of deleting the personal folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-delete-personal-folder-progress/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaskProgressResponseWrapper, Integer, Hash)>] TaskProgressResponseWrapper data, response status code and response headers
    def get_delete_personal_folder_progress_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserDataApi.get_delete_personal_folder_progress ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/delete/personal/progress'

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
        :operation => :"People::UserDataApi.get_delete_personal_folder_progress",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserDataApi#get_delete_personal_folder_progress\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the reassignment progress
    # Returns the progress of the started data reassignment for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reassign-progress/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [TaskProgressResponseWrapper]
    def get_reassign_progress(userid, opts = {})
      data, _status_code, _headers = get_reassign_progress_with_http_info(userid, opts)
      data
    end

    # Get the reassignment progress
    # Returns the progress of the started data reassignment for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reassign-progress/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaskProgressResponseWrapper, Integer, Hash)>] TaskProgressResponseWrapper data, response status code and response headers
    def get_reassign_progress_with_http_info(userid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserDataApi.get_reassign_progress ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::UserDataApi.get_reassign_progress"
      end
      # resource path
      local_var_path = '/api/2.0/people/reassign/progress/{userid}'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
        :operation => :"People::UserDataApi.get_reassign_progress",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserDataApi#get_reassign_progress\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the deletion progress
    # Returns the progress of the started data deletion for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-remove-progress/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [TaskProgressResponseWrapper]
    def get_remove_progress(userid, opts = {})
      data, _status_code, _headers = get_remove_progress_with_http_info(userid, opts)
      data
    end

    # Get the deletion progress
    # Returns the progress of the started data deletion for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-remove-progress/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaskProgressResponseWrapper, Integer, Hash)>] TaskProgressResponseWrapper data, response status code and response headers
    def get_remove_progress_with_http_info(userid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserDataApi.get_remove_progress ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::UserDataApi.get_remove_progress"
      end
      # resource path
      local_var_path = '/api/2.0/people/remove/progress/{userid}'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
        :operation => :"People::UserDataApi.get_remove_progress",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserDataApi#get_remove_progress\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check data for reassignment need
    # Checks whether the reassignment of rooms and shared files is required.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/necessary-reassign/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id The user ID.
    # @option opts [EmployeeType] :type The expected user type.
    # @return [BooleanWrapper]
    def necessary_reassign(opts = {})
      data, _status_code, _headers = necessary_reassign_with_http_info(opts)
      data
    end

    # Check data for reassignment need
    # Checks whether the reassignment of rooms and shared files is required.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/necessary-reassign/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id The user ID.
    # @option opts [EmployeeType] :type The expected user type.
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def necessary_reassign_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserDataApi.necessary_reassign ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/reassign/necessary'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'UserId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'Type'] = opts[:'type'] if !opts[:'type'].nil?

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
        :operation => :"People::UserDataApi.necessary_reassign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserDataApi#necessary_reassign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send the deletion instructions
    # Sends the instructions for deleting a user profile.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-instructions-to-delete/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def send_instructions_to_delete(opts = {})
      data, _status_code, _headers = send_instructions_to_delete_with_http_info(opts)
      data
    end

    # Send the deletion instructions
    # Sends the instructions for deleting a user profile.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-instructions-to-delete/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def send_instructions_to_delete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserDataApi.send_instructions_to_delete ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/self/delete'

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
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::UserDataApi.send_instructions_to_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserDataApi#send_instructions_to_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the personal folder
    # Starts deleting the personal folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-delete-personal-folder/
    # @param [Hash] opts the optional parameters
    # @return [TaskProgressResponseWrapper]
    def start_delete_personal_folder(opts = {})
      data, _status_code, _headers = start_delete_personal_folder_with_http_info(opts)
      data
    end

    # Delete the personal folder
    # Starts deleting the personal folder.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-delete-personal-folder/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaskProgressResponseWrapper, Integer, Hash)>] TaskProgressResponseWrapper data, response status code and response headers
    def start_delete_personal_folder_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserDataApi.start_delete_personal_folder ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/delete/personal/start'

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
        :operation => :"People::UserDataApi.start_delete_personal_folder",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserDataApi#start_delete_personal_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start the data reassignment
    # Starts the data reassignment for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-reassign/
    # @param [Hash] opts the optional parameters
    # @option opts [StartReassignRequestDto] :start_reassign_request_dto 
    # @return [TaskProgressResponseWrapper]
    def start_reassign(opts = {})
      data, _status_code, _headers = start_reassign_with_http_info(opts)
      data
    end

    # Start the data reassignment
    # Starts the data reassignment for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-reassign/
    # @param [Hash] opts the optional parameters
    # @option opts [StartReassignRequestDto] :start_reassign_request_dto 
    # @return [Array<(TaskProgressResponseWrapper, Integer, Hash)>] TaskProgressResponseWrapper data, response status code and response headers
    def start_reassign_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserDataApi.start_reassign ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/reassign/start'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'start_reassign_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'TaskProgressResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::UserDataApi.start_reassign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserDataApi#start_reassign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start the data deletion
    # Starts the data deletion for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-remove/
    # @param [Hash] opts the optional parameters
    # @option opts [TerminateRequestDto] :terminate_request_dto 
    # @return [TaskProgressResponseWrapper]
    def start_remove(opts = {})
      data, _status_code, _headers = start_remove_with_http_info(opts)
      data
    end

    # Start the data deletion
    # Starts the data deletion for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/start-remove/
    # @param [Hash] opts the optional parameters
    # @option opts [TerminateRequestDto] :terminate_request_dto 
    # @return [Array<(TaskProgressResponseWrapper, Integer, Hash)>] TaskProgressResponseWrapper data, response status code and response headers
    def start_remove_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserDataApi.start_remove ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/remove/start'

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
        :operation => :"People::UserDataApi.start_remove",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserDataApi#start_remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terminate the data reassignment
    # Terminates the data reassignment for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-reassign/
    # @param [Hash] opts the optional parameters
    # @option opts [TerminateRequestDto] :terminate_request_dto 
    # @return [TaskProgressResponseWrapper]
    def terminate_reassign(opts = {})
      data, _status_code, _headers = terminate_reassign_with_http_info(opts)
      data
    end

    # Terminate the data reassignment
    # Terminates the data reassignment for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-reassign/
    # @param [Hash] opts the optional parameters
    # @option opts [TerminateRequestDto] :terminate_request_dto 
    # @return [Array<(TaskProgressResponseWrapper, Integer, Hash)>] TaskProgressResponseWrapper data, response status code and response headers
    def terminate_reassign_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserDataApi.terminate_reassign ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/reassign/terminate'

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
        :operation => :"People::UserDataApi.terminate_reassign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserDataApi#terminate_reassign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terminate the data deletion
    # Terminates the data deletion for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-remove/
    # @param [Hash] opts the optional parameters
    # @option opts [TerminateRequestDto] :terminate_request_dto 
    # @return [nil]
    def terminate_remove(opts = {})
      terminate_remove_with_http_info(opts)
      nil
    end

    # Terminate the data deletion
    # Terminates the data deletion for the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-remove/
    # @param [Hash] opts the optional parameters
    # @option opts [TerminateRequestDto] :terminate_request_dto 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def terminate_remove_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::UserDataApi.terminate_remove ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/remove/terminate'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::UserDataApi.terminate_remove",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::UserDataApi#terminate_remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

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
  module Portal
    class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an invitation link
    # Returns an invitation link for joining the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-invitation-link/
    # @param [Hash] opts the optional parameters
    # @option opts [InvitationLinkCreateRequestDto] :invitation_link_create_request_dto 
    # @return [InvitationLinkWrapper]
    def create_invitation_link(opts = {})
      data, _status_code, _headers = create_invitation_link_with_http_info(opts)
      data
    end

    # Create an invitation link
    # Returns an invitation link for joining the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-invitation-link/
    # @param [Hash] opts the optional parameters
    # @option opts [InvitationLinkCreateRequestDto] :invitation_link_create_request_dto 
    # @return [Array<(InvitationLinkWrapper, Integer, Hash)>] InvitationLinkWrapper data, response status code and response headers
    def create_invitation_link_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::UsersApi.create_invitation_link ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/users/invitationlink'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'invitation_link_create_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'InvitationLinkWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::UsersApi.create_invitation_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::UsersApi#create_invitation_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an invitation link.
    # Ensures that the current user has permission to delete the specified invitation link.  Throws security or not-found exceptions if required conditions are not met.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-invitation-link/
    # @param [Hash] opts the optional parameters
    # @option opts [InvitationLinkDeleteRequestDto] :invitation_link_delete_request_dto The data transfer object containing the details of the invitation link to be deleted.
    # @return [StringWrapper]
    def delete_invitation_link(opts = {})
      data, _status_code, _headers = delete_invitation_link_with_http_info(opts)
      data
    end

    # Deletes an invitation link.
    # Ensures that the current user has permission to delete the specified invitation link.  Throws security or not-found exceptions if required conditions are not met.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-invitation-link/
    # @param [Hash] opts the optional parameters
    # @option opts [InvitationLinkDeleteRequestDto] :invitation_link_delete_request_dto The data transfer object containing the details of the invitation link to be deleted.
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def delete_invitation_link_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::UsersApi.delete_invitation_link ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/users/invitationlink'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'invitation_link_delete_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::UsersApi.delete_invitation_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::UsersApi#delete_invitation_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an invitation link
    # Returns an invitation link for joining the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link/
    # @param employee_type [EmployeeType] The type of employee role for the invitation link (DocSpaceAdmin, RoomAdmin or User).
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def get_invitation_link(employee_type, opts = {})
      data, _status_code, _headers = get_invitation_link_with_http_info(employee_type, opts)
      data
    end

    # Get an invitation link
    # Returns an invitation link for joining the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link/
    # @param employee_type [EmployeeType] The type of employee role for the invitation link (DocSpaceAdmin, RoomAdmin or User).
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def get_invitation_link_with_http_info(employee_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::UsersApi.get_invitation_link ...'
      end
      # verify the required parameter 'employee_type' is set
      if @api_client.config.client_side_validation && employee_type.nil?
        fail ArgumentError, "Missing the required parameter 'employee_type' when calling Portal::UsersApi.get_invitation_link"
      end
      # resource path
      local_var_path = '/api/2.0/portal/users/invite/{employeeType}'.sub('{' + 'employeeType' + '}', CGI.escape(employee_type.to_s))

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
        :operation => :"Portal::UsersApi.get_invitation_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::UsersApi#get_invitation_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an invitation link
    # Returns an invitation link for joining the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link-by-employee-type/
    # @param employee_type [EmployeeType] The type of employee role for the invitation link (DocSpaceAdmin, RoomAdmin or User).
    # @param [Hash] opts the optional parameters
    # @return [InvitationLinkWrapper]
    def get_invitation_link_by_employee_type(employee_type, opts = {})
      data, _status_code, _headers = get_invitation_link_by_employee_type_with_http_info(employee_type, opts)
      data
    end

    # Get an invitation link
    # Returns an invitation link for joining the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link-by-employee-type/
    # @param employee_type [EmployeeType] The type of employee role for the invitation link (DocSpaceAdmin, RoomAdmin or User).
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvitationLinkWrapper, Integer, Hash)>] InvitationLinkWrapper data, response status code and response headers
    def get_invitation_link_by_employee_type_with_http_info(employee_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::UsersApi.get_invitation_link_by_employee_type ...'
      end
      # verify the required parameter 'employee_type' is set
      if @api_client.config.client_side_validation && employee_type.nil?
        fail ArgumentError, "Missing the required parameter 'employee_type' when calling Portal::UsersApi.get_invitation_link_by_employee_type"
      end
      # resource path
      local_var_path = '/api/2.0/portal/users/invitationlink/{employeeType}'.sub('{' + 'employeeType' + '}', CGI.escape(employee_type.to_s))

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
      return_type = opts[:debug_return_type] || 'InvitationLinkWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::UsersApi.get_invitation_link_by_employee_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::UsersApi#get_invitation_link_by_employee_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a number of portal users
    # Returns a number of portal users.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-users-count/
    # @param [Hash] opts the optional parameters
    # @return [Int64Wrapper]
    def get_portal_users_count(opts = {})
      data, _status_code, _headers = get_portal_users_count_with_http_info(opts)
      data
    end

    # Get a number of portal users
    # Returns a number of portal users.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-users-count/
    # @param [Hash] opts the optional parameters
    # @return [Array<(Int64Wrapper, Integer, Hash)>] Int64Wrapper data, response status code and response headers
    def get_portal_users_count_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::UsersApi.get_portal_users_count ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/userscount'

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
      return_type = opts[:debug_return_type] || 'Int64Wrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::UsersApi.get_portal_users_count",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::UsersApi#get_portal_users_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user by ID
    # Returns a user with the ID specified in the request from the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-by-id/
    # @param user_id [String] The user ID extracted from the route parameters.
    # @param [Hash] opts the optional parameters
    # @return [UserInfoWrapper]
    def get_user_by_id(user_id, opts = {})
      data, _status_code, _headers = get_user_by_id_with_http_info(user_id, opts)
      data
    end

    # Get a user by ID
    # Returns a user with the ID specified in the request from the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-by-id/
    # @param user_id [String] The user ID extracted from the route parameters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserInfoWrapper, Integer, Hash)>] UserInfoWrapper data, response status code and response headers
    def get_user_by_id_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::UsersApi.get_user_by_id ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling Portal::UsersApi.get_user_by_id"
      end
      # resource path
      local_var_path = '/api/2.0/portal/users/{userID}'.sub('{' + 'userID' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'UserInfoWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::UsersApi.get_user_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::UsersApi#get_user_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark a gift message as read
    # Marks a gift message as read.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-gift-message-as-read/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def mark_gift_message_as_read(opts = {})
      mark_gift_message_as_read_with_http_info(opts)
      nil
    end

    # Mark a gift message as read
    # Marks a gift message as read.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-gift-message-as-read/
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def mark_gift_message_as_read_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::UsersApi.mark_gift_message_as_read ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/present/mark'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::UsersApi.mark_gift_message_as_read",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::UsersApi#mark_gift_message_as_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send congratulations
    # Sends congratulations to the user after registering a portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-congratulations/
    # @param userid [String] The user ID to receive the congratulatory message.
    # @param key [String] The template identifier or email configuration key.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_congratulations(userid, key, opts = {})
      send_congratulations_with_http_info(userid, key, opts)
      nil
    end

    # Send congratulations
    # Sends congratulations to the user after registering a portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-congratulations/
    # @param userid [String] The user ID to receive the congratulatory message.
    # @param key [String] The template identifier or email configuration key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def send_congratulations_with_http_info(userid, key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::UsersApi.send_congratulations ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling Portal::UsersApi.send_congratulations"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling Portal::UsersApi.send_congratulations"
      end
      # resource path
      local_var_path = '/api/2.0/portal/sendcongratulations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'Userid'] = userid
      query_params[:'Key'] = key

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Portal::UsersApi.send_congratulations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::UsersApi#send_congratulations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an invitation link
    # Returns an invitation link for joining the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-invitation-link/
    # @param [Hash] opts the optional parameters
    # @option opts [InvitationLinkUpdateRequestDto] :invitation_link_update_request_dto 
    # @return [InvitationLinkWrapper]
    def update_invitation_link(opts = {})
      data, _status_code, _headers = update_invitation_link_with_http_info(opts)
      data
    end

    # Update an invitation link
    # Returns an invitation link for joining the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-invitation-link/
    # @param [Hash] opts the optional parameters
    # @option opts [InvitationLinkUpdateRequestDto] :invitation_link_update_request_dto 
    # @return [Array<(InvitationLinkWrapper, Integer, Hash)>] InvitationLinkWrapper data, response status code and response headers
    def update_invitation_link_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::UsersApi.update_invitation_link ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/users/invitationlink'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'invitation_link_update_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'InvitationLinkWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::UsersApi.update_invitation_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::UsersApi#update_invitation_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

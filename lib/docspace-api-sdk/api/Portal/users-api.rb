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
    # Creates the portal's invitation link for one role and returns it together with the URL to share. A portal  keeps at most one link per role, so a call for a role that already has one is refused - read the existing link  with `GET api/2.0/portal/users/invitationlink/{employeeType}` and change it with  `PUT api/2.0/portal/users/invitationlink` instead. Inviting members has to be enabled for the portal  (`GET api/2.0/settings/invitationsettings`), `employeeType` has to be `DocSpaceAdmin`, `RoomAdmin` or `User`,  and `expiration`, when given, has to lie in the future and is read in the portal time zone. The caller needs  the right to add users of that role, only the portal owner may create the DocSpace administrator link, and a  link for a paying role additionally needs a free paid seat in the portal quota. The call is mutating and not  idempotent. The answer carries the `id` needed to update or delete the link, the shortened `url`,  `maxUseCount` and `currentUseCount`, `expiration` in the portal time zone - empty for a link that never  expires - and `isExpired`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/create-invitation-link/
    # @param [Hash] opts the optional parameters
    # @option opts [InvitationLinkCreateRequestDto] :invitation_link_create_request_dto 
    # @return [InvitationLinkWrapper]
    def create_invitation_link(opts = {})
      data, _status_code, _headers = create_invitation_link_with_http_info(opts)
      data
    end

    # Create an invitation link
    # Creates the portal's invitation link for one role and returns it together with the URL to share. A portal  keeps at most one link per role, so a call for a role that already has one is refused - read the existing link  with `GET api/2.0/portal/users/invitationlink/{employeeType}` and change it with  `PUT api/2.0/portal/users/invitationlink` instead. Inviting members has to be enabled for the portal  (`GET api/2.0/settings/invitationsettings`), `employeeType` has to be `DocSpaceAdmin`, `RoomAdmin` or `User`,  and `expiration`, when given, has to lie in the future and is read in the portal time zone. The caller needs  the right to add users of that role, only the portal owner may create the DocSpace administrator link, and a  link for a paying role additionally needs a free paid seat in the portal quota. The call is mutating and not  idempotent. The answer carries the `id` needed to update or delete the link, the shortened `url`,  `maxUseCount` and `currentUseCount`, `expiration` in the portal time zone - empty for a link that never  expires - and `isExpired`.
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

    # Delete an invitation link
    # Deletes the portal's invitation link with the given `id`, so the URL shared from it stops letting anyone in;  accounts that already joined through it are not touched. Inviting members has to be enabled for the portal  (`GET api/2.0/settings/invitationsettings`) and the link has to exist - a second call with the same `id` is  answered as not found. The caller needs the right to add users of the link's role, and only the portal owner  may delete the DocSpace administrator link. The call is destructive and cannot be undone: a link for the same  role has to be created again with `POST api/2.0/portal/users/invitationlink`, and it gets a new `id`, a new  URL and a `currentUseCount` that starts from zero. Nothing is returned in the body. To stop invitations  without losing the links, switch inviting members off for the whole portal with  `PUT api/2.0/settings/invitationsettings` - the links then stay stored but are refused until it is switched on  again.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-invitation-link/
    # @param [Hash] opts the optional parameters
    # @option opts [InvitationLinkDeleteRequestDto] :invitation_link_delete_request_dto 
    # @return [StringWrapper]
    def delete_invitation_link(opts = {})
      data, _status_code, _headers = delete_invitation_link_with_http_info(opts)
      data
    end

    # Delete an invitation link
    # Deletes the portal's invitation link with the given `id`, so the URL shared from it stops letting anyone in;  accounts that already joined through it are not touched. Inviting members has to be enabled for the portal  (`GET api/2.0/settings/invitationsettings`) and the link has to exist - a second call with the same `id` is  answered as not found. The caller needs the right to add users of the link's role, and only the portal owner  may delete the DocSpace administrator link. The call is destructive and cannot be undone: a link for the same  role has to be created again with `POST api/2.0/portal/users/invitationlink`, and it gets a new `id`, a new  URL and a `currentUseCount` that starts from zero. Nothing is returned in the body. To stop invitations  without losing the links, switch inviting members off for the whole portal with  `PUT api/2.0/settings/invitationsettings` - the links then stay stored but are refused until it is switched on  again.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-invitation-link/
    # @param [Hash] opts the optional parameters
    # @option opts [InvitationLinkDeleteRequestDto] :invitation_link_delete_request_dto 
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

    # Get a legacy invitation link
    # Deprecated - use `POST api/2.0/portal/users/invitationlink` and the neighbouring operations under that path,  which store the link and let it be read, changed and revoked. Builds a shortened URL that lets whoever opens  it join this portal with the role given in the path, and returns it as a bare string; nothing is stored, so  the link can afterwards be neither listed nor withdrawn. Inviting members has to be enabled for the portal -  `GET api/2.0/settings/invitationsettings` reports that - otherwise the call is refused. The caller needs the  right to add users of the requested role and only the portal owner may ask for a DocSpace administrator link;  a caller without that right gets an empty string instead of an error, so treat an empty answer as a refusal.  The call changes nothing on the portal and may be repeated, each time returning an equivalent link. The URL  carries a confirmation key bound to the calling account and the portal alias; it has no use limit and stops  being accepted once the portal's e-mail key lifetime has passed, seven days by default - neither of the two  can be set per link, which is what the replacement operations add.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link/
    # @param employee_type [EmployeeType] The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` have a link; any  other role is refused. The portal keeps at most one link per role, so this value alone identifies it.
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def get_invitation_link(employee_type, opts = {})
      data, _status_code, _headers = get_invitation_link_with_http_info(employee_type, opts)
      data
    end

    # Get a legacy invitation link
    # Deprecated - use `POST api/2.0/portal/users/invitationlink` and the neighbouring operations under that path,  which store the link and let it be read, changed and revoked. Builds a shortened URL that lets whoever opens  it join this portal with the role given in the path, and returns it as a bare string; nothing is stored, so  the link can afterwards be neither listed nor withdrawn. Inviting members has to be enabled for the portal -  `GET api/2.0/settings/invitationsettings` reports that - otherwise the call is refused. The caller needs the  right to add users of the requested role and only the portal owner may ask for a DocSpace administrator link;  a caller without that right gets an empty string instead of an error, so treat an empty answer as a refusal.  The call changes nothing on the portal and may be repeated, each time returning an equivalent link. The URL  carries a confirmation key bound to the calling account and the portal alias; it has no use limit and stops  being accepted once the portal's e-mail key lifetime has passed, seven days by default - neither of the two  can be set per link, which is what the replacement operations add.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link/
    # @param employee_type [EmployeeType] The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` have a link; any  other role is refused. The portal keeps at most one link per role, so this value alone identifies it.
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

    # Get an invitation link by role
    # Returns the portal's invitation link for one role - the URL to share, how long it lasts and how often it has  already been used. Inviting members has to be enabled for the portal  (`GET api/2.0/settings/invitationsettings`) and `employeeType` has to be `DocSpaceAdmin`, `RoomAdmin` or  `User`; the caller needs the right to add users of that role, only the portal owner may read the DocSpace  administrator link, and a link for a paying role is shown only while the portal quota still has a free paid  seat. The call is read-only and idempotent, but the `url` it returns is signed for the calling account, so two  administrators are handed two different URLs for one and the same link. A role that has no link yet is  answered with an empty body and 200 rather than a 404 - create the link with  `POST api/2.0/portal/users/invitationlink`. `expiration` is in the portal time zone and empty for a link  without a deadline, `isExpired` says whether that deadline has passed, and `currentUseCount` counts how many  accounts have already joined through the link.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link-by-employee-type/
    # @param employee_type [EmployeeType] The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` have a link; any  other role is refused. The portal keeps at most one link per role, so this value alone identifies it.
    # @param [Hash] opts the optional parameters
    # @return [InvitationLinkWrapper]
    def get_invitation_link_by_employee_type(employee_type, opts = {})
      data, _status_code, _headers = get_invitation_link_by_employee_type_with_http_info(employee_type, opts)
      data
    end

    # Get an invitation link by role
    # Returns the portal's invitation link for one role - the URL to share, how long it lasts and how often it has  already been used. Inviting members has to be enabled for the portal  (`GET api/2.0/settings/invitationsettings`) and `employeeType` has to be `DocSpaceAdmin`, `RoomAdmin` or  `User`; the caller needs the right to add users of that role, only the portal owner may read the DocSpace  administrator link, and a link for a paying role is shown only while the portal quota still has a free paid  seat. The call is read-only and idempotent, but the `url` it returns is signed for the calling account, so two  administrators are handed two different URLs for one and the same link. A role that has no link yet is  answered with an empty body and 200 rather than a 404 - create the link with  `POST api/2.0/portal/users/invitationlink`. `expiration` is in the portal time zone and empty for a link  without a deadline, `isExpired` says whether that deadline has passed, and `currentUseCount` counts how many  accounts have already joined through the link.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link-by-employee-type/
    # @param employee_type [EmployeeType] The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` have a link; any  other role is refused. The portal keeps at most one link per role, so this value alone identifies it.
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
    # Returns how many accounts this portal currently has in the active state, whatever their role, so a client can  show the seat usage next to the allowance. Accounts that were invited but have not joined yet and accounts  that were disabled or removed are not counted. The caller needs the portal-settings right and is refused  without it; the call is read-only and idempotent, and the number moves as soon as an account joins, is  disabled or is deleted. The answer is a plain number, not an object. Compare it with `countUser` and  `countPaidUser` from `GET api/2.0/portal/quota` to see how much of the allowance is left, and with  `GET api/2.0/portal/quota/right` for the smallest quota that would still hold everyone. When the accounts  themselves are needed, and not only how many there are, list them with the People API instead - this operation  cannot filter by role, group or status.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-users-count/
    # @param [Hash] opts the optional parameters
    # @return [Int64Wrapper]
    def get_portal_users_count(opts = {})
      data, _status_code, _headers = get_portal_users_count_with_http_info(opts)
      data
    end

    # Get a number of portal users
    # Returns how many accounts this portal currently has in the active state, whatever their role, so a client can  show the seat usage next to the allowance. Accounts that were invited but have not joined yet and accounts  that were disabled or removed are not counted. The caller needs the portal-settings right and is refused  without it; the call is read-only and idempotent, and the number moves as soon as an account joins, is  disabled or is deleted. The answer is a plain number, not an object. Compare it with `countUser` and  `countPaidUser` from `GET api/2.0/portal/quota` to see how much of the allowance is left, and with  `GET api/2.0/portal/quota/right` for the smallest quota that would still hold everyone. When the accounts  themselves are needed, and not only how many there are, list them with the People API instead - this operation  cannot filter by role, group or status.
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

    # Get a portal user
    # Returns one user of this portal, addressed by ID, in the shape the portal stores the account: display name,  e-mail, contacts, role and status flags, and the dates of the profile. Nothing has to be called first, and the  call is read-only and idempotent. Who may be read is decided per pair of accounts: a caller always reads their  own profile, a DocSpace administrator reads anyone, a room administrator reads anyone except a guest they have  no relation with, and a user or a guest reads nobody but themselves - a pair that is not allowed is refused.  An ID that belongs to no account of this portal and an ID of a system account are both answered as not found,  so a 404 does not tell the two apart. `userID` in the path has to be a GUID; the calling user's own profile is  easier to fetch with `GET api/2.0/people/@self`. This operation hands back the internal user record - use  `GET api/2.0/people/{userid}` for the same user in the People format, with the group, quota and access  information a client usually needs.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-by-id/
    # @param user_id [String] The portal account the operation acts on, by user ID as `GET api/2.0/people` reports it. An ID belonging to  no account of this portal and an ID of an internal system account are both answered as not found.
    # @param [Hash] opts the optional parameters
    # @return [UserInfoWrapper]
    def get_user_by_id(user_id, opts = {})
      data, _status_code, _headers = get_user_by_id_with_http_info(user_id, opts)
      data
    end

    # Get a portal user
    # Returns one user of this portal, addressed by ID, in the shape the portal stores the account: display name,  e-mail, contacts, role and status flags, and the dates of the profile. Nothing has to be called first, and the  call is read-only and idempotent. Who may be read is decided per pair of accounts: a caller always reads their  own profile, a DocSpace administrator reads anyone, a room administrator reads anyone except a guest they have  no relation with, and a user or a guest reads nobody but themselves - a pair that is not allowed is refused.  An ID that belongs to no account of this portal and an ID of a system account are both answered as not found,  so a 404 does not tell the two apart. `userID` in the path has to be a GUID; the calling user's own profile is  easier to fetch with `GET api/2.0/people/@self`. This operation hands back the internal user record - use  `GET api/2.0/people/{userid}` for the same user in the People format, with the group, quota and access  information a client usually needs.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-by-id/
    # @param user_id [String] The portal account the operation acts on, by user ID as `GET api/2.0/people` reports it. An ID belonging to  no account of this portal and an ID of an internal system account are both answered as not found.
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
    # Marks the open-source gift message - the notice a server installation shows about its free edition - as read  for the calling user, so the client stops displaying it. Any signed-in user may call it and nothing has to be  called first. The flag is stored per user, so marking it read for one account leaves it unread for everybody  else on the portal. The call is mutating but idempotent: repeating it changes nothing. It never fails on the  caller's behalf - a storage error is written to the portal log and the operation still answers with a success,  so the answer is no proof that the flag was saved. Nothing is returned in the body, and no operation reads the  flag back or clears it again, which makes the change effectively permanent for that user. It touches only this  one notice: portal-wide announcements and the letters the portal sends are unaffected, and other per-user  settings are stored through the operations under `api/2.0/settings`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-gift-message-as-read/
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def mark_gift_message_as_read(opts = {})
      mark_gift_message_as_read_with_http_info(opts)
      nil
    end

    # Mark a gift message as read
    # Marks the open-source gift message - the notice a server installation shows about its free edition - as read  for the calling user, so the client stops displaying it. Any signed-in user may call it and nothing has to be  called first. The flag is stored per user, so marking it read for one account leaves it unread for everybody  else on the portal. The call is mutating but idempotent: repeating it changes nothing. It never fails on the  caller's behalf - a storage error is written to the portal log and the operation still answers with a success,  so the answer is no proof that the flag was saved. Nothing is returned in the body, and no operation reads the  flag back or clears it again, which makes the change effectively permanent for that user. It touches only this  one notice: portal-wide announcements and the letters the portal sends are unaffected, and other per-user  settings are stored through the operations under `api/2.0/settings`.
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
    # Sends the welcome letter that follows the registration of a new portal to the account named by `userid` and  switches on the second authentication factor the installation is configured to require after registration; on  a hosted portal in custom mode the registration data is mailed to the sales address as well. Open to  unauthenticated callers: in place of a token it needs `key`, the confirmation key of the sign-in link the  portal issued for that account, and that key is accepted for one hour after it was created - a wrong, foreign  or expired key answers 403 and sends nothing. Both parameters go in the query string. The call is meant to be  made once, right after registration; it is not idempotent, and every call within that hour sends the letters  again. When the installation asks for SMS or an authenticator app after registration, this call is what  enables that method for the whole portal, unless the new account is an internal test address. Nothing is  returned in the body and there is no operation that reports afterwards whether the letters were delivered.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-congratulations/
    # @param userid [String] The account the welcome letter is addressed to, by portal user ID. The key in `key` has to have been issued  for this same account, so the pair is what authorises the call.
    # @param key [String] The confirmation key from the sign-in link the portal issued for that account, which stands in for a token  here. It is accepted for one hour after it was created; a wrong, foreign or expired key answers 403 and sends  nothing.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_congratulations(userid, key, opts = {})
      send_congratulations_with_http_info(userid, key, opts)
      nil
    end

    # Send congratulations
    # Sends the welcome letter that follows the registration of a new portal to the account named by `userid` and  switches on the second authentication factor the installation is configured to require after registration; on  a hosted portal in custom mode the registration data is mailed to the sales address as well. Open to  unauthenticated callers: in place of a token it needs `key`, the confirmation key of the sign-in link the  portal issued for that account, and that key is accepted for one hour after it was created - a wrong, foreign  or expired key answers 403 and sends nothing. Both parameters go in the query string. The call is meant to be  made once, right after registration; it is not idempotent, and every call within that hour sends the letters  again. When the installation asks for SMS or an authenticator app after registration, this call is what  enables that method for the whole portal, unless the new account is an internal test address. Nothing is  returned in the body and there is no operation that reports afterwards whether the letters were delivered.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/send-congratulations/
    # @param userid [String] The account the welcome letter is addressed to, by portal user ID. The key in `key` has to have been issued  for this same account, so the pair is what authorises the call.
    # @param key [String] The confirmation key from the sign-in link the portal issued for that account, which stands in for a token  here. It is accepted for one hour after it was created; a wrong, foreign or expired key answers 403 and sends  nothing.
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
    # Changes the deadline and the use limit of an existing invitation link, addressed by its `id`. The role of a  link cannot be changed - delete it and create a link for the other role instead. Inviting members has to be  enabled for the portal (`GET api/2.0/settings/invitationsettings`), the link has to exist, and `maxUseCount`  may not be lower than the number of uses the link already has, which  `GET api/2.0/portal/users/invitationlink/{employeeType}` reports as `currentUseCount`. An `expiration` in the  past is refused; the body is applied as a whole, so omitting `expiration` clears the deadline and omitting  `maxUseCount` removes the use limit. The caller needs the right to add users of the link's role and only the  portal owner may change the DocSpace administrator link. The call is mutating, and repeating it with the same  body leaves the link as it is. The whole link comes back as it now stands, with `url` signed for the calling  account - the URL therefore differs between administrators while the link behind it is the same.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-invitation-link/
    # @param [Hash] opts the optional parameters
    # @option opts [InvitationLinkUpdateRequestDto] :invitation_link_update_request_dto 
    # @return [InvitationLinkWrapper]
    def update_invitation_link(opts = {})
      data, _status_code, _headers = update_invitation_link_with_http_info(opts)
      data
    end

    # Update an invitation link
    # Changes the deadline and the use limit of an existing invitation link, addressed by its `id`. The role of a  link cannot be changed - delete it and create a link for the other role instead. Inviting members has to be  enabled for the portal (`GET api/2.0/settings/invitationsettings`), the link has to exist, and `maxUseCount`  may not be lower than the number of uses the link already has, which  `GET api/2.0/portal/users/invitationlink/{employeeType}` reports as `currentUseCount`. An `expiration` in the  past is refused; the body is applied as a whole, so omitting `expiration` clears the deadline and omitting  `maxUseCount` removes the use limit. The caller needs the right to add users of the link's role and only the  portal owner may change the DocSpace administrator link. The call is mutating, and repeating it with the same  body leaves the link as it is. The whole link comes back as it now stands, with `url` signed for the calling  account - the URL therefore differs between administrators while the link behind it is the same.
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

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
    class GuestsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Approve a guest sharing link
    # Accepts a guest that another member shared, which links that guest to the calling account and makes it  visible in the caller's list of guests.  Everything the operation needs comes from the confirmation token of the link produced by  `GET api/2.0/people/guests/{userid}/share`: the request body is not read at all, so there is nothing to fill  in, and an expired or already used token is answered with 401.  The caller has to be a room admin or a DocSpace admin; a member or a guest gets 403.  The account the token names has to exist and still be a guest, otherwise the operation answers 404 or 400.  The call is idempotent: a guest that is already linked to the caller is simply returned again.  The answer is the full profile of the guest.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/approve-guest-share-link/
    # @param [Hash] opts the optional parameters
    # @option opts [EmailMemberRequestDto] :email_member_request_dto 
    # @return [EmployeeFullWrapper]
    def approve_guest_share_link(opts = {})
      data, _status_code, _headers = approve_guest_share_link_with_http_info(opts)
      data
    end

    # Approve a guest sharing link
    # Accepts a guest that another member shared, which links that guest to the calling account and makes it  visible in the caller's list of guests.  Everything the operation needs comes from the confirmation token of the link produced by  `GET api/2.0/people/guests/{userid}/share`: the request body is not read at all, so there is nothing to fill  in, and an expired or already used token is answered with 401.  The caller has to be a room admin or a DocSpace admin; a member or a guest gets 403.  The account the token names has to exist and still be a guest, otherwise the operation answers 404 or 400.  The call is idempotent: a guest that is already linked to the caller is simply returned again.  The answer is the full profile of the guest.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/approve-guest-share-link/
    # @param [Hash] opts the optional parameters
    # @option opts [EmailMemberRequestDto] :email_member_request_dto 
    # @return [Array<(EmployeeFullWrapper, Integer, Hash)>] EmployeeFullWrapper data, response status code and response headers
    def approve_guest_share_link_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::GuestsApi.approve_guest_share_link ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/guests/share/approve'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'email_member_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeFullWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::GuestsApi.approve_guest_share_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::GuestsApi#approve_guest_share_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove guest relations
    # Removes the listed guests from the caller's own list of guests and withdraws the access the caller had  granted them.  It does not delete the accounts: each guest keeps its profile and any access other members gave it, and only  the link to the caller and the caller's own shares disappear.  The caller has to be a room admin or a DocSpace admin, and every listed account has to exist, be an active  guest and be one of the caller's own guests - a single entry that is not rejects the whole call with 403 and  changes nothing.  The call returns no body; read `GET api/2.0/people/filter` with `area` set to `Guests` to see what is left.  To delete a guest account for good, disable it and then use `DELETE api/2.0/people/{userid}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-guests/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMembersRequestDto] :update_members_request_dto 
    # @return [nil]
    def delete_guests(opts = {})
      delete_guests_with_http_info(opts)
      nil
    end

    # Remove guest relations
    # Removes the listed guests from the caller's own list of guests and withdraws the access the caller had  granted them.  It does not delete the accounts: each guest keeps its profile and any access other members gave it, and only  the link to the caller and the caller's own shares disappear.  The caller has to be a room admin or a DocSpace admin, and every listed account has to exist, be an active  guest and be one of the caller's own guests - a single entry that is not rejects the whole call with 403 and  changes nothing.  The call returns no body; read `GET api/2.0/people/filter` with `area` set to `Guests` to see what is left.  To delete a guest account for good, disable it and then use `DELETE api/2.0/people/{userid}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-guests/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMembersRequestDto] :update_members_request_dto 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_guests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::GuestsApi.delete_guests ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/guests'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_members_request_dto'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::GuestsApi.delete_guests",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::GuestsApi#delete_guests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

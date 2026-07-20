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
    class ProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a user
    # Adds a new portal user with the first name, last name, email address, and several optional parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-member/
    # @param [Hash] opts the optional parameters
    # @option opts [MemberRequestDto] :member_request_dto 
    # @return [EmployeeFullWrapper]
    def add_member(opts = {})
      data, _status_code, _headers = add_member_with_http_info(opts)
      data
    end

    # Add a user
    # Adds a new portal user with the first name, last name, email address, and several optional parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/add-member/
    # @param [Hash] opts the optional parameters
    # @option opts [MemberRequestDto] :member_request_dto 
    # @return [Array<(EmployeeFullWrapper, Integer, Hash)>] EmployeeFullWrapper data, response status code and response headers
    def add_member_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.add_member ...'
      end
      # resource path
      local_var_path = '/api/2.0/people'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'member_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeFullWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.add_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#add_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check if a user exists by email
    # Returns data indicating whether a user with the specified email exists on the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-user-exists-by-email/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email The user email address.
    # @option opts [String] :encemail The user encrypted email address.
    # @option opts [String] :culture Culture
    # @return [UserExistsResponseWrapper]
    def check_user_exists_by_email(opts = {})
      data, _status_code, _headers = check_user_exists_by_email_with_http_info(opts)
      data
    end

    # Check if a user exists by email
    # Returns data indicating whether a user with the specified email exists on the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-user-exists-by-email/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email The user email address.
    # @option opts [String] :encemail The user encrypted email address.
    # @option opts [String] :culture Culture
    # @return [Array<(UserExistsResponseWrapper, Integer, Hash)>] UserExistsResponseWrapper data, response status code and response headers
    def check_user_exists_by_email_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.check_user_exists_by_email ...'
      end
      if @api_client.config.client_side_validation && !opts[:'email'].nil? && opts[:'email'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"email"]" when calling People::ProfilesApi.check_user_exists_by_email, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'email'].nil? && opts[:'email'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"email"]" when calling People::ProfilesApi.check_user_exists_by_email, the character length must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/api/2.0/people/exists'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'encemail'] = opts[:'encemail'] if !opts[:'encemail'].nil?
      query_params[:'culture'] = opts[:'culture'] if !opts[:'culture'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserExistsResponseWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.check_user_exists_by_email",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#check_user_exists_by_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a user
    # Deletes a user with the ID specified in the request from the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [EmployeeFullWrapper]
    def delete_member(userid, opts = {})
      data, _status_code, _headers = delete_member_with_http_info(userid, opts)
      data
    end

    # Delete a user
    # Deletes a user with the ID specified in the request from the portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmployeeFullWrapper, Integer, Hash)>] EmployeeFullWrapper data, response status code and response headers
    def delete_member_with_http_info(userid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.delete_member ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::ProfilesApi.delete_member"
      end
      # resource path
      local_var_path = '/api/2.0/people/{userid}'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
      return_type = opts[:debug_return_type] || 'EmployeeFullWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.delete_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#delete_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete my profile
    # Deletes the current user profile.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-profile/
    # @param [Hash] opts the optional parameters
    # @return [EmployeeFullWrapper]
    def delete_profile(opts = {})
      data, _status_code, _headers = delete_profile_with_http_info(opts)
      data
    end

    # Delete my profile
    # Deletes the current user profile.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-profile/
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmployeeFullWrapper, Integer, Hash)>] EmployeeFullWrapper data, response status code and response headers
    def delete_profile_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.delete_profile ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/@self'

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
      return_type = opts[:debug_return_type] || 'EmployeeFullWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.delete_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#delete_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get profiles
    # Returns a list of profiles for all the portal users.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-profiles/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The maximum number of items to be retrieved in the response.
    # @option opts [Integer] :start_index The zero-based index of the first item to be retrieved in a filtered result set.
    # @option opts [String] :filter_by Specifies the filter criteria for user-related queries.
    # @option opts [String] :sort_by Specifies the property or field name by which the results should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_separator The character or string used to separate multiple filter values in a filtering query.
    # @option opts [String] :filter_value The text value used as an additional filter criterion for profiles retrieval.
    # @return [EmployeeFullArrayWrapper]
    def get_all_profiles(opts = {})
      data, _status_code, _headers = get_all_profiles_with_http_info(opts)
      data
    end

    # Get profiles
    # Returns a list of profiles for all the portal users.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-profiles/
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The maximum number of items to be retrieved in the response.
    # @option opts [Integer] :start_index The zero-based index of the first item to be retrieved in a filtered result set.
    # @option opts [String] :filter_by Specifies the filter criteria for user-related queries.
    # @option opts [String] :sort_by Specifies the property or field name by which the results should be sorted.
    # @option opts [SortOrder] :sort_order The order in which the results are sorted.
    # @option opts [String] :filter_separator The character or string used to separate multiple filter values in a filtering query.
    # @option opts [String] :filter_value The text value used as an additional filter criterion for profiles retrieval.
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def get_all_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.get_all_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::ProfilesApi.get_all_profiles, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling People::ProfilesApi.get_all_profiles, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/2.0/people'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'startIndex'] = opts[:'start_index'] if !opts[:'start_index'].nil?
      query_params[:'filterBy'] = opts[:'filter_by'] if !opts[:'filter_by'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'filterSeparator'] = opts[:'filter_separator'] if !opts[:'filter_separator'].nil?
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
      return_type = opts[:debug_return_type] || 'EmployeeFullArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.get_all_profiles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#get_all_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get user claims
    # Returns the user claims.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-claims/
    # @param [Hash] opts the optional parameters
    # @return [ObjectWrapper]
    def get_claims(opts = {})
      data, _status_code, _headers = get_claims_with_http_info(opts)
      data
    end

    # Get user claims
    # Returns the user claims.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-claims/
    # @param [Hash] opts the optional parameters
    # @return [Array<(ObjectWrapper, Integer, Hash)>] ObjectWrapper data, response status code and response headers
    def get_claims_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.get_claims ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/tokendiagnostics'

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
      return_type = opts[:debug_return_type] || 'ObjectWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.get_claims",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#get_claims\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a profile by user email
    # Returns the detailed information about a profile of the user with the email specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-profile-by-email/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email The user email address.
    # @option opts [String] :encemail The user encrypted email address.
    # @option opts [String] :culture Culture
    # @return [EmployeeFullWrapper]
    def get_profile_by_email(opts = {})
      data, _status_code, _headers = get_profile_by_email_with_http_info(opts)
      data
    end

    # Get a profile by user email
    # Returns the detailed information about a profile of the user with the email specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-profile-by-email/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email The user email address.
    # @option opts [String] :encemail The user encrypted email address.
    # @option opts [String] :culture Culture
    # @return [Array<(EmployeeFullWrapper, Integer, Hash)>] EmployeeFullWrapper data, response status code and response headers
    def get_profile_by_email_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.get_profile_by_email ...'
      end
      if @api_client.config.client_side_validation && !opts[:'email'].nil? && opts[:'email'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"email"]" when calling People::ProfilesApi.get_profile_by_email, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'email'].nil? && opts[:'email'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"email"]" when calling People::ProfilesApi.get_profile_by_email, the character length must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/api/2.0/people/email'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'encemail'] = opts[:'encemail'] if !opts[:'encemail'].nil?
      query_params[:'culture'] = opts[:'culture'] if !opts[:'culture'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeFullWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.get_profile_by_email",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#get_profile_by_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a profile by user ID
    # Returns the detailed information about a profile of the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-profile-by-user-id/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [EmployeeFullWrapper]
    def get_profile_by_user_id(userid, opts = {})
      data, _status_code, _headers = get_profile_by_user_id_with_http_info(userid, opts)
      data
    end

    # Get a profile by user ID
    # Returns the detailed information about a profile of the user with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-profile-by-user-id/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmployeeFullWrapper, Integer, Hash)>] EmployeeFullWrapper data, response status code and response headers
    def get_profile_by_user_id_with_http_info(userid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.get_profile_by_user_id ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::ProfilesApi.get_profile_by_user_id"
      end
      # resource path
      local_var_path = '/api/2.0/people/{userid}'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
      return_type = opts[:debug_return_type] || 'EmployeeFullWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.get_profile_by_user_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#get_profile_by_user_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get my profile
    # Returns the detailed information about the current user profile.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-self-profile/
    # @param [Hash] opts the optional parameters
    # @return [EmployeeFullWrapper]
    def get_self_profile(opts = {})
      data, _status_code, _headers = get_self_profile_with_http_info(opts)
      data
    end

    # Get my profile
    # Returns the detailed information about the current user profile.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-self-profile/
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmployeeFullWrapper, Integer, Hash)>] EmployeeFullWrapper data, response status code and response headers
    def get_self_profile_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.get_self_profile ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/@self'

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
      return_type = opts[:debug_return_type] || 'EmployeeFullWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.get_self_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#get_self_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Invite users
    # Invites users specified in the request to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/invite-users/
    # @param [Hash] opts the optional parameters
    # @option opts [InviteUsersRequestDto] :invite_users_request_dto 
    # @return [EmployeeArrayWrapper]
    def invite_users(opts = {})
      data, _status_code, _headers = invite_users_with_http_info(opts)
      data
    end

    # Invite users
    # Invites users specified in the request to the current portal.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/invite-users/
    # @param [Hash] opts the optional parameters
    # @option opts [InviteUsersRequestDto] :invite_users_request_dto 
    # @return [Array<(EmployeeArrayWrapper, Integer, Hash)>] EmployeeArrayWrapper data, response status code and response headers
    def invite_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.invite_users ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/invite'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'invite_users_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.invite_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#invite_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete users
    # Deletes a list of the users with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-users/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMembersRequestDto] :update_members_request_dto 
    # @return [EmployeeFullArrayWrapper]
    def remove_users(opts = {})
      data, _status_code, _headers = remove_users_with_http_info(opts)
      data
    end

    # Delete users
    # Deletes a list of the users with the IDs specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-users/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMembersRequestDto] :update_members_request_dto 
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def remove_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.remove_users ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/delete'

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
      return_type = opts[:debug_return_type] || 'EmployeeFullArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.remove_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#remove_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resend activation emails
    # Resends emails to the users who have not activated their emails.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-user-invites/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMembersRequestDto] :update_members_request_dto 
    # @return [EmployeeFullArrayWrapper]
    def resend_user_invites(opts = {})
      data, _status_code, _headers = resend_user_invites_with_http_info(opts)
      data
    end

    # Resend activation emails
    # Resends emails to the users who have not activated their emails.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-user-invites/
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMembersRequestDto] :update_members_request_dto 
    # @return [Array<(EmployeeFullArrayWrapper, Integer, Hash)>] EmployeeFullArrayWrapper data, response status code and response headers
    def resend_user_invites_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.resend_user_invites ...'
      end
      # resource path
      local_var_path = '/api/2.0/people/invite'

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
      return_type = opts[:debug_return_type] || 'EmployeeFullArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.resend_user_invites",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#resend_user_invites\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a user
    # Updates the data for the selected portal user with the first name, last name, email address, and/or optional parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member/
    # @param userid [String] The user ID.
    # @param update_member_request_dto [UpdateMemberRequestDto] The request parameters for updating the user information.
    # @param [Hash] opts the optional parameters
    # @return [EmployeeFullWrapper]
    def update_member(userid, update_member_request_dto, opts = {})
      data, _status_code, _headers = update_member_with_http_info(userid, update_member_request_dto, opts)
      data
    end

    # Update a user
    # Updates the data for the selected portal user with the first name, last name, email address, and/or optional parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member/
    # @param userid [String] The user ID.
    # @param update_member_request_dto [UpdateMemberRequestDto] The request parameters for updating the user information.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmployeeFullWrapper, Integer, Hash)>] EmployeeFullWrapper data, response status code and response headers
    def update_member_with_http_info(userid, update_member_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.update_member ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::ProfilesApi.update_member"
      end
      # verify the required parameter 'update_member_request_dto' is set
      if @api_client.config.client_side_validation && update_member_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'update_member_request_dto' when calling People::ProfilesApi.update_member"
      end
      # resource path
      local_var_path = '/api/2.0/people/{userid}'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_member_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeFullWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.update_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#update_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a user culture
    # Updates the user culture with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-culture/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Culture] :culture The culture name parameters.
    # @return [EmployeeFullWrapper]
    def update_member_culture(userid, opts = {})
      data, _status_code, _headers = update_member_culture_with_http_info(userid, opts)
      data
    end

    # Update a user culture
    # Updates the user culture with the parameters specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-culture/
    # @param userid [String] The user ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Culture] :culture The culture name parameters.
    # @return [Array<(EmployeeFullWrapper, Integer, Hash)>] EmployeeFullWrapper data, response status code and response headers
    def update_member_culture_with_http_info(userid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: People::ProfilesApi.update_member_culture ...'
      end
      # verify the required parameter 'userid' is set
      if @api_client.config.client_side_validation && userid.nil?
        fail ArgumentError, "Missing the required parameter 'userid' when calling People::ProfilesApi.update_member_culture"
      end
      # resource path
      local_var_path = '/api/2.0/people/{userid}/culture'.sub('{' + 'userid' + '}', CGI.escape(userid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'culture'])

      # return_type
      return_type = opts[:debug_return_type] || 'EmployeeFullWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"People::ProfilesApi.update_member_culture",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: People::ProfilesApi#update_member_culture\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

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
  module Settings
    class NotificationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get notification channels
    # Returns a list of notification channels.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-channels/
    # @param [Hash] opts the optional parameters
    # @return [NotificationChannelStatusWrapper]
    def get_notification_channels(opts = {})
      data, _status_code, _headers = get_notification_channels_with_http_info(opts)
      data
    end

    # Get notification channels
    # Returns a list of notification channels.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-channels/
    # @param [Hash] opts the optional parameters
    # @return [Array<(NotificationChannelStatusWrapper, Integer, Hash)>] NotificationChannelStatusWrapper data, response status code and response headers
    def get_notification_channels_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::NotificationsApi.get_notification_channels ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/notification/channels'

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
      return_type = opts[:debug_return_type] || 'NotificationChannelStatusWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::NotificationsApi.get_notification_channels",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::NotificationsApi#get_notification_channels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check notification availability
    # Checks if the notification type specified in the request is enabled or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-settings/
    # @param type [NotificationType] The type of notification to query, specified in the route.
    # @param [Hash] opts the optional parameters
    # @return [NotificationSettingsWrapper]
    def get_notification_settings(type, opts = {})
      data, _status_code, _headers = get_notification_settings_with_http_info(type, opts)
      data
    end

    # Check notification availability
    # Checks if the notification type specified in the request is enabled or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-settings/
    # @param type [NotificationType] The type of notification to query, specified in the route.
    # @param [Hash] opts the optional parameters
    # @return [Array<(NotificationSettingsWrapper, Integer, Hash)>] NotificationSettingsWrapper data, response status code and response headers
    def get_notification_settings_with_http_info(type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::NotificationsApi.get_notification_settings ...'
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling Settings::NotificationsApi.get_notification_settings"
      end
      # resource path
      local_var_path = '/api/2.0/settings/notification/{type}'.sub('{' + 'type' + '}', CGI.escape(type.to_s))

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
      return_type = opts[:debug_return_type] || 'NotificationSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::NotificationsApi.get_notification_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::NotificationsApi#get_notification_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get room notification settings
    # Returns a list of rooms with the disabled notifications.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-notification-settings/
    # @param [Hash] opts the optional parameters
    # @return [RoomsNotificationSettingsWrapper]
    def get_rooms_notification_settings(opts = {})
      data, _status_code, _headers = get_rooms_notification_settings_with_http_info(opts)
      data
    end

    # Get room notification settings
    # Returns a list of rooms with the disabled notifications.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-notification-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoomsNotificationSettingsWrapper, Integer, Hash)>] RoomsNotificationSettingsWrapper data, response status code and response headers
    def get_rooms_notification_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::NotificationsApi.get_rooms_notification_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/notification/rooms'

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
      return_type = opts[:debug_return_type] || 'RoomsNotificationSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::NotificationsApi.get_rooms_notification_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::NotificationsApi#get_rooms_notification_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable notifications
    # Enables the notification type specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-notification-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [NotificationSettingsRequestsDto] :notification_settings_requests_dto 
    # @return [NotificationSettingsWrapper]
    def set_notification_settings(opts = {})
      data, _status_code, _headers = set_notification_settings_with_http_info(opts)
      data
    end

    # Enable notifications
    # Enables the notification type specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-notification-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [NotificationSettingsRequestsDto] :notification_settings_requests_dto 
    # @return [Array<(NotificationSettingsWrapper, Integer, Hash)>] NotificationSettingsWrapper data, response status code and response headers
    def set_notification_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::NotificationsApi.set_notification_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/notification'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'notification_settings_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'NotificationSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::NotificationsApi.set_notification_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::NotificationsApi#set_notification_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set room notification status
    # Sets a notification status for a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-rooms-notification-status/
    # @param [Hash] opts the optional parameters
    # @option opts [RoomsNotificationsSettingsRequestDto] :rooms_notifications_settings_request_dto 
    # @return [RoomsNotificationSettingsWrapper]
    def set_rooms_notification_status(opts = {})
      data, _status_code, _headers = set_rooms_notification_status_with_http_info(opts)
      data
    end

    # Set room notification status
    # Sets a notification status for a room with the ID specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-rooms-notification-status/
    # @param [Hash] opts the optional parameters
    # @option opts [RoomsNotificationsSettingsRequestDto] :rooms_notifications_settings_request_dto 
    # @return [Array<(RoomsNotificationSettingsWrapper, Integer, Hash)>] RoomsNotificationSettingsWrapper data, response status code and response headers
    def set_rooms_notification_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::NotificationsApi.set_rooms_notification_status ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/notification/rooms'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'rooms_notifications_settings_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'RoomsNotificationSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::NotificationsApi.set_rooms_notification_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::NotificationsApi#set_rooms_notification_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end

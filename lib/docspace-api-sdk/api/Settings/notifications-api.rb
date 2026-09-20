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
    # Lists the ways this installation can deliver a notification, each as the internal name of the channel together  with `isEnabled`: `email.sender` for letters and `telegram.sender` for Telegram messages. The list describes  the installation and the portal rather than the calling user, so every member gets the same answer, and the  call is read-only. Any signed-in member may ask for it, whatever its role, and no permission is demanded. A  channel appears only when the notification service of the running installation is configured with a sender of  that name, so the list can be shorter than the two names above, and an empty list means that configuration  names no channel this build implements. `email.sender` is reported as enabled whenever it is listed, while  `telegram.sender` is reported as enabled only while the portal has a Telegram bot name and token stored, which  is what `POST api/2.0/settings/authservice` writes. An enabled channel says nothing about the caller: a member  also has to connect their own Telegram account, for which `GET api/2.0/settings/telegram/link` hands out the  link and `GET api/2.0/settings/telegram/check` reports the outcome. Which kinds of notification a member  receives is a separate setting, read with `GET api/2.0/settings/notification/{type}`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-channels/
    # @param [Hash] opts the optional parameters
    # @return [NotificationChannelStatusWrapper]
    def get_notification_channels(opts = {})
      data, _status_code, _headers = get_notification_channels_with_http_info(opts)
      data
    end

    # Get notification channels
    # Lists the ways this installation can deliver a notification, each as the internal name of the channel together  with `isEnabled`: `email.sender` for letters and `telegram.sender` for Telegram messages. The list describes  the installation and the portal rather than the calling user, so every member gets the same answer, and the  call is read-only. Any signed-in member may ask for it, whatever its role, and no permission is demanded. A  channel appears only when the notification service of the running installation is configured with a sender of  that name, so the list can be shorter than the two names above, and an empty list means that configuration  names no channel this build implements. `email.sender` is reported as enabled whenever it is listed, while  `telegram.sender` is reported as enabled only while the portal has a Telegram bot name and token stored, which  is what `POST api/2.0/settings/authservice` writes. An enabled channel says nothing about the caller: a member  also has to connect their own Telegram account, for which `GET api/2.0/settings/telegram/link` hands out the  link and `GET api/2.0/settings/telegram/check` reports the outcome. Which kinds of notification a member  receives is a separate setting, read with `GET api/2.0/settings/notification/{type}`.
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
    # Reports whether one kind of notification is switched on for the calling user, taking the kind as the integer  `type` in the route: 0 the new-item badges the Files responses carry, 1 the room activity letters, 2 the daily  feed digest, 3 the periodic tips letters. The answer describes the caller's own account only - there is no way  to read another member's settings - and the call is read-only and safe to repeat. Every signed-in member reads  its own settings: the portal owner, a DocSpace administrator, a room administrator, a user and a guest are all  accepted, and no permission is demanded. Badges come back switched on for an account that has not changed  them, while the kinds 1, 2 and 3 come back switched off until they are switched on with  `POST api/2.0/settings/notification`. What comes back is the kind that was asked for together with  `isEnabled`. A `type` outside 0-3 is not recognised and the call fails instead of falling back to a default.  The rooms silenced one by one are listed by `GET api/2.0/settings/notification/rooms`, and the delivery  channels of the installation by `GET api/2.0/settings/notification/channels`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-settings/
    # @param type [NotificationType] The kind of notification being asked about. A value outside the defined set fails the call rather than  falling back to a default.
    # @param [Hash] opts the optional parameters
    # @return [NotificationSettingsWrapper]
    def get_notification_settings(type, opts = {})
      data, _status_code, _headers = get_notification_settings_with_http_info(type, opts)
      data
    end

    # Check notification availability
    # Reports whether one kind of notification is switched on for the calling user, taking the kind as the integer  `type` in the route: 0 the new-item badges the Files responses carry, 1 the room activity letters, 2 the daily  feed digest, 3 the periodic tips letters. The answer describes the caller's own account only - there is no way  to read another member's settings - and the call is read-only and safe to repeat. Every signed-in member reads  its own settings: the portal owner, a DocSpace administrator, a room administrator, a user and a guest are all  accepted, and no permission is demanded. Badges come back switched on for an account that has not changed  them, while the kinds 1, 2 and 3 come back switched off until they are switched on with  `POST api/2.0/settings/notification`. What comes back is the kind that was asked for together with  `isEnabled`. A `type` outside 0-3 is not recognised and the call fails instead of falling back to a default.  The rooms silenced one by one are listed by `GET api/2.0/settings/notification/rooms`, and the delivery  channels of the installation by `GET api/2.0/settings/notification/channels`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-settings/
    # @param type [NotificationType] The kind of notification being asked about. A value outside the defined set fails the call rather than  falling back to a default.
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

    # Get muted rooms
    # Returns the rooms the calling user has silenced, as the `disabledRooms` list of their identifiers. The list  describes the caller's own account only, the call is read-only, and an empty list means nothing is silenced.  Every signed-in member reads its own list, whatever its role - owner, administrator, user or guest - and no  permission is demanded. The identifiers come back the way `POST api/2.0/settings/notification/rooms` stored  them, in the order they were added and without paging; they are kept as opaque values, so both the numeric  identifier of a portal room and the string identifier of a room on a connected third-party account appear  here, and an identifier stays in the list after the room itself is deleted. While a room is on this list its  activity is left out of the hourly room digest and of the daily feed, the letters that room would send at once  are not sent, and its new-item counters are hidden from the Files responses. Silencing a room changes nothing  for its other members. The kinds of notification this list is applied to are switched with  `POST api/2.0/settings/notification`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-notification-settings/
    # @param [Hash] opts the optional parameters
    # @return [RoomsNotificationSettingsWrapper]
    def get_rooms_notification_settings(opts = {})
      data, _status_code, _headers = get_rooms_notification_settings_with_http_info(opts)
      data
    end

    # Get muted rooms
    # Returns the rooms the calling user has silenced, as the `disabledRooms` list of their identifiers. The list  describes the caller's own account only, the call is read-only, and an empty list means nothing is silenced.  Every signed-in member reads its own list, whatever its role - owner, administrator, user or guest - and no  permission is demanded. The identifiers come back the way `POST api/2.0/settings/notification/rooms` stored  them, in the order they were added and without paging; they are kept as opaque values, so both the numeric  identifier of a portal room and the string identifier of a room on a connected third-party account appear  here, and an identifier stays in the list after the room itself is deleted. While a room is on this list its  activity is left out of the hourly room digest and of the daily feed, the letters that room would send at once  are not sent, and its new-item counters are hidden from the Files responses. Silencing a room changes nothing  for its other members. The kinds of notification this list is applied to are switched with  `POST api/2.0/settings/notification`.
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

    # Set notification status
    # Switches one kind of notification on or off for the calling user: send the kind as `type` - 0 the new-item  badges, 1 the room activity letters, 2 the daily feed digest, 3 the periodic tips letters - together with  `isEnabled`. The change touches the caller's own account only, and repeating the call with the same pair  leaves the account as it is. Every signed-in member configures its own settings: the portal owner, a DocSpace  administrator, a room administrator, a user and a guest are all accepted, and no permission is demanded. With  0 switched off the Files responses report `new` as 0 and mark files as muted; with 1 switched off both the  hourly room digest and the letters a room sends at once, such as an editor mention, stop; with 2 switched off  the daily digest stops; with 3 switched off the tips letters stop. What comes back is an echo of the request  rather than a re-read of the stored state, and a `type` outside 0-3 is echoed as well while nothing is stored,  so confirm the result with `GET api/2.0/settings/notification/{type}`. To silence a single room instead of a  whole kind use `POST api/2.0/settings/notification/rooms`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-notification-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [NotificationSettingsRequestsDto] :notification_settings_requests_dto 
    # @return [NotificationSettingsWrapper]
    def set_notification_settings(opts = {})
      data, _status_code, _headers = set_notification_settings_with_http_info(opts)
      data
    end

    # Set notification status
    # Switches one kind of notification on or off for the calling user: send the kind as `type` - 0 the new-item  badges, 1 the room activity letters, 2 the daily feed digest, 3 the periodic tips letters - together with  `isEnabled`. The change touches the caller's own account only, and repeating the call with the same pair  leaves the account as it is. Every signed-in member configures its own settings: the portal owner, a DocSpace  administrator, a room administrator, a user and a guest are all accepted, and no permission is demanded. With  0 switched off the Files responses report `new` as 0 and mark files as muted; with 1 switched off both the  hourly room digest and the letters a room sends at once, such as an editor mention, stop; with 2 switched off  the daily digest stops; with 3 switched off the tips letters stop. What comes back is an echo of the request  rather than a re-read of the stored state, and a `type` outside 0-3 is echoed as well while nothing is stored,  so confirm the result with `GET api/2.0/settings/notification/{type}`. To silence a single room instead of a  whole kind use `POST api/2.0/settings/notification/rooms`.
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

    # Mute or unmute a room
    # Adds one room to the calling user's silenced list or takes it off again: `mute` true silences the room, false  lets its notifications through. One call carries one room, so several rooms take several calls, and repeating  a call with the same pair changes nothing. The room is named by `roomsId` and kept as an opaque value: the  numeric identifier of a portal room and the string identifier of a room on a connected third-party account are  both accepted, and neither the room's existence nor the caller's access to it is checked, so a mistyped  identifier is stored as sent. Every signed-in member manages its own list, whatever its role, and the list of  another member cannot be touched. While a room is silenced its activity is left out of the hourly room digest  and of the daily feed, the letters it would send at once are not sent, and its new-item counters are hidden.  The Files responses stop offering the `mute` action on a room once badges, room activity and the daily feed  are all switched off, while this call keeps working. What comes back is the whole updated list, the same shape  `GET api/2.0/settings/notification/rooms` returns.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/set-rooms-notification-status/
    # @param [Hash] opts the optional parameters
    # @option opts [RoomsNotificationsSettingsRequestDto] :rooms_notifications_settings_request_dto 
    # @return [RoomsNotificationSettingsWrapper]
    def set_rooms_notification_status(opts = {})
      data, _status_code, _headers = set_rooms_notification_status_with_http_info(opts)
      data
    end

    # Mute or unmute a room
    # Adds one room to the calling user's silenced list or takes it off again: `mute` true silences the room, false  lets its notifications through. One call carries one room, so several rooms take several calls, and repeating  a call with the same pair changes nothing. The room is named by `roomsId` and kept as an opaque value: the  numeric identifier of a portal room and the string identifier of a room on a connected third-party account are  both accepted, and neither the room's existence nor the caller's access to it is checked, so a mistyped  identifier is stored as sent. Every signed-in member manages its own list, whatever its role, and the list of  another member cannot be touched. While a room is silenced its activity is left out of the hourly room digest  and of the daily feed, the letters it would send at once are not sent, and its new-item counters are hidden.  The Files responses stop offering the `mute` action on a room once badges, room activity and the daily feed  are all switched off, while this call keeps working. What comes back is the whole updated list, the same shape  `GET api/2.0/settings/notification/rooms` returns.
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

# DocspaceApiSdk::SettingsNotificationsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_notification_channels**](SettingsNotificationsApi.md#get_notification_channels) | **GET** /api/2.0/settings/notification/channels | Get notification channels |
| [**get_notification_settings**](SettingsNotificationsApi.md#get_notification_settings) | **GET** /api/2.0/settings/notification/{type} | Check notification availability |
| [**get_rooms_notification_settings**](SettingsNotificationsApi.md#get_rooms_notification_settings) | **GET** /api/2.0/settings/notification/rooms | Get muted rooms |
| [**set_notification_settings**](SettingsNotificationsApi.md#set_notification_settings) | **POST** /api/2.0/settings/notification | Set notification status |
| [**set_rooms_notification_status**](SettingsNotificationsApi.md#set_rooms_notification_status) | **POST** /api/2.0/settings/notification/rooms | Mute or unmute a room |


## get_notification_channels

> <NotificationChannelStatusWrapper> get_notification_channels

Get notification channels

Lists the ways this installation can deliver a notification, each as the internal name of the channel together  with `isEnabled`: `email.sender` for letters and `telegram.sender` for Telegram messages. The list describes  the installation and the portal rather than the calling user, so every member gets the same answer, and the  call is read-only. Any signed-in member may ask for it, whatever its role, and no permission is demanded. A  channel appears only when the notification service of the running installation is configured with a sender of  that name, so the list can be shorter than the two names above, and an empty list means that configuration  names no channel this build implements. `email.sender` is reported as enabled whenever it is listed, while  `telegram.sender` is reported as enabled only while the portal has a Telegram bot name and token stored, which  is what `POST api/2.0/settings/authservice` writes. An enabled channel says nothing about the caller: a member  also has to connect their own Telegram account, for which `GET api/2.0/settings/telegram/link` hands out the  link and `GET api/2.0/settings/telegram/check` reports the outcome. Which kinds of notification a member  receives is a separate setting, read with `GET api/2.0/settings/notification/{type}`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-channels/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Settings::NotificationsApi.new

begin
  # Get notification channels
  result = api_instance.get_notification_channels
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::NotificationsApi->get_notification_channels: #{e}"
end
```

#### Using the get_notification_channels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotificationChannelStatusWrapper>, Integer, Hash)> get_notification_channels_with_http_info

```ruby
begin
  # Get notification channels
  data, status_code, headers = api_instance.get_notification_channels_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotificationChannelStatusWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::NotificationsApi->get_notification_channels_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**NotificationChannelStatusWrapper**](NotificationChannelStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_notification_settings

> <NotificationSettingsWrapper> get_notification_settings(type)

Check notification availability

Reports whether one kind of notification is switched on for the calling user, taking the kind as the integer  `type` in the route: 0 the new-item badges the Files responses carry, 1 the room activity letters, 2 the daily  feed digest, 3 the periodic tips letters. The answer describes the caller's own account only - there is no way  to read another member's settings - and the call is read-only and safe to repeat. Every signed-in member reads  its own settings: the portal owner, a DocSpace administrator, a room administrator, a user and a guest are all  accepted, and no permission is demanded. Badges come back switched on for an account that has not changed  them, while the kinds 1, 2 and 3 come back switched off until they are switched on with  `POST api/2.0/settings/notification`. What comes back is the kind that was asked for together with  `isEnabled`. A `type` outside 0-3 is not recognised and the call fails instead of falling back to a default.  The rooms silenced one by one are listed by `GET api/2.0/settings/notification/rooms`, and the delivery  channels of the installation by `GET api/2.0/settings/notification/channels`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-notification-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Settings::NotificationsApi.new
type = DocspaceApiSdk::NotificationType::Badges # NotificationType | The kind of notification being asked about. A value outside the defined set fails the call rather than  falling back to a default.

begin
  # Check notification availability
  result = api_instance.get_notification_settings(type)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::NotificationsApi->get_notification_settings: #{e}"
end
```

#### Using the get_notification_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotificationSettingsWrapper>, Integer, Hash)> get_notification_settings_with_http_info(type)

```ruby
begin
  # Check notification availability
  data, status_code, headers = api_instance.get_notification_settings_with_http_info(type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotificationSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::NotificationsApi->get_notification_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **NotificationType** | The kind of notification being asked about. A value outside the defined set fails the call rather than  falling back to a default. |  |

### Return type

[**NotificationSettingsWrapper**](NotificationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rooms_notification_settings

> <RoomsNotificationSettingsWrapper> get_rooms_notification_settings

Get muted rooms

Returns the rooms the calling user has silenced, as the `disabledRooms` list of their identifiers. The list  describes the caller's own account only, the call is read-only, and an empty list means nothing is silenced.  Every signed-in member reads its own list, whatever its role - owner, administrator, user or guest - and no  permission is demanded. The identifiers come back the way `POST api/2.0/settings/notification/rooms` stored  them, in the order they were added and without paging; they are kept as opaque values, so both the numeric  identifier of a portal room and the string identifier of a room on a connected third-party account appear  here, and an identifier stays in the list after the room itself is deleted. While a room is on this list its  activity is left out of the hourly room digest and of the daily feed, the letters that room would send at once  are not sent, and its new-item counters are hidden from the Files responses. Silencing a room changes nothing  for its other members. The kinds of notification this list is applied to are switched with  `POST api/2.0/settings/notification`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-notification-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Settings::NotificationsApi.new

begin
  # Get muted rooms
  result = api_instance.get_rooms_notification_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::NotificationsApi->get_rooms_notification_settings: #{e}"
end
```

#### Using the get_rooms_notification_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomsNotificationSettingsWrapper>, Integer, Hash)> get_rooms_notification_settings_with_http_info

```ruby
begin
  # Get muted rooms
  data, status_code, headers = api_instance.get_rooms_notification_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomsNotificationSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::NotificationsApi->get_rooms_notification_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RoomsNotificationSettingsWrapper**](RoomsNotificationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_notification_settings

> <NotificationSettingsWrapper> set_notification_settings(opts)

Set notification status

Switches one kind of notification on or off for the calling user: send the kind as `type` - 0 the new-item  badges, 1 the room activity letters, 2 the daily feed digest, 3 the periodic tips letters - together with  `isEnabled`. The change touches the caller's own account only, and repeating the call with the same pair  leaves the account as it is. Every signed-in member configures its own settings: the portal owner, a DocSpace  administrator, a room administrator, a user and a guest are all accepted, and no permission is demanded. With  0 switched off the Files responses report `new` as 0 and mark files as muted; with 1 switched off both the  hourly room digest and the letters a room sends at once, such as an editor mention, stop; with 2 switched off  the daily digest stops; with 3 switched off the tips letters stop. What comes back is an echo of the request  rather than a re-read of the stored state, and a `type` outside 0-3 is echoed as well while nothing is stored,  so confirm the result with `GET api/2.0/settings/notification/{type}`. To silence a single room instead of a  whole kind use `POST api/2.0/settings/notification/rooms`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-notification-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Settings::NotificationsApi.new
opts = {
  notification_settings_requests_dto: DocspaceApiSdk::NotificationSettingsRequestsDto.new({type: DocspaceApiSdk::NotificationType::Badges}) # NotificationSettingsRequestsDto | 
}

begin
  # Set notification status
  result = api_instance.set_notification_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::NotificationsApi->set_notification_settings: #{e}"
end
```

#### Using the set_notification_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotificationSettingsWrapper>, Integer, Hash)> set_notification_settings_with_http_info(opts)

```ruby
begin
  # Set notification status
  data, status_code, headers = api_instance.set_notification_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotificationSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::NotificationsApi->set_notification_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notification_settings_requests_dto** | [**NotificationSettingsRequestsDto**](NotificationSettingsRequestsDto.md) |  | [optional] |

### Return type

[**NotificationSettingsWrapper**](NotificationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_rooms_notification_status

> <RoomsNotificationSettingsWrapper> set_rooms_notification_status(opts)

Mute or unmute a room

Adds one room to the calling user's silenced list or takes it off again: `mute` true silences the room, false  lets its notifications through. One call carries one room, so several rooms take several calls, and repeating  a call with the same pair changes nothing. The room is named by `roomsId` and kept as an opaque value: the  numeric identifier of a portal room and the string identifier of a room on a connected third-party account are  both accepted, and neither the room's existence nor the caller's access to it is checked, so a mistyped  identifier is stored as sent. Every signed-in member manages its own list, whatever its role, and the list of  another member cannot be touched. While a room is silenced its activity is left out of the hourly room digest  and of the daily feed, the letters it would send at once are not sent, and its new-item counters are hidden.  The Files responses stop offering the `mute` action on a room once badges, room activity and the daily feed  are all switched off, while this call keeps working. What comes back is the whole updated list, the same shape  `GET api/2.0/settings/notification/rooms` returns.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-rooms-notification-status/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Settings::NotificationsApi.new
opts = {
  rooms_notifications_settings_request_dto: DocspaceApiSdk::RoomsNotificationsSettingsRequestDto.new # RoomsNotificationsSettingsRequestDto | 
}

begin
  # Mute or unmute a room
  result = api_instance.set_rooms_notification_status(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::NotificationsApi->set_rooms_notification_status: #{e}"
end
```

#### Using the set_rooms_notification_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomsNotificationSettingsWrapper>, Integer, Hash)> set_rooms_notification_status_with_http_info(opts)

```ruby
begin
  # Mute or unmute a room
  data, status_code, headers = api_instance.set_rooms_notification_status_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomsNotificationSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::NotificationsApi->set_rooms_notification_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rooms_notifications_settings_request_dto** | [**RoomsNotificationsSettingsRequestDto**](RoomsNotificationsSettingsRequestDto.md) |  | [optional] |

### Return type

[**RoomsNotificationSettingsWrapper**](RoomsNotificationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


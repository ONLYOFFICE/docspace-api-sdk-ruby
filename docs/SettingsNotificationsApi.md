# DocspaceApiSdk::SettingsNotificationsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_notification_channels**](SettingsNotificationsApi.md#get_notification_channels) | **GET** /api/2.0/settings/notification/channels | Get notification channels |
| [**get_notification_settings**](SettingsNotificationsApi.md#get_notification_settings) | **GET** /api/2.0/settings/notification/{type} | Check notification availability |
| [**get_rooms_notification_settings**](SettingsNotificationsApi.md#get_rooms_notification_settings) | **GET** /api/2.0/settings/notification/rooms | Get room notification settings |
| [**set_notification_settings**](SettingsNotificationsApi.md#set_notification_settings) | **POST** /api/2.0/settings/notification | Enable notifications |
| [**set_rooms_notification_status**](SettingsNotificationsApi.md#set_rooms_notification_status) | **POST** /api/2.0/settings/notification/rooms | Set room notification status |


## get_notification_channels

> <NotificationChannelStatusWrapper> get_notification_channels

Get notification channels

Returns a list of notification channels.

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

Checks if the notification type specified in the request is enabled or not.

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
type = DocspaceApiSdk::NotificationType::Badges # NotificationType | The type of notification to query, specified in the route.

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
| **type** | **NotificationType** | The type of notification to query, specified in the route. |  |

### Return type

[**NotificationSettingsWrapper**](NotificationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rooms_notification_settings

> <RoomsNotificationSettingsWrapper> get_rooms_notification_settings

Get room notification settings

Returns a list of rooms with the disabled notifications.

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
  # Get room notification settings
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
  # Get room notification settings
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

Enable notifications

Enables the notification type specified in the request.

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
  # Enable notifications
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
  # Enable notifications
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

Set room notification status

Sets a notification status for a room with the ID specified in the request.

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
  # Set room notification status
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
  # Set room notification status
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


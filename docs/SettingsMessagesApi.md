# DocspaceApiSdk::SettingsMessagesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**enable_admin_message_settings**](SettingsMessagesApi.md#enable_admin_message_settings) | **POST** /api/2.0/settings/messagesettings | Enable the administrator message settings |
| [**send_admin_mail**](SettingsMessagesApi.md#send_admin_mail) | **POST** /api/2.0/settings/sendadmmail | Send a message to the administrator |
| [**send_join_invite_mail**](SettingsMessagesApi.md#send_join_invite_mail) | **POST** /api/2.0/settings/sendjoininvite | Sends an invitation email |


## enable_admin_message_settings

> <StringWrapper> enable_admin_message_settings(opts)

Enable the administrator message settings

Displays the contact form on the Sign In page, allowing users to send a message to the DocSpace administrator in case they encounter any issues while accessing DocSpace.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-admin-message-settings/).

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

api_instance = DocspaceApiSdk::Settings::MessagesApi.new
opts = {
  turn_on_admin_message_settings_request_dto: DocspaceApiSdk::TurnOnAdminMessageSettingsRequestDto.new # TurnOnAdminMessageSettingsRequestDto | 
}

begin
  # Enable the administrator message settings
  result = api_instance.enable_admin_message_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::MessagesApi->enable_admin_message_settings: #{e}"
end
```

#### Using the enable_admin_message_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> enable_admin_message_settings_with_http_info(opts)

```ruby
begin
  # Enable the administrator message settings
  data, status_code, headers = api_instance.enable_admin_message_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::MessagesApi->enable_admin_message_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **turn_on_admin_message_settings_request_dto** | [**TurnOnAdminMessageSettingsRequestDto**](TurnOnAdminMessageSettingsRequestDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_admin_mail

> <StringWrapper> send_admin_mail(opts)

Send a message to the administrator

Sends a message to the administrator email when unauthorized users encounter issues accessing DocSpace.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-admin-mail/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Settings::MessagesApi.new
opts = {
  admin_message_settings_requests_dto: DocspaceApiSdk::AdminMessageSettingsRequestsDto.new({message: 'Hello, this is a test message from the administrator.', email: 'user@example.com'}) # AdminMessageSettingsRequestsDto | 
}

begin
  # Send a message to the administrator
  result = api_instance.send_admin_mail(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::MessagesApi->send_admin_mail: #{e}"
end
```

#### Using the send_admin_mail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> send_admin_mail_with_http_info(opts)

```ruby
begin
  # Send a message to the administrator
  data, status_code, headers = api_instance.send_admin_mail_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::MessagesApi->send_admin_mail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admin_message_settings_requests_dto** | [**AdminMessageSettingsRequestsDto**](AdminMessageSettingsRequestsDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_join_invite_mail

> <StringWrapper> send_join_invite_mail(opts)

Sends an invitation email

Sends an invitation email with a link to the DocSpace.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-join-invite-mail/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Settings::MessagesApi.new
opts = {
  admin_message_base_settings_requests_dto: DocspaceApiSdk::AdminMessageBaseSettingsRequestsDto.new({email: 'admin@example.com'}) # AdminMessageBaseSettingsRequestsDto | 
}

begin
  # Sends an invitation email
  result = api_instance.send_join_invite_mail(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::MessagesApi->send_join_invite_mail: #{e}"
end
```

#### Using the send_join_invite_mail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> send_join_invite_mail_with_http_info(opts)

```ruby
begin
  # Sends an invitation email
  data, status_code, headers = api_instance.send_join_invite_mail_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::MessagesApi->send_join_invite_mail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admin_message_base_settings_requests_dto** | [**AdminMessageBaseSettingsRequestsDto**](AdminMessageBaseSettingsRequestsDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# DocspaceApiSdk::SettingsTelegramApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_telegram**](SettingsTelegramApi.md#check_telegram) | **GET** /api/2.0/settings/telegram/check | Check the Telegram connection |
| [**link_telegram**](SettingsTelegramApi.md#link_telegram) | **GET** /api/2.0/settings/telegram/link | Get the Telegram link |
| [**unlink_telegram**](SettingsTelegramApi.md#unlink_telegram) | **DELETE** /api/2.0/settings/telegram/link | Unlink Telegram |


## check_telegram

> <TelegramStatusWrapper> check_telegram

Check the Telegram connection

Checks if the current user is connected to the Telegram Bot or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-telegram/).

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

api_instance = DocspaceApiSdk::Settings::TelegramApi.new

begin
  # Check the Telegram connection
  result = api_instance.check_telegram
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TelegramApi->check_telegram: #{e}"
end
```

#### Using the check_telegram_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TelegramStatusWrapper>, Integer, Hash)> check_telegram_with_http_info

```ruby
begin
  # Check the Telegram connection
  data, status_code, headers = api_instance.check_telegram_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TelegramStatusWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TelegramApi->check_telegram_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TelegramStatusWrapper**](TelegramStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## link_telegram

> <StringWrapper> link_telegram

Get the Telegram link

Returns a link that will connect the Telegram Bot to your account.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/link-telegram/).

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

api_instance = DocspaceApiSdk::Settings::TelegramApi.new

begin
  # Get the Telegram link
  result = api_instance.link_telegram
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TelegramApi->link_telegram: #{e}"
end
```

#### Using the link_telegram_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> link_telegram_with_http_info

```ruby
begin
  # Get the Telegram link
  data, status_code, headers = api_instance.link_telegram_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TelegramApi->link_telegram_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unlink_telegram

> <BooleanWrapper> unlink_telegram

Unlink Telegram

Unlinks the Telegram Bot from your account.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-telegram/).

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

api_instance = DocspaceApiSdk::Settings::TelegramApi.new

begin
  # Unlink Telegram
  result = api_instance.unlink_telegram
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TelegramApi->unlink_telegram: #{e}"
end
```

#### Using the unlink_telegram_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> unlink_telegram_with_http_info

```ruby
begin
  # Unlink Telegram
  data, status_code, headers = api_instance.unlink_telegram_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TelegramApi->unlink_telegram_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


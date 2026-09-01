# DocspaceApiSdk::AppsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get**](AppsApi.md#get) | **GET** /api/2.0/apps/{id} | Get a single app |
| [**get_all**](AppsApi.md#get_all) | **GET** /api/2.0/apps | Get all apps |
| [**get_settings**](AppsApi.md#get_settings) | **GET** /api/2.0/apps/{id}/settings | Get app settings |
| [**set_enabled**](AppsApi.md#set_enabled) | **PUT** /api/2.0/apps/{id}/enabled | Enable or disable an app |
| [**set_settings**](AppsApi.md#set_settings) | **PUT** /api/2.0/apps/{id}/settings | Save app settings |


## get

> <AppWrapper> get(id)

Get a single app

Returns a single application by id with the per-tenant enabled state and settings JSON.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get/).

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

api_instance = DocspaceApiSdk::Apps::AppsApi.new
id = 'ai-room' # String | The application identifier.

begin
  # Get a single app
  result = api_instance.get(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Apps::AppsApi->get: #{e}"
end
```

#### Using the get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppWrapper>, Integer, Hash)> get_with_http_info(id)

```ruby
begin
  # Get a single app
  data, status_code, headers = api_instance.get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Apps::AppsApi->get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The application identifier. |  |

### Return type

[**AppWrapper**](AppWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all

> <AppArrayWrapper> get_all

Get all apps

Returns the full list of portal applications declared in configuration, merged with per-tenant overrides  (enabled state and JSON settings).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all/).

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

api_instance = DocspaceApiSdk::Apps::AppsApi.new

begin
  # Get all apps
  result = api_instance.get_all
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Apps::AppsApi->get_all: #{e}"
end
```

#### Using the get_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppArrayWrapper>, Integer, Hash)> get_all_with_http_info

```ruby
begin
  # Get all apps
  data, status_code, headers = api_instance.get_all_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Apps::AppsApi->get_all_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AppArrayWrapper**](AppArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_settings

> <ObjectWrapper> get_settings(id)

Get app settings

Returns the JSON settings document saved for the specified application, or null if no overrides exist.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-settings/).

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

api_instance = DocspaceApiSdk::Apps::AppsApi.new
id = 'ai-room' # String | The application identifier.

begin
  # Get app settings
  result = api_instance.get_settings(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Apps::AppsApi->get_settings: #{e}"
end
```

#### Using the get_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectWrapper>, Integer, Hash)> get_settings_with_http_info(id)

```ruby
begin
  # Get app settings
  data, status_code, headers = api_instance.get_settings_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Apps::AppsApi->get_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The application identifier. |  |

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_enabled

> <AppWrapper> set_enabled(id, set_app_enabled_body)

Enable or disable an app

Toggles the enabled state of the application for the current tenant. Requires portal administrator permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-enabled/).

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

api_instance = DocspaceApiSdk::Apps::AppsApi.new
id = 'ai-room' # String | The application identifier.
set_app_enabled_body = DocspaceApiSdk::SetAppEnabledBody.new # SetAppEnabledBody | New enabled state.

begin
  # Enable or disable an app
  result = api_instance.set_enabled(id, set_app_enabled_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Apps::AppsApi->set_enabled: #{e}"
end
```

#### Using the set_enabled_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppWrapper>, Integer, Hash)> set_enabled_with_http_info(id, set_app_enabled_body)

```ruby
begin
  # Enable or disable an app
  data, status_code, headers = api_instance.set_enabled_with_http_info(id, set_app_enabled_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Apps::AppsApi->set_enabled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The application identifier. |  |
| **set_app_enabled_body** | [**SetAppEnabledBody**](SetAppEnabledBody.md) | New enabled state. |  |

### Return type

[**AppWrapper**](AppWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_settings

> <AppWrapper> set_settings(id, set_app_settings_body)

Save app settings

Saves an arbitrary JSON settings document for the specified application for the current tenant.  Requires portal administrator permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-settings/).

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

api_instance = DocspaceApiSdk::Apps::AppsApi.new
id = 'ai-room' # String | The application identifier.
set_app_settings_body = DocspaceApiSdk::SetAppSettingsBody.new # SetAppSettingsBody | New settings document.

begin
  # Save app settings
  result = api_instance.set_settings(id, set_app_settings_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Apps::AppsApi->set_settings: #{e}"
end
```

#### Using the set_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppWrapper>, Integer, Hash)> set_settings_with_http_info(id, set_app_settings_body)

```ruby
begin
  # Save app settings
  data, status_code, headers = api_instance.set_settings_with_http_info(id, set_app_settings_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Apps::AppsApi->set_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The application identifier. |  |
| **set_app_settings_body** | [**SetAppSettingsBody**](SetAppSettingsBody.md) | New settings document. |  |

### Return type

[**AppWrapper**](AppWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


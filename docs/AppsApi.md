# DocspaceApiSdk::AppsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get**](AppsApi.md#get) | **GET** /api/2.0/apps/{id} | Get an app |
| [**get_all**](AppsApi.md#get_all) | **GET** /api/2.0/apps | Get all apps |
| [**get_settings**](AppsApi.md#get_settings) | **GET** /api/2.0/apps/{id}/settings | Get app settings |
| [**set_enabled**](AppsApi.md#set_enabled) | **PUT** /api/2.0/apps/{id}/enabled | Enable or disable an app |
| [**set_settings**](AppsApi.md#set_settings) | **PUT** /api/2.0/apps/{id}/settings | Save app settings |


## get

> <AppWrapper> get(id)

Get an app

Returns one portal application by its identifier - one of the feature modules the portal can turn on, such as  `ai-rooms` or `docs-cloud` - with the enabled state and the settings document stored for the current portal.  The identifier must be an application declared in the installation configuration: take it  from `GET api/2.0/apps`, because an unknown identifier is rejected instead of creating anything. Any  authenticated portal member may read it. The call is read-only and idempotent. The result carries the  identifier, the enabled flag of the current portal and the settings JSON document, which is empty while the  portal has never saved settings for this application. An application that is not configured on this  installation fails with 404, so this is also the way to find out whether an application exists here at all.  Use `GET api/2.0/apps` to read all applications in one call, or `GET api/2.0/apps/{id}/settings` when only the  settings document is needed.

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
id = 'ai-room' # String | The application to read, by the identifier `GET api/2.0/apps` reports - one of the feature modules the portal  can turn on, such as `ai-room` or `docs-cloud`. An identifier not declared in the installation configuration  answers 404, which is also how a caller learns that an application does not exist here.

begin
  # Get an app
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
  # Get an app
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
| **id** | **String** | The application to read, by the identifier `GET api/2.0/apps` reports - one of the feature modules the portal  can turn on, such as `ai-room` or `docs-cloud`. An identifier not declared in the installation configuration  answers 404, which is also how a caller learns that an application does not exist here. |  |

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

Returns every portal application available on this installation, each with the state it has for the current  portal: the feature modules the portal can turn on and configure, such as `ai-rooms` or `docs-cloud`. The set  of applications and their initial enabled state come from the installation configuration and cannot be changed  through the API; only the enabled flag and the settings document are stored per portal, by  `PUT api/2.0/apps/{id}/enabled` and `PUT api/2.0/apps/{id}/settings`. Any authenticated portal member may read  the list. The call is read-only and idempotent. The list follows the order of the configuration, and every item  carries the application identifier, whether the application is enabled for the current portal, and the settings  JSON document saved for it, which is empty while the portal has never saved one. An empty list means that no  applications are configured on this installation, not that they are all disabled. There is neither paging nor  filtering here: to read a single application use `GET api/2.0/apps/{id}`.

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

> <UnknownNullableWrapper> get_settings(id)

Get app settings

Returns only the settings document of one portal application, such as `ai-rooms` or `docs-cloud`: the JSON  that the current portal has saved for it through `PUT api/2.0/apps/{id}/settings`, with no wrapper around it.  The identifier must be an application declared in the installation configuration, as listed by  `GET api/2.0/apps`. Any authenticated portal member  may read it. The call is read-only and idempotent. The document comes back exactly as it was saved: its shape  is defined by the application itself and is not validated by the portal, and an empty result means that the  portal has never saved settings for this application, so the application uses its own defaults. The enabled  state is not part of the answer: read it from `GET api/2.0/apps/{id}`.

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
id = 'ai-room' # String | The application to read, by the identifier `GET api/2.0/apps` reports - one of the feature modules the portal  can turn on, such as `ai-room` or `docs-cloud`. An identifier not declared in the installation configuration  answers 404, which is also how a caller learns that an application does not exist here.

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

> <Array(<UnknownNullableWrapper>, Integer, Hash)> get_settings_with_http_info(id)

```ruby
begin
  # Get app settings
  data, status_code, headers = api_instance.get_settings_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnknownNullableWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Apps::AppsApi->get_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The application to read, by the identifier `GET api/2.0/apps` reports - one of the feature modules the portal  can turn on, such as `ai-room` or `docs-cloud`. An identifier not declared in the installation configuration  answers 404, which is also how a caller learns that an application does not exist here. |  |

### Return type

[**UnknownNullableWrapper**](UnknownNullableWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_enabled

> <AppWrapper> set_enabled(id, set_app_enabled_body)

Enable or disable an app

Turns one portal application on or off for the current portal, and notifies the clients connected to the portal  so that they can show or hide it without being reloaded. The identifier must be an application declared in the  installation configuration, as listed by `GET api/2.0/apps`. The caller must be a portal administrator allowed  to edit the portal settings. The call is mutating and idempotent: it stores the flag for this portal, overriding  the default that the configuration gives the application, and repeating it with the same value changes nothing.  Disabling an application does not delete its settings document, which stays saved and applies again as soon as  the application is enabled. The response is the application in its new state, including that settings document.  Only the enabled flag is affected here: to change the settings document use `PUT api/2.0/apps/{id}/settings`.

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
id = 'ai-room' # String | The application to switch, by the identifier `GET api/2.0/apps` reports. It has to be an application declared  in the installation configuration; an unknown identifier answers 404 rather than creating anything.
set_app_enabled_body = DocspaceApiSdk::SetAppEnabledBody.new # SetAppEnabledBody | The new state of the application. Only the enabled flag travels here; the settings document is changed  through `PUT api/2.0/apps/{id}/settings`.

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
| **id** | **String** | The application to switch, by the identifier `GET api/2.0/apps` reports. It has to be an application declared  in the installation configuration; an unknown identifier answers 404 rather than creating anything. |  |
| **set_app_enabled_body** | [**SetAppEnabledBody**](SetAppEnabledBody.md) | The new state of the application. Only the enabled flag travels here; the settings document is changed  through `PUT api/2.0/apps/{id}/settings`. |  |

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

Stores the application-specific settings document of one portal application for the current portal. The  identifier must be an application declared in the installation configuration, as listed by `GET api/2.0/apps`.  The caller must be a portal administrator allowed to edit the portal settings. The call is mutating and  idempotent, and it replaces the whole document instead of merging into it: read the current one with  `GET api/2.0/apps/{id}/settings`, change it and send it back complete, or send `null` to drop the saved document  and let the application fall back to its own defaults. Any valid JSON value is accepted, since the content is  stored as it is and is interpreted by the application rather than by the portal, while a body that is not valid  JSON fails with 400 and stores nothing. The response is the application in its new state, with the stored  document echoed back. Unlike `PUT api/2.0/apps/{id}/enabled`, this operation sends no notification to the  connected clients, which pick the new settings up on their next read.

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
id = 'ai-room' # String | The application whose configuration is stored, by the identifier `GET api/2.0/apps` reports. An identifier  not declared in the installation configuration answers 404.
set_app_settings_body = DocspaceApiSdk::SetAppSettingsBody.new # SetAppSettingsBody | The configuration to store for this portal, replacing whatever was stored before.

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
| **id** | **String** | The application whose configuration is stored, by the identifier `GET api/2.0/apps` reports. An identifier  not declared in the installation configuration answers 404. |  |
| **set_app_settings_body** | [**SetAppSettingsBody**](SetAppSettingsBody.md) | The configuration to store for this portal, replacing whatever was stored before. |  |

### Return type

[**AppWrapper**](AppWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


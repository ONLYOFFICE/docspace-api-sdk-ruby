# DocspaceApiSdk::SettingsAuthorizationApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_auth_services**](SettingsAuthorizationApi.md#get_auth_services) | **GET** /api/2.0/settings/authservice | Get the authorization services |
| [**save_auth_keys**](SettingsAuthorizationApi.md#save_auth_keys) | **POST** /api/2.0/settings/authservice | Save the authorization keys |
| [**test_external_database_connection**](SettingsAuthorizationApi.md#test_external_database_connection) | **POST** /api/2.0/settings/authservice/externaldb/test | Test external database connection |


## get_auth_services

> <AuthServiceRequestsArrayWrapper> get_auth_services

Get the authorization services

Returns the catalogue of third-party storage and authorization providers DocSpace can integrate with (for  example Amazon S3, Dropbox, Google, or Telegram), including whichever keys were last saved for each one that  currently has any configured. Requires Owner or DocSpaceAdmin (the EditPortalSettings permission). This is a  read-only, idempotent call, and the list is not paginated; entries are ordered by the provider's configured  display order. Only providers that expose at least one manageable key are included, so a provider with nothing  to configure is omitted entirely. Save or change a provider's keys with `POST api/2.0/settings/authservice`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-auth-services/).

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

api_instance = DocspaceApiSdk::Settings::AuthorizationApi.new

begin
  # Get the authorization services
  result = api_instance.get_auth_services
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::AuthorizationApi->get_auth_services: #{e}"
end
```

#### Using the get_auth_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthServiceRequestsArrayWrapper>, Integer, Hash)> get_auth_services_with_http_info

```ruby
begin
  # Get the authorization services
  data, status_code, headers = api_instance.get_auth_services_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthServiceRequestsArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::AuthorizationApi->get_auth_services_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthServiceRequestsArrayWrapper**](AuthServiceRequestsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_auth_keys

> <BooleanWrapper> save_auth_keys(opts)

Save the authorization keys

Saves the authorization keys for one third-party storage or authorization provider, identified by name, or  clears them when every submitted key is left empty. Requires Owner or DocSpaceAdmin (the EditPortalSettings  permission); a provider that does not allow its keys to be changed from the API rejects the call outright. A  provider that is only available on a paid plan additionally requires the portal's tariff to include  third-party storage, or Standalone licensing, before the call is accepted. Keys that fail the provider's own  validation are cleared and the call is rejected rather than left partially applied. This is a mutating,  idempotent call: resaving identical keys succeeds and reports no change. It returns whether the keys actually  changed, not the keys themselves; connecting Telegram or an external database through this call also triggers  the matching real-time connection update.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-auth-keys/).

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

api_instance = DocspaceApiSdk::Settings::AuthorizationApi.new
opts = {
  auth_service_requests_dto: DocspaceApiSdk::AuthServiceRequestsDto.new # AuthServiceRequestsDto | 
}

begin
  # Save the authorization keys
  result = api_instance.save_auth_keys(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::AuthorizationApi->save_auth_keys: #{e}"
end
```

#### Using the save_auth_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> save_auth_keys_with_http_info(opts)

```ruby
begin
  # Save the authorization keys
  data, status_code, headers = api_instance.save_auth_keys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::AuthorizationApi->save_auth_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_service_requests_dto** | [**AuthServiceRequestsDto**](AuthServiceRequestsDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## test_external_database_connection

> <ConnectionTestResultWrapper> test_external_database_connection(opts)

Test external database connection

Probes connectivity to an external database using the settings supplied in the request, without saving them or  affecting the portal's own configuration. Requires Owner or DocSpaceAdmin (the EditPortalSettings permission).  SQLite is only accepted as a target on a Standalone (self-hosted) installation; requesting it on SaaS is  reported as a failed connection rather than an error. This is a read-only call, safe to retry. A failed  connection is not an HTTP error: the response always comes back as a normal success with `success=false` and  an `error` message describing what went wrong.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/test-external-database-connection/).

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

api_instance = DocspaceApiSdk::Settings::AuthorizationApi.new
opts = {
  external_database_settings: DocspaceApiSdk::ExternalDatabaseSettings.new # ExternalDatabaseSettings | 
}

begin
  # Test external database connection
  result = api_instance.test_external_database_connection(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::AuthorizationApi->test_external_database_connection: #{e}"
end
```

#### Using the test_external_database_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectionTestResultWrapper>, Integer, Hash)> test_external_database_connection_with_http_info(opts)

```ruby
begin
  # Test external database connection
  data, status_code, headers = api_instance.test_external_database_connection_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectionTestResultWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::AuthorizationApi->test_external_database_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_database_settings** | [**ExternalDatabaseSettings**](ExternalDatabaseSettings.md) |  | [optional] |

### Return type

[**ConnectionTestResultWrapper**](ConnectionTestResultWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


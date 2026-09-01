# DocspaceApiSdk::SettingsIPRestrictionsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ip_restrictions**](SettingsIPRestrictionsApi.md#get_ip_restrictions) | **GET** /api/2.0/settings/iprestrictions | Get the IP portal restrictions |
| [**read_ip_restrictions_settings**](SettingsIPRestrictionsApi.md#read_ip_restrictions_settings) | **GET** /api/2.0/settings/iprestrictions/settings | Get the IP restriction settings |
| [**save_ip_restrictions**](SettingsIPRestrictionsApi.md#save_ip_restrictions) | **PUT** /api/2.0/settings/iprestrictions | Update the IP restrictions |
| [**update_ip_restrictions_settings**](SettingsIPRestrictionsApi.md#update_ip_restrictions_settings) | **PUT** /api/2.0/settings/iprestrictions/settings | Update the IP restriction settings |


## get_ip_restrictions

> <IPRestrictionArrayWrapper> get_ip_restrictions

Get the IP portal restrictions

Returns the IP portal restrictions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ip-restrictions/).

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

api_instance = DocspaceApiSdk::Settings::IPRestrictionsApi.new

begin
  # Get the IP portal restrictions
  result = api_instance.get_ip_restrictions
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::IPRestrictionsApi->get_ip_restrictions: #{e}"
end
```

#### Using the get_ip_restrictions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IPRestrictionArrayWrapper>, Integer, Hash)> get_ip_restrictions_with_http_info

```ruby
begin
  # Get the IP portal restrictions
  data, status_code, headers = api_instance.get_ip_restrictions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IPRestrictionArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::IPRestrictionsApi->get_ip_restrictions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IPRestrictionArrayWrapper**](IPRestrictionArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_ip_restrictions_settings

> <IPRestrictionsSettingsWrapper> read_ip_restrictions_settings

Get the IP restriction settings

Returns the IP restriction settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/read-ip-restrictions-settings/).

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

api_instance = DocspaceApiSdk::Settings::IPRestrictionsApi.new

begin
  # Get the IP restriction settings
  result = api_instance.read_ip_restrictions_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::IPRestrictionsApi->read_ip_restrictions_settings: #{e}"
end
```

#### Using the read_ip_restrictions_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IPRestrictionsSettingsWrapper>, Integer, Hash)> read_ip_restrictions_settings_with_http_info

```ruby
begin
  # Get the IP restriction settings
  data, status_code, headers = api_instance.read_ip_restrictions_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IPRestrictionsSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::IPRestrictionsApi->read_ip_restrictions_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IPRestrictionsSettingsWrapper**](IPRestrictionsSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_ip_restrictions

> <IpRestrictionsWrapper> save_ip_restrictions(opts)

Update the IP restrictions

Updates the IP restrictions with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ip-restrictions/).

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

api_instance = DocspaceApiSdk::Settings::IPRestrictionsApi.new
opts = {
  ip_restrictions_dto: DocspaceApiSdk::IpRestrictionsDto.new({ip_restrictions: [{ip=192.0.2.1,  forAdmin=false}]}) # IpRestrictionsDto | 
}

begin
  # Update the IP restrictions
  result = api_instance.save_ip_restrictions(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::IPRestrictionsApi->save_ip_restrictions: #{e}"
end
```

#### Using the save_ip_restrictions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpRestrictionsWrapper>, Integer, Hash)> save_ip_restrictions_with_http_info(opts)

```ruby
begin
  # Update the IP restrictions
  data, status_code, headers = api_instance.save_ip_restrictions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpRestrictionsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::IPRestrictionsApi->save_ip_restrictions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_restrictions_dto** | [**IpRestrictionsDto**](IpRestrictionsDto.md) |  | [optional] |

### Return type

[**IpRestrictionsWrapper**](IpRestrictionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ip_restrictions_settings

> <IpRestrictionsWrapper> update_ip_restrictions_settings(opts)

Update the IP restriction settings

Updates the IP restriction settings with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-ip-restrictions-settings/).

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

api_instance = DocspaceApiSdk::Settings::IPRestrictionsApi.new
opts = {
  ip_restrictions_dto: DocspaceApiSdk::IpRestrictionsDto.new({ip_restrictions: [{ip=192.0.2.1,  forAdmin=false}]}) # IpRestrictionsDto | 
}

begin
  # Update the IP restriction settings
  result = api_instance.update_ip_restrictions_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::IPRestrictionsApi->update_ip_restrictions_settings: #{e}"
end
```

#### Using the update_ip_restrictions_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpRestrictionsWrapper>, Integer, Hash)> update_ip_restrictions_settings_with_http_info(opts)

```ruby
begin
  # Update the IP restriction settings
  data, status_code, headers = api_instance.update_ip_restrictions_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpRestrictionsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::IPRestrictionsApi->update_ip_restrictions_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_restrictions_dto** | [**IpRestrictionsDto**](IpRestrictionsDto.md) |  | [optional] |

### Return type

[**IpRestrictionsWrapper**](IpRestrictionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


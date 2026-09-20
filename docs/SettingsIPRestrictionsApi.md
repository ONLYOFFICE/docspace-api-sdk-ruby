# DocspaceApiSdk::SettingsIPRestrictionsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ip_restrictions**](SettingsIPRestrictionsApi.md#get_ip_restrictions) | **GET** /api/2.0/settings/iprestrictions | Get IP restrictions |
| [**read_ip_restrictions_settings**](SettingsIPRestrictionsApi.md#read_ip_restrictions_settings) | **GET** /api/2.0/settings/iprestrictions/settings | Get IP restriction settings |
| [**save_ip_restrictions**](SettingsIPRestrictionsApi.md#save_ip_restrictions) | **PUT** /api/2.0/settings/iprestrictions | Save IP restrictions |
| [**update_ip_restrictions_settings**](SettingsIPRestrictionsApi.md#update_ip_restrictions_settings) | **PUT** /api/2.0/settings/iprestrictions/settings | Update IP restriction settings |


## get_ip_restrictions

> <IPRestrictionArrayWrapper> get_ip_restrictions

Get IP restrictions

Returns the IP restriction list of the current portal - the addresses allowed to reach it, each with its `id`  and the `forAdmin` flag that narrows the entry to DocSpace administrators. The caller needs the  portal-settings right of a DocSpace administrator, otherwise the call is refused. The call is read-only and  honours `If-None-Match`: send back the `ETag` of an earlier answer and an unchanged list comes back as an  empty not-modified response rather than a body. The list has no defined order and is empty on a portal where  nobody has configured restrictions - and an empty list blocks nobody, whatever the enforcement flag says.  Whether the restrictions are enforced at all is not part of this answer: read that flag with  `GET api/2.0/settings/iprestrictions/settings`. The entries listed here apply to every user of the portal  except its owner. Replace the whole list with `PUT api/2.0/settings/iprestrictions`; single entries cannot be  added or deleted, and that update takes plain addresses rather than the IDs returned here.

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
  # Get IP restrictions
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
  # Get IP restrictions
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

Get IP restriction settings

Reports whether the IP restrictions of the current portal are enforced, as the `enable` flag together with the  `lastModified` stamp of the setting. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. The call is read-only and honours `If-Modified-Since`: send back the  `Last-Modified` value of an earlier answer and an unchanged setting comes back as an empty not-modified  response rather than a body. The flag is `false` on a portal nobody has configured. A `true` flag on its own  blocks nothing: enforcement also needs at least one stored address, which this answer does not carry - read  the addresses with `GET api/2.0/settings/iprestrictions` - and it is skipped entirely on an installation whose  configuration hides the IP security section. Even when enforced, the portal owner and the installation's own  networks are let through. Change the flag with `PUT api/2.0/settings/iprestrictions/settings`, which replaces  the address list in the same call, so resend the addresses in force when all that changes is the flag.

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
  # Get IP restriction settings
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
  # Get IP restriction settings
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

Save IP restrictions

Replaces the whole IP restriction list of the current portal with the addresses from the request and stores  the enforcement flag in the same call. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. Every entry must be a single IPv4 or IPv6 address: `from-to` ranges and CIDR  blocks are matched by the portal but cannot be stored here and are rejected as an invalid request, as is  `enable: true` with an empty list. An omitted `enable` follows the list - on when addresses are sent, off when  the list is empty. The replacement is written in one transaction, applies to new requests without a restart  and is recorded in the audit trail; entries not repeated in the body are deleted, and sending the same body  twice leaves the portal as it is. Enforcement spares the portal owner and the installation's own networks  only, so a list without the caller's own address locks the remaining administrators out. The answer echoes the  request rather than the stored rows - no entry IDs, and `enable` exactly as sent, empty when it was omitted -  so read the result with `GET api/2.0/settings/iprestrictions`.

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
  # Save IP restrictions
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
  # Save IP restrictions
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

Update IP restriction settings

Stores the enforcement flag of the IP restrictions of the current portal together with the whole address list,  replacing the addresses saved before; this operation and `PUT api/2.0/settings/iprestrictions` are two routes  to the same handler and behave identically. The caller needs the portal-settings right of a DocSpace  administrator, otherwise the call is refused. Every entry must be a single IPv4 or IPv6 address: `from-to`  ranges and CIDR blocks are matched by the portal but cannot be stored here and are rejected as an invalid  request, as is `enable: true` with an empty list. An omitted `enable` follows the list - on when addresses are  sent, off when the list is empty - so the flag cannot be moved without resending the addresses that stay in  force. The new state applies to new requests without a restart, is recorded in the audit trail, and sending  the same body twice changes nothing further. Enforcement spares the portal owner and the installation's own  networks only, so a list without the caller's own address locks the remaining administrators out. The answer  echoes the request, so read the stored entries and their IDs with `GET api/2.0/settings/iprestrictions`.

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
  # Update IP restriction settings
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
  # Update IP restriction settings
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


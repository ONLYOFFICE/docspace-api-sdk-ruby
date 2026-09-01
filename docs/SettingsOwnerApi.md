# DocspaceApiSdk::SettingsOwnerApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**send_owner_change_instructions**](SettingsOwnerApi.md#send_owner_change_instructions) | **POST** /api/2.0/settings/owner | Send the owner change instructions |
| [**update_portal_owner**](SettingsOwnerApi.md#update_portal_owner) | **PUT** /api/2.0/settings/owner | Update the portal owner |


## send_owner_change_instructions

> <OwnerChangeInstructionsWrapper> send_owner_change_instructions(opts)

Send the owner change instructions

Sends the instructions to change the DocSpace owner.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-owner-change-instructions/).

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

api_instance = DocspaceApiSdk::Settings::OwnerApi.new
opts = {
  owner_id_settings_request_dto: DocspaceApiSdk::OwnerIdSettingsRequestDto.new({owner_id: '00000000-0000-0000-0000-000000000001'}) # OwnerIdSettingsRequestDto | 
}

begin
  # Send the owner change instructions
  result = api_instance.send_owner_change_instructions(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::OwnerApi->send_owner_change_instructions: #{e}"
end
```

#### Using the send_owner_change_instructions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnerChangeInstructionsWrapper>, Integer, Hash)> send_owner_change_instructions_with_http_info(opts)

```ruby
begin
  # Send the owner change instructions
  data, status_code, headers = api_instance.send_owner_change_instructions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnerChangeInstructionsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::OwnerApi->send_owner_change_instructions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id_settings_request_dto** | [**OwnerIdSettingsRequestDto**](OwnerIdSettingsRequestDto.md) |  | [optional] |

### Return type

[**OwnerChangeInstructionsWrapper**](OwnerChangeInstructionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_portal_owner

> update_portal_owner(opts)

Update the portal owner

Updates the current portal owner with a new one specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-portal-owner/).

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

api_instance = DocspaceApiSdk::Settings::OwnerApi.new
opts = {
  owner_id_settings_request_dto: DocspaceApiSdk::OwnerIdSettingsRequestDto.new({owner_id: '00000000-0000-0000-0000-000000000001'}) # OwnerIdSettingsRequestDto | 
}

begin
  # Update the portal owner
  api_instance.update_portal_owner(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::OwnerApi->update_portal_owner: #{e}"
end
```

#### Using the update_portal_owner_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_portal_owner_with_http_info(opts)

```ruby
begin
  # Update the portal owner
  data, status_code, headers = api_instance.update_portal_owner_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::OwnerApi->update_portal_owner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id_settings_request_dto** | [**OwnerIdSettingsRequestDto**](OwnerIdSettingsRequestDto.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


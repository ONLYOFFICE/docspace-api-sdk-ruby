# DocspaceApiSdk::PeopleQuotaApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**reset_users_quota**](PeopleQuotaApi.md#reset_users_quota) | **PUT** /api/2.0/people/resetquota | Reset a user quota limit |
| [**update_user_quota**](PeopleQuotaApi.md#update_user_quota) | **PUT** /api/2.0/people/userquota | Change a user quota limit |


## reset_users_quota

> <EmployeeFullArrayWrapper> reset_users_quota(opts)

Reset a user quota limit

Resets a quota limit of users with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-users-quota/).

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

api_instance = DocspaceApiSdk::People::QuotaApi.new
opts = {
  update_members_quota_request_dto: DocspaceApiSdk::UpdateMembersQuotaRequestDto.new # UpdateMembersQuotaRequestDto | 
}

begin
  # Reset a user quota limit
  result = api_instance.reset_users_quota(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::QuotaApi->reset_users_quota: #{e}"
end
```

#### Using the reset_users_quota_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> reset_users_quota_with_http_info(opts)

```ruby
begin
  # Reset a user quota limit
  data, status_code, headers = api_instance.reset_users_quota_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::QuotaApi->reset_users_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_members_quota_request_dto** | [**UpdateMembersQuotaRequestDto**](UpdateMembersQuotaRequestDto.md) |  | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user_quota

> <EmployeeFullArrayWrapper> update_user_quota(opts)

Change a user quota limit

Changes a quota limit for the users with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-quota/).

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

api_instance = DocspaceApiSdk::People::QuotaApi.new
opts = {
  update_members_quota_request_dto: DocspaceApiSdk::UpdateMembersQuotaRequestDto.new # UpdateMembersQuotaRequestDto | 
}

begin
  # Change a user quota limit
  result = api_instance.update_user_quota(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::QuotaApi->update_user_quota: #{e}"
end
```

#### Using the update_user_quota_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> update_user_quota_with_http_info(opts)

```ruby
begin
  # Change a user quota limit
  data, status_code, headers = api_instance.update_user_quota_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::QuotaApi->update_user_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_members_quota_request_dto** | [**UpdateMembersQuotaRequestDto**](UpdateMembersQuotaRequestDto.md) |  | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# DocspaceApiSdk::PeopleQuotaApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**reset_users_quota**](PeopleQuotaApi.md#reset_users_quota) | **PUT** /api/2.0/people/resetquota | Reset a user quota limit |
| [**update_user_quota**](PeopleQuotaApi.md#update_user_quota) | **PUT** /api/2.0/people/userquota | Change a user quota limit |


## reset_users_quota

> <EmployeeFullArrayWrapper> reset_users_quota(opts)

Reset a user quota limit

Drops the personal storage limit of the listed accounts, so that each of them follows the portal default  again.  The caller needs the permission to edit the portal settings, which in practice means a DocSpace  administrator or the portal owner.  On a hosted portal the tariff has to include the storage statistics feature, otherwise the operation answers  402; a standalone installation has no such condition.  It takes only `userIds` - the `quota` field of the request body is not read here - and system accounts are  dropped from the list without an error.  The accounts are processed one by one and the answer holds the ones that were reached, each already showing  the portal default as its limit.  Nothing is deleted and no space is freed; only the limit that applies changes.  Use `PUT api/2.0/people/userquota` to give an account its own limit instead.

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

Gives the listed accounts their own storage limit, replacing the portal default for each of them.  The caller needs the permission to edit the portal settings, which in practice means a DocSpace  administrator or the portal owner.  `quota` is a whole number of bytes: a value of 0 or more becomes the personal limit, while any negative value  switches the personal limit off and hands the account back to the portal default.  The value has to fit the portal: a limit larger than the total storage the tariff allows, or larger than the  portal-wide quota on a standalone installation, is rejected with 400, and so is a value that is not a whole  number.  System accounts are dropped from the list without an error, the accounts are processed one by one, and the  answer holds the ones that were reached.  Setting a limit does not free any space and does not delete anything: an account already over its new limit  simply cannot add more.  Use `PUT api/2.0/people/resetquota` to return accounts to the portal default.

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


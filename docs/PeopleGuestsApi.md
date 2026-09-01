# DocspaceApiSdk::PeopleGuestsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**approve_guest_share_link**](PeopleGuestsApi.md#approve_guest_share_link) | **POST** /api/2.0/people/guests/share/approve | Approve a guest sharing link |
| [**delete_guests**](PeopleGuestsApi.md#delete_guests) | **DELETE** /api/2.0/people/guests | Delete guests |


## approve_guest_share_link

> <EmployeeFullWrapper> approve_guest_share_link(opts)

Approve a guest sharing link

Approves a guest sharing link and returns the detailed information about a guest.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/approve-guest-share-link/).

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

api_instance = DocspaceApiSdk::People::GuestsApi.new
opts = {
  email_member_request_dto: DocspaceApiSdk::EmailMemberRequestDto.new({email: 'john.doe@example.com'}) # EmailMemberRequestDto | 
}

begin
  # Approve a guest sharing link
  result = api_instance.approve_guest_share_link(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::GuestsApi->approve_guest_share_link: #{e}"
end
```

#### Using the approve_guest_share_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullWrapper>, Integer, Hash)> approve_guest_share_link_with_http_info(opts)

```ruby
begin
  # Approve a guest sharing link
  data, status_code, headers = api_instance.approve_guest_share_link_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::GuestsApi->approve_guest_share_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_member_request_dto** | [**EmailMemberRequestDto**](EmailMemberRequestDto.md) |  | [optional] |

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_guests

> delete_guests(opts)

Delete guests

Deletes guests from the list and excludes them from rooms to which they were invited.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-guests/).

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

api_instance = DocspaceApiSdk::People::GuestsApi.new
opts = {
  update_members_request_dto: DocspaceApiSdk::UpdateMembersRequestDto.new # UpdateMembersRequestDto | 
}

begin
  # Delete guests
  api_instance.delete_guests(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::GuestsApi->delete_guests: #{e}"
end
```

#### Using the delete_guests_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_guests_with_http_info(opts)

```ruby
begin
  # Delete guests
  data, status_code, headers = api_instance.delete_guests_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::GuestsApi->delete_guests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_members_request_dto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


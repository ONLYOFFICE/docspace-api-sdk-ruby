# DocspaceApiSdk::PeopleGuestsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**approve_guest_share_link**](PeopleGuestsApi.md#approve_guest_share_link) | **POST** /api/2.0/people/guests/share/approve | Approve a guest sharing link |
| [**delete_guests**](PeopleGuestsApi.md#delete_guests) | **DELETE** /api/2.0/people/guests | Remove guest relations |


## approve_guest_share_link

> <EmployeeFullWrapper> approve_guest_share_link(opts)

Approve a guest sharing link

Accepts a guest that another member shared, which links that guest to the calling account and makes it  visible in the caller's list of guests.  Everything the operation needs comes from the confirmation token of the link produced by  `GET api/2.0/people/guests/{userid}/share`: the request body is not read at all, so there is nothing to fill  in, and an expired or already used token is answered with 401.  The caller has to be a room admin or a DocSpace admin; a member or a guest gets 403.  The account the token names has to exist and still be a guest, otherwise the operation answers 404 or 400.  The call is idempotent: a guest that is already linked to the caller is simply returned again.  The answer is the full profile of the guest.

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

Remove guest relations

Removes the listed guests from the caller's own list of guests and withdraws the access the caller had  granted them.  It does not delete the accounts: each guest keeps its profile and any access other members gave it, and only  the link to the caller and the caller's own shares disappear.  The caller has to be a room admin or a DocSpace admin, and every listed account has to exist, be an active  guest and be one of the caller's own guests - a single entry that is not rejects the whole call with 403 and  changes nothing.  The call returns no body; read `GET api/2.0/people/filter` with `area` set to `Guests` to see what is left.  To delete a guest account for good, disable it and then use `DELETE api/2.0/people/{userid}`.

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
  # Remove guest relations
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
  # Remove guest relations
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


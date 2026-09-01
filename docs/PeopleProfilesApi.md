# DocspaceApiSdk::PeopleProfilesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_member**](PeopleProfilesApi.md#add_member) | **POST** /api/2.0/people | Add a user |
| [**check_user_exists_by_email**](PeopleProfilesApi.md#check_user_exists_by_email) | **GET** /api/2.0/people/exists | Check if a user exists by email |
| [**delete_member**](PeopleProfilesApi.md#delete_member) | **DELETE** /api/2.0/people/{userid} | Delete a user |
| [**delete_profile**](PeopleProfilesApi.md#delete_profile) | **DELETE** /api/2.0/people/@self | Delete my profile |
| [**get_all_profiles**](PeopleProfilesApi.md#get_all_profiles) | **GET** /api/2.0/people | Get profiles |
| [**get_claims**](PeopleProfilesApi.md#get_claims) | **GET** /api/2.0/people/tokendiagnostics | Get user claims |
| [**get_profile_by_email**](PeopleProfilesApi.md#get_profile_by_email) | **GET** /api/2.0/people/email | Get a profile by user email |
| [**get_profile_by_user_id**](PeopleProfilesApi.md#get_profile_by_user_id) | **GET** /api/2.0/people/{userid} | Get a profile by user ID |
| [**get_self_profile**](PeopleProfilesApi.md#get_self_profile) | **GET** /api/2.0/people/@self | Get my profile |
| [**invite_users**](PeopleProfilesApi.md#invite_users) | **POST** /api/2.0/people/invite | Invite users |
| [**remove_users**](PeopleProfilesApi.md#remove_users) | **PUT** /api/2.0/people/delete | Delete users |
| [**resend_user_invites**](PeopleProfilesApi.md#resend_user_invites) | **PUT** /api/2.0/people/invite | Resend activation emails |
| [**update_member**](PeopleProfilesApi.md#update_member) | **PUT** /api/2.0/people/{userid} | Update a user |
| [**update_member_culture**](PeopleProfilesApi.md#update_member_culture) | **PUT** /api/2.0/people/{userid}/culture | Update a user culture |


## add_member

> <EmployeeFullWrapper> add_member(opts)

Add a user

Adds a new portal user with the first name, last name, email address, and several optional parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-member/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new
opts = {
  member_request_dto: DocspaceApiSdk::MemberRequestDto.new # MemberRequestDto | 
}

begin
  # Add a user
  result = api_instance.add_member(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->add_member: #{e}"
end
```

#### Using the add_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullWrapper>, Integer, Hash)> add_member_with_http_info(opts)

```ruby
begin
  # Add a user
  data, status_code, headers = api_instance.add_member_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->add_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_request_dto** | [**MemberRequestDto**](MemberRequestDto.md) |  | [optional] |

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_user_exists_by_email

> <UserExistsResponseWrapper> check_user_exists_by_email(opts)

Check if a user exists by email

Returns data indicating whether a user with the specified email exists on the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-user-exists-by-email/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new
opts = {
  email: 'john.doe@example.com', # String | The user email address.
  encemail: 'encrypted_email_string', # String | The user encrypted email address.
  culture: 'en-US' # String | Culture
}

begin
  # Check if a user exists by email
  result = api_instance.check_user_exists_by_email(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->check_user_exists_by_email: #{e}"
end
```

#### Using the check_user_exists_by_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserExistsResponseWrapper>, Integer, Hash)> check_user_exists_by_email_with_http_info(opts)

```ruby
begin
  # Check if a user exists by email
  data, status_code, headers = api_instance.check_user_exists_by_email_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserExistsResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->check_user_exists_by_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The user email address. | [optional] |
| **encemail** | **String** | The user encrypted email address. | [optional] |
| **culture** | **String** | Culture | [optional] |

### Return type

[**UserExistsResponseWrapper**](UserExistsResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_member

> <EmployeeFullWrapper> delete_member(userid)

Delete a user

Deletes a user with the ID specified in the request from the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.

begin
  # Delete a user
  result = api_instance.delete_member(userid)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->delete_member: #{e}"
end
```

#### Using the delete_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullWrapper>, Integer, Hash)> delete_member_with_http_info(userid)

```ruby
begin
  # Delete a user
  data, status_code, headers = api_instance.delete_member_with_http_info(userid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->delete_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_profile

> <EmployeeFullWrapper> delete_profile

Delete my profile

Deletes the current user profile.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-profile/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new

begin
  # Delete my profile
  result = api_instance.delete_profile
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->delete_profile: #{e}"
end
```

#### Using the delete_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullWrapper>, Integer, Hash)> delete_profile_with_http_info

```ruby
begin
  # Delete my profile
  data, status_code, headers = api_instance.delete_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->delete_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_profiles

> <EmployeeFullArrayWrapper> get_all_profiles(opts)

Get profiles

Returns a list of profiles for all the portal users.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-profiles/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new
opts = {
  count: 25, # Integer | The maximum number of items to be retrieved in the response.
  start_index: 0, # Integer | The zero-based index of the first item to be retrieved in a filtered result set.
  filter_by: 'displayName', # String | Specifies the filter criteria for user-related queries.
  sort_by: 'displayName', # String | Specifies the property or field name by which the results should be sorted.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_separator: ',', # String | The character or string used to separate multiple filter values in a filtering query.
  filter_value: 'John' # String | The text value used as an additional filter criterion for profiles retrieval.
}

begin
  # Get profiles
  result = api_instance.get_all_profiles(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->get_all_profiles: #{e}"
end
```

#### Using the get_all_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_all_profiles_with_http_info(opts)

```ruby
begin
  # Get profiles
  data, status_code, headers = api_instance.get_all_profiles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->get_all_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The maximum number of items to be retrieved in the response. | [optional] |
| **start_index** | **Integer** | The zero-based index of the first item to be retrieved in a filtered result set. | [optional] |
| **filter_by** | **String** | Specifies the filter criteria for user-related queries. | [optional] |
| **sort_by** | **String** | Specifies the property or field name by which the results should be sorted. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_separator** | **String** | The character or string used to separate multiple filter values in a filtering query. | [optional] |
| **filter_value** | **String** | The text value used as an additional filter criterion for profiles retrieval. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_claims

> <ObjectWrapper> get_claims

Get user claims

Returns the user claims.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-claims/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new

begin
  # Get user claims
  result = api_instance.get_claims
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->get_claims: #{e}"
end
```

#### Using the get_claims_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectWrapper>, Integer, Hash)> get_claims_with_http_info

```ruby
begin
  # Get user claims
  data, status_code, headers = api_instance.get_claims_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->get_claims_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile_by_email

> <EmployeeFullWrapper> get_profile_by_email(opts)

Get a profile by user email

Returns the detailed information about a profile of the user with the email specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-profile-by-email/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new
opts = {
  email: 'john.doe@example.com', # String | The user email address.
  encemail: 'encrypted_email_string', # String | The user encrypted email address.
  culture: 'en-US' # String | Culture
}

begin
  # Get a profile by user email
  result = api_instance.get_profile_by_email(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->get_profile_by_email: #{e}"
end
```

#### Using the get_profile_by_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullWrapper>, Integer, Hash)> get_profile_by_email_with_http_info(opts)

```ruby
begin
  # Get a profile by user email
  data, status_code, headers = api_instance.get_profile_by_email_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->get_profile_by_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The user email address. | [optional] |
| **encemail** | **String** | The user encrypted email address. | [optional] |
| **culture** | **String** | Culture | [optional] |

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile_by_user_id

> <EmployeeFullWrapper> get_profile_by_user_id(userid)

Get a profile by user ID

Returns the detailed information about a profile of the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-profile-by-user-id/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.

begin
  # Get a profile by user ID
  result = api_instance.get_profile_by_user_id(userid)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->get_profile_by_user_id: #{e}"
end
```

#### Using the get_profile_by_user_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullWrapper>, Integer, Hash)> get_profile_by_user_id_with_http_info(userid)

```ruby
begin
  # Get a profile by user ID
  data, status_code, headers = api_instance.get_profile_by_user_id_with_http_info(userid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->get_profile_by_user_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_self_profile

> <EmployeeFullWrapper> get_self_profile

Get my profile

Returns the detailed information about the current user profile.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-self-profile/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new

begin
  # Get my profile
  result = api_instance.get_self_profile
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->get_self_profile: #{e}"
end
```

#### Using the get_self_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullWrapper>, Integer, Hash)> get_self_profile_with_http_info

```ruby
begin
  # Get my profile
  data, status_code, headers = api_instance.get_self_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->get_self_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invite_users

> <EmployeeArrayWrapper> invite_users(opts)

Invite users

Invites users specified in the request to the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/invite-users/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new
opts = {
  invite_users_request_dto: DocspaceApiSdk::InviteUsersRequestDto.new({invitations: [{email=user@example.com,  type=1}]}) # InviteUsersRequestDto | 
}

begin
  # Invite users
  result = api_instance.invite_users(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->invite_users: #{e}"
end
```

#### Using the invite_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeArrayWrapper>, Integer, Hash)> invite_users_with_http_info(opts)

```ruby
begin
  # Invite users
  data, status_code, headers = api_instance.invite_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->invite_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_users_request_dto** | [**InviteUsersRequestDto**](InviteUsersRequestDto.md) |  | [optional] |

### Return type

[**EmployeeArrayWrapper**](EmployeeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_users

> <EmployeeFullArrayWrapper> remove_users(opts)

Delete users

Deletes a list of the users with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-users/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new
opts = {
  update_members_request_dto: DocspaceApiSdk::UpdateMembersRequestDto.new # UpdateMembersRequestDto | 
}

begin
  # Delete users
  result = api_instance.remove_users(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->remove_users: #{e}"
end
```

#### Using the remove_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> remove_users_with_http_info(opts)

```ruby
begin
  # Delete users
  data, status_code, headers = api_instance.remove_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->remove_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_members_request_dto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) |  | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resend_user_invites

> <EmployeeFullArrayWrapper> resend_user_invites(opts)

Resend activation emails

Resends emails to the users who have not activated their emails.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-user-invites/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new
opts = {
  update_members_request_dto: DocspaceApiSdk::UpdateMembersRequestDto.new # UpdateMembersRequestDto | 
}

begin
  # Resend activation emails
  result = api_instance.resend_user_invites(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->resend_user_invites: #{e}"
end
```

#### Using the resend_user_invites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> resend_user_invites_with_http_info(opts)

```ruby
begin
  # Resend activation emails
  data, status_code, headers = api_instance.resend_user_invites_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->resend_user_invites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_members_request_dto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) |  | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_member

> <EmployeeFullWrapper> update_member(userid, update_member_request_dto)

Update a user

Updates the data for the selected portal user with the first name, last name, email address, and/or optional parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.
update_member_request_dto = DocspaceApiSdk::UpdateMemberRequestDto.new # UpdateMemberRequestDto | The request parameters for updating the user information.

begin
  # Update a user
  result = api_instance.update_member(userid, update_member_request_dto)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->update_member: #{e}"
end
```

#### Using the update_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullWrapper>, Integer, Hash)> update_member_with_http_info(userid, update_member_request_dto)

```ruby
begin
  # Update a user
  data, status_code, headers = api_instance.update_member_with_http_info(userid, update_member_request_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->update_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |
| **update_member_request_dto** | [**UpdateMemberRequestDto**](UpdateMemberRequestDto.md) | The request parameters for updating the user information. |  |

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_member_culture

> <EmployeeFullWrapper> update_member_culture(userid, opts)

Update a user culture

Updates the user culture with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-culture/).

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

api_instance = DocspaceApiSdk::People::ProfilesApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.
opts = {
  culture: DocspaceApiSdk::Culture.new({culture_name: 'en-US'}) # Culture | The culture name parameters.
}

begin
  # Update a user culture
  result = api_instance.update_member_culture(userid, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->update_member_culture: #{e}"
end
```

#### Using the update_member_culture_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullWrapper>, Integer, Hash)> update_member_culture_with_http_info(userid, opts)

```ruby
begin
  # Update a user culture
  data, status_code, headers = api_instance.update_member_culture_with_http_info(userid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ProfilesApi->update_member_culture_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |
| **culture** | [**Culture**](Culture.md) | The culture name parameters. | [optional] |

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


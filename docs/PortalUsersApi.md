# DocspaceApiSdk::PortalUsersApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_invitation_link**](PortalUsersApi.md#create_invitation_link) | **POST** /api/2.0/portal/users/invitationlink | Create an invitation link |
| [**delete_invitation_link**](PortalUsersApi.md#delete_invitation_link) | **DELETE** /api/2.0/portal/users/invitationlink | Deletes an invitation link. |
| [**get_invitation_link**](PortalUsersApi.md#get_invitation_link) | **GET** /api/2.0/portal/users/invite/{employeeType} | Get an invitation link |
| [**get_invitation_link_by_employee_type**](PortalUsersApi.md#get_invitation_link_by_employee_type) | **GET** /api/2.0/portal/users/invitationlink/{employeeType} | Get an invitation link |
| [**get_portal_users_count**](PortalUsersApi.md#get_portal_users_count) | **GET** /api/2.0/portal/userscount | Get a number of portal users |
| [**get_user_by_id**](PortalUsersApi.md#get_user_by_id) | **GET** /api/2.0/portal/users/{userID} | Get a user by ID |
| [**mark_gift_message_as_read**](PortalUsersApi.md#mark_gift_message_as_read) | **POST** /api/2.0/portal/present/mark | Mark a gift message as read |
| [**send_congratulations**](PortalUsersApi.md#send_congratulations) | **POST** /api/2.0/portal/sendcongratulations | Send congratulations |
| [**update_invitation_link**](PortalUsersApi.md#update_invitation_link) | **PUT** /api/2.0/portal/users/invitationlink | Update an invitation link |


## create_invitation_link

> <InvitationLinkWrapper> create_invitation_link(opts)

Create an invitation link

Returns an invitation link for joining the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-invitation-link/).

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

api_instance = DocspaceApiSdk::Portal::UsersApi.new
opts = {
  invitation_link_create_request_dto: DocspaceApiSdk::InvitationLinkCreateRequestDto.new({employee_type: DocspaceApiSdk::EmployeeType::ALL}) # InvitationLinkCreateRequestDto | 
}

begin
  # Create an invitation link
  result = api_instance.create_invitation_link(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->create_invitation_link: #{e}"
end
```

#### Using the create_invitation_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvitationLinkWrapper>, Integer, Hash)> create_invitation_link_with_http_info(opts)

```ruby
begin
  # Create an invitation link
  data, status_code, headers = api_instance.create_invitation_link_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvitationLinkWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->create_invitation_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invitation_link_create_request_dto** | [**InvitationLinkCreateRequestDto**](InvitationLinkCreateRequestDto.md) |  | [optional] |

### Return type

[**InvitationLinkWrapper**](InvitationLinkWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_invitation_link

> <StringWrapper> delete_invitation_link(opts)

Deletes an invitation link.

Ensures that the current user has permission to delete the specified invitation link.  Throws security or not-found exceptions if required conditions are not met.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-invitation-link/).

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

api_instance = DocspaceApiSdk::Portal::UsersApi.new
opts = {
  invitation_link_delete_request_dto: DocspaceApiSdk::InvitationLinkDeleteRequestDto.new({id: '00000000-0000-0000-0000-000000000000'}) # InvitationLinkDeleteRequestDto | The data transfer object containing the details of the invitation link to be deleted.
}

begin
  # Deletes an invitation link.
  result = api_instance.delete_invitation_link(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->delete_invitation_link: #{e}"
end
```

#### Using the delete_invitation_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> delete_invitation_link_with_http_info(opts)

```ruby
begin
  # Deletes an invitation link.
  data, status_code, headers = api_instance.delete_invitation_link_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->delete_invitation_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invitation_link_delete_request_dto** | [**InvitationLinkDeleteRequestDto**](InvitationLinkDeleteRequestDto.md) | The data transfer object containing the details of the invitation link to be deleted. | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_invitation_link

> <StringWrapper> get_invitation_link(employee_type)

Get an invitation link

Returns an invitation link for joining the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link/).

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

api_instance = DocspaceApiSdk::Portal::UsersApi.new
employee_type = DocspaceApiSdk::EmployeeType::ALL # EmployeeType | The type of employee role for the invitation link (DocSpaceAdmin, RoomAdmin or User).

begin
  # Get an invitation link
  result = api_instance.get_invitation_link(employee_type)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->get_invitation_link: #{e}"
end
```

#### Using the get_invitation_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> get_invitation_link_with_http_info(employee_type)

```ruby
begin
  # Get an invitation link
  data, status_code, headers = api_instance.get_invitation_link_with_http_info(employee_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->get_invitation_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_type** | **EmployeeType** | The type of employee role for the invitation link (DocSpaceAdmin, RoomAdmin or User). |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invitation_link_by_employee_type

> <InvitationLinkWrapper> get_invitation_link_by_employee_type(employee_type)

Get an invitation link

Returns an invitation link for joining the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link-by-employee-type/).

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

api_instance = DocspaceApiSdk::Portal::UsersApi.new
employee_type = DocspaceApiSdk::EmployeeType::ALL # EmployeeType | The type of employee role for the invitation link (DocSpaceAdmin, RoomAdmin or User).

begin
  # Get an invitation link
  result = api_instance.get_invitation_link_by_employee_type(employee_type)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->get_invitation_link_by_employee_type: #{e}"
end
```

#### Using the get_invitation_link_by_employee_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvitationLinkWrapper>, Integer, Hash)> get_invitation_link_by_employee_type_with_http_info(employee_type)

```ruby
begin
  # Get an invitation link
  data, status_code, headers = api_instance.get_invitation_link_by_employee_type_with_http_info(employee_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvitationLinkWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->get_invitation_link_by_employee_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_type** | **EmployeeType** | The type of employee role for the invitation link (DocSpaceAdmin, RoomAdmin or User). |  |

### Return type

[**InvitationLinkWrapper**](InvitationLinkWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portal_users_count

> <Int64Wrapper> get_portal_users_count

Get a number of portal users

Returns a number of portal users.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-users-count/).

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

api_instance = DocspaceApiSdk::Portal::UsersApi.new

begin
  # Get a number of portal users
  result = api_instance.get_portal_users_count
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->get_portal_users_count: #{e}"
end
```

#### Using the get_portal_users_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int64Wrapper>, Integer, Hash)> get_portal_users_count_with_http_info

```ruby
begin
  # Get a number of portal users
  data, status_code, headers = api_instance.get_portal_users_count_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int64Wrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->get_portal_users_count_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Int64Wrapper**](Int64Wrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_by_id

> <UserInfoWrapper> get_user_by_id(user_id)

Get a user by ID

Returns a user with the ID specified in the request from the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-by-id/).

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

api_instance = DocspaceApiSdk::Portal::UsersApi.new
user_id = '00000000-0000-0000-0000-000000000000' # String | The user ID extracted from the route parameters.

begin
  # Get a user by ID
  result = api_instance.get_user_by_id(user_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->get_user_by_id: #{e}"
end
```

#### Using the get_user_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserInfoWrapper>, Integer, Hash)> get_user_by_id_with_http_info(user_id)

```ruby
begin
  # Get a user by ID
  data, status_code, headers = api_instance.get_user_by_id_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserInfoWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->get_user_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The user ID extracted from the route parameters. |  |

### Return type

[**UserInfoWrapper**](UserInfoWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mark_gift_message_as_read

> mark_gift_message_as_read

Mark a gift message as read

Marks a gift message as read.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-gift-message-as-read/).

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

api_instance = DocspaceApiSdk::Portal::UsersApi.new

begin
  # Mark a gift message as read
  api_instance.mark_gift_message_as_read
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->mark_gift_message_as_read: #{e}"
end
```

#### Using the mark_gift_message_as_read_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> mark_gift_message_as_read_with_http_info

```ruby
begin
  # Mark a gift message as read
  data, status_code, headers = api_instance.mark_gift_message_as_read_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->mark_gift_message_as_read_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_congratulations

> send_congratulations(userid, key)

Send congratulations

Sends congratulations to the user after registering a portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-congratulations/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Portal::UsersApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID to receive the congratulatory message.
key = 'birthday' # String | The template identifier or email configuration key.

begin
  # Send congratulations
  api_instance.send_congratulations(userid, key)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->send_congratulations: #{e}"
end
```

#### Using the send_congratulations_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_congratulations_with_http_info(userid, key)

```ruby
begin
  # Send congratulations
  data, status_code, headers = api_instance.send_congratulations_with_http_info(userid, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->send_congratulations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID to receive the congratulatory message. |  |
| **key** | **String** | The template identifier or email configuration key. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_invitation_link

> <InvitationLinkWrapper> update_invitation_link(opts)

Update an invitation link

Returns an invitation link for joining the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-invitation-link/).

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

api_instance = DocspaceApiSdk::Portal::UsersApi.new
opts = {
  invitation_link_update_request_dto: DocspaceApiSdk::InvitationLinkUpdateRequestDto.new({id: '00000000-0000-0000-0000-000000000000'}) # InvitationLinkUpdateRequestDto | 
}

begin
  # Update an invitation link
  result = api_instance.update_invitation_link(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->update_invitation_link: #{e}"
end
```

#### Using the update_invitation_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvitationLinkWrapper>, Integer, Hash)> update_invitation_link_with_http_info(opts)

```ruby
begin
  # Update an invitation link
  data, status_code, headers = api_instance.update_invitation_link_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvitationLinkWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::UsersApi->update_invitation_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invitation_link_update_request_dto** | [**InvitationLinkUpdateRequestDto**](InvitationLinkUpdateRequestDto.md) |  | [optional] |

### Return type

[**InvitationLinkWrapper**](InvitationLinkWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


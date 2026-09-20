# DocspaceApiSdk::PortalUsersApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_invitation_link**](PortalUsersApi.md#create_invitation_link) | **POST** /api/2.0/portal/users/invitationlink | Create an invitation link |
| [**delete_invitation_link**](PortalUsersApi.md#delete_invitation_link) | **DELETE** /api/2.0/portal/users/invitationlink | Delete an invitation link |
| [**get_invitation_link**](PortalUsersApi.md#get_invitation_link) | **GET** /api/2.0/portal/users/invite/{employeeType} | Get a legacy invitation link |
| [**get_invitation_link_by_employee_type**](PortalUsersApi.md#get_invitation_link_by_employee_type) | **GET** /api/2.0/portal/users/invitationlink/{employeeType} | Get an invitation link by role |
| [**get_portal_users_count**](PortalUsersApi.md#get_portal_users_count) | **GET** /api/2.0/portal/userscount | Get a number of portal users |
| [**get_user_by_id**](PortalUsersApi.md#get_user_by_id) | **GET** /api/2.0/portal/users/{userID} | Get a portal user |
| [**mark_gift_message_as_read**](PortalUsersApi.md#mark_gift_message_as_read) | **POST** /api/2.0/portal/present/mark | Mark a gift message as read |
| [**send_congratulations**](PortalUsersApi.md#send_congratulations) | **POST** /api/2.0/portal/sendcongratulations | Send congratulations |
| [**update_invitation_link**](PortalUsersApi.md#update_invitation_link) | **PUT** /api/2.0/portal/users/invitationlink | Update an invitation link |


## create_invitation_link

> <InvitationLinkWrapper> create_invitation_link(opts)

Create an invitation link

Creates the portal's invitation link for one role and returns it together with the URL to share. A portal  keeps at most one link per role, so a call for a role that already has one is refused - read the existing link  with `GET api/2.0/portal/users/invitationlink/{employeeType}` and change it with  `PUT api/2.0/portal/users/invitationlink` instead. Inviting members has to be enabled for the portal  (`GET api/2.0/settings/invitationsettings`), `employeeType` has to be `DocSpaceAdmin`, `RoomAdmin` or `User`,  and `expiration`, when given, has to lie in the future and is read in the portal time zone. The caller needs  the right to add users of that role, only the portal owner may create the DocSpace administrator link, and a  link for a paying role additionally needs a free paid seat in the portal quota. The call is mutating and not  idempotent. The answer carries the `id` needed to update or delete the link, the shortened `url`,  `maxUseCount` and `currentUseCount`, `expiration` in the portal time zone - empty for a link that never  expires - and `isExpired`.

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

Delete an invitation link

Deletes the portal's invitation link with the given `id`, so the URL shared from it stops letting anyone in;  accounts that already joined through it are not touched. Inviting members has to be enabled for the portal  (`GET api/2.0/settings/invitationsettings`) and the link has to exist - a second call with the same `id` is  answered as not found. The caller needs the right to add users of the link's role, and only the portal owner  may delete the DocSpace administrator link. The call is destructive and cannot be undone: a link for the same  role has to be created again with `POST api/2.0/portal/users/invitationlink`, and it gets a new `id`, a new  URL and a `currentUseCount` that starts from zero. Nothing is returned in the body. To stop invitations  without losing the links, switch inviting members off for the whole portal with  `PUT api/2.0/settings/invitationsettings` - the links then stay stored but are refused until it is switched on  again.

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
  invitation_link_delete_request_dto: DocspaceApiSdk::InvitationLinkDeleteRequestDto.new({id: '00000000-0000-0000-0000-000000000000'}) # InvitationLinkDeleteRequestDto | 
}

begin
  # Delete an invitation link
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
  # Delete an invitation link
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
| **invitation_link_delete_request_dto** | [**InvitationLinkDeleteRequestDto**](InvitationLinkDeleteRequestDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_invitation_link

> <StringWrapper> get_invitation_link(employee_type)

Get a legacy invitation link

Deprecated - use `POST api/2.0/portal/users/invitationlink` and the neighbouring operations under that path,  which store the link and let it be read, changed and revoked. Builds a shortened URL that lets whoever opens  it join this portal with the role given in the path, and returns it as a bare string; nothing is stored, so  the link can afterwards be neither listed nor withdrawn. Inviting members has to be enabled for the portal -  `GET api/2.0/settings/invitationsettings` reports that - otherwise the call is refused. The caller needs the  right to add users of the requested role and only the portal owner may ask for a DocSpace administrator link;  a caller without that right gets an empty string instead of an error, so treat an empty answer as a refusal.  The call changes nothing on the portal and may be repeated, each time returning an equivalent link. The URL  carries a confirmation key bound to the calling account and the portal alias; it has no use limit and stops  being accepted once the portal's e-mail key lifetime has passed, seven days by default - neither of the two  can be set per link, which is what the replacement operations add.

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
employee_type = DocspaceApiSdk::EmployeeType::ALL # EmployeeType | The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` have a link; any  other role is refused. The portal keeps at most one link per role, so this value alone identifies it.

begin
  # Get a legacy invitation link
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
  # Get a legacy invitation link
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
| **employee_type** | **EmployeeType** | The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` have a link; any  other role is refused. The portal keeps at most one link per role, so this value alone identifies it. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invitation_link_by_employee_type

> <InvitationLinkWrapper> get_invitation_link_by_employee_type(employee_type)

Get an invitation link by role

Returns the portal's invitation link for one role - the URL to share, how long it lasts and how often it has  already been used. Inviting members has to be enabled for the portal  (`GET api/2.0/settings/invitationsettings`) and `employeeType` has to be `DocSpaceAdmin`, `RoomAdmin` or  `User`; the caller needs the right to add users of that role, only the portal owner may read the DocSpace  administrator link, and a link for a paying role is shown only while the portal quota still has a free paid  seat. The call is read-only and idempotent, but the `url` it returns is signed for the calling account, so two  administrators are handed two different URLs for one and the same link. A role that has no link yet is  answered with an empty body and 200 rather than a 404 - create the link with  `POST api/2.0/portal/users/invitationlink`. `expiration` is in the portal time zone and empty for a link  without a deadline, `isExpired` says whether that deadline has passed, and `currentUseCount` counts how many  accounts have already joined through the link.

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
employee_type = DocspaceApiSdk::EmployeeType::ALL # EmployeeType | The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` have a link; any  other role is refused. The portal keeps at most one link per role, so this value alone identifies it.

begin
  # Get an invitation link by role
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
  # Get an invitation link by role
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
| **employee_type** | **EmployeeType** | The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` have a link; any  other role is refused. The portal keeps at most one link per role, so this value alone identifies it. |  |

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

Returns how many accounts this portal currently has in the active state, whatever their role, so a client can  show the seat usage next to the allowance. Accounts that were invited but have not joined yet and accounts  that were disabled or removed are not counted. The caller needs the portal-settings right and is refused  without it; the call is read-only and idempotent, and the number moves as soon as an account joins, is  disabled or is deleted. The answer is a plain number, not an object. Compare it with `countUser` and  `countPaidUser` from `GET api/2.0/portal/quota` to see how much of the allowance is left, and with  `GET api/2.0/portal/quota/right` for the smallest quota that would still hold everyone. When the accounts  themselves are needed, and not only how many there are, list them with the People API instead - this operation  cannot filter by role, group or status.

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

Get a portal user

Returns one user of this portal, addressed by ID, in the shape the portal stores the account: display name,  e-mail, contacts, role and status flags, and the dates of the profile. Nothing has to be called first, and the  call is read-only and idempotent. Who may be read is decided per pair of accounts: a caller always reads their  own profile, a DocSpace administrator reads anyone, a room administrator reads anyone except a guest they have  no relation with, and a user or a guest reads nobody but themselves - a pair that is not allowed is refused.  An ID that belongs to no account of this portal and an ID of a system account are both answered as not found,  so a 404 does not tell the two apart. `userID` in the path has to be a GUID; the calling user's own profile is  easier to fetch with `GET api/2.0/people/@self`. This operation hands back the internal user record - use  `GET api/2.0/people/{userid}` for the same user in the People format, with the group, quota and access  information a client usually needs.

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
user_id = '00000000-0000-0000-0000-000000000000' # String | The portal account the operation acts on, by user ID as `GET api/2.0/people` reports it. An ID belonging to  no account of this portal and an ID of an internal system account are both answered as not found.

begin
  # Get a portal user
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
  # Get a portal user
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
| **user_id** | **String** | The portal account the operation acts on, by user ID as `GET api/2.0/people` reports it. An ID belonging to  no account of this portal and an ID of an internal system account are both answered as not found. |  |

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

Marks the open-source gift message - the notice a server installation shows about its free edition - as read  for the calling user, so the client stops displaying it. Any signed-in user may call it and nothing has to be  called first. The flag is stored per user, so marking it read for one account leaves it unread for everybody  else on the portal. The call is mutating but idempotent: repeating it changes nothing. It never fails on the  caller's behalf - a storage error is written to the portal log and the operation still answers with a success,  so the answer is no proof that the flag was saved. Nothing is returned in the body, and no operation reads the  flag back or clears it again, which makes the change effectively permanent for that user. It touches only this  one notice: portal-wide announcements and the letters the portal sends are unaffected, and other per-user  settings are stored through the operations under `api/2.0/settings`.

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

Sends the welcome letter that follows the registration of a new portal to the account named by `userid` and  switches on the second authentication factor the installation is configured to require after registration; on  a hosted portal in custom mode the registration data is mailed to the sales address as well. Open to  unauthenticated callers: in place of a token it needs `key`, the confirmation key of the sign-in link the  portal issued for that account, and that key is accepted for one hour after it was created - a wrong, foreign  or expired key answers 403 and sends nothing. Both parameters go in the query string. The call is meant to be  made once, right after registration; it is not idempotent, and every call within that hour sends the letters  again. When the installation asks for SMS or an authenticator app after registration, this call is what  enables that method for the whole portal, unless the new account is an internal test address. Nothing is  returned in the body and there is no operation that reports afterwards whether the letters were delivered.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-congratulations/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::Portal::UsersApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The account the welcome letter is addressed to, by portal user ID. The key in `key` has to have been issued  for this same account, so the pair is what authorises the call.
key = 'birthday' # String | The confirmation key from the sign-in link the portal issued for that account, which stands in for a token  here. It is accepted for one hour after it was created; a wrong, foreign or expired key answers 403 and sends  nothing.

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
| **userid** | **String** | The account the welcome letter is addressed to, by portal user ID. The key in `key` has to have been issued  for this same account, so the pair is what authorises the call. |  |
| **key** | **String** | The confirmation key from the sign-in link the portal issued for that account, which stands in for a token  here. It is accepted for one hour after it was created; a wrong, foreign or expired key answers 403 and sends  nothing. |  |

### Return type

nil (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_invitation_link

> <InvitationLinkWrapper> update_invitation_link(opts)

Update an invitation link

Changes the deadline and the use limit of an existing invitation link, addressed by its `id`. The role of a  link cannot be changed - delete it and create a link for the other role instead. Inviting members has to be  enabled for the portal (`GET api/2.0/settings/invitationsettings`), the link has to exist, and `maxUseCount`  may not be lower than the number of uses the link already has, which  `GET api/2.0/portal/users/invitationlink/{employeeType}` reports as `currentUseCount`. An `expiration` in the  past is refused; the body is applied as a whole, so omitting `expiration` clears the deadline and omitting  `maxUseCount` removes the use limit. The caller needs the right to add users of the link's role and only the  portal owner may change the DocSpace administrator link. The call is mutating, and repeating it with the same  body leaves the link as it is. The whole link comes back as it now stands, with `url` signed for the calling  account - the URL therefore differs between administrators while the link behind it is the same.

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


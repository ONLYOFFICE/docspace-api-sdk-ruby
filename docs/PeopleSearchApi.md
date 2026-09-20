# DocspaceApiSdk::PeopleSearchApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_accounts_entries_with_files_shared**](PeopleSearchApi.md#get_accounts_entries_with_files_shared) | **GET** /api/2.0/accounts/file/{id}/search | Search accounts for a file |
| [**get_accounts_entries_with_files_shared_third_party**](PeopleSearchApi.md#get_accounts_entries_with_files_shared_third_party) | **GET** /api/2.0/accounts/file/{id}/search | Search accounts for a file (third-party storage) |
| [**get_accounts_entries_with_folders_shared**](PeopleSearchApi.md#get_accounts_entries_with_folders_shared) | **GET** /api/2.0/accounts/folder/{id}/search | Search accounts for a folder |
| [**get_accounts_entries_with_folders_shared_third_party**](PeopleSearchApi.md#get_accounts_entries_with_folders_shared_third_party) | **GET** /api/2.0/accounts/folder/{id}/search | Search accounts for a folder (third-party storage) |
| [**get_accounts_entries_with_rooms_shared**](PeopleSearchApi.md#get_accounts_entries_with_rooms_shared) | **GET** /api/2.0/accounts/room/{id}/search | Search accounts for a room |
| [**get_accounts_entries_with_rooms_shared_third_party**](PeopleSearchApi.md#get_accounts_entries_with_rooms_shared_third_party) | **GET** /api/2.0/accounts/room/{id}/search | Search accounts for a room (third-party storage) |
| [**get_search**](PeopleSearchApi.md#get_search) | **GET** /api/2.0/people/@search/{query} | Search users |
| [**get_simple_by_filter**](PeopleSearchApi.md#get_simple_by_filter) | **GET** /api/2.0/people/simple/filter | Filter users in brief |
| [**get_users_with_files_shared**](PeopleSearchApi.md#get_users_with_files_shared) | **GET** /api/2.0/people/file/{id} | Search users for a file |
| [**get_users_with_files_shared_third_party**](PeopleSearchApi.md#get_users_with_files_shared_third_party) | **GET** /api/2.0/people/file/{id} | Search users for a file (third-party storage) |
| [**get_users_with_folders_shared**](PeopleSearchApi.md#get_users_with_folders_shared) | **GET** /api/2.0/people/folder/{id} | Search users for a folder |
| [**get_users_with_folders_shared_third_party**](PeopleSearchApi.md#get_users_with_folders_shared_third_party) | **GET** /api/2.0/people/folder/{id} | Search users for a folder (third-party storage) |
| [**get_users_with_room_shared**](PeopleSearchApi.md#get_users_with_room_shared) | **GET** /api/2.0/people/room/{id} | Search users for a room |
| [**get_users_with_room_shared_third_party**](PeopleSearchApi.md#get_users_with_room_shared_third_party) | **GET** /api/2.0/people/room/{id} | Search users for a room (third-party storage) |
| [**search_users_by_extended_filter**](PeopleSearchApi.md#search_users_by_extended_filter) | **GET** /api/2.0/people/filter | Filter users in detail |
| [**search_users_by_query**](PeopleSearchApi.md#search_users_by_query) | **GET** /api/2.0/people/search | Search users by query |
| [**search_users_by_status**](PeopleSearchApi.md#search_users_by_status) | **GET** /api/2.0/people/status/{status}/search | Search users by status filter |


## get_accounts_entries_with_files_shared

> <IAccountEntryArrayWrapper> get_accounts_entries_with_files_shared(id, opts)

Search accounts for a file

Searches the portal users and groups that can be given access to the file with the ID given in the route, and  reports for each of them whether it already has access to that file.  The caller has to be allowed to manage the access of that file, and the ID has to belong to an existing file,  so the operation answers 403 for a file the caller cannot share and 404 for an ID that matches nothing.  The search is read-only and needs `filterValue`: while it is empty the operation returns an empty list and a  total of 0 instead of every account, so it cannot be used to enumerate the portal.  `filterValue` is matched case-insensitively against the first name, the last name and the email; without  `filterSeparator` it is split on spaces and every term has to match, and with a separator it is split on that  separator and any term may match.  Matching groups are streamed first and users after them, both paged together by `count` and `startIndex`,  while the number of matches is reported in the total count of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-files-shared/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = 1234 # Integer | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state.
  exclude_shared: false, # Boolean | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false.
  include_shared: false, # Boolean | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set.
  invited_by_me: false, # Boolean | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type.
  count: 25, # Integer | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account.
}

begin
  # Search accounts for a file
  result = api_instance.get_accounts_entries_with_files_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_files_shared: #{e}"
end
```

#### Using the get_accounts_entries_with_files_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IAccountEntryArrayWrapper>, Integer, Hash)> get_accounts_entries_with_files_shared_with_http_info(id, opts)

```ruby
begin
  # Search accounts for a file
  data, status_code, headers = api_instance.get_accounts_entries_with_files_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IAccountEntryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_files_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. |  |
| **employee_status** | **EmployeeStatus** | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. | [optional] |
| **exclude_shared** | **Boolean** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] |
| **include_shared** | **Boolean** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] |
| **count** | **Integer** | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. | [optional] |

### Return type

[**IAccountEntryArrayWrapper**](IAccountEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts_entries_with_files_shared_third_party

> <IAccountEntryArrayWrapper> get_accounts_entries_with_files_shared_third_party(id, opts)

Search accounts for a file (third-party storage)

Searches the portal users and groups that can be given access to the file with the ID given in the route, and  reports for each of them whether it already has access to that file.  The caller has to be allowed to manage the access of that file, and the ID has to belong to an existing file,  so the operation answers 403 for a file the caller cannot share and 404 for an ID that matches nothing.  The search is read-only and needs `filterValue`: while it is empty the operation returns an empty list and a  total of 0 instead of every account, so it cannot be used to enumerate the portal.  `filterValue` is matched case-insensitively against the first name, the last name and the email; without  `filterSeparator` it is split on spaces and every term has to match, and with a separator it is split on that  separator and any term may match.  Matching groups are streamed first and users after them, both paged together by `count` and `startIndex`,  while the number of matches is reported in the total count of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-files-shared-third-party/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = '1234' # String | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state.
  exclude_shared: false, # Boolean | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false.
  include_shared: false, # Boolean | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set.
  invited_by_me: false, # Boolean | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type.
  count: 25, # Integer | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account.
}

begin
  # Search accounts for a file (third-party storage)
  result = api_instance.get_accounts_entries_with_files_shared_third_party(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_files_shared_third_party: #{e}"
end
```

#### Using the get_accounts_entries_with_files_shared_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IAccountEntryArrayWrapper>, Integer, Hash)> get_accounts_entries_with_files_shared_third_party_with_http_info(id, opts)

```ruby
begin
  # Search accounts for a file (third-party storage)
  data, status_code, headers = api_instance.get_accounts_entries_with_files_shared_third_party_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IAccountEntryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_files_shared_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. |  |
| **employee_status** | **EmployeeStatus** | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. | [optional] |
| **exclude_shared** | **Boolean** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] |
| **include_shared** | **Boolean** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] |
| **count** | **Integer** | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. | [optional] |

### Return type

[**IAccountEntryArrayWrapper**](IAccountEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts_entries_with_folders_shared

> <IAccountEntryArrayWrapper> get_accounts_entries_with_folders_shared(id, opts)

Search accounts for a folder

Searches the portal users and groups that can be given access to the folder with the ID given in the route,  and reports for each of them whether it already has access to that folder.  The caller has to be allowed to manage the access of that folder, and the ID has to belong to an existing  folder, so the operation answers 403 for a folder the caller cannot share and 404 for an ID that matches  nothing.  The search is read-only and needs `filterValue`: while it is empty the operation returns an empty list and a  total of 0 instead of every account, so it cannot be used to enumerate the portal.  `filterValue` is matched case-insensitively against the first name, the last name and the email; without  `filterSeparator` it is split on spaces and every term has to match, and with a separator it is split on that  separator and any term may match.  Matching groups are streamed first and users after them, both paged together by `count` and `startIndex`,  while the number of matches is reported in the total count of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-folders-shared/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = 1234 # Integer | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state.
  exclude_shared: false, # Boolean | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false.
  include_shared: false, # Boolean | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set.
  invited_by_me: false, # Boolean | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type.
  count: 25, # Integer | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account.
}

begin
  # Search accounts for a folder
  result = api_instance.get_accounts_entries_with_folders_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_folders_shared: #{e}"
end
```

#### Using the get_accounts_entries_with_folders_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IAccountEntryArrayWrapper>, Integer, Hash)> get_accounts_entries_with_folders_shared_with_http_info(id, opts)

```ruby
begin
  # Search accounts for a folder
  data, status_code, headers = api_instance.get_accounts_entries_with_folders_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IAccountEntryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_folders_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. |  |
| **employee_status** | **EmployeeStatus** | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. | [optional] |
| **exclude_shared** | **Boolean** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] |
| **include_shared** | **Boolean** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] |
| **count** | **Integer** | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. | [optional] |

### Return type

[**IAccountEntryArrayWrapper**](IAccountEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts_entries_with_folders_shared_third_party

> <IAccountEntryArrayWrapper> get_accounts_entries_with_folders_shared_third_party(id, opts)

Search accounts for a folder (third-party storage)

Searches the portal users and groups that can be given access to the folder with the ID given in the route,  and reports for each of them whether it already has access to that folder.  The caller has to be allowed to manage the access of that folder, and the ID has to belong to an existing  folder, so the operation answers 403 for a folder the caller cannot share and 404 for an ID that matches  nothing.  The search is read-only and needs `filterValue`: while it is empty the operation returns an empty list and a  total of 0 instead of every account, so it cannot be used to enumerate the portal.  `filterValue` is matched case-insensitively against the first name, the last name and the email; without  `filterSeparator` it is split on spaces and every term has to match, and with a separator it is split on that  separator and any term may match.  Matching groups are streamed first and users after them, both paged together by `count` and `startIndex`,  while the number of matches is reported in the total count of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-folders-shared-third-party/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = '1234' # String | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state.
  exclude_shared: false, # Boolean | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false.
  include_shared: false, # Boolean | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set.
  invited_by_me: false, # Boolean | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type.
  count: 25, # Integer | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account.
}

begin
  # Search accounts for a folder (third-party storage)
  result = api_instance.get_accounts_entries_with_folders_shared_third_party(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_folders_shared_third_party: #{e}"
end
```

#### Using the get_accounts_entries_with_folders_shared_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IAccountEntryArrayWrapper>, Integer, Hash)> get_accounts_entries_with_folders_shared_third_party_with_http_info(id, opts)

```ruby
begin
  # Search accounts for a folder (third-party storage)
  data, status_code, headers = api_instance.get_accounts_entries_with_folders_shared_third_party_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IAccountEntryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_folders_shared_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. |  |
| **employee_status** | **EmployeeStatus** | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. | [optional] |
| **exclude_shared** | **Boolean** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] |
| **include_shared** | **Boolean** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] |
| **count** | **Integer** | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. | [optional] |

### Return type

[**IAccountEntryArrayWrapper**](IAccountEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts_entries_with_rooms_shared

> <IAccountEntryArrayWrapper> get_accounts_entries_with_rooms_shared(id, opts)

Search accounts for a room

Searches the portal users and groups that can be given access to the room with the ID given in the route, and  reports for each of them whether it already has access to that room.  The caller has to be allowed to manage the access of that room, and the ID has to belong to an existing room,  so the operation answers 403 for a room the caller cannot share and 404 for an ID that matches nothing.  The search is read-only and needs `filterValue`: while it is empty the operation returns an empty list and a  total of 0 instead of every account, so it cannot be used to enumerate the portal.  `filterValue` is matched case-insensitively against the first name, the last name and the email; without  `filterSeparator` it is split on spaces and every term has to match, and with a separator it is split on that  separator and any term may match.  Matching groups are streamed first and users after them, both paged together by `count` and `startIndex`,  while the number of matches is reported in the total count of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-rooms-shared/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = 1234 # Integer | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state.
  exclude_shared: false, # Boolean | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false.
  include_shared: false, # Boolean | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set.
  invited_by_me: false, # Boolean | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type.
  count: 25, # Integer | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account.
}

begin
  # Search accounts for a room
  result = api_instance.get_accounts_entries_with_rooms_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_rooms_shared: #{e}"
end
```

#### Using the get_accounts_entries_with_rooms_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IAccountEntryArrayWrapper>, Integer, Hash)> get_accounts_entries_with_rooms_shared_with_http_info(id, opts)

```ruby
begin
  # Search accounts for a room
  data, status_code, headers = api_instance.get_accounts_entries_with_rooms_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IAccountEntryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_rooms_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. |  |
| **employee_status** | **EmployeeStatus** | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. | [optional] |
| **exclude_shared** | **Boolean** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] |
| **include_shared** | **Boolean** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] |
| **count** | **Integer** | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. | [optional] |

### Return type

[**IAccountEntryArrayWrapper**](IAccountEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts_entries_with_rooms_shared_third_party

> <IAccountEntryArrayWrapper> get_accounts_entries_with_rooms_shared_third_party(id, opts)

Search accounts for a room (third-party storage)

Searches the portal users and groups that can be given access to the room with the ID given in the route, and  reports for each of them whether it already has access to that room.  The caller has to be allowed to manage the access of that room, and the ID has to belong to an existing room,  so the operation answers 403 for a room the caller cannot share and 404 for an ID that matches nothing.  The search is read-only and needs `filterValue`: while it is empty the operation returns an empty list and a  total of 0 instead of every account, so it cannot be used to enumerate the portal.  `filterValue` is matched case-insensitively against the first name, the last name and the email; without  `filterSeparator` it is split on spaces and every term has to match, and with a separator it is split on that  separator and any term may match.  Matching groups are streamed first and users after them, both paged together by `count` and `startIndex`,  while the number of matches is reported in the total count of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-rooms-shared-third-party/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = '1234' # String | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state.
  exclude_shared: false, # Boolean | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false.
  include_shared: false, # Boolean | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set.
  invited_by_me: false, # Boolean | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type.
  count: 25, # Integer | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account.
}

begin
  # Search accounts for a room (third-party storage)
  result = api_instance.get_accounts_entries_with_rooms_shared_third_party(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_rooms_shared_third_party: #{e}"
end
```

#### Using the get_accounts_entries_with_rooms_shared_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IAccountEntryArrayWrapper>, Integer, Hash)> get_accounts_entries_with_rooms_shared_third_party_with_http_info(id, opts)

```ruby
begin
  # Search accounts for a room (third-party storage)
  data, status_code, headers = api_instance.get_accounts_entries_with_rooms_shared_third_party_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IAccountEntryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_rooms_shared_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. |  |
| **employee_status** | **EmployeeStatus** | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. | [optional] |
| **exclude_shared** | **Boolean** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] |
| **include_shared** | **Boolean** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] |
| **count** | **Integer** | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. | [optional] |

### Return type

[**IAccountEntryArrayWrapper**](IAccountEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_search

> <EmployeeFullArrayWrapper> get_search(query, opts)

Search users

Searches the active accounts of the portal by a term taken from the path, and is the same search as  `GET api/2.0/people/search`, which takes the term in the query string instead.  Only a DocSpace administrator may call it; every other account, including a room admin, gets 403.  Only accounts with the `Active` status are searched, so a pending invitation and a disabled account are never  found - use `GET api/2.0/people/filter` to search across states.  The call is read-only and is not paged: every match is streamed, without a total.  `filterBy` set to `group` turns `text` into a group ID and keeps only the members of that group, so `text`  then has to be a valid identifier.  The answer holds full profiles.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-search/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
query = 'John' # String | The term to look for, taken from the route. Only accounts with the `Active` status are searched.
opts = {
  filter_by: 'group', # String | The only recognised value is `group`, which turns `filterValue` into a group ID and keeps only the members of  that group. Any other value, and omitting the field, applies no group filter.
  filter_value: '00000000-0000-0000-0000-000000000000' # String | The group ID to keep the members of, used only when `filterBy` is `group`. It has to be a valid identifier -  a group name is not accepted.
}

begin
  # Search users
  result = api_instance.get_search(query, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_search: #{e}"
end
```

#### Using the get_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_search_with_http_info(query, opts)

```ruby
begin
  # Search users
  data, status_code, headers = api_instance.get_search_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The term to look for, taken from the route. Only accounts with the `Active` status are searched. |  |
| **filter_by** | **String** | The only recognised value is `group`, which turns `filterValue` into a group ID and keeps only the members of  that group. Any other value, and omitting the field, applies no group filter. | [optional] |
| **filter_value** | **String** | The group ID to keep the members of, used only when `filterBy` is `group`. It has to be a valid identifier -  a group name is not accepted. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_simple_by_filter

> <EmployeeArrayWrapper> get_simple_by_filter(opts)

Filter users in brief

Returns a page of portal accounts selected by the full set of account filters, with the short profile of each  of them - the identifying fields, the avatar and the display name, without the contacts, the groups or the  quota.  The caller has to be a room admin, a DocSpace admin or a People module admin; a member or a guest gets 403.  The call is read-only, paged by `count` and `startIndex`, ordered by `sortBy` and `sortOrder`, and reports  the number of matches in the total count of the response.  It accepts exactly the same filters as `GET api/2.0/people/filter` and differs only in how much of each  profile comes back, so prefer this one for pickers, mentions and any list that shows names, and switch to the  other only when the full profile is needed.  Filters combine as conditions that all have to hold, and the same interactions apply: `withoutGroup` makes  `groupId` irrelevant, `employeeType` wins over `employeeTypes`, and `area` cancels the type filters that  contradict it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-simple-by-filter/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state.
  group_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the members of this group, or excludes them when `excludeGroup` is true. It is ignored when  `withoutGroup` is set.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state.
  employee_type: DocspaceApiSdk::EmployeeType::ALL, # EmployeeType | Keeps only the accounts of this single type: `DocSpaceAdmin`, `RoomAdmin`, `User` or `Guest`. When it is  sent it wins over `employeeTypes`, and a type that contradicts `area` is dropped.
  employee_types: [0], # Array<Integer> | Keeps the accounts of any of the listed types, combined as alternatives. It is ignored when `employeeType`  is also sent.
  is_administrator: false, # Boolean | Set it to true to keep only the DocSpace administrators and the module administrators. Setting it to false  is the same as omitting it and does not exclude administrators.
  payments: DocspaceApiSdk::Payments::Paid, # Payments | Keeps only the accounts that take a paid seat when `Paid`, or only the guests and members that do not when  `Free`. Omit it to search both.
  account_login_type: DocspaceApiSdk::AccountLoginType::SSO, # AccountLoginType | Keeps only the accounts that sign in this way: `SSO`, `LDAP`, or `Standart` for an ordinary portal  password. Omit it to search all of them.
  quota_filter: DocspaceApiSdk::QuotaFilter::All, # QuotaFilter | Keeps only the accounts whose storage quota is the portal default when `Default`, or set individually when  `Custom`. `All`, which is the same as omitting the field, searches both.
  without_group: false, # Boolean | Set it to true to keep only the accounts that belong to no group at all, which makes `groupId` and  `excludeGroup` irrelevant.
  exclude_group: false, # Boolean | Inverts `groupId`: with true the members of that group are left out instead of being the only ones kept. It  has no effect without `groupId`.
  invited_by_me: false, # Boolean | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only. It also cancels the type filters that contradict  it.
  count: 25, # Integer | The size of the page. It defaults to 100, which is also the largest value the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response.
  sort_by: 'DisplayName', # String | What to order the accounts by, compared without regard to case: `FirstName`, `LastName`, `DisplayName`,  `Type`, `Email`, `Department`, `UsedSpace`, `CreatedBy` or `RegistrationDate`.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The direction of the ordering: `Ascending`, which is the default, or `Descending`.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split  the value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to apply  no text filter at all.
}

begin
  # Filter users in brief
  result = api_instance.get_simple_by_filter(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_simple_by_filter: #{e}"
end
```

#### Using the get_simple_by_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeArrayWrapper>, Integer, Hash)> get_simple_by_filter_with_http_info(opts)

```ruby
begin
  # Filter users in brief
  data, status_code, headers = api_instance.get_simple_by_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_simple_by_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_status** | **EmployeeStatus** | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] |
| **group_id** | **String** | Keeps only the members of this group, or excludes them when `excludeGroup` is true. It is ignored when  `withoutGroup` is set. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] |
| **employee_type** | **EmployeeType** | Keeps only the accounts of this single type: `DocSpaceAdmin`, `RoomAdmin`, `User` or `Guest`. When it is  sent it wins over `employeeTypes`, and a type that contradicts `area` is dropped. | [optional] |
| **employee_types** | [**Array&lt;Integer&gt;**](Integer.md) | Keeps the accounts of any of the listed types, combined as alternatives. It is ignored when `employeeType`  is also sent. | [optional] |
| **is_administrator** | **Boolean** | Set it to true to keep only the DocSpace administrators and the module administrators. Setting it to false  is the same as omitting it and does not exclude administrators. | [optional] |
| **payments** | **Payments** | Keeps only the accounts that take a paid seat when `Paid`, or only the guests and members that do not when  `Free`. Omit it to search both. | [optional] |
| **account_login_type** | **AccountLoginType** | Keeps only the accounts that sign in this way: `SSO`, `LDAP`, or `Standart` for an ordinary portal  password. Omit it to search all of them. | [optional] |
| **quota_filter** | **QuotaFilter** | Keeps only the accounts whose storage quota is the portal default when `Default`, or set individually when  `Custom`. `All`, which is the same as omitting the field, searches both. | [optional] |
| **without_group** | **Boolean** | Set it to true to keep only the accounts that belong to no group at all, which makes `groupId` and  `excludeGroup` irrelevant. | [optional] |
| **exclude_group** | **Boolean** | Inverts `groupId`: with true the members of that group are left out instead of being the only ones kept. It  has no effect without `groupId`. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only. It also cancels the type filters that contradict  it. | [optional] |
| **count** | **Integer** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] |
| **sort_by** | **String** | What to order the accounts by, compared without regard to case: `FirstName`, `LastName`, `DisplayName`,  `Type`, `Email`, `Department`, `UsedSpace`, `CreatedBy` or `RegistrationDate`. | [optional] |
| **sort_order** | **SortOrder** | The direction of the ordering: `Ascending`, which is the default, or `Descending`. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split  the value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to apply  no text filter at all. | [optional] |

### Return type

[**EmployeeArrayWrapper**](EmployeeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users_with_files_shared

> <EmployeeFullArrayWrapper> get_users_with_files_shared(id, opts)

Search users for a file

Returns the accounts that are relevant to the file with the ID given in the route, and reports for each of  them whether it already has access to that file.  The caller only needs read access to the file, not the right to manage its access, but a guest may not call  it at all; an ID that matches no file answers 404.  The call is read-only, works without a filter - leaving `filterValue` empty returns every matching account  rather than nothing - and is paged by `count` and `startIndex`, with the number of matches in the total count  of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.  A DocSpace administrator additionally sees the guests that are not related to the caller.  To search users and groups together, or to build an access dialog that needs the right to manage sharing, use  `GET api/2.0/accounts/file/{id}/search` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-files-shared/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = 1234 # Integer | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state.
  exclude_shared: false, # Boolean | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false.
  include_shared: false, # Boolean | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set.
  invited_by_me: false, # Boolean | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type.
  count: 25, # Integer | The size of the page. It defaults to 100, which is also the largest value the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to.
}

begin
  # Search users for a file
  result = api_instance.get_users_with_files_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_files_shared: #{e}"
end
```

#### Using the get_users_with_files_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_users_with_files_shared_with_http_info(id, opts)

```ruby
begin
  # Search users for a file
  data, status_code, headers = api_instance.get_users_with_files_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_files_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage. |  |
| **employee_status** | **EmployeeStatus** | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] |
| **exclude_shared** | **Boolean** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] |
| **include_shared** | **Boolean** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] |
| **count** | **Integer** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users_with_files_shared_third_party

> <EmployeeFullArrayWrapper> get_users_with_files_shared_third_party(id, opts)

Search users for a file (third-party storage)

Returns the accounts that are relevant to the file with the ID given in the route, and reports for each of  them whether it already has access to that file.  The caller only needs read access to the file, not the right to manage its access, but a guest may not call  it at all; an ID that matches no file answers 404.  The call is read-only, works without a filter - leaving `filterValue` empty returns every matching account  rather than nothing - and is paged by `count` and `startIndex`, with the number of matches in the total count  of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.  A DocSpace administrator additionally sees the guests that are not related to the caller.  To search users and groups together, or to build an access dialog that needs the right to manage sharing, use  `GET api/2.0/accounts/file/{id}/search` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-files-shared-third-party/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = '1234' # String | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state.
  exclude_shared: false, # Boolean | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false.
  include_shared: false, # Boolean | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set.
  invited_by_me: false, # Boolean | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type.
  count: 25, # Integer | The size of the page. It defaults to 100, which is also the largest value the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to.
}

begin
  # Search users for a file (third-party storage)
  result = api_instance.get_users_with_files_shared_third_party(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_files_shared_third_party: #{e}"
end
```

#### Using the get_users_with_files_shared_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_users_with_files_shared_third_party_with_http_info(id, opts)

```ruby
begin
  # Search users for a file (third-party storage)
  data, status_code, headers = api_instance.get_users_with_files_shared_third_party_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_files_shared_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage. |  |
| **employee_status** | **EmployeeStatus** | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] |
| **exclude_shared** | **Boolean** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] |
| **include_shared** | **Boolean** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] |
| **count** | **Integer** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users_with_folders_shared

> <EmployeeFullArrayWrapper> get_users_with_folders_shared(id, opts)

Search users for a folder

Returns the accounts that are relevant to the folder with the ID given in the route, and reports for each of  them whether it already has access to that folder.  The caller only needs read access to the folder, not the right to manage its access, but a guest may not call  it at all; an ID that matches no folder answers 404.  The call is read-only, works without a filter - leaving `filterValue` empty returns every matching account  rather than nothing - and is paged by `count` and `startIndex`, with the number of matches in the total count  of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.  A DocSpace administrator additionally sees the guests that are not related to the caller.  To search users and groups together, or to build an access dialog that needs the right to manage sharing, use  `GET api/2.0/accounts/folder/{id}/search` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-folders-shared/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = 1234 # Integer | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state.
  exclude_shared: false, # Boolean | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false.
  include_shared: false, # Boolean | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set.
  invited_by_me: false, # Boolean | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type.
  count: 25, # Integer | The size of the page. It defaults to 100, which is also the largest value the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to.
}

begin
  # Search users for a folder
  result = api_instance.get_users_with_folders_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_folders_shared: #{e}"
end
```

#### Using the get_users_with_folders_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_users_with_folders_shared_with_http_info(id, opts)

```ruby
begin
  # Search users for a folder
  data, status_code, headers = api_instance.get_users_with_folders_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_folders_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage. |  |
| **employee_status** | **EmployeeStatus** | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] |
| **exclude_shared** | **Boolean** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] |
| **include_shared** | **Boolean** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] |
| **count** | **Integer** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users_with_folders_shared_third_party

> <EmployeeFullArrayWrapper> get_users_with_folders_shared_third_party(id, opts)

Search users for a folder (third-party storage)

Returns the accounts that are relevant to the folder with the ID given in the route, and reports for each of  them whether it already has access to that folder.  The caller only needs read access to the folder, not the right to manage its access, but a guest may not call  it at all; an ID that matches no folder answers 404.  The call is read-only, works without a filter - leaving `filterValue` empty returns every matching account  rather than nothing - and is paged by `count` and `startIndex`, with the number of matches in the total count  of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.  A DocSpace administrator additionally sees the guests that are not related to the caller.  To search users and groups together, or to build an access dialog that needs the right to manage sharing, use  `GET api/2.0/accounts/folder/{id}/search` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-folders-shared-third-party/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = '1234' # String | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state.
  exclude_shared: false, # Boolean | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false.
  include_shared: false, # Boolean | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set.
  invited_by_me: false, # Boolean | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type.
  count: 25, # Integer | The size of the page. It defaults to 100, which is also the largest value the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to.
}

begin
  # Search users for a folder (third-party storage)
  result = api_instance.get_users_with_folders_shared_third_party(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_folders_shared_third_party: #{e}"
end
```

#### Using the get_users_with_folders_shared_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_users_with_folders_shared_third_party_with_http_info(id, opts)

```ruby
begin
  # Search users for a folder (third-party storage)
  data, status_code, headers = api_instance.get_users_with_folders_shared_third_party_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_folders_shared_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage. |  |
| **employee_status** | **EmployeeStatus** | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] |
| **exclude_shared** | **Boolean** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] |
| **include_shared** | **Boolean** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] |
| **count** | **Integer** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users_with_room_shared

> <EmployeeFullArrayWrapper> get_users_with_room_shared(id, opts)

Search users for a room

Returns the accounts that are relevant to the room with the ID given in the route, and reports for each of  them whether it already has access to that room.  The caller only needs read access to the room, not the right to manage its access, but a guest may not call  it at all; an ID that matches no room answers 404.  The call is read-only, works without a filter - leaving `filterValue` empty returns every matching account  rather than nothing - and is paged by `count` and `startIndex`, with the number of matches in the total count  of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.  A DocSpace administrator additionally sees the guests that are not related to the caller.  To search users and groups together, or to build an access dialog that needs the right to manage sharing, use  `GET api/2.0/accounts/room/{id}/search` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-room-shared/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = 1234 # Integer | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state.
  exclude_shared: false, # Boolean | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false.
  include_shared: false, # Boolean | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set.
  invited_by_me: false, # Boolean | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type.
  count: 25, # Integer | The size of the page. It defaults to 100, which is also the largest value the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to.
}

begin
  # Search users for a room
  result = api_instance.get_users_with_room_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_room_shared: #{e}"
end
```

#### Using the get_users_with_room_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_users_with_room_shared_with_http_info(id, opts)

```ruby
begin
  # Search users for a room
  data, status_code, headers = api_instance.get_users_with_room_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_room_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage. |  |
| **employee_status** | **EmployeeStatus** | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] |
| **exclude_shared** | **Boolean** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] |
| **include_shared** | **Boolean** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] |
| **count** | **Integer** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users_with_room_shared_third_party

> <EmployeeFullArrayWrapper> get_users_with_room_shared_third_party(id, opts)

Search users for a room (third-party storage)

Returns the accounts that are relevant to the room with the ID given in the route, and reports for each of  them whether it already has access to that room.  The caller only needs read access to the room, not the right to manage its access, but a guest may not call  it at all; an ID that matches no room answers 404.  The call is read-only, works without a filter - leaving `filterValue` empty returns every matching account  rather than nothing - and is paged by `count` and `startIndex`, with the number of matches in the total count  of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.  A DocSpace administrator additionally sees the guests that are not related to the caller.  To search users and groups together, or to build an access dialog that needs the right to manage sharing, use  `GET api/2.0/accounts/room/{id}/search` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-room-shared-third-party/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = '1234' # String | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state.
  exclude_shared: false, # Boolean | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false.
  include_shared: false, # Boolean | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set.
  invited_by_me: false, # Boolean | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type.
  count: 25, # Integer | The size of the page. It defaults to 100, which is also the largest value the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to.
}

begin
  # Search users for a room (third-party storage)
  result = api_instance.get_users_with_room_shared_third_party(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_room_shared_third_party: #{e}"
end
```

#### Using the get_users_with_room_shared_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_users_with_room_shared_third_party_with_http_info(id, opts)

```ruby
begin
  # Search users for a room (third-party storage)
  data, status_code, headers = api_instance.get_users_with_room_shared_third_party_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_room_shared_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage. |  |
| **employee_status** | **EmployeeStatus** | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] |
| **exclude_shared** | **Boolean** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] |
| **include_shared** | **Boolean** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] |
| **count** | **Integer** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_users_by_extended_filter

> <EmployeeFullArrayWrapper> search_users_by_extended_filter(opts)

Filter users in detail

Returns a page of portal accounts selected by the full set of account filters, with the complete profile of  each of them.  The caller has to be a room admin, a DocSpace admin or a People module admin; a member or a guest gets 403,  and a DocSpace admin additionally sees the accounts an ordinary admin does not.  The call is read-only, paged by `count` and `startIndex`, ordered by `sortBy` and `sortOrder`, and reports  the number of matches in the total count of the response.  Filters combine as conditions that all have to hold, with three interactions worth knowing: `withoutGroup`  makes `groupId` irrelevant, `employeeType` wins over `employeeTypes` when both are sent, and `area` set to  `Guests` or `People` cancels the type filters that contradict it.  `GET api/2.0/people/simple/filter` accepts exactly the same filters and returns the short profile instead, so  use that one for pickers and lists and this one when the full profile is really needed.  It is available on an unpaid portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-extended-filter/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state.
  group_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the members of this group, or excludes them when `excludeGroup` is true. It is ignored when  `withoutGroup` is set.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state.
  employee_type: DocspaceApiSdk::EmployeeType::ALL, # EmployeeType | Keeps only the accounts of this single type: `DocSpaceAdmin`, `RoomAdmin`, `User` or `Guest`. When it is  sent it wins over `employeeTypes`, and a type that contradicts `area` is dropped.
  employee_types: [0], # Array<Integer> | Keeps the accounts of any of the listed types, combined as alternatives. It is ignored when `employeeType`  is also sent.
  is_administrator: false, # Boolean | Set it to true to keep only the DocSpace administrators and the module administrators. Setting it to false  is the same as omitting it and does not exclude administrators.
  payments: DocspaceApiSdk::Payments::Paid, # Payments | Keeps only the accounts that take a paid seat when `Paid`, or only the guests and members that do not when  `Free`. Omit it to search both.
  account_login_type: DocspaceApiSdk::AccountLoginType::SSO, # AccountLoginType | Keeps only the accounts that sign in this way: `SSO`, `LDAP`, or `Standart` for an ordinary portal  password. Omit it to search all of them.
  quota_filter: DocspaceApiSdk::QuotaFilter::All, # QuotaFilter | Keeps only the accounts whose storage quota is the portal default when `Default`, or set individually when  `Custom`. `All`, which is the same as omitting the field, searches both.
  without_group: false, # Boolean | Set it to true to keep only the accounts that belong to no group at all, which makes `groupId` and  `excludeGroup` irrelevant.
  exclude_group: false, # Boolean | Inverts `groupId`: with true the members of that group are left out instead of being the only ones kept. It  has no effect without `groupId`.
  invited_by_me: false, # Boolean | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation.
  area: DocspaceApiSdk::Area::All, # Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only. It also cancels the type filters that contradict  it.
  count: 25, # Integer | The size of the page. It defaults to 100, which is also the largest value the operation accepts.
  start_index: 0, # Integer | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response.
  sort_by: 'DisplayName', # String | What to order the accounts by, compared without regard to case: `FirstName`, `LastName`, `DisplayName`,  `Type`, `Email`, `Department`, `UsedSpace`, `CreatedBy` or `RegistrationDate`.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The direction of the ordering: `Ascending`, which is the default, or `Descending`.
  filter_separator: ',', # String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split  the value on spaces instead, in which case every term has to match.
  filter_value: 'John' # String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to apply  no text filter at all.
}

begin
  # Filter users in detail
  result = api_instance.search_users_by_extended_filter(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->search_users_by_extended_filter: #{e}"
end
```

#### Using the search_users_by_extended_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> search_users_by_extended_filter_with_http_info(opts)

```ruby
begin
  # Filter users in detail
  data, status_code, headers = api_instance.search_users_by_extended_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->search_users_by_extended_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_status** | **EmployeeStatus** | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] |
| **group_id** | **String** | Keeps only the members of this group, or excludes them when `excludeGroup` is true. It is ignored when  `withoutGroup` is set. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] |
| **employee_type** | **EmployeeType** | Keeps only the accounts of this single type: `DocSpaceAdmin`, `RoomAdmin`, `User` or `Guest`. When it is  sent it wins over `employeeTypes`, and a type that contradicts `area` is dropped. | [optional] |
| **employee_types** | [**Array&lt;Integer&gt;**](Integer.md) | Keeps the accounts of any of the listed types, combined as alternatives. It is ignored when `employeeType`  is also sent. | [optional] |
| **is_administrator** | **Boolean** | Set it to true to keep only the DocSpace administrators and the module administrators. Setting it to false  is the same as omitting it and does not exclude administrators. | [optional] |
| **payments** | **Payments** | Keeps only the accounts that take a paid seat when `Paid`, or only the guests and members that do not when  `Free`. Omit it to search both. | [optional] |
| **account_login_type** | **AccountLoginType** | Keeps only the accounts that sign in this way: `SSO`, `LDAP`, or `Standart` for an ordinary portal  password. Omit it to search all of them. | [optional] |
| **quota_filter** | **QuotaFilter** | Keeps only the accounts whose storage quota is the portal default when `Default`, or set individually when  `Custom`. `All`, which is the same as omitting the field, searches both. | [optional] |
| **without_group** | **Boolean** | Set it to true to keep only the accounts that belong to no group at all, which makes `groupId` and  `excludeGroup` irrelevant. | [optional] |
| **exclude_group** | **Boolean** | Inverts `groupId`: with true the members of that group are left out instead of being the only ones kept. It  has no effect without `groupId`. | [optional] |
| **invited_by_me** | **Boolean** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] |
| **inviter_id** | **String** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] |
| **area** | **Area** | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only. It also cancels the type filters that contradict  it. | [optional] |
| **count** | **Integer** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] |
| **sort_by** | **String** | What to order the accounts by, compared without regard to case: `FirstName`, `LastName`, `DisplayName`,  `Type`, `Email`, `Department`, `UsedSpace`, `CreatedBy` or `RegistrationDate`. | [optional] |
| **sort_order** | **SortOrder** | The direction of the ordering: `Ascending`, which is the default, or `Descending`. | [optional] |
| **filter_separator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split  the value on spaces instead, in which case every term has to match. | [optional] |
| **filter_value** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to apply  no text filter at all. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_users_by_query

> <EmployeeFullArrayWrapper> search_users_by_query(opts)

Search users by query

Searches the active accounts of the portal by a term passed in the query string, and is the same search as  `GET api/2.0/people/@search/{query}`, which takes the term in the path instead.  Only a DocSpace administrator may call it; every other account, including a room admin, gets 403.  Only accounts with the `Active` status are searched, so a pending invitation and a disabled account are never  found - use `GET api/2.0/people/filter` to search across states.  The call is read-only and is not paged: every match is streamed, without a total.  It takes the search term and nothing else - the group filter of  `GET api/2.0/people/@search/{query}` is not reachable here, because the handler forwards only `query` - so  use that operation when the result has to be narrowed to one group.  The answer holds full profiles, because the handler passes the request on to the operation that builds the  complete profile.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-query/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
opts = {
  query: 'John' # String | The term to look for. Only accounts with the `Active` status are searched, and this is the only parameter the  operation reads.
}

begin
  # Search users by query
  result = api_instance.search_users_by_query(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->search_users_by_query: #{e}"
end
```

#### Using the search_users_by_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> search_users_by_query_with_http_info(opts)

```ruby
begin
  # Search users by query
  data, status_code, headers = api_instance.search_users_by_query_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->search_users_by_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The term to look for. Only accounts with the `Active` status are searched, and this is the only parameter the  operation reads. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_users_by_status

> <EmployeeFullArrayWrapper> search_users_by_status(status, opts)

Search users by status filter

Searches the accounts that are in one particular state - the status is taken from the route - and whose name,  user name, email or contacts contain the search term.  Only a DocSpace administrator may call it; every other account, including a room admin, gets 403.  The call is read-only and is not paged: it matches in memory over every account of that status and streams  all of them, so it is meant for administrative lookups rather than for a user-facing list - use  `GET api/2.0/people/filter` when a page and a total are needed.  The term is matched as a case-insensitive substring and is required; `filterBy` set to `group` turns `text`  into a group ID and keeps only the members of that group, so `text` then has to be a valid identifier.  The answer holds full profiles, in no particular order.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-status/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
status = DocspaceApiSdk::EmployeeStatus::Active # EmployeeStatus | The account state to search in, taken from the route: `Active` for working accounts, `Terminated` for  disabled ones, `Pending` for open invitations, or `All` for every state.
opts = {
  query: 'John', # String | The term to look for, matched as a case-insensitive substring of the first name, the last name, the user  name, the email and the contacts. It is required in practice, because the search cannot run without it.
  filter_by: 'group', # String | The only recognised value is `group`, which turns `filterValue` into a group ID and keeps only the members of  that group. Any other value, and omitting the field, applies no group filter.
  filter_value: '00000000-0000-0000-0000-000000000000' # String | The group ID to keep the members of, used only when `filterBy` is `group`. It has to be a valid identifier -  a group name is not accepted.
}

begin
  # Search users by status filter
  result = api_instance.search_users_by_status(status, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->search_users_by_status: #{e}"
end
```

#### Using the search_users_by_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> search_users_by_status_with_http_info(status, opts)

```ruby
begin
  # Search users by status filter
  data, status_code, headers = api_instance.search_users_by_status_with_http_info(status, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->search_users_by_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **EmployeeStatus** | The account state to search in, taken from the route: `Active` for working accounts, `Terminated` for  disabled ones, `Pending` for open invitations, or `All` for every state. |  |
| **query** | **String** | The term to look for, matched as a case-insensitive substring of the first name, the last name, the user  name, the email and the contacts. It is required in practice, because the search cannot run without it. | [optional] |
| **filter_by** | **String** | The only recognised value is `group`, which turns `filterValue` into a group ID and keeps only the members of  that group. Any other value, and omitting the field, applies no group filter. | [optional] |
| **filter_value** | **String** | The group ID to keep the members of, used only when `filterBy` is `group`. It has to be a valid identifier -  a group name is not accepted. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


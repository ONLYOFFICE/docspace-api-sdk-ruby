# DocspaceApiSdk::FilesSharingApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**apply_external_share_password**](FilesSharingApi.md#apply_external_share_password) | **POST** /api/2.0/files/share/{key}/password | Unlock a password-protected link |
| [**change_file_owner**](FilesSharingApi.md#change_file_owner) | **POST** /api/2.0/files/owner | Change the room or file owner |
| [**get_encryption_access**](FilesSharingApi.md#get_encryption_access) | **GET** /api/2.0/files/file/{fileId}/publickeys | Get file encryption keys |
| [**get_external_share_data**](FilesSharingApi.md#get_external_share_data) | **GET** /api/2.0/files/share/{key} | Resolve an external share link |
| [**get_file_security_info**](FilesSharingApi.md#get_file_security_info) | **GET** /api/2.0/files/file/{id}/share | Get file sharing rights |
| [**get_folder_security_info**](FilesSharingApi.md#get_folder_security_info) | **GET** /api/2.0/files/folder/{id}/share | Get folder sharing rights |
| [**get_groups_members_with_file_security**](FilesSharingApi.md#get_groups_members_with_file_security) | **GET** /api/2.0/files/file/{fileId}/group/{groupId}/share | Get file access of group members |
| [**get_groups_members_with_folder_security**](FilesSharingApi.md#get_groups_members_with_folder_security) | **GET** /api/2.0/files/folder/{folderId}/group/{groupId}/share | Get folder access of group members |
| [**get_security_info**](FilesSharingApi.md#get_security_info) | **POST** /api/2.0/files/share | Get sharing rights in batch |
| [**get_shared_users**](FilesSharingApi.md#get_shared_users) | **GET** /api/2.0/files/file/{fileId}/sharedusers | Get users to mention in a file |
| [**remove_security_info**](FilesSharingApi.md#remove_security_info) | **DELETE** /api/2.0/files/share | Remove sharing rights in batch |
| [**send_editor_notify**](FilesSharingApi.md#send_editor_notify) | **POST** /api/2.0/files/file/{fileId}/sendeditornotify | Notify mentioned users |
| [**set_file_security_info**](FilesSharingApi.md#set_file_security_info) | **PUT** /api/2.0/files/file/{id}/share | Share a file |
| [**set_folder_security_info**](FilesSharingApi.md#set_folder_security_info) | **PUT** /api/2.0/files/folder/{id}/share | Share a folder |
| [**set_security_info**](FilesSharingApi.md#set_security_info) | **PUT** /api/2.0/files/share | Set sharing rights in batch |


## apply_external_share_password

> <ExternalShareWrapper> apply_external_share_password(key, external_share_request_param)

Unlock a password-protected link

Submits the password of a protected external share link and answers with the same resolved link data as  `GET api/2.0/files/share/{key}`, so this operation is called only after that one reported that a password is  required. The token in the path is the `requestToken` of the link, and the password is the one chosen by the  member who shared the entry. The call needs no authentication; a signed-in caller that may already read the  room is let through by the resolve operation itself and does not need the password at all. A correct password  is remembered for the caller, so later requests with the same token resolve without repeating it, and a wrong  one is reported in the `status` field as an invalid password rather than as an HTTP error, while the  remembered password is dropped. Attempts are counted per link and per calling address: once the portal's limit  is reached, further attempts are rejected until the block expires, which makes the operation unsuitable for  trying passwords in a loop. Nothing about the entry is changed by the call itself.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/apply-external-share-password/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
key = 'q7Ry8cQ1lZ0dP3sK2mXfA9tBnV6hJ4uE8wCz5oLg' # String | The token of the external share link, taken verbatim from the `requestToken` of a link returned by the link  operations of an entry, such as `GET api/2.0/files/rooms/{id}/link`. It is an opaque URL-safe string that  carries the link's own identifier, so it cannot be assembled by hand.
external_share_request_param = DocspaceApiSdk::ExternalShareRequestParam.new # ExternalShareRequestParam | The body of the request, holding the password to check.

begin
  # Unlock a password-protected link
  result = api_instance.apply_external_share_password(key, external_share_request_param)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->apply_external_share_password: #{e}"
end
```

#### Using the apply_external_share_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalShareWrapper>, Integer, Hash)> apply_external_share_password_with_http_info(key, external_share_request_param)

```ruby
begin
  # Unlock a password-protected link
  data, status_code, headers = api_instance.apply_external_share_password_with_http_info(key, external_share_request_param)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->apply_external_share_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The token of the external share link, taken verbatim from the `requestToken` of a link returned by the link  operations of an entry, such as `GET api/2.0/files/rooms/{id}/link`. It is an opaque URL-safe string that  carries the link's own identifier, so it cannot be assembled by hand. |  |
| **external_share_request_param** | [**ExternalShareRequestParam**](ExternalShareRequestParam.md) | The body of the request, holding the password to check. |  |

### Return type

[**ExternalShareWrapper**](ExternalShareWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_file_owner

> <FileEntryBaseArrayWrapper> change_file_owner(opts)

Change the room or file owner

Hands the ownership of the listed rooms and files over to a single account, and returns the entries as they  look afterwards. Among folders only rooms are accepted - take their identifiers from  `GET api/2.0/files/rooms`; a plain folder is refused. A file is accepted only while it lies in the portal's  common section, so a file kept inside a room or in a personal section is refused as well, and so is a file  that is locked or currently open in the editor. The new owner has to be an active account that is allowed to  manage rooms, and a private room additionally requires that this account has already set up its encryption  keys; a deactivated account, a guest or a plain member is rejected. The caller must be the creator of every  listed room, or a portal administrator. The call mutates the entries one at a time and stops at the first item  it may not touch, leaving the entries already processed changed, so a partial answer is possible; an item  whose owner is already the target account is returned untouched, which makes a repeat safe. The previous owner  keeps access to a transferred room as its manager, while a transferred file is saved as a new version authored  by the new owner. An entry that lives on a connected third-party account is quietly left out.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-file-owner/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
opts = {
  change_owner_request_dto: DocspaceApiSdk::ChangeOwnerRequestDto.new({user_id: '9924256a-739c-462b-af15-e652a3b1b6eb'}) # ChangeOwnerRequestDto | 
}

begin
  # Change the room or file owner
  result = api_instance.change_file_owner(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->change_file_owner: #{e}"
end
```

#### Using the change_file_owner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileEntryBaseArrayWrapper>, Integer, Hash)> change_file_owner_with_http_info(opts)

```ruby
begin
  # Change the room or file owner
  data, status_code, headers = api_instance.change_file_owner_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileEntryBaseArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->change_file_owner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_owner_request_dto** | [**ChangeOwnerRequestDto**](ChangeOwnerRequestDto.md) |  | [optional] |

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_encryption_access

> <EncryptionKeyArrayWrapper> get_encryption_access(file_id)

Get file encryption keys

Answers with the encryption keys that open one file kept in a private room: one entry per member who holds  rights on the file and has published keys, each carrying that member's public key, and the caller's own entry  carrying the encrypted private half as well. The private half of another member is never handed out. A member  who has not published keys yet is left out of the answer altogether, which is how a client tells that this  member cannot open the file until keys are published through `POST api/2.0/privacyroom/keys`; a member who  holds the file only through a group is not reported either, because group entries are skipped. The file has to  lie in a private room or in the encrypted section - a file kept anywhere else carries no keys and is rejected  as an unsupported request. The caller needs read access to the file and is answered with 403 otherwise, and a  file that does not exist is answered as missing. The call is read-only, and the answer changes as soon as a  member publishes or rotates keys, so read it again rather than caching it for a later session.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-access/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Get file encryption keys
  result = api_instance.get_encryption_access(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_encryption_access: #{e}"
end
```

#### Using the get_encryption_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EncryptionKeyArrayWrapper>, Integer, Hash)> get_encryption_access_with_http_info(file_id)

```ruby
begin
  # Get file encryption keys
  data, status_code, headers = api_instance.get_encryption_access_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EncryptionKeyArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_encryption_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**EncryptionKeyArrayWrapper**](EncryptionKeyArrayWrapper.md)

### Third-party storage

The same method serves an entry in a connected third-party storage, whose identifier is a string such as `sbox-42`: pass `file_id` as `String`.

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_share_data

> <ExternalShareWrapper> get_external_share_data(key, opts)

Resolve an external share link

Resolves the token of an external share link into the room or file it points at, and reports the outcome of  validating the link. The token is the `requestToken` of a link returned by the link operations of an entry,  such as `GET api/2.0/files/file/{id}/link` or `GET api/2.0/files/rooms/{id}/link`. The call needs no  authentication and answers a refused link in the `status` field rather than with an HTTP error, so that field  has to be read before anything else: a token that matches no link, and a link whose entry has been archived or  moved to the trash, both resolve as invalid; a link past its expiration date resolves as expired; a  password-protected link resolves as requiring a password, which is then submitted through  `POST api/2.0/files/share/{key}/password`; and a public link resolves as denied when the portal forbids  sharing with people outside it. The call is not read-only: for a signed-in caller the first successful  resolution puts the entry into the account's own lists, and for a visitor without an account it opens an  anonymous session that later requests with the same token reuse. Pass `fileId` or `folderId` to have an entry  inside the link's target echoed back.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-share-data/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
key = 'q7Ry8cQ1lZ0dP3sK2mXfA9tBnV6hJ4uE8wCz5oLg' # String | The token of the external share link, taken verbatim from the `requestToken` of a link returned by the link  operations of an entry, such as `GET api/2.0/files/rooms/{id}/link`. It is an opaque URL-safe string that  carries the link's own identifier, so it cannot be assembled by hand.
opts = {
  file_id: '9', # String | A file inside the room the link points at, echoed back in the answer's entity fields so a client can show what  was opened. The value is ignored when the file does not sit under the link's target, and passing it together  with a folder has no effect - the file wins.
  folder_id: '3' # String | A folder inside the room the link points at, echoed back in the answer's entity fields. It is ignored when the  folder does not sit under the link's target, and when a file is passed as well.
}

begin
  # Resolve an external share link
  result = api_instance.get_external_share_data(key, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_external_share_data: #{e}"
end
```

#### Using the get_external_share_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalShareWrapper>, Integer, Hash)> get_external_share_data_with_http_info(key, opts)

```ruby
begin
  # Resolve an external share link
  data, status_code, headers = api_instance.get_external_share_data_with_http_info(key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_external_share_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The token of the external share link, taken verbatim from the `requestToken` of a link returned by the link  operations of an entry, such as `GET api/2.0/files/rooms/{id}/link`. It is an opaque URL-safe string that  carries the link's own identifier, so it cannot be assembled by hand. |  |
| **file_id** | **String** | A file inside the room the link points at, echoed back in the answer's entity fields so a client can show what  was opened. The value is ignored when the file does not sit under the link's target, and passing it together  with a folder has no effect - the file wins. | [optional] |
| **folder_id** | **String** | A folder inside the room the link points at, echoed back in the answer's entity fields. It is ignored when the  folder does not sit under the link's target, and when a file is passed as well. | [optional] |

### Return type

[**ExternalShareWrapper**](ExternalShareWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_security_info

> <FileShareArrayWrapper> get_file_security_info(id, opts)

Get file sharing rights

Lists the accounts and groups that hold rights on one file, one entry per subject, with the level each of them  has, whether the caller may still change that level, and which of them owns the file. The owner comes first,  then room managers, groups, ordinary members, guests, and last the accounts that have not accepted their  invitation yet, each of those ranked by access level and by name. External links are left out and are listed  by `GET api/2.0/files/file/{id}/links` instead, while a PDF form kept in a form-filling room also reports the  link of that room, because the form is filled out through it. `startIndex` and `count` page through the  subjects, and their total number is reported in the response headers rather than in the body. Listing takes  the right to change the sharing of the file, which its creator, the manager of its room and a portal  administrator acting as room manager have, while inside a public room reading the file is enough; a member who  may read but not share is answered with an empty list although the header still counts the subjects, and a  caller with no access, a guest included, is refused. A file that does not exist, or was deleted permanently,  is answered as missing. The call is read-only; for several entries at once use `POST api/2.0/files/share`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
opts = {
  count: 25, # Integer | How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it.
  start_index: 0 # Integer | How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page.
}

begin
  # Get file sharing rights
  result = api_instance.get_file_security_info(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_file_security_info: #{e}"
end
```

#### Using the get_file_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> get_file_security_info_with_http_info(id, opts)

```ruby
begin
  # Get file sharing rights
  data, status_code, headers = api_instance.get_file_security_info_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_file_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |
| **count** | **Integer** | How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. | [optional] |
| **start_index** | **Integer** | How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Third-party storage

The same method serves an entry in a connected third-party storage, whose identifier is a string such as `sbox-42`: pass `id` as `String`.

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder_security_info

> <FileShareArrayWrapper> get_folder_security_info(id, opts)

Get folder sharing rights

Lists the accounts and groups that hold rights on one folder or room, one entry per subject, with the level  each of them has, whether the caller may still change that level, and which of them owns the entry. The owner  comes first, then room managers, groups, ordinary members, guests, and last the accounts that have not  accepted their invitation yet, each of those ranked by access level and by name. External links are left out  and are listed by `GET api/2.0/files/folder/{id}/links` instead. `startIndex` and `count` page through the  subjects, and their total number is reported in the response headers rather than in the body. For a room, and  for a folder inside a public room, read access is enough; any other folder is listed only to a caller who may  change its sharing, which the manager of its room and a portal administrator acting as room manager may, and a  member who may only read such a folder is answered with an empty list although the header still counts the  subjects. A caller with no access, a guest included, is refused, and a folder that does not exist is answered  as missing. The call is read-only. For a room prefer `GET api/2.0/files/rooms/{id}/share`, which filters the  same subjects by kind and by name.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
id = 10 # Integer | The folder or room the operation addresses. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.
opts = {
  count: 25, # Integer | How many entries at most to answer with, in the operations of this folder that return a list; an operation  that answers with a single object is not affected by it.
  start_index: 0 # Integer | How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page.
}

begin
  # Get folder sharing rights
  result = api_instance.get_folder_security_info(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_folder_security_info: #{e}"
end
```

#### Using the get_folder_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> get_folder_security_info_with_http_info(id, opts)

```ruby
begin
  # Get folder sharing rights
  data, status_code, headers = api_instance.get_folder_security_info_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_folder_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The folder or room the operation addresses. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string. |  |
| **count** | **Integer** | How many entries at most to answer with, in the operations of this folder that return a list; an operation  that answers with a single object is not affected by it. | [optional] |
| **start_index** | **Integer** | How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Third-party storage

The same method serves an entry in a connected third-party storage, whose identifier is a string such as `sbox-42`: pass `id` as `String`.

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups_members_with_file_security

> <GroupMemberSecurityRequestArrayWrapper> get_groups_members_with_file_security(file_id, group_id, opts)

Get file access of group members

Lists the members of one portal group together with the access each of them has on a file that group was  granted rights to: `groupAccess` is the level the group itself carries, `userAccess` is the level set on that  member alone, `overridden` says which of the two applies, `owner` marks the member who created the file, and  `canEditAccess` says whether the caller may still change that member's level. Take the group identifier from  the group entries of `GET api/2.0/files/file/{id}/share`. `startIndex` and `count` page through the members,  `filterValue` keeps only those whose first name, last name or email contains the value - the comparison is  made in lower case, so an uppercase value matches nothing - and the number of members is reported in the  response headers. Members come back ordered by first name. A group that holds no rights on this file, a file  the caller cannot read and a file that does not exist are all answered with an empty list rather than an  error, so an empty answer does not mean that the group has no members. A guest is refused. The call is  read-only.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
file_id = 10 # Integer | The file whose access is being read. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.
group_id = '9924256a-739c-462b-af15-e652a3b1b6eb' # String | The group whose members are listed. Take it from the entries of `GET api/2.0/files/file/{id}/share` that stand  for a group; a group that holds no rights on this file is answered with an empty list.
opts = {
  count: 25, # Integer | How many members at most to answer with.
  start_index: 0, # Integer | How many members to skip before answering, used together with `count` to page through a large group.
  filter_value: 'john' # String | Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing.
}

begin
  # Get file access of group members
  result = api_instance.get_groups_members_with_file_security(file_id, group_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_groups_members_with_file_security: #{e}"
end
```

#### Using the get_groups_members_with_file_security_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupMemberSecurityRequestArrayWrapper>, Integer, Hash)> get_groups_members_with_file_security_with_http_info(file_id, group_id, opts)

```ruby
begin
  # Get file access of group members
  data, status_code, headers = api_instance.get_groups_members_with_file_security_with_http_info(file_id, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupMemberSecurityRequestArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_groups_members_with_file_security_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file whose access is being read. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string. |  |
| **group_id** | **String** | The group whose members are listed. Take it from the entries of `GET api/2.0/files/file/{id}/share` that stand  for a group; a group that holds no rights on this file is answered with an empty list. |  |
| **count** | **Integer** | How many members at most to answer with. | [optional] |
| **start_index** | **Integer** | How many members to skip before answering, used together with `count` to page through a large group. | [optional] |
| **filter_value** | **String** | Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing. | [optional] |

### Return type

[**GroupMemberSecurityRequestArrayWrapper**](GroupMemberSecurityRequestArrayWrapper.md)

### Third-party storage

The same method serves an entry in a connected third-party storage, whose identifier is a string such as `sbox-42`: pass `file_id` as `String`.

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups_members_with_folder_security

> <GroupMemberSecurityRequestArrayWrapper> get_groups_members_with_folder_security(folder_id, group_id, opts)

Get folder access of group members

Lists the members of one portal group together with the access each of them has on a folder or room that group  was granted rights to: `groupAccess` is the level the group itself carries, `userAccess` is the level set on  that member alone, `overridden` says which of the two applies, `owner` marks the member who created the entry,  and `canEditAccess` says whether the caller may still change that member's level. Take the group identifier  from the group entries of `GET api/2.0/files/folder/{id}/share`. `startIndex` and `count` page through the  members, `filterValue` keeps only those whose first name, last name or email contains the value - the  comparison is made in lower case, so an uppercase value matches nothing - and the number of members is  reported in the response headers. Members come back ordered by first name. A group that holds no rights on  this folder, a folder the caller cannot read and a folder that does not exist are all answered with an empty  list rather than an error, so an empty answer does not mean that the group has no members. A guest is refused.  The call is read-only.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
folder_id = 10 # Integer | The folder or room whose access is being read. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.
group_id = '9924256a-739c-462b-af15-e652a3b1b6eb' # String | The group whose members are listed. Take it from the entries of `GET api/2.0/files/folder/{id}/share` that  stand for a group; a group that holds no rights on this folder is answered with an empty list.
opts = {
  count: 25, # Integer | How many members at most to answer with.
  start_index: 0, # Integer | How many members to skip before answering, used together with `count` to page through a large group.
  filter_value: 'john' # String | Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing.
}

begin
  # Get folder access of group members
  result = api_instance.get_groups_members_with_folder_security(folder_id, group_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_groups_members_with_folder_security: #{e}"
end
```

#### Using the get_groups_members_with_folder_security_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupMemberSecurityRequestArrayWrapper>, Integer, Hash)> get_groups_members_with_folder_security_with_http_info(folder_id, group_id, opts)

```ruby
begin
  # Get folder access of group members
  data, status_code, headers = api_instance.get_groups_members_with_folder_security_with_http_info(folder_id, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupMemberSecurityRequestArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_groups_members_with_folder_security_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder or room whose access is being read. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string. |  |
| **group_id** | **String** | The group whose members are listed. Take it from the entries of `GET api/2.0/files/folder/{id}/share` that  stand for a group; a group that holds no rights on this folder is answered with an empty list. |  |
| **count** | **Integer** | How many members at most to answer with. | [optional] |
| **start_index** | **Integer** | How many members to skip before answering, used together with `count` to page through a large group. | [optional] |
| **filter_value** | **String** | Keeps only the members whose first name, last name or email contains this value. The value is matched in lower  case, so an uppercase one finds nothing. | [optional] |

### Return type

[**GroupMemberSecurityRequestArrayWrapper**](GroupMemberSecurityRequestArrayWrapper.md)

### Third-party storage

The same method serves an entry in a connected third-party storage, whose identifier is a string such as `sbox-42`: pass `folder_id` as `String`.

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_security_info

> <FileShareArrayWrapper> get_security_info(opts)

Get sharing rights in batch

Returns who has access to the files and folders listed in the request, merged into one list of subjects, and  is the batch counterpart of `GET api/2.0/files/file/{id}/share` and `GET api/2.0/files/rooms/{id}/share`.  Identifiers come from any listing operation, such as `GET api/2.0/files/{folderId}`. The caller needs read  access to every listed entry: a single entry it cannot read makes the whole call fail instead of dropping that  entry, so the list has to be filtered beforehand. Identifiers that match nothing are skipped without an error,  and an empty list of identifiers gives an empty answer. The call is read-only. Each account or group appears  once: the caller's own record comes first, the owner's record second, and the rest are ordered by display  name. When the same subject holds different rights on the listed entries, its access is reported as the  `Varies` value instead of a real level, which means the entries have to be inspected one by one to see the  difference. Records that describe external links are included only for a caller that is allowed to read the  links of the entry.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
opts = {
  base_batch_request_dto: DocspaceApiSdk::BaseBatchRequestDto.new # BaseBatchRequestDto | 
}

begin
  # Get sharing rights in batch
  result = api_instance.get_security_info(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_security_info: #{e}"
end
```

#### Using the get_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> get_security_info_with_http_info(opts)

```ruby
begin
  # Get sharing rights in batch
  data, status_code, headers = api_instance.get_security_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_batch_request_dto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_shared_users

> <MentionWrapperArrayWrapper> get_shared_users(file_id)

Get users to mention in a file

Lists the portal members who can read the file, which is what an editor client offers when somebody types a  mention. The set holds the readers of the file plus everyone who reads it by role rather than by share - the  portal owner, the DocSpace administrators and the author of the file - while the caller themselves, the  subjects standing behind external links and deactivated accounts are left out. It is ordered by display name  as the portal renders it. A guest receives a single entry, the owner of the file, because a guest is not a  portal member and may not learn who else works on the document. The caller needs read access to the file, and  an unknown file id is reported as missing. The call only reads. A caller who reached the file through an  external link instead of an account is answered with nothing at all. For the users to offer when protecting a  document use `GET api/2.0/files/file/{fileId}/protectusers`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Get users to mention in a file
  result = api_instance.get_shared_users(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_shared_users: #{e}"
end
```

#### Using the get_shared_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MentionWrapperArrayWrapper>, Integer, Hash)> get_shared_users_with_http_info(file_id)

```ruby
begin
  # Get users to mention in a file
  data, status_code, headers = api_instance.get_shared_users_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MentionWrapperArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_shared_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**MentionWrapperArrayWrapper**](MentionWrapperArrayWrapper.md)

### Third-party storage

The same method serves an entry in a connected third-party storage, whose identifier is a string such as `sbox-42`: pass `file_id` as `String`.

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_security_info

> <BooleanWrapper> remove_security_info(opts)

Remove sharing rights in batch

Revokes the access of every account and group on the files and folders listed in the request, and clears the  entries from the caller's own favorites, recent and unread marks. The owner's own record is kept, since  removing it would take the entry away from the account that owns it, and external links survive untouched -  remove those through the link operations of the entry. The caller must be allowed to change the access of each  entry, which means the creator of the room, a portal administrator, or a member with the rights to manage it;  a caller whose only access came through an external link may use this call to drop the entry from its own  list, while a directly invited member or an unrelated account is refused. The answer is always `true` and  identifiers that match nothing are skipped silently, so a successful answer is not proof that anything was  revoked - read the rights back with `POST api/2.0/files/share`. The call is destructive and safe to repeat. To  take the rights of one account away instead of all of them, call `PUT api/2.0/files/share` with that account's  access set to `None`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
opts = {
  base_batch_request_dto: DocspaceApiSdk::BaseBatchRequestDto.new # BaseBatchRequestDto | 
}

begin
  # Remove sharing rights in batch
  result = api_instance.remove_security_info(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->remove_security_info: #{e}"
end
```

#### Using the remove_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> remove_security_info_with_http_info(opts)

```ruby
begin
  # Remove sharing rights in batch
  data, status_code, headers = api_instance.remove_security_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->remove_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_batch_request_dto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_editor_notify

> <AceShortWrapperArrayWrapper> send_editor_notify(file_id, opts)

Notify mentioned users

Emails the people named in `emails` that they were mentioned in a file, with a link that opens the file at the  place the mention sits when `actionLink` carries the anchor the editor produced. Only addresses that belong to  portal accounts are notified: an address that belongs to nobody is skipped, and the note is cut to its first  200 characters in the mail, while a `message` longer than the field allows is refused with 400. The answer is  usually empty: the access list of the file comes back when the file is encrypted, or when one of the addresses  belongs to nobody and the caller may share the file - that is then the cue to invite that person with  `PUT api/2.0/files/file/{id}/share`. The caller needs comment rights, which the creator of the file, the  manager of its room and a member invited to comment, review or edit have, while a guest or a member without  access is refused with 403; a file that does not exist answers with 404 and a file in the trash is refused.  The operation is rate-limited and answers 429 once the caller sends too many notifications. A delivery failure  is swallowed, so 200 does not prove that the mail left the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
file_id = 10 # Integer | The file the mention was made in. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.
opts = {
  mention_message_wrapper: DocspaceApiSdk::MentionMessageWrapper.new # MentionMessageWrapper | The notification to send.
}

begin
  # Notify mentioned users
  result = api_instance.send_editor_notify(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->send_editor_notify: #{e}"
end
```

#### Using the send_editor_notify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AceShortWrapperArrayWrapper>, Integer, Hash)> send_editor_notify_with_http_info(file_id, opts)

```ruby
begin
  # Notify mentioned users
  data, status_code, headers = api_instance.send_editor_notify_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AceShortWrapperArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->send_editor_notify_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file the mention was made in. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string. |  |
| **mention_message_wrapper** | [**MentionMessageWrapper**](MentionMessageWrapper.md) | The notification to send. | [optional] |

### Return type

[**AceShortWrapperArrayWrapper**](AceShortWrapperArrayWrapper.md)

### Third-party storage

The same method serves an entry in a connected third-party storage, whose identifier is a string such as `sbox-42`: pass `file_id` as `String`.

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_file_security_info

> <FileShareArrayWrapper> set_file_security_info(id, security_info_simple_request_dto)

Share a file

Grants, changes or withdraws the rights of the listed accounts and groups on one file, and answers with the  rights those subjects hold afterwards. Every element of `share` names a subject and the level it is to get,  and the level that denies everything takes the access away instead; an empty `share` changes nothing and is  answered with an empty list. A subject the caller is not allowed to share with, such as a guest who belongs to  another member, is dropped without an error, so compare the answer with what was sent. With `notify` set, each  account named is emailed about the access it received and `sharingMessage` is put into that mail with its  markup stripped, while a message longer than the field allows is rejected as an invalid request. The caller  has to be allowed to change the sharing of the file, which its creator, the manager of the room it lies in and  a portal administrator acting as room manager are; anyone else, a guest and a member with read access  included, is refused. The call is mutating and safe to repeat. For several files and folders in one request  use `PUT api/2.0/files/share`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
id = 10 # Integer | The file whose sharing is being changed. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string.
security_info_simple_request_dto = DocspaceApiSdk::SecurityInfoSimpleRequestDto.new # SecurityInfoSimpleRequestDto | The rights to apply to the file, and whether to announce them by mail.

begin
  # Share a file
  result = api_instance.set_file_security_info(id, security_info_simple_request_dto)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->set_file_security_info: #{e}"
end
```

#### Using the set_file_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> set_file_security_info_with_http_info(id, security_info_simple_request_dto)

```ruby
begin
  # Share a file
  data, status_code, headers = api_instance.set_file_security_info_with_http_info(id, security_info_simple_request_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->set_file_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The file whose sharing is being changed. A file stored on the portal is numbered, while a file in a connected  third-party account is named by an opaque string. |  |
| **security_info_simple_request_dto** | [**SecurityInfoSimpleRequestDto**](SecurityInfoSimpleRequestDto.md) | The rights to apply to the file, and whether to announce them by mail. |  |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Third-party storage

The same method serves an entry in a connected third-party storage, whose identifier is a string such as `sbox-42`: pass `id` as `String`.

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_folder_security_info

> <FileShareArrayWrapper> set_folder_security_info(id, security_info_simple_request_dto)

Share a folder

Grants, changes or withdraws the rights of the listed accounts and groups on one folder, and answers with the  rights those subjects hold afterwards. Every element of `share` names a subject and the level it is to get,  and the level that denies everything takes the access away instead; an empty `share` changes nothing and is  answered with an empty list. A subject the caller is not allowed to share with, such as a guest who belongs to  another member, is dropped without an error. With `notify` set, each account named is emailed about the access  it received and `sharingMessage` is put into that mail with its markup stripped, while a message longer than  the field allows is rejected as an invalid request. The caller has to be allowed to change the sharing of the  folder, which the manager of the room it belongs to and a portal administrator acting as room manager are;  anyone else, a guest and a member with read access included, is refused. The call is mutating and safe to  repeat. For a room use `PUT api/2.0/files/rooms/{id}/share`, which invites people by email as well.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
id = 10 # Integer | The folder whose sharing is being changed. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string.
security_info_simple_request_dto = DocspaceApiSdk::SecurityInfoSimpleRequestDto.new # SecurityInfoSimpleRequestDto | The rights to apply to the folder, and whether to announce them by mail.

begin
  # Share a folder
  result = api_instance.set_folder_security_info(id, security_info_simple_request_dto)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->set_folder_security_info: #{e}"
end
```

#### Using the set_folder_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> set_folder_security_info_with_http_info(id, security_info_simple_request_dto)

```ruby
begin
  # Share a folder
  data, status_code, headers = api_instance.set_folder_security_info_with_http_info(id, security_info_simple_request_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->set_folder_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The folder whose sharing is being changed. A folder stored on the portal is numbered, while a folder in a  connected third-party account is named by an opaque string. |  |
| **security_info_simple_request_dto** | [**SecurityInfoSimpleRequestDto**](SecurityInfoSimpleRequestDto.md) | The rights to apply to the folder, and whether to announce them by mail. |  |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Third-party storage

The same method serves an entry in a connected third-party storage, whose identifier is a string such as `sbox-42`: pass `id` as `String`.

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_security_info

> <FileShareArrayWrapper> set_security_info(opts)

Set sharing rights in batch

Grants, changes or withdraws the access of the listed accounts and groups on every file and folder named in  the request at once, and returns the resulting rights. Entry identifiers come from a listing operation, and  the accounts and groups come from the portal's own account and group lists; an access of `None` withdraws the  rights instead of granting them. The caller must be allowed to change the access of every listed entry - the  creator of the room, a member with the rights to manage it, or a portal administrator - and a read-only member  or a guest is refused even when the payload changes nothing. A subject the caller is not allowed to share  with, such as a guest that belongs to another member, is skipped without an error, and an empty `share`  collection makes the call do nothing and answer with an empty list. Repeating the same request leaves the same  rights in place. The answer holds one record per listed subject for each entry that was actually processed, so  it is shorter than the request when something was skipped and worth comparing against it. For a single room  prefer `PUT api/2.0/files/rooms/{id}/share`, which also invites members by email.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
opts = {
  security_info_request_dto: DocspaceApiSdk::SecurityInfoRequestDto.new # SecurityInfoRequestDto | 
}

begin
  # Set sharing rights in batch
  result = api_instance.set_security_info(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->set_security_info: #{e}"
end
```

#### Using the set_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> set_security_info_with_http_info(opts)

```ruby
begin
  # Set sharing rights in batch
  data, status_code, headers = api_instance.set_security_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->set_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_info_request_dto** | [**SecurityInfoRequestDto**](SecurityInfoRequestDto.md) |  | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


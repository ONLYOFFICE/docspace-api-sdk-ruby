# DocspaceApiSdk::RoomsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_room_tags**](RoomsApi.md#add_room_tags) | **PUT** /api/2.0/files/rooms/{id}/tags | Add the room tags |
| [**archive_room**](RoomsApi.md#archive_room) | **PUT** /api/2.0/files/rooms/{id}/archive | Archive a room |
| [**change_room_cover**](RoomsApi.md#change_room_cover) | **POST** /api/2.0/files/rooms/{id}/cover | Change the room cover |
| [**create_room**](RoomsApi.md#create_room) | **POST** /api/2.0/files/rooms | Create a room |
| [**create_room_from_template**](RoomsApi.md#create_room_from_template) | **POST** /api/2.0/files/rooms/fromtemplate | Create a room from the template |
| [**create_room_logo**](RoomsApi.md#create_room_logo) | **POST** /api/2.0/files/rooms/{id}/logo | Create a room logo |
| [**create_room_tag**](RoomsApi.md#create_room_tag) | **POST** /api/2.0/files/tags | Create a room tag |
| [**create_room_template**](RoomsApi.md#create_room_template) | **POST** /api/2.0/files/roomtemplate | Start creating room template |
| [**create_room_third_party**](RoomsApi.md#create_room_third_party) | **POST** /api/2.0/files/rooms/thirdparty/{id} | Create a third-party room |
| [**delete_custom_tags**](RoomsApi.md#delete_custom_tags) | **DELETE** /api/2.0/files/tags | Delete the custom room tags |
| [**delete_room**](RoomsApi.md#delete_room) | **DELETE** /api/2.0/files/rooms/{id} | Remove a room |
| [**delete_room_logo**](RoomsApi.md#delete_room_logo) | **DELETE** /api/2.0/files/rooms/{id}/logo | Remove a room logo |
| [**delete_room_tags**](RoomsApi.md#delete_room_tags) | **DELETE** /api/2.0/files/rooms/{id}/tags | Remove the room tags |
| [**get_external_db_sync_status**](RoomsApi.md#get_external_db_sync_status) | **GET** /api/2.0/files/rooms/{id}/externaldbsync | Get external DB sync status |
| [**get_new_room_items**](RoomsApi.md#get_new_room_items) | **GET** /api/2.0/files/rooms/{id}/news | Get the new room items |
| [**get_public_settings**](RoomsApi.md#get_public_settings) | **GET** /api/2.0/files/roomtemplate/{id}/public | Get public settings |
| [**get_room_covers**](RoomsApi.md#get_room_covers) | **GET** /api/2.0/files/rooms/covers | Get covers |
| [**get_room_creating_status**](RoomsApi.md#get_room_creating_status) | **GET** /api/2.0/files/rooms/fromtemplate/status | Get the room creation progress |
| [**get_room_index_export**](RoomsApi.md#get_room_index_export) | **GET** /api/2.0/files/rooms/indexexport | Get the room index export |
| [**get_room_info**](RoomsApi.md#get_room_info) | **GET** /api/2.0/files/rooms/{id} | Get room information |
| [**get_room_links**](RoomsApi.md#get_room_links) | **GET** /api/2.0/files/rooms/{id}/links | Get the room links |
| [**get_room_security_info**](RoomsApi.md#get_room_security_info) | **GET** /api/2.0/files/rooms/{id}/share | Get the room access rights |
| [**get_room_tags_info**](RoomsApi.md#get_room_tags_info) | **GET** /api/2.0/files/tags | Get the room tags |
| [**get_room_template_creating_status**](RoomsApi.md#get_room_template_creating_status) | **GET** /api/2.0/files/roomtemplate/status | Get status of room template creation |
| [**get_rooms_folder**](RoomsApi.md#get_rooms_folder) | **GET** /api/2.0/files/rooms | Get rooms |
| [**get_rooms_new_items**](RoomsApi.md#get_rooms_new_items) | **GET** /api/2.0/files/rooms/news | Get the room new items |
| [**get_rooms_primary_external_link**](RoomsApi.md#get_rooms_primary_external_link) | **GET** /api/2.0/files/rooms/{id}/link | Get the room primary external link |
| [**has_tag_links**](RoomsApi.md#has_tag_links) | **GET** /api/2.0/files/tags/{tagName}/haslinks | Has tag links |
| [**pin_room**](RoomsApi.md#pin_room) | **PUT** /api/2.0/files/rooms/{id}/pin | Pin a room |
| [**reorder_room**](RoomsApi.md#reorder_room) | **PUT** /api/2.0/files/rooms/{id}/reorder | Reorder the room |
| [**resend_email_invitations**](RoomsApi.md#resend_email_invitations) | **POST** /api/2.0/files/rooms/{id}/resend | Resend the room invitations |
| [**set_public_settings**](RoomsApi.md#set_public_settings) | **PUT** /api/2.0/files/roomtemplate/public | Set public settings |
| [**set_room_link**](RoomsApi.md#set_room_link) | **PUT** /api/2.0/files/rooms/{id}/links | Set the room external or invitation link |
| [**set_room_security**](RoomsApi.md#set_room_security) | **PUT** /api/2.0/files/rooms/{id}/share | Set the room access rights |
| [**start_external_db_sync**](RoomsApi.md#start_external_db_sync) | **POST** /api/2.0/files/rooms/{id}/externaldbsync | Start external DB sync |
| [**start_room_index_export**](RoomsApi.md#start_room_index_export) | **POST** /api/2.0/files/rooms/{id}/indexexport | Start the room index export |
| [**terminate_room_index_export**](RoomsApi.md#terminate_room_index_export) | **DELETE** /api/2.0/files/rooms/indexexport | Terminate the room index export |
| [**unarchive_room**](RoomsApi.md#unarchive_room) | **PUT** /api/2.0/files/rooms/{id}/unarchive | Unarchive a room |
| [**unpin_room**](RoomsApi.md#unpin_room) | **PUT** /api/2.0/files/rooms/{id}/unpin | Unpin a room |
| [**update_room**](RoomsApi.md#update_room) | **PUT** /api/2.0/files/rooms/{id} | Update a room |
| [**update_room_tag**](RoomsApi.md#update_room_tag) | **PUT** /api/2.0/files/tags | Update tag |
| [**upload_room_logo**](RoomsApi.md#upload_room_logo) | **POST** /api/2.0/files/logos | Upload a room logo image |


## add_room_tags

> <FolderIntegerWrapper> add_room_tags(id, opts)

Add the room tags

Adds the tags to a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-tags/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room Id.
opts = {
  batch_tags_request_dto: DocspaceApiSdk::BatchTagsRequestDto.new({names: ["tag1", "tag2", "tag3"]}) # BatchTagsRequestDto | The parameters for managing tags.
}

begin
  # Add the room tags
  result = api_instance.add_room_tags(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->add_room_tags: #{e}"
end
```

#### Using the add_room_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> add_room_tags_with_http_info(id, opts)

```ruby
begin
  # Add the room tags
  data, status_code, headers = api_instance.add_room_tags_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->add_room_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room Id. |  |
| **batch_tags_request_dto** | [**BatchTagsRequestDto**](BatchTagsRequestDto.md) | The parameters for managing tags. | [optional] |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## archive_room

> <FileOperationWrapper> archive_room(id, opts)

Archive a room

Moves a room with the ID specified in the request to the Archive section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/archive-room/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.
opts = {
  archive_room_request: DocspaceApiSdk::ArchiveRoomRequest.new # ArchiveRoomRequest | The parameters for archiving a room.
}

begin
  # Archive a room
  result = api_instance.archive_room(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->archive_room: #{e}"
end
```

#### Using the archive_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationWrapper>, Integer, Hash)> archive_room_with_http_info(id, opts)

```ruby
begin
  # Archive a room
  data, status_code, headers = api_instance.archive_room_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->archive_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **archive_room_request** | [**ArchiveRoomRequest**](ArchiveRoomRequest.md) | The parameters for archiving a room. | [optional] |

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_room_cover

> <FolderIntegerWrapper> change_room_cover(id, cover_request_dto)

Change the room cover

Changes a cover of a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-cover/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.
cover_request_dto = DocspaceApiSdk::CoverRequestDto.new # CoverRequestDto | The request parameters to change the room cover.

begin
  # Change the room cover
  result = api_instance.change_room_cover(id, cover_request_dto)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->change_room_cover: #{e}"
end
```

#### Using the change_room_cover_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> change_room_cover_with_http_info(id, cover_request_dto)

```ruby
begin
  # Change the room cover
  data, status_code, headers = api_instance.change_room_cover_with_http_info(id, cover_request_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->change_room_cover_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **cover_request_dto** | [**CoverRequestDto**](CoverRequestDto.md) | The request parameters to change the room cover. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_room

> <FolderIntegerWrapper> create_room(opts)

Create a room

Creates a room in the Rooms section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
opts = {
  create_room_request_dto: DocspaceApiSdk::CreateRoomRequestDto.new({title: 'My Room', room_type: DocspaceApiSdk::RoomType::FillingFormsRoom}) # CreateRoomRequestDto | 
}

begin
  # Create a room
  result = api_instance.create_room(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->create_room: #{e}"
end
```

#### Using the create_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> create_room_with_http_info(opts)

```ruby
begin
  # Create a room
  data, status_code, headers = api_instance.create_room_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->create_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_room_request_dto** | [**CreateRoomRequestDto**](CreateRoomRequestDto.md) |  | [optional] |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_room_from_template

> <RoomFromTemplateStatusWrapper> create_room_from_template(opts)

Create a room from the template

Creates a room in the Rooms section based on the template.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-from-template/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
opts = {
  create_room_from_template_dto: DocspaceApiSdk::CreateRoomFromTemplateDto.new({template_id: 1, title: 'My Room From Template'}) # CreateRoomFromTemplateDto | 
}

begin
  # Create a room from the template
  result = api_instance.create_room_from_template(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->create_room_from_template: #{e}"
end
```

#### Using the create_room_from_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomFromTemplateStatusWrapper>, Integer, Hash)> create_room_from_template_with_http_info(opts)

```ruby
begin
  # Create a room from the template
  data, status_code, headers = api_instance.create_room_from_template_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomFromTemplateStatusWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->create_room_from_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_room_from_template_dto** | [**CreateRoomFromTemplateDto**](CreateRoomFromTemplateDto.md) |  | [optional] |

### Return type

[**RoomFromTemplateStatusWrapper**](RoomFromTemplateStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_room_logo

> <FolderIntegerWrapper> create_room_logo(id, logo_request)

Create a room logo

Creates a logo for a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-logo/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.
logo_request = DocspaceApiSdk::LogoRequest.new({tmp_file: '/tmp/logo.png'}) # LogoRequest | The logo request parameters.

begin
  # Create a room logo
  result = api_instance.create_room_logo(id, logo_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->create_room_logo: #{e}"
end
```

#### Using the create_room_logo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> create_room_logo_with_http_info(id, logo_request)

```ruby
begin
  # Create a room logo
  data, status_code, headers = api_instance.create_room_logo_with_http_info(id, logo_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->create_room_logo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **logo_request** | [**LogoRequest**](LogoRequest.md) | The logo request parameters. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_room_tag

> <StringWrapper> create_room_tag(opts)

Create a room tag

Creates a custom room tag with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-tag/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
opts = {
  create_tag_request_dto: DocspaceApiSdk::CreateTagRequestDto.new({name: 'Important'}) # CreateTagRequestDto | 
}

begin
  # Create a room tag
  result = api_instance.create_room_tag(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->create_room_tag: #{e}"
end
```

#### Using the create_room_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> create_room_tag_with_http_info(opts)

```ruby
begin
  # Create a room tag
  data, status_code, headers = api_instance.create_room_tag_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->create_room_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_tag_request_dto** | [**CreateTagRequestDto**](CreateTagRequestDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_room_template

> <RoomTemplateStatusWrapper> create_room_template(opts)

Start creating room template

Starts creating the room template.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-template/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
opts = {
  room_template_dto: DocspaceApiSdk::RoomTemplateDto.new({room_id: 1}) # RoomTemplateDto | 
}

begin
  # Start creating room template
  result = api_instance.create_room_template(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->create_room_template: #{e}"
end
```

#### Using the create_room_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomTemplateStatusWrapper>, Integer, Hash)> create_room_template_with_http_info(opts)

```ruby
begin
  # Start creating room template
  data, status_code, headers = api_instance.create_room_template_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomTemplateStatusWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->create_room_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_template_dto** | [**RoomTemplateDto**](RoomTemplateDto.md) |  | [optional] |

### Return type

[**RoomTemplateStatusWrapper**](RoomTemplateStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_room_third_party

> <FolderStringWrapper> create_room_third_party(id, create_third_party_room)

Create a third-party room

Creates a room in the Rooms section stored in a third-party storage.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-room-third-party/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 'folder-123-abc' # String | The ID of the folder in the third-party storage in which the contents of the room will be stored.
create_third_party_room = DocspaceApiSdk::CreateThirdPartyRoom.new({title: 'My Third-Party Room', room_type: DocspaceApiSdk::RoomType::FillingFormsRoom}) # CreateThirdPartyRoom | The third-party room information.

begin
  # Create a third-party room
  result = api_instance.create_room_third_party(id, create_third_party_room)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->create_room_third_party: #{e}"
end
```

#### Using the create_room_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderStringWrapper>, Integer, Hash)> create_room_third_party_with_http_info(id, create_third_party_room)

```ruby
begin
  # Create a third-party room
  data, status_code, headers = api_instance.create_room_third_party_with_http_info(id, create_third_party_room)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderStringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->create_room_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the folder in the third-party storage in which the contents of the room will be stored. |  |
| **create_third_party_room** | [**CreateThirdPartyRoom**](CreateThirdPartyRoom.md) | The third-party room information. |  |

### Return type

[**FolderStringWrapper**](FolderStringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_custom_tags

> delete_custom_tags(opts)

Delete the custom room tags

Deletes a bunch of custom tags specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-custom-tags/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
opts = {
  batch_tags_request_dto: DocspaceApiSdk::BatchTagsRequestDto.new({names: ["tag1", "tag2", "tag3"]}) # BatchTagsRequestDto | 
}

begin
  # Delete the custom room tags
  api_instance.delete_custom_tags(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->delete_custom_tags: #{e}"
end
```

#### Using the delete_custom_tags_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_custom_tags_with_http_info(opts)

```ruby
begin
  # Delete the custom room tags
  data, status_code, headers = api_instance.delete_custom_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->delete_custom_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_tags_request_dto** | [**BatchTagsRequestDto**](BatchTagsRequestDto.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_room

> <FileOperationWrapper> delete_room(id, delete_room_request)

Remove a room

Removes a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 10 # Integer | The room ID.
delete_room_request = DocspaceApiSdk::DeleteRoomRequest.new # DeleteRoomRequest | The parameters for deleting a room.

begin
  # Remove a room
  result = api_instance.delete_room(id, delete_room_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->delete_room: #{e}"
end
```

#### Using the delete_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationWrapper>, Integer, Hash)> delete_room_with_http_info(id, delete_room_request)

```ruby
begin
  # Remove a room
  data, status_code, headers = api_instance.delete_room_with_http_info(id, delete_room_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->delete_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **delete_room_request** | [**DeleteRoomRequest**](DeleteRoomRequest.md) | The parameters for deleting a room. |  |

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_room_logo

> <FolderIntegerWrapper> delete_room_logo(id)

Remove a room logo

Removes a logo from a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-logo/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.

begin
  # Remove a room logo
  result = api_instance.delete_room_logo(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->delete_room_logo: #{e}"
end
```

#### Using the delete_room_logo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> delete_room_logo_with_http_info(id)

```ruby
begin
  # Remove a room logo
  data, status_code, headers = api_instance.delete_room_logo_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->delete_room_logo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_room_tags

> <FolderIntegerWrapper> delete_room_tags(id, opts)

Remove the room tags

Removes the tags from a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-tags/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room Id.
opts = {
  batch_tags_request_dto: DocspaceApiSdk::BatchTagsRequestDto.new({names: ["tag1", "tag2", "tag3"]}) # BatchTagsRequestDto | The parameters for managing tags.
}

begin
  # Remove the room tags
  result = api_instance.delete_room_tags(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->delete_room_tags: #{e}"
end
```

#### Using the delete_room_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> delete_room_tags_with_http_info(id, opts)

```ruby
begin
  # Remove the room tags
  data, status_code, headers = api_instance.delete_room_tags_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->delete_room_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room Id. |  |
| **batch_tags_request_dto** | [**BatchTagsRequestDto**](BatchTagsRequestDto.md) | The parameters for managing tags. | [optional] |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_external_db_sync_status

> <ExternalDbSyncTaskWrapper> get_external_db_sync_status(id)

Get external DB sync status

Returns the status of the external DB synchronization task for the specified filling forms room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-db-sync-status/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.

begin
  # Get external DB sync status
  result = api_instance.get_external_db_sync_status(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_external_db_sync_status: #{e}"
end
```

#### Using the get_external_db_sync_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalDbSyncTaskWrapper>, Integer, Hash)> get_external_db_sync_status_with_http_info(id)

```ruby
begin
  # Get external DB sync status
  data, status_code, headers = api_instance.get_external_db_sync_status_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalDbSyncTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_external_db_sync_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |

### Return type

[**ExternalDbSyncTaskWrapper**](ExternalDbSyncTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_new_room_items

> <NewItemsFileEntryBaseArrayWrapper> get_new_room_items(id)

Get the new room items

Returns a list of all the new items from a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-room-items/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.

begin
  # Get the new room items
  result = api_instance.get_new_room_items(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_new_room_items: #{e}"
end
```

#### Using the get_new_room_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewItemsFileEntryBaseArrayWrapper>, Integer, Hash)> get_new_room_items_with_http_info(id)

```ruby
begin
  # Get the new room items
  data, status_code, headers = api_instance.get_new_room_items_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewItemsFileEntryBaseArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_new_room_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |

### Return type

[**NewItemsFileEntryBaseArrayWrapper**](NewItemsFileEntryBaseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_public_settings

> <BooleanWrapper> get_public_settings(id)

Get public settings

Returns the public settings of the room template with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-settings/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room template ID.

begin
  # Get public settings
  result = api_instance.get_public_settings(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_public_settings: #{e}"
end
```

#### Using the get_public_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> get_public_settings_with_http_info(id)

```ruby
begin
  # Get public settings
  data, status_code, headers = api_instance.get_public_settings_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_public_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room template ID. |  |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_covers

> <CoversResultArrayWrapper> get_room_covers

Get covers

Returns a list of all covers.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-covers/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new

begin
  # Get covers
  result = api_instance.get_room_covers
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_covers: #{e}"
end
```

#### Using the get_room_covers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoversResultArrayWrapper>, Integer, Hash)> get_room_covers_with_http_info

```ruby
begin
  # Get covers
  data, status_code, headers = api_instance.get_room_covers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoversResultArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_covers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CoversResultArrayWrapper**](CoversResultArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_creating_status

> <RoomFromTemplateStatusWrapper> get_room_creating_status

Get the room creation progress

Returns the progress of creating a room from the template.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-creating-status/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new

begin
  # Get the room creation progress
  result = api_instance.get_room_creating_status
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_creating_status: #{e}"
end
```

#### Using the get_room_creating_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomFromTemplateStatusWrapper>, Integer, Hash)> get_room_creating_status_with_http_info

```ruby
begin
  # Get the room creation progress
  data, status_code, headers = api_instance.get_room_creating_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomFromTemplateStatusWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_creating_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RoomFromTemplateStatusWrapper**](RoomFromTemplateStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_index_export

> <DocumentBuilderTaskWrapper> get_room_index_export

Get the room index export

Returns the room index export.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-index-export/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new

begin
  # Get the room index export
  result = api_instance.get_room_index_export
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_index_export: #{e}"
end
```

#### Using the get_room_index_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> get_room_index_export_with_http_info

```ruby
begin
  # Get the room index export
  data, status_code, headers = api_instance.get_room_index_export_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_index_export_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_info

> <FolderIntegerWrapper> get_room_info(id)

Get room information

Returns the room information.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-info/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.

begin
  # Get room information
  result = api_instance.get_room_info(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_info: #{e}"
end
```

#### Using the get_room_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> get_room_info_with_http_info(id)

```ruby
begin
  # Get room information
  data, status_code, headers = api_instance.get_room_info_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_links

> <FileShareArrayWrapper> get_room_links(id, opts)

Get the room links

Returns the links of the room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-links/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.
opts = {
  type: DocspaceApiSdk::LinkType::Invitation # LinkType | The link type.
}

begin
  # Get the room links
  result = api_instance.get_room_links(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_links: #{e}"
end
```

#### Using the get_room_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> get_room_links_with_http_info(id, opts)

```ruby
begin
  # Get the room links
  data, status_code, headers = api_instance.get_room_links_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **type** | **LinkType** | The link type. | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_security_info

> <FileShareArrayWrapper> get_room_security_info(id, opts)

Get the room access rights

Returns the access rights of a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-security-info/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.
opts = {
  filter_type: DocspaceApiSdk::ShareFilterType::UserOrGroup, # ShareFilterType | The filter type of the access rights.
  count: 25, # Integer | The number of items to be retrieved or processed.
  start_index: 0, # Integer | The starting index of the items to retrieve in a paginated request.
  filter_value: 'Sample filter' # String | The text filter value used for filtering room security information.
}

begin
  # Get the room access rights
  result = api_instance.get_room_security_info(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_security_info: #{e}"
end
```

#### Using the get_room_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> get_room_security_info_with_http_info(id, opts)

```ruby
begin
  # Get the room access rights
  data, status_code, headers = api_instance.get_room_security_info_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **filter_type** | **ShareFilterType** | The filter type of the access rights. | [optional] |
| **count** | **Integer** | The number of items to be retrieved or processed. | [optional] |
| **start_index** | **Integer** | The starting index of the items to retrieve in a paginated request. | [optional] |
| **filter_value** | **String** | The text filter value used for filtering room security information. | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_tags_info

> <ObjectArrayWrapper> get_room_tags_info(opts)

Get the room tags

Returns a list of custom tags.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-tags-info/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
opts = {
  count: 25, # Integer | Gets or sets the number of tag results to retrieve.  This property specifies the maximum amount of tag data to be included in the result set.
  start_index: 0, # Integer | Represents the starting index from which the tags' information will be retrieved.  This property is used to define the offset for pagination when retrieving a list of tags. It determines  the point in the data set from which the retrieval begins.
  filter_value: 'My Document' # String | Gets or sets the text value used for searching tags.  This property is typically used as a filter value when retrieving tag information.
}

begin
  # Get the room tags
  result = api_instance.get_room_tags_info(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_tags_info: #{e}"
end
```

#### Using the get_room_tags_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectArrayWrapper>, Integer, Hash)> get_room_tags_info_with_http_info(opts)

```ruby
begin
  # Get the room tags
  data, status_code, headers = api_instance.get_room_tags_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_tags_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Gets or sets the number of tag results to retrieve.  This property specifies the maximum amount of tag data to be included in the result set. | [optional] |
| **start_index** | **Integer** | Represents the starting index from which the tags' information will be retrieved.  This property is used to define the offset for pagination when retrieving a list of tags. It determines  the point in the data set from which the retrieval begins. | [optional] |
| **filter_value** | **String** | Gets or sets the text value used for searching tags.  This property is typically used as a filter value when retrieving tag information. | [optional] |

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_template_creating_status

> <RoomTemplateStatusWrapper> get_room_template_creating_status

Get status of room template creation

Returns the progress status of the room template creation process.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-template-creating-status/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new

begin
  # Get status of room template creation
  result = api_instance.get_room_template_creating_status
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_template_creating_status: #{e}"
end
```

#### Using the get_room_template_creating_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomTemplateStatusWrapper>, Integer, Hash)> get_room_template_creating_status_with_http_info

```ruby
begin
  # Get status of room template creation
  data, status_code, headers = api_instance.get_room_template_creating_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomTemplateStatusWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_room_template_creating_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RoomTemplateStatusWrapper**](RoomTemplateStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rooms_folder

> <FolderContentIntegerWrapper> get_rooms_folder(opts)

Get rooms

Returns the contents of the Rooms section by the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-folder/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
opts = {
  type: [1], # Array<RoomType> | The filter by room type.
  subject_id: '00000000-0000-0000-0000-000000000000', # String | The filter by user ID.
  subject_owner_id: '00000000-0000-0000-0000-000000000000', # String | The filter by room owner ID.
  search_area: DocspaceApiSdk::SearchArea::Active, # SearchArea | The room search area (Active, Archive, Any, Recent by links).
  without_tags: false, # Boolean | Specifies whether to search by tags or not.
  tags: 'tag1', # String | The tags in the serialized format.
  exclude_subject: false, # Boolean | Specifies whether to exclude search by user or group ID.
  provider: DocspaceApiSdk::ProviderFilter::None, # ProviderFilter | The filter by provider name (None, Box, DropBox, GoogleDrive, kDrive, OneDrive, SharePoint, WebDav, Yandex, Storage).
  subject_filter: DocspaceApiSdk::SubjectFilter::Owner, # SubjectFilter | The filter by user (Owner - 0, Member - 1).
  quota_filter: DocspaceApiSdk::QuotaFilter::All, # QuotaFilter | The filter by quota (All - 0, Default - 1, Custom - 2).
  storage_filter: DocspaceApiSdk::StorageFilter::None, # StorageFilter | The filter by storage (None - 0, Internal - 1, ThirdParty - 2).
  count: 25, # Integer | Specifies the maximum number of items to retrieve.
  start_index: 0, # Integer | The index from which to start retrieving the room content.
  sort_by: 'DateAndTime', # String | Specifies the field by which the room content should be sorted.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_value: 'My Document', # String | The text filter value used to refine search or query operations.
  group_id: 1 # Integer | The group ID
}

begin
  # Get rooms
  result = api_instance.get_rooms_folder(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_rooms_folder: #{e}"
end
```

#### Using the get_rooms_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderContentIntegerWrapper>, Integer, Hash)> get_rooms_folder_with_http_info(opts)

```ruby
begin
  # Get rooms
  data, status_code, headers = api_instance.get_rooms_folder_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderContentIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_rooms_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**Array&lt;RoomType&gt;**](RoomType.md) | The filter by room type. | [optional] |
| **subject_id** | **String** | The filter by user ID. | [optional] |
| **subject_owner_id** | **String** | The filter by room owner ID. | [optional] |
| **search_area** | **SearchArea** | The room search area (Active, Archive, Any, Recent by links). | [optional] |
| **without_tags** | **Boolean** | Specifies whether to search by tags or not. | [optional] |
| **tags** | **String** | The tags in the serialized format. | [optional] |
| **exclude_subject** | **Boolean** | Specifies whether to exclude search by user or group ID. | [optional] |
| **provider** | **ProviderFilter** | The filter by provider name (None, Box, DropBox, GoogleDrive, kDrive, OneDrive, SharePoint, WebDav, Yandex, Storage). | [optional] |
| **subject_filter** | **SubjectFilter** | The filter by user (Owner - 0, Member - 1). | [optional] |
| **quota_filter** | **QuotaFilter** | The filter by quota (All - 0, Default - 1, Custom - 2). | [optional] |
| **storage_filter** | **StorageFilter** | The filter by storage (None - 0, Internal - 1, ThirdParty - 2). | [optional] |
| **count** | **Integer** | Specifies the maximum number of items to retrieve. | [optional] |
| **start_index** | **Integer** | The index from which to start retrieving the room content. | [optional] |
| **sort_by** | **String** | Specifies the field by which the room content should be sorted. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_value** | **String** | The text filter value used to refine search or query operations. | [optional] |
| **group_id** | **Integer** | The group ID | [optional] |

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rooms_new_items

> <NewItemsRoomNewItemsArrayWrapper> get_rooms_new_items

Get the room new items

Returns the room new items.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-new-items/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new

begin
  # Get the room new items
  result = api_instance.get_rooms_new_items
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_rooms_new_items: #{e}"
end
```

#### Using the get_rooms_new_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewItemsRoomNewItemsArrayWrapper>, Integer, Hash)> get_rooms_new_items_with_http_info

```ruby
begin
  # Get the room new items
  data, status_code, headers = api_instance.get_rooms_new_items_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewItemsRoomNewItemsArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_rooms_new_items_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**NewItemsRoomNewItemsArrayWrapper**](NewItemsRoomNewItemsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rooms_primary_external_link

> <FileShareWrapper> get_rooms_primary_external_link(id)

Get the room primary external link

Returns the primary external link of the room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-primary-external-link/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.

begin
  # Get the room primary external link
  result = api_instance.get_rooms_primary_external_link(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_rooms_primary_external_link: #{e}"
end
```

#### Using the get_rooms_primary_external_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareWrapper>, Integer, Hash)> get_rooms_primary_external_link_with_http_info(id)

```ruby
begin
  # Get the room primary external link
  data, status_code, headers = api_instance.get_rooms_primary_external_link_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->get_rooms_primary_external_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## has_tag_links

> <BooleanWrapper> has_tag_links(tag_name2, opts)

Has tag links

Checks if a specific custom tag has linked items.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/has-tag-links/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
tag_name2 = 'tag_name_example' # String | 
opts = {
  tag_name: 'tag1' # String | Represents the name of a tag
}

begin
  # Has tag links
  result = api_instance.has_tag_links(tag_name2, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->has_tag_links: #{e}"
end
```

#### Using the has_tag_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> has_tag_links_with_http_info(tag_name2, opts)

```ruby
begin
  # Has tag links
  data, status_code, headers = api_instance.has_tag_links_with_http_info(tag_name2, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->has_tag_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_name2** | **String** |  |  |
| **tag_name** | **String** | Represents the name of a tag | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pin_room

> <FolderIntegerWrapper> pin_room(id)

Pin a room

Pins a room with the ID specified in the request to the top of the list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/pin-room/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.

begin
  # Pin a room
  result = api_instance.pin_room(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->pin_room: #{e}"
end
```

#### Using the pin_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> pin_room_with_http_info(id)

```ruby
begin
  # Pin a room
  data, status_code, headers = api_instance.pin_room_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->pin_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reorder_room

> <FolderIntegerWrapper> reorder_room(id)

Reorder the room

Reorders the room with ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reorder-room/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.

begin
  # Reorder the room
  result = api_instance.reorder_room(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->reorder_room: #{e}"
end
```

#### Using the reorder_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> reorder_room_with_http_info(id)

```ruby
begin
  # Reorder the room
  data, status_code, headers = api_instance.reorder_room_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->reorder_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resend_email_invitations

> resend_email_invitations(id, user_invitation)

Resend the room invitations

Resends the email invitations to a room with the ID specified in the request to the selected users.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-email-invitations/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.
user_invitation = DocspaceApiSdk::UserInvitation.new # UserInvitation | The user invitation parameters.

begin
  # Resend the room invitations
  api_instance.resend_email_invitations(id, user_invitation)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->resend_email_invitations: #{e}"
end
```

#### Using the resend_email_invitations_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resend_email_invitations_with_http_info(id, user_invitation)

```ruby
begin
  # Resend the room invitations
  data, status_code, headers = api_instance.resend_email_invitations_with_http_info(id, user_invitation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->resend_email_invitations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **user_invitation** | [**UserInvitation**](UserInvitation.md) | The user invitation parameters. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## set_public_settings

> set_public_settings(opts)

Set public settings

Sets the public settings for the room template with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-public-settings/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
opts = {
  set_public_dto: DocspaceApiSdk::SetPublicDto.new({id: 1}) # SetPublicDto | 
}

begin
  # Set public settings
  api_instance.set_public_settings(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->set_public_settings: #{e}"
end
```

#### Using the set_public_settings_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_public_settings_with_http_info(opts)

```ruby
begin
  # Set public settings
  data, status_code, headers = api_instance.set_public_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->set_public_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_public_dto** | [**SetPublicDto**](SetPublicDto.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## set_room_link

> <FileShareWrapper> set_room_link(id, room_link_request)

Set the room external or invitation link

Sets the room external or invitation link with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-link/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.
room_link_request = DocspaceApiSdk::RoomLinkRequest.new # RoomLinkRequest | The room link parameters.

begin
  # Set the room external or invitation link
  result = api_instance.set_room_link(id, room_link_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->set_room_link: #{e}"
end
```

#### Using the set_room_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareWrapper>, Integer, Hash)> set_room_link_with_http_info(id, room_link_request)

```ruby
begin
  # Set the room external or invitation link
  data, status_code, headers = api_instance.set_room_link_with_http_info(id, room_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->set_room_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **room_link_request** | [**RoomLinkRequest**](RoomLinkRequest.md) | The room link parameters. |  |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_room_security

> <RoomSecurityWrapper> set_room_security(id, room_invitation_request)

Set the room access rights

Sets the access rights to the room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-room-security/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.
room_invitation_request = DocspaceApiSdk::RoomInvitationRequest.new # RoomInvitationRequest | The room invitation request.

begin
  # Set the room access rights
  result = api_instance.set_room_security(id, room_invitation_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->set_room_security: #{e}"
end
```

#### Using the set_room_security_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomSecurityWrapper>, Integer, Hash)> set_room_security_with_http_info(id, room_invitation_request)

```ruby
begin
  # Set the room access rights
  data, status_code, headers = api_instance.set_room_security_with_http_info(id, room_invitation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomSecurityWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->set_room_security_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **room_invitation_request** | [**RoomInvitationRequest**](RoomInvitationRequest.md) | The room invitation request. |  |

### Return type

[**RoomSecurityWrapper**](RoomSecurityWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_external_db_sync

> <ExternalDbSyncTaskWrapper> start_external_db_sync(id)

Start external DB sync

Triggers external DB synchronization for all form templates in the specified filling forms room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-external-db-sync/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.

begin
  # Start external DB sync
  result = api_instance.start_external_db_sync(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->start_external_db_sync: #{e}"
end
```

#### Using the start_external_db_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalDbSyncTaskWrapper>, Integer, Hash)> start_external_db_sync_with_http_info(id)

```ruby
begin
  # Start external DB sync
  data, status_code, headers = api_instance.start_external_db_sync_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalDbSyncTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->start_external_db_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |

### Return type

[**ExternalDbSyncTaskWrapper**](ExternalDbSyncTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_room_index_export

> <DocumentBuilderTaskWrapper> start_room_index_export(id)

Start the room index export

Starts the index export of a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-room-index-export/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.

begin
  # Start the room index export
  result = api_instance.start_room_index_export(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->start_room_index_export: #{e}"
end
```

#### Using the start_room_index_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> start_room_index_export_with_http_info(id)

```ruby
begin
  # Start the room index export
  data, status_code, headers = api_instance.start_room_index_export_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->start_room_index_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## terminate_room_index_export

> terminate_room_index_export

Terminate the room index export

Terminates the room index export.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-room-index-export/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new

begin
  # Terminate the room index export
  api_instance.terminate_room_index_export
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->terminate_room_index_export: #{e}"
end
```

#### Using the terminate_room_index_export_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> terminate_room_index_export_with_http_info

```ruby
begin
  # Terminate the room index export
  data, status_code, headers = api_instance.terminate_room_index_export_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->terminate_room_index_export_with_http_info: #{e}"
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
- **Accept**: Not defined


## unarchive_room

> <FileOperationWrapper> unarchive_room(id, opts)

Unarchive a room

Moves a room with the ID specified in the request from the Archive section to the Rooms section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unarchive-room/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.
opts = {
  archive_room_request: DocspaceApiSdk::ArchiveRoomRequest.new # ArchiveRoomRequest | The parameters for archiving a room.
}

begin
  # Unarchive a room
  result = api_instance.unarchive_room(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->unarchive_room: #{e}"
end
```

#### Using the unarchive_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationWrapper>, Integer, Hash)> unarchive_room_with_http_info(id, opts)

```ruby
begin
  # Unarchive a room
  data, status_code, headers = api_instance.unarchive_room_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->unarchive_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **archive_room_request** | [**ArchiveRoomRequest**](ArchiveRoomRequest.md) | The parameters for archiving a room. | [optional] |

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unpin_room

> <FolderIntegerWrapper> unpin_room(id)

Unpin a room

Unpins a room with the ID specified in the request from the top of the list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unpin-room/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 1 # Integer | The room ID.

begin
  # Unpin a room
  result = api_instance.unpin_room(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->unpin_room: #{e}"
end
```

#### Using the unpin_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> unpin_room_with_http_info(id)

```ruby
begin
  # Unpin a room
  data, status_code, headers = api_instance.unpin_room_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->unpin_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_room

> <FolderIntegerWrapper> update_room(id, update_room_request)

Update a room

Updates a room with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
id = 56 # Integer | The room ID.
update_room_request = DocspaceApiSdk::UpdateRoomRequest.new # UpdateRoomRequest | The request parameters for updating a room.

begin
  # Update a room
  result = api_instance.update_room(id, update_room_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->update_room: #{e}"
end
```

#### Using the update_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> update_room_with_http_info(id, update_room_request)

```ruby
begin
  # Update a room
  data, status_code, headers = api_instance.update_room_with_http_info(id, update_room_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->update_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **update_room_request** | [**UpdateRoomRequest**](UpdateRoomRequest.md) | The request parameters for updating a room. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_room_tag

> <StringWrapper> update_room_tag(opts)

Update tag

Updates the name of a custom tag.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-tag/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
opts = {
  update_tag_request_dto: DocspaceApiSdk::UpdateTagRequestDto.new({old_name: 'old-tag', new_name: 'new-tag'}) # UpdateTagRequestDto | 
}

begin
  # Update tag
  result = api_instance.update_room_tag(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->update_room_tag: #{e}"
end
```

#### Using the update_room_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> update_room_tag_with_http_info(opts)

```ruby
begin
  # Update tag
  data, status_code, headers = api_instance.update_room_tag_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->update_room_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_tag_request_dto** | [**UpdateTagRequestDto**](UpdateTagRequestDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_room_logo

> <UploadResultWrapper> upload_room_logo(opts)

Upload a room logo image

Uploads a temporary image to create a room logo.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-room-logo/).

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

api_instance = DocspaceApiSdk::Rooms::RoomsApi.new
opts = {
  file: File.new('/path/to/some/file') # File | The image data.
}

begin
  # Upload a room logo image
  result = api_instance.upload_room_logo(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->upload_room_logo: #{e}"
end
```

#### Using the upload_room_logo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadResultWrapper>, Integer, Hash)> upload_room_logo_with_http_info(opts)

```ruby
begin
  # Upload a room logo image
  data, status_code, headers = api_instance.upload_room_logo_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadResultWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::RoomsApi->upload_room_logo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | The image data. | [optional] |

### Return type

[**UploadResultWrapper**](UploadResultWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


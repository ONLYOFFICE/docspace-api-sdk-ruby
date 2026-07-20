# DocspaceApiSdk::FileEntryDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The file entry title. | [optional] |
| **access** | [**FileShare**](FileShare.md) |  | [optional] |
| **shared_by** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] |
| **owned_by** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] |
| **shared** | **Boolean** | Specifies if the file entry is shared via link or not. | [optional] |
| **shared_for_user** | **Boolean** | Specifies if the file entry is shared for user or not. | [optional] |
| **shared_external** | **Boolean** | Specifies if the file entry is shared via a public (non-internal) external link. | [optional] |
| **parent_shared** | **Boolean** | Indicates whether the parent entity is shared. | [optional] |
| **short_web_url** | **String** | The short Web URL. | [optional] |
| **created** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **created_by** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] |
| **updated** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **auto_delete** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **root_folder_type** | [**FolderType**](FolderType.md) |  | [optional] |
| **parent_room_type** | [**FolderType**](FolderType.md) |  | [optional] |
| **updated_by** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] |
| **provider_item** | **Boolean** | Specifies if the file entry provider is specified or not. | [optional] |
| **provider_key** | **String** | The provider key of the file entry. | [optional] |
| **provider_id** | **Integer** | The provider ID of the file entry. | [optional] |
| **order** | **String** | The order of the file entry. | [optional] |
| **is_favorite** | **Boolean** | Specifies if the file is a favorite or not. | [optional] |
| **file_entry_type** | [**FileEntryType**](FileEntryType.md) |  | [optional] |
| **id** | **Integer** | The file entry ID. | [optional] |
| **root_folder_id** | **Integer** | The root folder ID of the file entry. | [optional] |
| **origin_id** | **Integer** | The origin ID of the file entry. | [optional] |
| **origin_room_id** | **Integer** | The origin room ID of the file entry. | [optional] |
| **origin_title** | **String** | The origin title of the file entry. | [optional] |
| **origin_room_title** | **String** | The origin room title of the file entry. | [optional] |
| **can_share** | **Boolean** | Specifies if the file entry can be shared or not. | [optional] |
| **share_settings** | [**FileEntryDtoIntegerAllOfShareSettings**](FileEntryDtoIntegerAllOfShareSettings.md) |  | [optional] |
| **security** | [**FileEntryDtoIntegerAllOfSecurity**](FileEntryDtoIntegerAllOfSecurity.md) |  | [optional] |
| **available_share_rights** | [**FileEntryDtoIntegerAllOfAvailableShareRights**](FileEntryDtoIntegerAllOfAvailableShareRights.md) |  | [optional] |
| **request_token** | **String** | The request token of the file entry. | [optional] |
| **external** | **Boolean** | Specifies if the folder can be accessed via an external link or not. | [optional] |
| **expiration_date** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **is_link_expired** | **Boolean** | Indicates whether the shareable link associated with the file or folder has expired. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileEntryDtoInteger.new(
  title: Some title.txt,
  access: null,
  shared_by: null,
  owned_by: null,
  shared: false,
  shared_for_user: false,
  shared_external: false,
  parent_shared: false,
  short_web_url: http://localhost/s/abc123,
  created: null,
  created_by: null,
  updated: null,
  auto_delete: null,
  root_folder_type: null,
  parent_room_type: null,
  updated_by: null,
  provider_item: false,
  provider_key: google-drive,
  provider_id: 1,
  order: 1,
  is_favorite: false,
  file_entry_type: null,
  id: 10,
  root_folder_id: 1,
  origin_id: 12,
  origin_room_id: 22,
  origin_title: Original Title,
  origin_room_title: Original Room,
  can_share: true,
  share_settings: null,
  security: null,
  available_share_rights: null,
  request_token: token-abc-123,
  external: false,
  expiration_date: null,
  is_link_expired: false
)
```

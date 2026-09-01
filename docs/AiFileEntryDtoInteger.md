# DocspaceApiSdk::AiFileEntryDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The file entry title. | [optional] |
| **access** | [**AiFileShare**](AiFileShare.md) | The access rights to the file entry. | [optional] |
| **shared_by** | [**AiEmployeeDto**](AiEmployeeDto.md) | Provides information about the employee who shared the file or folder. | [optional] |
| **owned_by** | [**AiEmployeeDto**](AiEmployeeDto.md) | The information about the employee who owns the file entry. | [optional] |
| **shared** | **Boolean** | Specifies if the file entry is shared via link or not. | [optional] |
| **shared_for_user** | **Boolean** | Specifies if the file entry is shared for user or not. | [optional] |
| **shared_external** | **Boolean** | Specifies if the file entry is shared via a public (non-internal) external link. | [optional] |
| **parent_shared** | **Boolean** | Indicates whether the parent entity is shared. | [optional] |
| **short_web_url** | **String** | The short Web URL. | [optional] |
| **created** | **Time** | The creation date and time of the file entry. | [optional] |
| **created_by** | [**AiEmployeeDto**](AiEmployeeDto.md) | The file entry author. | [optional] |
| **updated** | **Time** | The last date and time when the file entry was updated. | [optional] |
| **auto_delete** | **Time** | The date and time when the file entry will be automatically deleted. | [optional] |
| **root_folder_type** | [**AiFolderType**](AiFolderType.md) | The root folder type of the file entry. | [optional] |
| **parent_room_type** | [**AiFolderType**](AiFolderType.md) | The parent room type of the file entry. | [optional] |
| **updated_by** | [**AiEmployeeDto**](AiEmployeeDto.md) | The user who updated the file entry. | [optional] |
| **provider_item** | **Boolean** | Specifies if the file entry provider is specified or not. | [optional] |
| **provider_key** | **String** | The provider key of the file entry. | [optional] |
| **provider_id** | **Integer** | The provider ID of the file entry. | [optional] |
| **order** | **String** | The order of the file entry. | [optional] |
| **is_favorite** | **Boolean** | Specifies if the file is a favorite or not. | [optional] |
| **file_entry_type** | [**AiFileEntryType**](AiFileEntryType.md) | The file entry type. | [optional] |
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
| **expiration_date** | **Time** | Represents the expiration date of the file entry. | [optional] |
| **is_link_expired** | **Boolean** | Indicates whether the shareable link associated with the file or folder has expired. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiFileEntryDtoInteger.new(
  title: Some title.txt,
  access: null,
  shared_by: null,
  owned_by: null,
  shared: false,
  shared_for_user: false,
  shared_external: false,
  parent_shared: false,
  short_web_url: http://localhost/s/abc123,
  created: 2021-01-01T00:00:00Z,
  created_by: null,
  updated: 2021-01-01T00:00:00Z,
  auto_delete: 2021-01-01T00:00:00Z,
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
  expiration_date: 2021-01-01T00:00:00Z,
  is_link_expired: false
)
```

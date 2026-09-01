# DocspaceApiSdk::FileEntryBaseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The file entry title. | [optional] |
| **access** | [**FileShare**](FileShare.md) | The access rights to the file entry. | [optional] |
| **shared_by** | [**EmployeeDto**](EmployeeDto.md) | Provides information about the employee who shared the file or folder. | [optional] |
| **owned_by** | [**EmployeeDto**](EmployeeDto.md) | The information about the employee who owns the file entry. | [optional] |
| **shared** | **Boolean** | Specifies if the file entry is shared via link or not. | [optional] |
| **shared_for_user** | **Boolean** | Specifies if the file entry is shared for user or not. | [optional] |
| **shared_external** | **Boolean** | Specifies if the file entry is shared via a public (non-internal) external link. | [optional] |
| **parent_shared** | **Boolean** | Indicates whether the parent entity is shared. | [optional] |
| **short_web_url** | **String** | The short Web URL. | [optional] |
| **created** | **Time** | The creation date and time of the file entry. | [optional] |
| **created_by** | [**EmployeeDto**](EmployeeDto.md) | The file entry author. | [optional] |
| **updated** | **Time** | The last date and time when the file entry was updated. | [optional] |
| **auto_delete** | **Time** | The date and time when the file entry will be automatically deleted. | [optional] |
| **root_folder_type** | [**FolderType**](FolderType.md) | The root folder type of the file entry. | [optional] |
| **parent_room_type** | [**FolderType**](FolderType.md) | The parent room type of the file entry. | [optional] |
| **updated_by** | [**EmployeeDto**](EmployeeDto.md) | The user who updated the file entry. | [optional] |
| **provider_item** | **Boolean** | Specifies if the file entry provider is specified or not. | [optional] |
| **provider_key** | **String** | The provider key of the file entry. | [optional] |
| **provider_id** | **Integer** | The provider ID of the file entry. | [optional] |
| **order** | **String** | The order of the file entry. | [optional] |
| **is_favorite** | **Boolean** | Specifies if the file is a favorite or not. | [optional] |
| **file_entry_type** | [**FileEntryType**](FileEntryType.md) | The file entry type. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileEntryBaseDto.new(
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
  file_entry_type: null
)
```

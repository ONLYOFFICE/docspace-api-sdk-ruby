# DocspaceApiSdk::FileEntryBaseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The file entry title. | [optional] |
| **access** | [**FileShare**](FileShare.md) |  | [optional] |
| **shared_by** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] |
| **owned_by** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] |
| **shared** | **Boolean** | Specifies if the file entry is shared via link or not. | [optional] |
| **shared_for_user** | **Boolean** | Specifies if the file entry is shared for user or not. | [optional] |
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
  file_entry_type: null
)
```

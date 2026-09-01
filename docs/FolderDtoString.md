# DocspaceApiSdk::FolderDtoString

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
| **id** | **String** | The file entry ID. | [optional] |
| **root_folder_id** | **String** | The root folder ID of the file entry. | [optional] |
| **origin_id** | **String** | The origin ID of the file entry. | [optional] |
| **origin_room_id** | **String** | The origin room ID of the file entry. | [optional] |
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
| **parent_id** | **String** | The parent folder ID of the folder. | [optional] |
| **files_count** | **Integer** | The number of files that the folder contains. | [optional] |
| **folders_count** | **Integer** | The number of folders that the folder contains. | [optional] |
| **is_shareable** | **Boolean** | Specifies if the folder can be shared or not. | [optional] |
| **new** | **Integer** | The new element index in the folder. | [optional] |
| **mute** | **Boolean** | Specifies if the folder notifications are enabled or not. | [optional] |
| **tags** | **Array&lt;String&gt;** | The list of tags of the folder. | [optional] |
| **logo** | [**Logo**](Logo.md) | The folder logo. | [optional] |
| **pinned** | **Boolean** | Specifies if the folder is pinned or not. | [optional] |
| **room_type** | [**RoomType**](RoomType.md) | The room type of the folder. | [optional] |
| **private** | **Boolean** | Specifies if the folder is private or not. | [optional] |
| **indexing** | **Boolean** | Specifies if the folder is indexed or not. | [optional] |
| **deny_download** | **Boolean** | Specifies if the folder can be downloaded or not. | [optional] |
| **lifetime** | [**RoomDataLifetimeDto**](RoomDataLifetimeDto.md) | The room data lifetime settings of the folder. | [optional] |
| **watermark** | [**WatermarkDto**](WatermarkDto.md) | The watermark settings of the folder. | [optional] |
| **type** | [**FolderType**](FolderType.md) | The folder type. | [optional] |
| **in_room** | **Boolean** | Specifies if the folder is placed in the room or not. | [optional] |
| **quota_limit** | **Integer** | The folder quota limit. | [optional] |
| **is_custom_quota** | **Boolean** | Specifies if the folder room has a custom quota or not. | [optional] |
| **used_space** | **Integer** | How much folder space is used (counter). | [optional] |
| **password_protected** | **Boolean** | Specifies if the folder is password protected or not. | [optional] |
| **expired** | **Boolean** | Specifies if an external link to the folder is expired or not. | [optional] |
| **chat_settings** | [**ChatSettingsDto**](ChatSettingsDto.md) | The AI chat settings for the folder room. Contains configuration for AI provider, model selection, and custom prompts.  Only applicable to rooms with AI chat functionality enabled. Null if the room does not have chat settings configured. | [optional] |
| **root_room_type** | [**RoomType**](RoomType.md) | The room type of the root folder. Indicates the type of the parent room if the current folder is nested within a room hierarchy.  This property helps identify the context in which a nested folder exists. | [optional] |
| **save_form_as_xlsx** | **Boolean** | Specifies whether to save form data as XLSX file. | [optional] |
| **send_form_to_external_db** | **Boolean** | Specifies whether to send form data to external database. | [optional] |
| **original_form_id** | **Integer** | The original form ID that corresponds to this FormFillingFolderDone folder. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FolderDtoString.new(
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
  is_link_expired: false,
  parent_id: 10,
  files_count: 5,
  folders_count: 7,
  is_shareable: true,
  new: 0,
  mute: false,
  tags: [tag1, tag2],
  logo: null,
  pinned: false,
  room_type: null,
  private: false,
  indexing: true,
  deny_download: false,
  lifetime: null,
  watermark: null,
  type: null,
  in_room: false,
  quota_limit: 1073741824,
  is_custom_quota: false,
  used_space: 524288000,
  password_protected: false,
  expired: false,
  chat_settings: null,
  root_room_type: null,
  save_form_as_xlsx: false,
  send_form_to_external_db: false,
  original_form_id: 42
)
```

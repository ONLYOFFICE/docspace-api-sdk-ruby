# DocspaceApiSdk::FileDtoInteger

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
| **folder_id** | **Integer** | The folder ID where the file is located. | [optional] |
| **version** | **Integer** | The file version. | [optional] |
| **version_group** | **Integer** | The version group of the file. | [optional] |
| **content_length** | **String** | The content length of the file. | [optional] |
| **pure_content_length** | **Integer** | The pure content length of the file. | [optional] |
| **file_status** | [**FileStatus**](FileStatus.md) |  | [optional] |
| **editing_by** | **Hash&lt;String, String&gt;** | The list of users editing the file. | [optional] |
| **mute** | **Boolean** | Specifies if the file is muted or not. | [optional] |
| **view_url** | **String** | The URL link to view the file. | [optional] |
| **web_url** | **String** | The Web URL link to the file. | [optional] |
| **file_type** | [**FileType**](FileType.md) |  | [optional] |
| **file_exst** | **String** | The file extension. | [optional] |
| **comment** | **String** | The comment to the file. | [optional] |
| **encrypted** | **Boolean** | Specifies if the file is encrypted or not. | [optional] |
| **thumbnail_url** | **String** | The thumbnail URL of the file. | [optional] |
| **thumbnail_status** | [**Thumbnail**](Thumbnail.md) |  | [optional] |
| **locked** | **Boolean** | Specifies if the file is locked or not. | [optional] |
| **locked_by** | **String** | The user ID of the person who locked the file. | [optional] |
| **has_draft** | **Boolean** | Specifies if the file has a draft or not. | [optional] |
| **form_filling_status** | [**FormFillingStatus**](FormFillingStatus.md) |  | [optional] |
| **is_form** | **Boolean** | Specifies if the file is a form or not. | [optional] |
| **custom_filter_enabled** | **Boolean** | Specifies if the Custom Filter editing mode is enabled for a file or not. | [optional] |
| **custom_filter_enabled_by** | **String** | The name of the user who enabled a Custom Filter editing mode for a file. | [optional] |
| **start_filling** | **Boolean** | Specifies if the filling has started or not. | [optional] |
| **is_filling_preparing** | **Boolean** | Specifies if the form filling has started but the file is still being saved by the document editor. Filling and editing are not allowed. | [optional] |
| **in_process_folder_id** | **Integer** | The InProcess folder ID of the file. | [optional] |
| **in_process_folder_title** | **String** | The InProcess folder title of the file. | [optional] |
| **results_folder_id** | **Integer** | The ID of the FormFillingFolderDone folder that corresponds to this original form. | [optional] |
| **draft_location** | [**DraftLocationInteger**](DraftLocationInteger.md) |  | [optional] |
| **view_accessibility** | [**FileDtoIntegerAllOfViewAccessibility**](FileDtoIntegerAllOfViewAccessibility.md) |  | [optional] |
| **last_opened** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **expired** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **vectorization_status** | [**VectorizationStatus**](VectorizationStatus.md) |  | [optional] |
| **external_db_table_name** | **String** | The name of the table in the external database that corresponds to this form. | [optional] |
| **dimensions** | [**Size**](Size.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileDtoInteger.new(
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
  is_link_expired: false,
  folder_id: 10,
  version: 3,
  version_group: 1,
  content_length: 12345,
  pure_content_length: 12345,
  file_status: null,
  editing_by: {"00000000-0000-0000-0000-000000000000":"John Doe"},
  mute: false,
  view_url: https://www.onlyoffice.com/viewfile?fileid=2221,
  web_url: http://localhost/files/document.docx,
  file_type: null,
  file_exst: .txt,
  comment: This is a comment,
  encrypted: false,
  thumbnail_url: http://localhost/thumbnails/file.png,
  thumbnail_status: null,
  locked: false,
  locked_by: 00000000-0000-0000-0000-000000000000,
  has_draft: false,
  form_filling_status: null,
  is_form: false,
  custom_filter_enabled: false,
  custom_filter_enabled_by: John Doe,
  start_filling: false,
  is_filling_preparing: false,
  in_process_folder_id: 10,
  in_process_folder_title: In Process,
  results_folder_id: 55,
  draft_location: null,
  view_accessibility: null,
  last_opened: null,
  expired: null,
  vectorization_status: null,
  external_db_table_name: form_123_v1,
  dimensions: null
)
```

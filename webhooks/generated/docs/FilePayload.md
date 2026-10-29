# DocspaceWebhooksSdk::FilePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**EntryId**](EntryId.md) |  | [optional] |
| **parent_id** | [**EntryId**](EntryId.md) |  | [optional] |
| **root_folder_id** | [**EntryId**](EntryId.md) |  | [optional] |
| **title** | **String** | The name of the entry as shown in the portal; for a file it includes the extension. | [optional] |
| **file_entry_type** | **Integer** | Tells a folder or room payload (1) from a file payload (2), so a receiver can pick the schema to read the rest of the object with. Flags of &#x60;FileEntryType&#x60;: 1 &#x3D; Folder, 2 &#x3D; File. | [optional] |
| **created** | **Time** | When the entry was created, in UTC. | [optional] |
| **created_by** | [**UserSummaryPayload**](UserSummaryPayload.md) |  | [optional] |
| **updated** | **Time** | When the entry was last changed, in UTC; equal to &#x60;created&#x60; for an entry that has not changed since. | [optional] |
| **updated_by** | [**UserSummaryPayload**](UserSummaryPayload.md) |  | [optional] |
| **root_folder_type** | **Integer** | The kind of top-level section the entry sits in, such as My documents, Rooms, Archive or Trash. Values of &#x60;FolderType&#x60;: 0 &#x3D; DEFAULT, 1 &#x3D; COMMON, 2 &#x3D; BUNCH, 3 &#x3D; TRASH, 5 &#x3D; USER, 6 &#x3D; SHARE, 8 &#x3D; Projects, 10 &#x3D; Favorites, 11 &#x3D; Recent, 12 &#x3D; Templates, 13 &#x3D; Privacy, 14 &#x3D; VirtualRooms, 15 &#x3D; FillingFormsRoom, 16 &#x3D; EditingRoom, 19 &#x3D; CustomRoom, 20 &#x3D; Archive, 21 &#x3D; ThirdpartyBackup, 22 &#x3D; PublicRoom, 25 &#x3D; ReadyFormFolder, 26 &#x3D; InProcessFormFolder, 27 &#x3D; FormFillingFolderDone, 28 &#x3D; FormFillingFolderInProgress, 29 &#x3D; VirtualDataRoom, 30 &#x3D; RoomTemplates, 31 &#x3D; AiRoom, 32 &#x3D; Knowledge, 33 &#x3D; ChatOutputs, 34 &#x3D; AiAgents, 35 &#x3D; DefaultTemplates, 36 &#x3D; Forms, 37 &#x3D; Ai. | [optional] |
| **parent_room_type** | **Integer** | The type of the room the entry is inside, at any depth; absent for an entry outside rooms. Values of &#x60;FolderType&#x60;: 0 &#x3D; DEFAULT, 1 &#x3D; COMMON, 2 &#x3D; BUNCH, 3 &#x3D; TRASH, 5 &#x3D; USER, 6 &#x3D; SHARE, 8 &#x3D; Projects, 10 &#x3D; Favorites, 11 &#x3D; Recent, 12 &#x3D; Templates, 13 &#x3D; Privacy, 14 &#x3D; VirtualRooms, 15 &#x3D; FillingFormsRoom, 16 &#x3D; EditingRoom, 19 &#x3D; CustomRoom, 20 &#x3D; Archive, 21 &#x3D; ThirdpartyBackup, 22 &#x3D; PublicRoom, 25 &#x3D; ReadyFormFolder, 26 &#x3D; InProcessFormFolder, 27 &#x3D; FormFillingFolderDone, 28 &#x3D; FormFillingFolderInProgress, 29 &#x3D; VirtualDataRoom, 30 &#x3D; RoomTemplates, 31 &#x3D; AiRoom, 32 &#x3D; Knowledge, 33 &#x3D; ChatOutputs, 34 &#x3D; AiAgents, 35 &#x3D; DefaultTemplates, 36 &#x3D; Forms, 37 &#x3D; Ai. | [optional] |
| **origin_id** | [**EntryId**](EntryId.md) |  | [optional] |
| **origin_room_id** | [**EntryId**](EntryId.md) |  | [optional] |
| **origin_title** | **String** | For an entry in the trash, the name of the folder it was deleted from. | [optional] |
| **origin_room_title** | **String** | For an entry in the trash, the name of the room it was deleted from. | [optional] |
| **provider_item** | **Boolean** | True when the entry lives in a connected third-party storage; absent for the portal&#39;s own storage. | [optional] |
| **provider_key** | **String** | The connected third-party storage the entry lives in; absent for the portal&#39;s own storage. | [optional] |
| **provider_id** | **Integer** | The ID of the third-party storage connection the entry comes through; absent for the portal&#39;s own storage. | [optional] |
| **order** | **Integer** | The position of the entry in a room with indexing turned on; meaningful only inside such a room. | [optional] |
| **version** | **Integer** | The number of the current version of the file, starting at 1 and growing with every saved version. | [optional] |
| **version_group** | **Integer** | The number of the version group the current version belongs to; the versions saved during one editing session share a group. | [optional] |
| **content_length** | **Integer** | The size of the current version of the file in bytes. | [optional] |
| **file_type** | **Integer** | The kind of content the file holds, derived from its extension: a document, a spreadsheet, a presentation, a PDF, an image and so on. Values of &#x60;FileType&#x60;: 0 &#x3D; Unknown, 1 &#x3D; Archive, 2 &#x3D; Video, 3 &#x3D; Audio, 4 &#x3D; Image, 5 &#x3D; Spreadsheet, 6 &#x3D; Presentation, 7 &#x3D; Document, 10 &#x3D; Pdf, 11 &#x3D; Diagram. | [optional] |
| **file_exst** | **String** | The file extension, including the leading dot. | [optional] |
| **comment** | **String** | The comment saved with the current version, either typed by the user or set by the portal for the action that made the version. | [optional] |
| **view_url** | **String** | The URL the file content can be downloaded from. Carries no share token. | [optional] |
| **web_url** | **String** | The URL the file can be opened at in a browser. Carries no share token. | [optional] |
| **encrypted** | **Boolean** | True when the file is end-to-end encrypted in a private room; absent otherwise. | [optional] |
| **locked** | **Boolean** | True when the file is locked, so that only the user who locked it can edit it; absent otherwise. A file.updated raised by locking or unlocking the file tells the two apart by this field. | [optional] |
| **locked_by** | [**UserSummaryPayload**](UserSummaryPayload.md) |  | [optional] |
| **is_form** | **Boolean** | True for every PDF file, with or without form fields, since the editor can open any PDF as a form; absent for other files. It does not tell a fillable form from an ordinary PDF document. | [optional] |
| **custom_filter_enabled** | **Boolean** | True when custom filtering is turned on for the spreadsheet; absent otherwise. | [optional] |
| **custom_filter_enabled_by** | [**UserSummaryPayload**](UserSummaryPayload.md) |  | [optional] |
| **vectorization_status** | **Integer** | The state of the file&#39;s indexing for the AI features of the portal; absent when it does not apply. Values of &#x60;VectorizationStatus&#x60;: 0 &#x3D; InProgress, 1 &#x3D; Completed, 2 &#x3D; Failed. | [optional] |

## Example

```ruby
require 'docspace-webhooks-sdk'

instance = DocspaceWebhooksSdk::FilePayload.new(
  id: null,
  parent_id: null,
  root_folder_id: null,
  title: Contract 2026.docx,
  file_entry_type: 2,
  created: 2021-01-01T00:00:00Z,
  created_by: null,
  updated: 2021-01-01T00:00:00Z,
  updated_by: null,
  root_folder_type: 14,
  parent_room_type: 19,
  origin_id: null,
  origin_room_id: null,
  origin_title: Q3 Reports,
  origin_room_title: Marketing Room,
  provider_item: true,
  provider_key: GoogleDrive,
  provider_id: 1,
  order: 1,
  version: 1,
  version_group: 1,
  content_length: 12345,
  file_type: 7,
  file_exst: .docx,
  comment: Created,
  view_url: https://example.com/filehandler.ashx?action&#x3D;download&amp;fileid&#x3D;10,
  web_url: https://example.com/doceditor?fileid&#x3D;10,
  encrypted: false,
  locked: true,
  locked_by: null,
  is_form: true,
  custom_filter_enabled: true,
  custom_filter_enabled_by: null,
  vectorization_status: 0
)
```


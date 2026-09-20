# DocspaceApiSdk::ThirdPartyFileDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The name shown for the entry. For a file it carries the extension, which is how the format is recognised, and  for a room it is the room name. | [optional] |
| **access** | [**FileShare**](FileShare.md) | The level the calling account holds on this entry, resolved from its own rights, the groups it belongs to and  any link it came in through. It is the level itself, not what the account may do with it - the action flags  below answer that. | [optional] |
| **shared_by** | [**EmployeeDto**](EmployeeDto.md) | Who gave the calling account the access it is using. It is filled in only while the entry is being read  through a share, and never for a caller without an account. | [optional] |
| **owned_by** | [**EmployeeDto**](EmployeeDto.md) | Who owns the place the entry is shared from - the creator of the room it lies in, or of the personal section  that holds it. It is filled in only while the entry is being read through a share, and never for a caller  without an account. | [optional] |
| **shared** | **Boolean** | Whether at least one external link exists for the entry, whichever kind. It says nothing about accounts and  groups - those are counted by the flag for members below. | [optional] |
| **shared_for_user** | **Boolean** | Whether at least one account or group has been given rights on the entry directly, as opposed to reaching it  through a link or through the room around it. | [optional] |
| **shared_external** | **Boolean** | Whether one of the entry's links is open to people outside the portal, as opposed to a link that only its own  members can follow. This is the flag to watch when the concern is who can reach the content from outside. | [optional] |
| **parent_shared** | **Boolean** | Whether the entry is reachable because the room or folder around it is shared, rather than through rights of  its own. A copy or a move takes the entry out of that scope. | [optional] |
| **short_web_url** | **String** | A shortened address that opens the entry through the link it is being read with. It is an empty string  whenever no link applies, which is the usual case for a member browsing their own rooms. | [optional] |
| **created** | [**ApiDateTime**](ApiDateTime.md) | When the entry was created, written with the offset of the portal's time zone. For a file restored from an  older version this is still the moment the file first appeared. | [optional] |
| **created_by** | [**EmployeeDto**](EmployeeDto.md) | Who created the entry. It is null for a caller without an account, who is told nothing about the portal's  members. | [optional] |
| **updated** | [**ApiDateTime**](ApiDateTime.md) | When the entry last changed, written with the offset of the portal's time zone. It is never reported as  earlier than the creation moment, so the two can be compared safely. | [optional] |
| **auto_delete** | [**ApiDateTime**](ApiDateTime.md) | When the entry will disappear on its own, written with the offset of the portal's time zone. It is filled in  only where a removal is actually scheduled - something in the trash while the portal cleans it up  automatically, or a guest's own documents - so a null means nothing is scheduled rather than that the entry is  permanent. | [optional] |
| **root_folder_type** | [**FolderType**](FolderType.md) | The section the entry ultimately belongs to, which is what tells a personal document from one inside a room,  from a template and from something in the trash or the archive. | [optional] |
| **parent_room_type** | [**FolderType**](FolderType.md) | The kind of room the entry lies in, which decides what the room allows - filling forms, public links,  indexing. It is null for an entry that is not inside a room at all. | [optional] |
| **updated_by** | [**EmployeeDto**](EmployeeDto.md) | Who changed the entry last. It is null for a caller without an account. | [optional] |
| **provider_item** | **Boolean** | Set when the entry is stored on a connected third-party account rather than on the portal, and null when it is  stored on the portal. Such an entry is identified by a string rather than a number, and some operations skip  it. | [optional] |
| **provider_key** | **String** | Which third-party service holds the entry, matching the keys accepted by the third-party operations. It is  null for an entry stored on the portal. | [optional] |
| **provider_id** | **Integer** | The connected account the entry comes from, for telling apart two connections to the same service. It is null  for an entry stored on the portal. | [optional] |
| **order** | **String** | The place of the entry in a room where the members arrange the content themselves, given as the position of  the entry preceded by the positions of the folders leading to it, separated by dots. It is empty when nothing  has been arranged. | [optional] |
| **is_favorite** | **Boolean** | Set when the calling account has marked the entry as a favorite, which is what puts it into the favorites  listing. For a file that is not marked it is null rather than false. | [optional] |
| **file_entry_type** | [**FileEntryType**](FileEntryType.md) | Tells a folder from a file, and so which of the two shapes the rest of the object has. A room is reported as a  folder here. | [optional] |
| **id** | **String** | The identifier to pass back to the other operations of this entry. It is a number for storage on the portal  and a string for a connected third-party account, and it is unique only within its own kind, so files and  folders may carry the same value. | [optional] |
| **root_folder_id** | **String** | The section the entry ultimately lies in, as an identifier that can be listed like any other folder. For an  entry inside a room this is the rooms section, not the room. | [optional] |
| **origin_id** | **String** | The folder the entry was deleted from, which is where restoring it puts it back. It is left out of the answer  unless the entry is in the trash. | [optional] |
| **origin_room_id** | **String** | The room the entry was deleted from, left out of the answer for anything that was not deleted out of a room. | [optional] |
| **origin_title** | **String** | The name of the folder the entry was deleted from, for showing where it would be restored to. It is null for  an entry that is not in the trash. | [optional] |
| **origin_room_title** | **String** | The name of the room the entry was deleted from, null for anything that was not deleted out of a room. | [optional] |
| **can_share** | **Boolean** | Whether the calling account may change who has access to the entry, and so whether offering a sharing dialog  for it makes sense. It is false in rooms whose access is fixed by the room itself, such as a private one, even  for its manager. | [optional] |
| **share_settings** | [**AiFileEntryDtoAllOfShareSettings**](AiFileEntryDtoAllOfShareSettings.md) |  | [optional] |
| **security** | [**AiFileEntryDtoAllOfSecurity**](AiFileEntryDtoAllOfSecurity.md) |  | [optional] |
| **available_share_rights** | [**AiFileEntryDtoAllOfAvailableShareRights**](AiFileEntryDtoAllOfAvailableShareRights.md) |  | [optional] |
| **request_token** | **String** | The token of the link the entry is being read through, which is the value the external-share operations expect  and which also has to be carried by the download and preview addresses. It is null whenever the entry is not  being read through a link. | [optional] |
| **external** | **Boolean** | Set when the link being used was made for this very entry, and false when the entry is reached through a link  to the room around it. It is null when no link is involved. | [optional] |
| **expiration_date** | [**ApiDateTime**](ApiDateTime.md) | When the link being used stops working, written with the offset of the portal's time zone. It is null for a  link that never expires and whenever no link is involved. | [optional] |
| **is_link_expired** | **Boolean** | Set when the link being used has already passed its expiration date, which is why the entry cannot be opened  even though it is described here. It is null when no link is involved. | [optional] |
| **folder_id** | **String** | The folder the file is stored in. When the file was reached through a share and the caller cannot open its  real parent, the identifier of the Shared with me section is reported instead, so this is where the file is  visible rather than where it physically sits. | [optional] |
| **version** | **Integer** | The revision this entry describes. It starts at 1 and moves to the next number each time new content is stored  over the file, except for an editing session opened against the file itself, which replaces the content and  keeps the number. `GET api/2.0/files/file/{fileId}/history` lists them all. | [optional] |
| **version_group** | **Integer** | Groups revisions that belong together, which is how a history can fold a long editing session into one entry:  versions saved inside one session share this number, and an upload over the file starts a new group. | [optional] |
| **content_length** | **String** | The size already formatted for display, with a unit and the separators of the caller's language. Read  `pureContentLength` for a number to calculate with. | [optional] |
| **pure_content_length** | **Integer** | The size of the stored content in bytes, and null for an empty file. | [optional] |
| **file_status** | [**FileStatus**](FileStatus.md) | What the portal is currently doing with the file and how the caller stands towards it - open in the editor,  unread, being converted, and so on. The value is a bit mask that combines those states, so a file can report a  number that matches none of the published members on its own. | [optional] |
| **editing_by** | **Hash&lt;String, String&gt;** | The accounts that have the file open in the editor at this moment, as account identifier to display name, and  empty when nobody has. The all-zero identifier stands for people who came in through an external link without  signing in, and its name carries their number in brackets when there is more than one. | [optional] |
| **mute** | **Boolean** | Not a property of the file at all: it repeats, inverted, the calling account's own switch for new-item badges,  so it is the same in every entry of one answer. True means that account has badges turned off. | [optional] |
| **view_url** | **String** | The address that returns the bytes of the file - a download, in spite of the name; `webUrl` is the address a  person opens. When the file was reached through an external link the address carries the key of that link, so  it keeps working without signing in. | [optional] |
| **web_url** | **String** | The page that opens the file in a browser: the editor for a format the portal edits, the media viewer for  pictures, audio and video, and the download address for a format it cannot show at all. | [optional] |
| **file_type** | [**FileType**](FileType.md) | The broad kind of content, worked out from the extension, which is what a client uses to pick an icon or a  viewer without parsing `fileExst` itself. | [optional] |
| **file_exst** | **String** | The extension of the stored file, leading dot included and always lower case. For a format the portal keeps in  a converted shape this is the extension it is served under, not the one it was uploaded with. | [optional] |
| **comment** | **String** | The note kept with this revision. The portal writes it itself for revisions it creates, an upload over an  existing file among them, and an editor stores the note a person typed when saving a version. | [optional] |
| **encrypted** | **Boolean** | True for a file in a private room, whose content the server never sees and which therefore cannot be converted  or taken over by an upload. Null, rather than false, for an ordinary file. | [optional] |
| **thumbnail_url** | **String** | The address of the generated preview image. It is filled in only while `thumbnailStatus` says the preview has  been created, and it carries a suffix that changes with the file, so an image cached for an earlier revision  is not reused. | [optional] |
| **thumbnail_status** | [**Thumbnail**](Thumbnail.md) | How far the preview image has got. Only the created state means `thumbnailUrl` holds an address; the others  mean there is none, either because it is still being produced or because this format has no preview. | [optional] |
| **locked** | **Boolean** | True while the file is held under a lock that stops anyone but its holder from editing it, and null rather  than false when there is no lock. `lockedBy` names the holder unless the caller is the holder. | [optional] |
| **locked_by** | **String** | The display name of the account holding the lock, and null when the caller holds it - so `locked` true  together with no name here means the lock is the caller's own. | [optional] |
| **has_draft** | **Boolean** | For a fillable PDF form, whether the caller already has a filling draft of it, in which case `draftLocation`  says where that draft lives. Null for anything that is not a form. | [optional] |
| **form_filling_status** | [**FormFillingStatus**](FormFillingStatus.md) | How far the filling of this form has got for the calling account, and whose turn it is now. It is worked out  only inside a virtual data room, where filling runs in steps; everywhere else it stays at the none value. | [optional] |
| **is_form** | **Boolean** | Whether the PDF is a fillable form rather than a plain document. When the stored classification does not say,  the portal opens the file to find out, so the answer is reliable for a PDF and null for anything else. | [optional] |
| **custom_filter_enabled** | **Boolean** | True while a spreadsheet is in the mode where each person sorts and filters their own view without changing  what the others see, and null rather than false when it is not. | [optional] |
| **custom_filter_enabled_by** | **String** | The display name of the account that turned that mode on, and null when the caller turned it on themselves. | [optional] |
| **start_filling** | **Boolean** | For a form in a room for filling, whether it has been released for filling; until then it is still being  prepared and only the people running the room work with it. Null for a file this does not apply to. | [optional] |
| **is_filling_preparing** | **Boolean** | True during the short window in which a released form is still being written out by the editor. Neither  filling nor editing is accepted while it lasts, so a client should wait and read the file again. | [optional] |
| **in_process_folder_id** | **Integer** | Left empty by the portal: the folder holding the caller's draft is reported in `draftLocation` instead. | [optional] |
| **in_process_folder_title** | **String** | Left empty by the portal, like the identifier beside it; the draft's folder is named in `draftLocation`. | [optional] |
| **results_folder_id** | **Integer** | The folder that collects the completed copies of this form. It is filled in only for the original form of a  room for filling, and only for a caller allowed to work with that form; null everywhere else. | [optional] |
| **draft_location** | [**ThirdPartyDraftLocation**](ThirdPartyDraftLocation.md) | Where the caller's own filling draft of this form is kept. Null when there is no draft yet, which is the same  thing `hasDraft` reports. | [optional] |
| **view_accessibility** | [**FileDtoAllOfViewAccessibility**](FileDtoAllOfViewAccessibility.md) |  | [optional] |
| **last_opened** | [**ApiDateTime**](ApiDateTime.md) | The moment the caller last opened the file. It is kept per account and is what orders the Recent section, so  it is null for a file this account has never opened. Written with the offset of the portal's time zone. | [optional] |
| **expired** | [**ApiDateTime**](ApiDateTime.md) | The moment the file falls under the lifetime rule of the room holding it and is removed. It is counted from  the first revision rather than the latest one, so editing a file does not postpone it, and it is null when the  room sets no lifetime. Written with the offset of the portal's time zone. | [optional] |
| **vectorization_status** | [**VectorizationStatus**](VectorizationStatus.md) | How far the indexing of the file's content for AI search has got. It is null for a file that has never been  queued for indexing, which is every file while the feature is off for the portal. | [optional] |
| **external_db_table_name** | **String** | The table collecting the submitted values of this form in the external database configured for its room. The  field is left out of the answer entirely when the form has no such table. | [optional] |
| **dimensions** | [**Size**](Size.md) | The pixel size of the picture, measured by reading the stored file rather than taken from any stored metadata.  Null for anything that is not a picture the portal can show, and also when the file could not be read. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThirdPartyFileDto.new(
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
  provider_item: true,
  provider_key: google-drive,
  provider_id: 1,
  order: 1.3.2,
  is_favorite: true,
  file_entry_type: null,
  id: 10,
  root_folder_id: 1,
  origin_id: 12,
  origin_room_id: 22,
  origin_title: Contracts,
  origin_room_title: Legal team,
  can_share: true,
  share_settings: null,
  security: null,
  available_share_rights: null,
  request_token: q7Ry8cQ1lZ0dP3sK2mXfA9tBnV6hJ4uE8wCz5oLg,
  external: false,
  expiration_date: null,
  is_link_expired: false,
  folder_id: 10,
  version: 3,
  version_group: 1,
  content_length: 1.29 MB,
  pure_content_length: 1352001,
  file_status: null,
  editing_by: {9a1e28c4-51f2-4f6b-b0a3-0c21e7f2a7d1=John Doe},
  mute: false,
  view_url: https://example.com/filehandler.ashx?action=download&fileid=2221,
  web_url: https://example.com/doceditor?fileid=2221,
  file_type: null,
  file_exst: .docx,
  comment: Uploaded file,
  encrypted: false,
  thumbnail_url: https://example.com/filehandler.ashx?action=thumb&fileid=2221,
  thumbnail_status: null,
  locked: false,
  locked_by: John Doe,
  has_draft: false,
  form_filling_status: null,
  is_form: true,
  custom_filter_enabled: false,
  custom_filter_enabled_by: John Doe,
  start_filling: true,
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

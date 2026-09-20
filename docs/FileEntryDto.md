# DocspaceApiSdk::FileEntryDto

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
| **id** | **Integer** | The identifier to pass back to the other operations of this entry. It is a number for storage on the portal  and a string for a connected third-party account, and it is unique only within its own kind, so files and  folders may carry the same value. | [optional] |
| **root_folder_id** | **Integer** | The section the entry ultimately lies in, as an identifier that can be listed like any other folder. For an  entry inside a room this is the rooms section, not the room. | [optional] |
| **origin_id** | **Integer** | The folder the entry was deleted from, which is where restoring it puts it back. It is left out of the answer  unless the entry is in the trash. | [optional] |
| **origin_room_id** | **Integer** | The room the entry was deleted from, left out of the answer for anything that was not deleted out of a room. | [optional] |
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

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileEntryDto.new(
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
  is_link_expired: false
)
```

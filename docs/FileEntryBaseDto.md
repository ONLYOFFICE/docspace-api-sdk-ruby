# DocspaceApiSdk::FileEntryBaseDto

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
  file_entry_type: null
)
```

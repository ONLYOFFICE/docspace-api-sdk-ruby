# DocspaceApiSdk::ChangeOwnerRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_ids** | [**Array&lt;BatchRequestDtoAllOfFileIds&gt;**](BatchRequestDtoAllOfFileIds.md) | The rooms to hand over, identified as `GET api/2.0/files/rooms` returns them - a number for a room stored on  the portal and a string for one that lives on a connected third-party account. Only rooms belong here; a  folder inside a room is refused. | [optional] |
| **file_ids** | [**Array&lt;BatchRequestDtoAllOfFileIds&gt;**](BatchRequestDtoAllOfFileIds.md) | The files to hand over, identified as a listing operation returns them - a number for a file stored on the  portal and a string for one on a connected third-party account. Only a file kept in the portal's common  section is accepted. | [optional] |
| **user_id** | **String** | The account that becomes the owner of every listed entry. It has to be an active member allowed to manage  rooms, so a deactivated account, a guest or a plain member is rejected, and for a private room the account  must have set up its encryption keys beforehand. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChangeOwnerRequestDto.new(
  folder_ids: [1, 2, 3],
  file_ids: [7, 8],
  user_id: 9924256a-739c-462b-af15-e652a3b1b6eb
)
```

# DocspaceApiSdk::RoomInvitationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invitations** | [**Array&lt;RoomInvitation&gt;**](RoomInvitation.md) | The collection of invitation parameters. | [optional] |
| **notify** | **Boolean** | Specifies whether to notify users about the shared room or not. | [optional] |
| **message** | **String** | The message to send when notifying about the shared room. | [optional] |
| **culture** | **String** | The language of the room invitation. | [optional] |
| **force** | **Boolean** | Specifies whether to forcibly delete a user with form roles from the room. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomInvitationRequest.new(
  invitations: [{"id":"00000000-0000-0000-0000-000000000000","access":1}],
  notify: true,
  message: You have been invited to the room,
  culture: en-US,
  force: false
)
```

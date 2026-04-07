# DocspaceApiSdk::InviteUsersRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invitations** | [**Array&lt;UserInvitationRequestDto&gt;**](UserInvitationRequestDto.md) | The list of user invitations. |  |
| **culture** | **String** | The culture code of invitations. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::InviteUsersRequestDto.new(
  invitations: [{"email":"user@example.com","type":1}],
  culture: en-US
)
```

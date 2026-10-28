# DocspaceApiSdk::TenantUserInvitationSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_inviting_members** | **Boolean** | Whether new members may be invited through the Contacts section. Switching it off stops new invitations  from being created; links already handed out keep working and members already invited stay. |  |
| **allow_inviting_guests** | **Boolean** | Whether every member, and not only an administrator, may invite an outside guest into a room. It is  independent of `allowInvitingMembers`, and switching it off has the same forward-only effect. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantUserInvitationSettingsDto.new(
  allow_inviting_members: true,
  allow_inviting_guests: false
)
```

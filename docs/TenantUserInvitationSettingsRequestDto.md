# DocspaceApiSdk::TenantUserInvitationSettingsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_inviting_members** | **Boolean** | Specifies whether to allow inviting new DocSpace members through the Contacts section. | [optional] |
| **allow_inviting_guests** | **Boolean** | Specifies whether to allow all DocSpace members to invite external guests to the rooms. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantUserInvitationSettingsRequestDto.new(
  allow_inviting_members: true,
  allow_inviting_guests: false
)
```

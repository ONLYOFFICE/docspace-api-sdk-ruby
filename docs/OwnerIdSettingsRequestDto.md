# DocspaceApiSdk::OwnerIdSettingsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id** | **String** | The member who is to become the portal owner, by user ID. They have to be an active member of this portal and  not a guest; a member who is not a DocSpace administrator yet is promoted to one as part of the transfer, so  the portal needs a paid seat for them. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::OwnerIdSettingsRequestDto.new(
  owner_id: 00000000-0000-0000-0000-000000000001
)
```

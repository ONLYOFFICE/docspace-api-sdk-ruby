# DocspaceApiSdk::UpdateGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **members_to_add** | **Array&lt;String&gt;** | The accounts to add to the group. An account that is a guest, is disabled or does not exist is skipped  without an error, so the answer has to be read to see what was applied. | [optional] |
| **members_to_remove** | **Array&lt;String&gt;** | The accounts to remove from the group. Removals are applied after the additions, so an account named in both  lists ends up removed, and an ID that is not a member is skipped without an error. | [optional] |
| **group_manager** | **String** | The account to make the manager of the group, which also adds it to the group. Omit it to keep the current  manager - it cannot be cleared through this operation. | [optional] |
| **group_name** | **String** | The new name of the group, up to 128 characters. Omit it to keep the current name. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateGroupRequest.new(
  members_to_add: [00000000-0000-0000-0000-000000000000],
  members_to_remove: [11111111-1111-1111-1111-111111111111],
  group_manager: 00000000-0000-0000-0000-000000000000,
  group_name: Sales Team
)
```

# DocspaceApiSdk::UpdateGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **members_to_add** | **Array&lt;String&gt;** | The list of user IDs to add to the group. | [optional] |
| **members_to_remove** | **Array&lt;String&gt;** | The list of user IDs to remove from the group. | [optional] |
| **group_manager** | **String** | The group manager ID. | [optional] |
| **group_name** | **String** | The group name. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateGroupRequest.new(
  members_to_add: ["00000000-0000-0000-0000-000000000000"],
  members_to_remove: ["11111111-1111-1111-1111-111111111111"],
  group_manager: 00000000-0000-0000-0000-000000000000,
  group_name: Sales Team
)
```

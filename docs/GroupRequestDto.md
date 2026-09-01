# DocspaceApiSdk::GroupRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **members** | **Array&lt;String&gt;** | The list of group member IDs. | [optional] |
| **group_manager** | **String** | The group manager ID. | [optional] |
| **group_name** | **String** | The group name. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::GroupRequestDto.new(
  members: [00000000-0000-0000-0000-000000000000, 11111111-1111-1111-1111-111111111111],
  group_manager: 00000000-0000-0000-0000-000000000000,
  group_name: Marketing Team
)
```

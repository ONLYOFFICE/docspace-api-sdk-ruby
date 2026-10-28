# DocspaceApiSdk::GroupRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **members** | **Array&lt;String&gt;** | The accounts to put into the new group. Every one of them has to be an active member that is not a guest,  otherwise the whole call is rejected. Omit it to create an empty group. | [optional] |
| **group_manager** | **String** | The account to make the manager of the new group. It is added to the group as well, so it does not have to be  repeated in `members`. Omit it to create a group without a manager. | [optional] |
| **group_name** | **String** | The name of the group, from 1 to 128 characters. It is required, it may not be blank, and it does not have to  be unique. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::GroupRequestDto.new(
  members: [00000000-0000-0000-0000-000000000000, 11111111-1111-1111-1111-111111111111],
  group_manager: 00000000-0000-0000-0000-000000000000,
  group_name: Marketing Team
)
```

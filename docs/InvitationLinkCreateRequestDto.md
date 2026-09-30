# DocspaceApiSdk::InvitationLinkCreateRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_type** | [**EmployeeType**](EmployeeType.md) | The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` are accepted, and  the role cannot be changed afterwards - delete the link and create one for the other role instead. |  |
| **expiration** | **Time** | When the link stops letting anyone in, read in the portal time zone. It has to lie in the future; leaving it  out creates a link with no deadline at all. | [optional] |
| **max_use_count** | **Integer** | How many accounts may join through the link in total. Leaving it out creates a link with no use limit; the  uses spent so far are reported as `currentUseCount`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::InvitationLinkCreateRequestDto.new(
  employee_type: null,
  expiration: 2025-06-15T10:30:00.0000000Z,
  max_use_count: 1
)
```

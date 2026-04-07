# DocspaceApiSdk::InvitationLinkCreateRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_type** | [**EmployeeType**](EmployeeType.md) |  |  |
| **expiration** | **Time** | The expiration date of the invitation link. | [optional] |
| **max_use_count** | **Integer** | The maximum number of times the invitation link can be used. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::InvitationLinkCreateRequestDto.new(
  employee_type: null,
  expiration: 2025-06-15T10:30Z,
  max_use_count: 1
)
```

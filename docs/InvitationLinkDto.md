# DocspaceApiSdk::InvitationLinkDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the invitation link. | [optional] |
| **employee_type** | [**EmployeeType**](EmployeeType.md) | The type of employee role for the invitation link. |  |
| **expiration** | **Time** | The expiration date of the invitation link. | [optional] |
| **is_expired** | **Boolean** | Indicates whether the invitation link has expired. | [optional] |
| **max_use_count** | **Integer** | The maximum number of times the invitation link can be used. | [optional] |
| **current_use_count** | **Integer** | The current number of times the invitation link has been used. | [optional] |
| **url** | **String** | The URL of the invitation link. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::InvitationLinkDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  employee_type: null,
  expiration: 2024-01-15T10:30:00Z,
  is_expired: true,
  max_use_count: 1,
  current_use_count: 1,
  url: https://example.com
)
```

# DocspaceApiSdk::StartUpdateUserTypeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**EmployeeType**](EmployeeType.md) |  | [optional] |
| **user_id** | **String** | The user ID. | [optional] |
| **reassign_user_id** | **String** | The user ID to reassign. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StartUpdateUserTypeDto.new(
  type: null,
  user_id: 00000000-0000-0000-0000-000000000000,
  reassign_user_id: 11111111-1111-1111-1111-111111111111
)
```

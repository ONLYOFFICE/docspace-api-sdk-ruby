# DocspaceApiSdk::SignupAccountRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_type** | [**EmployeeType**](EmployeeType.md) |  | [optional] |
| **key** | **String** | The user link key. |  |
| **culture** | **String** | The user culture code. | [optional] |
| **serialized_profile** | **String** | The third-party profile in the serialized format |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SignupAccountRequestDto.new(
  employee_type: null,
  key: invite_key_123456,
  culture: en-US,
  serialized_profile: {"provider":"Google","id":"123456"}
)
```

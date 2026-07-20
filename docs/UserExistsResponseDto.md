# DocspaceApiSdk::UserExistsResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exists** | **Boolean** | Specifies whether the user exists or not. |  |
| **status** | [**EmployeeStatus**](EmployeeStatus.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UserExistsResponseDto.new(
  exists: true,
  status: null
)
```

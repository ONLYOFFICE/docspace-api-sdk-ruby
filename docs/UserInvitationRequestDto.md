# DocspaceApiSdk::UserInvitationRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address. | [optional] |
| **type** | [**EmployeeType**](EmployeeType.md) | The user type. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UserInvitationRequestDto.new(
  email: user@example.com,
  type: null
)
```

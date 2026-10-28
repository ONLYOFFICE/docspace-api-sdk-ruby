# DocspaceApiSdk::UserInvitationRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The address of somebody who has no portal account yet. An invitation is sent to it and an account is created  once it is accepted, so this is the field to use instead of an account identifier when the person is new to  the portal. | [optional] |
| **type** | [**EmployeeType**](EmployeeType.md) | The user type. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UserInvitationRequestDto.new(
  email: jane.doe@example.com,
  type: null
)
```

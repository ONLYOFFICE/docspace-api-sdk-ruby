# DocspaceApiSdk::EmailValidationKeyModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The email validation key. | [optional] |
| **empl_type** | [**EmployeeType**](EmployeeType.md) | The user type. | [optional] |
| **email** | **String** | The email address. | [optional] |
| **enc_email** | **String** | The encrypted email address. | [optional] |
| **ui_d** | **String** | The user ID. | [optional] |
| **type** | [**ConfirmType**](ConfirmType.md) | The confirmation email type. | [optional] |
| **first** | **String** | Specifies whether it is the first time account access or not. | [optional] |
| **room_id** | **String** | The room ID. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EmailValidationKeyModel.new(
  key: abcdef123456,
  empl_type: null,
  email: user@example.com,
  enc_email: user%40example.com,
  ui_d: 00000000-0000-0000-0000-000000000000,
  type: null,
  first: false,
  room_id: 1
)
```

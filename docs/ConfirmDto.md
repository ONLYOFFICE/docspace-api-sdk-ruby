# DocspaceApiSdk::ConfirmDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | [**ValidationResult**](ValidationResult.md) |  |  |
| **room_id** | **String** | The confirmation room ID. | [optional] |
| **title** | **String** | The confirmation title. | [optional] |
| **email** | **String** | The confirmation email. | [optional] |
| **is_agent** | **Boolean** | The confirmation is agent. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConfirmDto.new(
  result: null,
  room_id: 1,
  title: Conference Room,
  email: user@example.com,
  is_agent: true
)
```

# DocspaceApiSdk::TfaConfirmDataDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The confirmation URL. | [optional] |
| **cookie_name** | **String** | The confirmation cookie name. | [optional] |
| **cookie_value** | **String** | The confirmation cookie value. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TfaConfirmDataDto.new(
  url: https://example.com/confirm?type=TfaAuth&key=abc123,
  cookie_name: asc_confirm_key_TfaAuth,
  cookie_value: 1234567890.abcdef
)
```

# DocspaceApiSdk::TfaAppCodeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_used** | **Boolean** | The TFA app code usage status. | [optional] |
| **code** | **String** | The TFA app code. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TfaAppCodeDto.new(
  is_used: true,
  code: 123456
)
```

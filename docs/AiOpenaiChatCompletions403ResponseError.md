# DocspaceApiSdk::AiOpenaiChatCompletions403ResponseError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Human-readable description of the failure. |  |
| **type** | **String** | OpenAI error class, for example `invalid_request_error`. |  |
| **code** | **String** | Machine-readable code, when the provider supplies one. | [optional] |
| **param** | **String** | The request parameter at fault, when the failure names one. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiOpenaiChatCompletions403ResponseError.new(
  message: null,
  type: invalid_request_error,
  code: null,
  param: null
)
```

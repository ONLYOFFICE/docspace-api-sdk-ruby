# DocspaceApiSdk::AiOpenAIToolCallDelta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Float** | The zero-based position of the tool call within the message. |  |
| **id** | **String** | The tool call identifier, quoted back when its result is submitted. | [optional] |
| **type** | **String** | Always `function` - the only tool kind the API defines. | [optional] |
| **function** | [**AiOpenAIToolCallDeltaFunction**](AiOpenAIToolCallDeltaFunction.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiOpenAIToolCallDelta.new(
  index: null,
  id: null,
  type: null,
  function: null
)
```

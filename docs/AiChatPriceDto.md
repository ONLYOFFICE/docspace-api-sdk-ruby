# DocspaceApiSdk::AiChatPriceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prompt** | **Float** | The cost of one million tokens sent to the model, which includes the conversation history resent with  every turn and not just the newest message. | [optional] |
| **completion** | **Float** | The cost of one million tokens the model writes back. It is normally the dearer of the two directions. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiChatPriceDto.new(
  prompt: 5.0,
  completion: 15.0
)
```

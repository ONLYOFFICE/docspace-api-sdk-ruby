# DocspaceApiSdk::AiChatPriceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prompt** | **Float** | The cost of one million tokens sent to the model, which includes the conversation history resent with  every turn and not just the newest message. | [optional] |
| **completion** | **Float** | The cost of one million tokens the model writes back. It is normally the dearer of the two directions. | [optional] |
| **prompt_cache_read** | **Float** | The cost of one million prompt tokens served from the prompt cache. It is absent when the model does not  support prompt caching. | [optional] |
| **prompt_cache_write** | **Float** | The cost of one million prompt tokens written to the prompt cache with the default lifetime. It is absent  when the model does not support prompt caching. | [optional] |
| **prompt_cache_write1_h** | **Float** | The cost of one million prompt tokens written to the prompt cache with a one-hour lifetime. It is absent  when the model offers no such option. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiChatPriceDto.new(
  prompt: 5.0,
  completion: 15.0,
  prompt_cache_read: 0.2,
  prompt_cache_write: 2.5,
  prompt_cache_write1_h: 4.0
)
```

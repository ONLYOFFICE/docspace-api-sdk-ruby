# DocspaceApiSdk::OperationTokenUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_tokens** | **Integer** | All tokens of the request: prompt plus completion. | [optional] |
| **prompt_tokens** | **Integer** | Tokens sent to the model, cached ones included. | [optional] |
| **completion_tokens** | **Integer** | Tokens the model generated, reasoning ones included. | [optional] |
| **cached_tokens** | **Integer** | Part of the prompt tokens read from the provider cache. | [optional] |
| **cache_write_tokens** | **Integer** | Part of the prompt tokens written to the provider cache. | [optional] |
| **reasoning_tokens** | **Integer** | Part of the completion tokens the model spent on reasoning. | [optional] |
| **image_tokens** | **Integer** | Tokens spent on images. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::OperationTokenUsage.new(
  total_tokens: 20747,
  prompt_tokens: 19332,
  completion_tokens: 1415,
  cached_tokens: 19226,
  cache_write_tokens: 104,
  reasoning_tokens: 68,
  image_tokens: 0
)
```

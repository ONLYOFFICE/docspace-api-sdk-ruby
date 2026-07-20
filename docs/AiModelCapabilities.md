# DocspaceApiSdk::AiModelCapabilities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vision** | **Boolean** | Indicates whether the model supports image and vision input. | [optional] |
| **tool_calling** | **Boolean** | Indicates whether the model supports tool (function) calling. | [optional] |
| **thinking** | **Boolean** | Indicates whether the model supports extended thinking and reasoning. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiModelCapabilities.new(
  vision: true,
  tool_calling: true,
  thinking: false
)
```

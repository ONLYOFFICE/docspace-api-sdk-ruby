# DocspaceApiSdk::AiChatPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prompt** | **Float** | The price of a single prompt token. | [optional] |
| **completion** | **Float** | The price of a single completion token. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiChatPrice.new(
  prompt: 2.5E-6,
  completion: 1.0E-5
)
```

# DocspaceApiSdk::ChatSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **Integer** | The provider ID. | [optional] |
| **model_id** | **String** | The model ID. | [optional] |
| **prompt** | **String** | The prompt. | [optional] |
| **internal** | **Boolean** | Specifies whether the provider is internal or not. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChatSettings.new(
  provider_id: 1,
  model_id: gpt-4,
  prompt: Please analyze this document,
  internal: false
)
```

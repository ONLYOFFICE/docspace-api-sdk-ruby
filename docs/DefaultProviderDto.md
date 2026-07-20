# DocspaceApiSdk::DefaultProviderDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **Integer** | AI provider identifier. | [optional] |
| **default_model** | **String** | Default model identifier used with this provider. |  |
| **provider_title** | **String** | AI provider title. | [optional] |
| **provider_type** | [**ProviderType**](ProviderType.md) |  | [optional] |
| **default_model_alias** | **String** | Display alias of the default model. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DefaultProviderDto.new(
  provider_id: 1,
  default_model: gpt-4o,
  provider_title: OpenAI,
  provider_type: null,
  default_model_alias: GPT-4o
)
```

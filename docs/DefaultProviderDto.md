# DocspaceApiSdk::DefaultProviderDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **Integer** | AI provider identifier. | [optional] |
| **default_model** | **String** | Default model identifier used with this provider. |  |
| **provider_title** | **String** | AI provider title. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DefaultProviderDto.new(
  provider_id: 1,
  default_model: gpt-4o,
  provider_title: OpenAI
)
```

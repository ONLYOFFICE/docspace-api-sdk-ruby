# DocspaceApiSdk::SetDefaultProviderRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **Integer** | AI provider identifier. | [optional] |
| **default_model** | **String** | Default model identifier to use with this provider. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetDefaultProviderRequestDto.new(
  provider_id: 1,
  default_model: gpt-4
)
```

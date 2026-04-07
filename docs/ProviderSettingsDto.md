# DocspaceApiSdk::ProviderSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**ProviderType**](ProviderType.md) |  | [optional] |
| **url** | **String** | Default API endpoint URL for the provider type. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ProviderSettingsDto.new(
  type: null,
  url: https://api.openai.com/v1
)
```

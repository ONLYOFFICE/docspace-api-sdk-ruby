# DocspaceApiSdk::AiProfilesListProviderModelsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_type** | [**AiProviderType**](AiProviderType.md) | Provider whose catalog to list. |  |
| **base_url** | **String** | Provider API base URL. |  |
| **api_key** | **String** | Provider API key. Omit it for a provider that needs none; the request is then made without one. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiProfilesListProviderModelsRequest.new(
  provider_type: null,
  base_url: https://api.openai.com/v1,
  api_key: null
)
```

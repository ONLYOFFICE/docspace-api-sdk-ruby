# DocspaceApiSdk::AiProfilesListProviderModelsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_type** | [**AiProviderType**](AiProviderType.md) | Provider whose catalog to list. |  |
| **base_url** | **String** | Provider API base URL. |  |
| **api_key** | **String** | Provider API key. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiProfilesListProviderModelsRequest.new(
  provider_type: null,
  base_url: null,
  api_key: null
)
```

# DocspaceApiSdk::SetWebSearchSettingsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates whether web search is enabled for AI chat sessions. | [optional] |
| **type** | [**EngineType**](EngineType.md) |  | [optional] |
| **key** | **String** | The API key for the selected web search engine. Pass null to keep the existing key unchanged. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetWebSearchSettingsRequestBody.new(
  enabled: true,
  type: null,
  key: search-api-key-123
)
```

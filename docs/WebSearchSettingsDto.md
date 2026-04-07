# DocspaceApiSdk::WebSearchSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates whether web search is currently enabled. | [optional] |
| **type** | [**EngineType**](EngineType.md) |  | [optional] |
| **need_reset** | **Boolean** | Indicates whether the web search API key needs to be reconfigured. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebSearchSettingsDto.new(
  enabled: true,
  type: null,
  need_reset: false
)
```

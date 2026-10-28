# DocspaceApiSdk::AiEditorToolsCall200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | **String** | What the tool produced, as text. A structured result is JSON-encoded, and a tool that failed reports its error here rather than through a status code. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiEditorToolsCall200Response.new(
  result: null
)
```

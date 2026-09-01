# DocspaceApiSdk::EditorToolCallStateDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tool_name** | **String** | The tool name. |  |
| **parameters** | **Object** | The tool call parameters. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EditorToolCallStateDto.new(
  tool_name: GenerateDocx,
  parameters: null
)
```

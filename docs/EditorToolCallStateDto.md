# DocspaceApiSdk::EditorToolCallStateDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tool_name** | **String** | Which generation to run, which also decides the shape of the parameters below. |  |
| **parameters** | [**EditorToolCallParametersDto**](EditorToolCallParametersDto.md) | The arguments of the generation named above. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EditorToolCallStateDto.new(
  tool_name: GenerateDocx,
  parameters: null
)
```

# DocspaceApiSdk::AiEditorToolsList200ResponseToolsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Tool name, as it is passed back to the call endpoint. |  |
| **description** | **String** | What the tool does, empty when the server declares nothing. |  |
| **input_schema** | **Hash&lt;String, Object&gt;** | JSON Schema of the tool arguments. |  |
| **require_approval** | **Boolean** | Whether the editor has to ask the user before running the tool. Read-only operations arrive with this off. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiEditorToolsList200ResponseToolsInner.new(
  name: docspace_search_files,
  description: null,
  input_schema: null,
  require_approval: true
)
```

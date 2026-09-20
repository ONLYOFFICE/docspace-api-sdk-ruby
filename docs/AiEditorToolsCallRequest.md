# DocspaceApiSdk::AiEditorToolsCallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the tool to run, as listed by the tools endpoint. A name that is unknown or excluded from the editor is rejected with 400. |  |
| **arguments** | **Hash&lt;String, Object&gt;** | Arguments for the tool, shaped by that tool's own input schema. Treated as empty when it is not an object. | [optional] |
| **entity_id** | **String** | Room the call is scoped to. Left out for a portal-wide call. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiEditorToolsCallRequest.new(
  name: docspace_get_folder,
  arguments: {"folderId":"1234"},
  entity_id: 1234
)
```

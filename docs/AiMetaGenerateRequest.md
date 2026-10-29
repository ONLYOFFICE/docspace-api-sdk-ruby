# DocspaceApiSdk::AiMetaGenerateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | The entry's table. Only `file` for now: a folder or a room answers 400. |  |
| **id** | [**AiMetaGenerateRequestId**](AiMetaGenerateRequestId.md) |  |  |
| **prompt** | **String** | What kind of metadata fields the caller is interested in; a hint for the model. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiMetaGenerateRequest.new(
  kind: null,
  id: null,
  prompt: null
)
```

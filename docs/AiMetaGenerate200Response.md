# DocspaceApiSdk::AiMetaGenerate200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields** | [**Array&lt;AiMetaGenerate200ResponseFieldsInner&gt;**](AiMetaGenerate200ResponseFieldsInner.md) | The proposed custom metadata fields with the values the text supports. |  |
| **sources** | [**Array&lt;AiMetaGenerate200ResponseSourcesInner&gt;**](AiMetaGenerate200ResponseSourcesInner.md) | The documents the proposal was read from. |  |
| **skipped** | [**Array&lt;AiMetaGenerate200ResponseSkippedInner&gt;**](AiMetaGenerate200ResponseSkippedInner.md) | The entries that were left out, with the reason for each. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiMetaGenerate200Response.new(
  fields: null,
  sources: null,
  skipped: null
)
```

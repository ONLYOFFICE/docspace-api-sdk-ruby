# DocspaceApiSdk::AiMetaFill200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dry_run** | **Boolean** | Whether the values were only proposed (`true`) or written as well. |  |
| **metadata** | [**AiEntryMetadata**](AiEntryMetadata.md) | The entry's metadata after the write (or as it stands, with `dryRun`), as `GET api/2.0/files/metadata/{kind}/{id}` returns it. |  |
| **filled** | [**Array&lt;AiMetaFill200ResponseFilledInner&gt;**](AiMetaFill200ResponseFilledInner.md) | The values written, or proposed with `dryRun`: a typed value for a template field, a string for a custom field. |  |
| **unresolved** | [**Array&lt;AiMetaFill200ResponseUnresolvedInner&gt;**](AiMetaFill200ResponseUnresolvedInner.md) | The fields left as they were, with the reason for each. |  |
| **sources** | [**Array&lt;AiMetaFill200ResponseSourcesInner&gt;**](AiMetaFill200ResponseSourcesInner.md) | The documents the values were read from. |  |
| **skipped** | [**Array&lt;AiMetaGenerate200ResponseSkippedInner&gt;**](AiMetaGenerate200ResponseSkippedInner.md) | The entries that were left out, with the reason for each. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiMetaFill200Response.new(
  dry_run: null,
  metadata: null,
  filled: null,
  unresolved: null,
  sources: null,
  skipped: null
)
```

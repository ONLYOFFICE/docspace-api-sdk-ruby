# DocspaceApiSdk::AiImportResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | True when the whole bundle was imported. |  |
| **imported** | [**AiImportResultImported**](AiImportResultImported.md) |  | [optional] |
| **errors** | [**Array&lt;AiImportError&gt;**](AiImportError.md) | What was rejected, per entry. Present on failure - and then nothing was imported. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiImportResult.new(
  success: null,
  imported: null,
  errors: null
)
```

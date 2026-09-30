# DocspaceApiSdk::AiImportError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | `folder` or `prompt`, plus the offending name or id. |  |
| **ref** | **String** | The offending entry - its name or its id. |  |
| **error** | [**AiTErrorData**](AiTErrorData.md) | Why the entry was rejected. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiImportError.new(
  kind: prompt,
  ref: 33333333-3333-3333-3333-333333333333,
  error: a prompt of that name already exists
)
```

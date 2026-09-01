# DocspaceApiSdk::CheckFillFormDraft

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** | The file version of the form draft. |  |
| **action** | **String** | The action with the form draft. | [optional] |
| **request_view** | **Boolean** | Specifies whether to request the form for viewing or not. | [optional][readonly] |
| **request_embedded** | **Boolean** | Specifies whether to request an embedded form or not. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CheckFillFormDraft.new(
  version: 1,
  action: view,
  request_view: false,
  request_embedded: false
)
```

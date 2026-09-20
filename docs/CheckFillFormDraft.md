# DocspaceApiSdk::CheckFillFormDraft

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** | The revision of the form to open. Pass 0 for the current revision; a positive number addresses that entry of  the file history and is accepted only from a caller who may read the history, so a member who only has  fill-forms access must send 0. |  |
| **action** | **String** | What the caller intends to do with the form. `view` asks for a read-only address and `embedded` for an address  to be shown inside a frame; both only resolve the address and leave the file untouched. Leave it out to enter  the filling flow, where the personal draft is created or reused. The value is matched case-insensitively, and  anything else behaves like an empty value. | [optional] |
| **request_view** | **Boolean** | Whether the caller asked for a read-only address. The server derives it from `action` being `view` and ignores  any value sent with the request. | [optional][readonly] |
| **request_embedded** | **Boolean** | Whether the caller asked for an address to be shown inside a frame. The server derives it from `action` being  `embedded` and ignores any value sent with the request. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CheckFillFormDraft.new(
  version: 0,
  action: view,
  request_view: false,
  request_embedded: false
)
```

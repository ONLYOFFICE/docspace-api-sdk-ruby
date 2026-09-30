# DocspaceApiSdk::Delete

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_after** | **Boolean** | When to delete: `true` waits until the editing session on the file has ended, `false` deletes at once, pulling  the file away from whoever is working on it. | [optional] |
| **immediately** | **Boolean** | Where the file goes: `false` moves it to Trash, from where it can be restored, `true` deletes it for good.  Inside a room, where there is no Trash, deletion is always final. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Delete.new(
  delete_after: false,
  immediately: false
)
```

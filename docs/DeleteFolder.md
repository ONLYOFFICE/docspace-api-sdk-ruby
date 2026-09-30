# DocspaceApiSdk::DeleteFolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_after** | **Boolean** | Whether the deletion waits for the editing sessions on the contents to end: with true a folder somebody is  working in is removed once they are done, with false the deletion starts at once. | [optional] |
| **immediately** | **Boolean** | Whether the folder is discarded for good instead of being moved to the Trash section: with false it can be  restored from Trash, with true it cannot be recovered. Inside a room there is no Trash and the deletion is  final either way. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DeleteFolder.new(
  delete_after: false,
  immediately: false
)
```

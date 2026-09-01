# DocspaceApiSdk::Delete

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_after** | **Boolean** | Specifies whether to delete a file after the editing session is finished or not. | [optional] |
| **immediately** | **Boolean** | Specifies whether to move a file to the \\Trash\\ folder or delete it immediately. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Delete.new(
  delete_after: false,
  immediately: false
)
```

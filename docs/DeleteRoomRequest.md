# DocspaceApiSdk::DeleteRoomRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_after** | **Boolean** | Carried by the contract but not acted upon: the deletion behaves the same either way, and the record of the  finished job is kept until it is read once. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DeleteRoomRequest.new(
  delete_after: false
)
```

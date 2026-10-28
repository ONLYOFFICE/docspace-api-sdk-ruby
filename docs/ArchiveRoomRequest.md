# DocspaceApiSdk::ArchiveRoomRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_after** | **Boolean** | Whether the record of the finished job may be dropped without being read. With it off the record waits for the  first poll, which is what lets the caller learn how the move ended; it has no effect on the room itself. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ArchiveRoomRequest.new(
  delete_after: false
)
```

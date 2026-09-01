# DocspaceApiSdk::ArchiveRoomRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_after** | **Boolean** | Specifies whether to archive a room after the editing session is finished or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ArchiveRoomRequest.new(
  delete_after: false
)
```

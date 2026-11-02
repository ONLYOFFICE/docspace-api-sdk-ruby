# DocspaceApiSdk::UnlinkAiProjectSourcesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_ids** | **Array&lt;Integer&gt;** | IDs of the rooms to unlink. IDs that are not linked to the project are ignored. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UnlinkAiProjectSourcesRequest.new(
  room_ids: [17001, 17020]
)
```

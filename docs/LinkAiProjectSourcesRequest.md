# DocspaceApiSdk::LinkAiProjectSourcesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_ids** | **Array&lt;Integer&gt;** | IDs of the Instructions and Knowledge rooms to link. Each must be an active room the caller can read; rooms already linked are skipped. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LinkAiProjectSourcesRequest.new(
  room_ids: [17001, 17020]
)
```

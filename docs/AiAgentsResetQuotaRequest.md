# DocspaceApiSdk::AiAgentsResetQuotaRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_ids** | [**Array&lt;AiAgentsUpdateQuotaRequestRoomIdsInner&gt;**](AiAgentsUpdateQuotaRequestRoomIdsInner.md) | Agent (room) ids to reset to the tenant default quota. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAgentsResetQuotaRequest.new(
  room_ids: null
)
```

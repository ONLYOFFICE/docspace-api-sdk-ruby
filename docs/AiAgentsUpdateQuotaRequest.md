# DocspaceApiSdk::AiAgentsUpdateQuotaRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_ids** | [**Array&lt;AiAgentsUpdateQuotaRequestRoomIdsInner&gt;**](AiAgentsUpdateQuotaRequestRoomIdsInner.md) | Agent (room) ids to update. |  |
| **quota** | **Float** | New quota in bytes; a negative value disables the custom quota. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAgentsUpdateQuotaRequest.new(
  room_ids: null,
  quota: null
)
```

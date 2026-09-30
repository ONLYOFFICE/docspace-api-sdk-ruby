# DocspaceApiSdk::WebhookTriggerDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The event name exactly as it appears in a delivered payload, so a receiver can match on it. The entry  named `*` is not an event but the catch-all. | [optional] |
| **id** | **Integer** | The bit that stands for this event in the `triggers` bitmask of a subscription. Add the bits of the wanted  events together; the catch-all entry has the value `0` and is used on its own rather than added to  anything. | [optional] |
| **available** | **Boolean** | Whether the caller's own role may subscribe to this event - a plain member cannot subscribe to user, group  or room creation, where a room administrator can. An unavailable event is listed all the same, and sending  its bit to `POST api/2.0/settings/webhook` is refused as an invalid request. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebhookTriggerDto.new(
  name: file.created,
  id: 128,
  available: true
)
```

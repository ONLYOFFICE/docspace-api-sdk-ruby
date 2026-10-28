# DocspaceApiSdk::NotificationChannelStatusDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channels** | [**Array&lt;NotificationChannelDto&gt;**](NotificationChannelDto.md) | The channels the running installation is configured with. A channel appears only when the notification  service names a sender for it, so the list can be shorter than the channels this build implements, and an  empty list means the configuration names none of them. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::NotificationChannelStatusDto.new(
  channels: [{name=email.sender, isEnabled=true}]
)
```

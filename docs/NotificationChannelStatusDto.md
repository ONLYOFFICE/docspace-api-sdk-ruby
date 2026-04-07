# DocspaceApiSdk::NotificationChannelStatusDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channels** | [**Array&lt;NotificationChannelDto&gt;**](NotificationChannelDto.md) | The list of notification channels. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::NotificationChannelStatusDto.new(
  channels: [{"name":"email","isActive":true}]
)
```

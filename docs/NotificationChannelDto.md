# DocspaceApiSdk::NotificationChannelDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The internal name of the channel as the notification service knows it - `email.sender` for letters,  `telegram.sender` for Telegram messages. It is a key to match on, not a label to print. |  |
| **is_enabled** | **Boolean** | Whether the channel can deliver for this portal. Letters are enabled whenever the channel is listed at  all, while Telegram is enabled only while the portal has a bot name and token stored. It says nothing  about the caller, who also has to connect their own Telegram account through  `GET api/2.0/settings/telegram/link`. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::NotificationChannelDto.new(
  name: email.sender,
  is_enabled: true
)
```

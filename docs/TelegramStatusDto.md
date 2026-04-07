# DocspaceApiSdk::TelegramStatusDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**RegStatus**](RegStatus.md) |  |  |
| **username** | **String** | The Telegram username. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TelegramStatusDto.new(
  status: null,
  username: john_doe
)
```

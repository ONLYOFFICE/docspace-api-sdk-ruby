# DocspaceApiSdk::AdminMessageBaseSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address used for sending administrator messages. |  |
| **culture** | **String** | The locale identifier for message localization. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AdminMessageBaseSettingsRequestsDto.new(
  email: admin@example.com,
  culture: en-US
)
```

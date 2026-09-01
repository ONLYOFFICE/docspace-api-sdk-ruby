# DocspaceApiSdk::SsoSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **serialize_settings** | **String** | The JSON-serialized SSO configuration settings. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoSettingsRequestsDto.new(
  serialize_settings: {"enableSso":true,"idpSettings":{"entityId":"https://idp.example.com"}}
)
```

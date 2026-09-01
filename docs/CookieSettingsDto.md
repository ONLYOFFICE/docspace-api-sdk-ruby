# DocspaceApiSdk::CookieSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **life_time** | **Integer** | The cookie lifetime value in minutes. |  |
| **enabled** | **Boolean** | Specifies if the cookie settings are enabled or not. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CookieSettingsDto.new(
  life_time: 1440,
  enabled: true
)
```

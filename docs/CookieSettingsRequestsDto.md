# DocspaceApiSdk::CookieSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **life_time** | **Integer** | The cookie lifetime in minutes. | [optional] |
| **enabled** | **Boolean** | Specifies whether the cookie settings are enabled or disabled. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CookieSettingsRequestsDto.new(
  life_time: 525600,
  enabled: true
)
```

# DocspaceApiSdk::TenantDevToolsAccessSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limited_access_for_users** | **Boolean** | Whether members holding the `User` role are barred from the developer tools - API keys, OAuth applications  and webhooks. Room administrators and DocSpace administrators keep their access either way. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantDevToolsAccessSettingsDto.new(
  limited_access_for_users: false
)
```

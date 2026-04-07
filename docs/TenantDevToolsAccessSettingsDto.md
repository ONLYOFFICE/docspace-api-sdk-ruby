# DocspaceApiSdk::TenantDevToolsAccessSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limited_access_for_users** | **Boolean** | Determines if users have restricted access to the Developer Tools. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantDevToolsAccessSettingsDto.new(
  limited_access_for_users: false
)
```

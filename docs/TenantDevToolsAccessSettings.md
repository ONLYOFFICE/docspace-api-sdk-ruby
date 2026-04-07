# DocspaceApiSdk::TenantDevToolsAccessSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limited_access_for_users** | **Boolean** | Specifies if the Developer Tools access are limited for users or not. | [optional] |
| **last_modified** | **Time** | The timestamp indicating when the settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantDevToolsAccessSettings.new(
  limited_access_for_users: false,
  last_modified: 1990-01-01T00:00Z
)
```

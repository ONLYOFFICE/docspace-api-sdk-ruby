# DocspaceApiSdk::IPRestrictionsSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable** | **Boolean** | Specifies if the IP restrictions are enabled or not. | [optional] |
| **last_modified** | **Time** | The date and time when the settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::IPRestrictionsSettings.new(
  enable: true,
  last_modified: 2024-01-01T00:00:00Z
)
```

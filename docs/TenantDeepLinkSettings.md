# DocspaceApiSdk::TenantDeepLinkSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handling_mode** | [**DeepLinkHandlingMode**](DeepLinkHandlingMode.md) | The deep link handling mode. | [optional] |
| **last_modified** | **Time** | The timestamp indicating when the settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantDeepLinkSettings.new(
  handling_mode: null,
  last_modified: 1990-01-01T00:00:00Z
)
```

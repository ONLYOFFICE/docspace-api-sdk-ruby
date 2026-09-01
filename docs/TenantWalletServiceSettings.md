# DocspaceApiSdk::TenantWalletServiceSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled_services** | **Array&lt;Integer&gt;** | The list of the enabled wallet services. | [optional] |
| **last_modified** | **Time** | The date and time when the wallet services settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantWalletServiceSettings.new(
  enabled_services: [-11, -12],
  last_modified: 1990-01-01T00:00:00Z
)
```

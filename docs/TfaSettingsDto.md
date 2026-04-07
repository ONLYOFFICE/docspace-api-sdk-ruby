# DocspaceApiSdk::TfaSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the TFA configuration. |  |
| **title** | **String** | The display name or description of the TFA configuration. |  |
| **enabled** | **Boolean** | Indicates whether the TFA configuration is currently active. |  |
| **avaliable** | **Boolean** | Indicates whether the TFA configuration can be used. |  |
| **trusted_ips** | **Array&lt;String&gt;** | The list of IP addresses that are exempt from TFA requirements. | [optional] |
| **mandatory_users** | **Array&lt;String&gt;** | The list of user IDs that are required to use TFA. | [optional] |
| **mandatory_groups** | **Array&lt;String&gt;** | The list of group IDs whose members are required to use TFA. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TfaSettingsDto.new(
  id: tfa-default,
  title: Default TFA policy,
  enabled: true,
  avaliable: true,
  trusted_ips: ["item1","item2"],
  mandatory_users: ["00000000-0000-0000-0000-000000000000"],
  mandatory_groups: ["00000000-0000-0000-0000-000000000000"]
)
```

# DocspaceApiSdk::TfaRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**TfaRequestsDtoType**](TfaRequestsDtoType.md) |  | [optional] |
| **id** | **String** | The ID of the user for whom the TFA settings are being configured. | [optional] |
| **trusted_ips** | **Array&lt;String&gt;** | The list of IP addresses that bypass TFA verification. | [optional] |
| **mandatory_users** | **Array&lt;String&gt;** | The list of user IDs for whom TFA is mandatory. | [optional] |
| **mandatory_groups** | **Array&lt;String&gt;** | The list group IDs whose members must use TFA. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TfaRequestsDto.new(
  type: null,
  id: 00000000-0000-0000-0000-000000000000,
  trusted_ips: ["item1","item2"],
  mandatory_users: ["00000000-0000-0000-0000-000000000000"],
  mandatory_groups: ["00000000-0000-0000-0000-000000000000"]
)
```

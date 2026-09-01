# DocspaceApiSdk::IPRestriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** | The IP address. |  |
| **for_admin** | **Boolean** | Specifies if the IP address is for administrator users only or not. | [optional] |
| **id** | **Integer** | The IP restiction ID. | [optional] |
| **tenant_id** | **Integer** | The tenant ID. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::IPRestriction.new(
  ip: 192.0.2.1,
  for_admin: false,
  id: 1,
  tenant_id: 1
)
```

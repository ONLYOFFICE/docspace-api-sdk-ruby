# DocspaceApiSdk::IpRestrictionEntryDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** | The IPv4 or IPv6 address. |  |
| **for_admin** | **Boolean** | Whether the address admits administrators only. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::IpRestrictionEntryDto.new(
  ip: 192.0.2.1,
  for_admin: false
)
```

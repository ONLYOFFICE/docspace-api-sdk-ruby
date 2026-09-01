# DocspaceApiSdk::IpRestrictionBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** | The IP address. |  |
| **for_admin** | **Boolean** | Specifies if the IP address is for administrator users only or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::IpRestrictionBase.new(
  ip: 192.0.2.1,
  for_admin: false
)
```

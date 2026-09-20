# DocspaceApiSdk::IpRestrictionsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_restrictions** | [**Array&lt;IpRestrictionBase&gt;**](IpRestrictionBase.md) | The allowed addresses, each entry pairing a single IPv4 or IPv6 address with the flag that limits it to  administrators. This is the whole list that is to hold afterwards: entries not repeated here are deleted.  Ranges written as `from-to` and CIDR blocks are refused with 400, even though the portal matches such forms  when they are already stored. Enforcement spares only the portal owner and the installation own networks, so  a list without the caller address locks the remaining administrators out. |  |
| **enable** | **Boolean** | Whether the list is enforced. Leaving it out follows the list - on when addresses are sent, off when the list  is empty - and sending `true` with an empty list is refused with 400, since that would admit nobody. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::IpRestrictionsDto.new(
  ip_restrictions: [{ip=192.0.2.1, forAdmin=false}],
  enable: true
)
```

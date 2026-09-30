# DocspaceApiSdk::TfaRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**TfaRequestsDtoType**](TfaRequestsDtoType.md) | The second factor the portal demands. The two methods are mutually exclusive, so switching one on switches  the other off, and any value outside the defined set is read as switching TFA off rather than refused. | [optional] |
| **id** | **String** | The account the request concerns, by portal user ID. Naming the portal owner is refused unless it is the  caller's own account. Where an operation detaches an authenticator application, the empty GUID and the  caller's own ID both mean the caller. | [optional] |
| **trusted_ips** | **Array&lt;String&gt;** | The list of IP addresses that bypass TFA verification. Each entry is a single address, an inclusive  from-to range or a CIDR block. This is the whole list that is to hold afterwards, so send the addresses  already trusted along with a new one; an entry that cannot be parsed fails the call with 400, and accounts  named as mandatory still have to pass the challenge even from a trusted address. | [optional] |
| **mandatory_users** | **Array&lt;String&gt;** | The accounts that must pass the challenge whatever their address, by portal user ID. This is the whole list  that is to hold afterwards - leaving it out clears it rather than keeping it - and naming the portal owner is  refused unless the caller is the owner. | [optional] |
| **mandatory_groups** | **Array&lt;String&gt;** | The groups whose members must pass the challenge whatever their address, by group ID. This is the whole list  that is to hold afterwards - leaving it out clears it rather than keeping it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TfaRequestsDto.new(
  type: null,
  id: 00000000-0000-0000-0000-000000000000,
  trusted_ips: [192.0.2.1, 198.51.100.1-198.51.100.20, 203.0.113.0/24],
  mandatory_users: [00000000-0000-0000-0000-000000000000],
  mandatory_groups: [00000000-0000-0000-0000-000000000000]
)
```

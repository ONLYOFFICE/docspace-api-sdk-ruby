# DocspaceApiSdk::TfaSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Which method this entry describes: `sms` for a code sent by text message, `app` for a code from an  authenticator application. It is the value `PUT api/2.0/settings/tfaapp` takes as its `type`, and no other  value ever appears here. |  |
| **title** | **String** | The label for the method in the portal language, meant for a button or a radio option. It is not stable  enough to branch on - match `id` for that. |  |
| **enabled** | **Boolean** | Whether this method is the portal's current policy. At most one entry can have it set, and none has it  while the portal challenges nobody. It says nothing about the caller's own account, which may be exempt  through `trustedIps` or forced through `mandatoryUsers`. |  |
| **available** | **Boolean** | Whether the method could be switched on at all. For `sms` it is `false` until the installation has a  working SMS provider, so a method can be offered here and still be impossible to enable; for `app` it is  always `true`. |  |
| **trusted_ips** | **Array&lt;String&gt;** | The addresses that skip the challenge, each either a single address, a `from-to` pair or a CIDR range. It  is empty when no address is exempt, which means every account is challenged. | [optional] |
| **mandatory_users** | **Array&lt;String&gt;** | The accounts that are challenged even from a trusted address, by user ID. Empty means the exemption in  `trustedIps` holds for everyone. | [optional] |
| **mandatory_groups** | **Array&lt;String&gt;** | The groups whose members are challenged even from a trusted address, by group ID, with the same reading of  an empty list as `mandatoryUsers`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TfaSettingsDto.new(
  id: app,
  title: Authenticator app,
  enabled: true,
  available: true,
  trusted_ips: [192.0.2.0/24],
  mandatory_users: [00000000-0000-0000-0000-000000000000],
  mandatory_groups: [00000000-0000-0000-0000-000000000000]
)
```

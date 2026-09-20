# DocspaceApiSdk::SecurityRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The module the role applies to, given by its GUID. The all-zero GUID stands for the portal itself and grants  or revokes the DocSpace administrator role, which covers every module at once; a GUID that names no module  group is stored without effect rather than refused. |  |
| **user_id** | **String** | The portal member the role is given to or taken from, by user ID. The member has to exist already - nobody is  created here - and promoting a guest or a plain member turns them into a paid one. |  |
| **administrator** | **Boolean** | Which way the role goes: `true` adds the member to the module administrator group, `false` removes them from  it. Taking away the portal-wide role also drops the member from every product group. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SecurityRequestsDto.new(
  product_id: 00000000-0000-0000-0000-000000000000,
  user_id: 00000000-0000-0000-0000-000000000000,
  administrator: true
)
```

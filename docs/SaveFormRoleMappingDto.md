# DocspaceApiSdk::SaveFormRoleMappingDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | The PDF form the roles belong to. This is the value the operation reads, rather than the identifier in its  route, and the two are to be sent the same. |  |
| **roles** | [**Array&lt;FormRole&gt;**](FormRole.md) | The roles with the account taking each of them and the sequence number that decides the turn: the same number  means the roles may be filled in parallel, different ones make a queue. The whole set is replaced on every  call, and an empty set resets the filling. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SaveFormRoleMappingDto.new(
  form_id: 1,
  roles: [{roleName=Approver, userId=00000000-0000-0000-0000-000000000000}]
)
```

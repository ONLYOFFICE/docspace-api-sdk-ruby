# DocspaceApiSdk::SaveFormRoleMappingDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | The form ID. |  |
| **roles** | [**Array&lt;FormRole&gt;**](FormRole.md) | The collection of roles. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SaveFormRoleMappingDtoInteger.new(
  form_id: 1,
  roles: [{"roleName":"Approver","userId":"00000000-0000-0000-0000-000000000000"}]
)
```

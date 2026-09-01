# DocspaceApiSdk::GroupMemberSecurityRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**EmployeeFullDto**](EmployeeFullDto.md) | The group member parameters. |  |
| **group_access** | [**FileShare**](FileShare.md) | The group access rights to the files. |  |
| **user_access** | [**FileShare**](FileShare.md) | The group member access rights to the files. | [optional] |
| **overridden** | **Boolean** | Specifies if the group access rights are overridden or not. |  |
| **can_edit_access** | **Boolean** | Specifies if the group member can edit the group access rights or not. |  |
| **owner** | **Boolean** | Specifies if the group member is a group owner or not. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::GroupMemberSecurityRequestDto.new(
  user: null,
  group_access: null,
  user_access: null,
  overridden: false,
  can_edit_access: true,
  owner: false
)
```

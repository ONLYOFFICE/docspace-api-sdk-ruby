# DocspaceApiSdk::GroupDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The group name. |  |
| **parent** | **String** | The parent group ID. | [optional] |
| **category** | **String** | The group category ID. |  |
| **id** | **String** | The group ID. |  |
| **is_ldap** | **Boolean** | Specifies if the LDAP settings are enabled for the group or not. |  |
| **is_system** | **Boolean** | Indicates whether the group is a system group. | [optional] |
| **manager** | [**EmployeeFullDto**](EmployeeFullDto.md) | The group manager full information. | [optional] |
| **members** | [**Array&lt;EmployeeFullDto&gt;**](EmployeeFullDto.md) | The list of group members. | [optional] |
| **shared** | **Boolean** | Specifies whether the group can be shared or not. | [optional] |
| **members_count** | **Integer** | The number of group members. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::GroupDto.new(
  name: Marketing Team,
  parent: 00000000-0000-0000-0000-000000000000,
  category: 00000000-0000-0000-0000-000000000000,
  id: 00000000-0000-0000-0000-000000000000,
  is_ldap: false,
  is_system: false,
  manager: null,
  members: [{displayName=John Doe}],
  shared: false,
  members_count: 0
)
```

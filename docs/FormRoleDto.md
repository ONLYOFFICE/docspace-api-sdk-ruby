# DocspaceApiSdk::FormRoleDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_name** | **String** | The role name. |  |
| **role_color** | **String** | The role color. | [optional] |
| **user** | [**EmployeeFullDto**](EmployeeFullDto.md) | The user of the role. | [optional] |
| **sequence** | **Integer** | The role sequence. |  |
| **submitted** | **Boolean** | Specifies if the role is submitted. |  |
| **stoped_by** | [**EmployeeFullDto**](EmployeeFullDto.md) | The user who stopped the role. | [optional] |
| **history** | **Hash&lt;String, Time&gt;** | The role history. | [optional] |
| **role_status** | [**FormFillingStatus**](FormFillingStatus.md) | The role status. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FormRoleDto.new(
  role_name: Approver,
  role_color: #FF5733,
  user: null,
  sequence: 1,
  submitted: false,
  stoped_by: null,
  history: {0=2025-01-15T10:30:00Z},
  role_status: null
)
```

# DocspaceApiSdk::FormRoleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | The ID of the room the form is in. It is stored with the role as sent, so pass the room the form lives in. | [optional] |
| **role_name** | **String** | The name of a role the form defines, such as the one the form author gave a group of fields. | [optional] |
| **role_color** | **String** | The color the editor marks the fields of this role with, as a hex code. | [optional] |
| **user_id** | **String** | The account that fills this role. It is notified once filling starts, unless it is the caller. | [optional] |
| **sequence** | **Integer** | Accepted for compatibility and ignored: the position of the role in the list sets the filling order. | [optional] |
| **submitted** | **Boolean** | Whether this role counts as already submitted. It is stored as sent; send false when filling starts. | [optional] |
| **opened_at** | **Time** | Accepted for compatibility and ignored: the portal records when the role is opened. | [optional] |
| **submission_date** | **Time** | Accepted for compatibility and ignored: the portal records when the role is submitted. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FormRoleRequest.new(
  room_id: 1,
  role_name: Manager,
  role_color: #4781D1,
  user_id: 00000000-0000-0000-0000-000000000000,
  sequence: 12,
  submitted: false,
  opened_at: 2026-01-01T10:00:00Z,
  submission_date: 2026-01-01T10:00:00Z
)
```

# DocspaceApiSdk::FormRole

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | The room ID. | [optional] |
| **role_name** | **String** | The role name. | [optional] |
| **role_color** | **String** | The role color. | [optional] |
| **user_id** | **String** | The user ID. | [optional] |
| **sequence** | **Integer** | The role sequence. | [optional] |
| **submitted** | **Boolean** | Specifies if the role was submitted or not. | [optional] |
| **opened_at** | **Time** | The date and time when the role was opened. | [optional] |
| **submission_date** | **Time** | The date and time when the role was submitted. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FormRole.new(
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
